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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
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
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A035709.P749298596689994425

`∑[2*A035708(n)]-A035708(n)`
-/

namespace A035709.P749298596689994425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A035708 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A035708 n

end

end A035709.P749298596689994425

noncomputable section

/-- A035709: Coordination sequence for 14-dimensional cubic lattice.

Offset 0, canonical program `A035709.P749298596689994425`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035709 (n : ℕ) : ℤ :=
  A035709.P749298596689994425.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035709.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035749.P1987702224880848281

`A035707(2*n)`
-/

namespace A035749.P1987702224880848281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035707 (2 * n)

end

end A035749.P1987702224880848281

noncomputable section

/-- A035749: Coordination sequence for C_12 lattice.

Offset 0, canonical program `A035749.P1987702224880848281`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A035749 (n : ℕ) : ℤ :=
  A035749.P1987702224880848281.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A035749.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035750.P17272532631500132304

`A035708(2*n)`
-/

namespace A035750.P17272532631500132304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035708 (2 * n)

end

end A035750.P17272532631500132304

noncomputable section

/-- A035750: Coordination sequence for C_13 lattice.

Offset 0, canonical program `A035750.P17272532631500132304`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A035750 (n : ℕ) : ℤ :=
  A035750.P17272532631500132304.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A035750.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036268.P3017897690283646774

`Δ[A036267(n+1)]`
-/

namespace A036268.P3017897690283646774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036267 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036268.P3017897690283646774

noncomputable section

/-- A036268: 7th differences of primes.

Offset 1, canonical program `A036268.P3017897690283646774`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A036268 (n : ℕ) : ℤ :=
  A036268.P3017897690283646774.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A036268.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053805.P2188720576023365537

`∑[A035707(n)]`
-/

namespace A053805.P2188720576023365537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035707 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053805.P2188720576023365537

noncomputable section

/-- A053805: Expansion of (1 + x)^12 / (1 - x)^13.

Offset 0, canonical program `A053805.P2188720576023365537`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053805 (n : ℕ) : ℤ :=
  A053805.P2188720576023365537.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053805.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059163.P2638595537801817336

`A059151(3*n)+A059151(3*n+1)+A059151(3*n)`
-/

namespace A059163.P2638595537801817336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059151 (3 * n) + A059151 (3 * n + 1) + A059151 (3 * n)

end

end A059163.P2638595537801817336

noncomputable section

/-- A059163: A hierarchical sequence (W'3{2,2}*c - see A059126).

Offset 0, canonical program `A059163.P2638595537801817336`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059151, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A059163 (n : ℕ) : ℤ :=
  A059163.P2638595537801817336.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059151, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A059163.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A067986.P4183801628319440246

`A067985(n)+A067984(n)`
-/

namespace A067986.P4183801628319440246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067985 n + A067984 n

end

end A067986.P4183801628319440246

noncomputable section

/-- A067986: Convolution of L(n+1) := A000204(n+1) (Lucas), n>=0, with L(n+8), n>=0.

Offset 0, canonical program `A067986.P4183801628319440246`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 457 terms. -/
def A067986 (n : ℕ) : ℤ :=
  A067986.P4183801628319440246.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 457 terms. -/
def A067986.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073140.P4323079817452288887

`A073138(n)+A073137(n)`
-/

namespace A073140.P4323079817452288887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073138 n + A073137 n

end

end A073140.P4323079817452288887

noncomputable section

/-- A073140: Sum of the largest and smallest number having in binary representation the same number of 0's and 1's as n.

Offset 0, canonical program `A073140.P4323079817452288887`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073140 (n : ℕ) : ℤ :=
  A073140.P4323079817452288887.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073140.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073141.P2860800475902141148

`A073137(n)*A073138(n)`
-/

namespace A073141.P2860800475902141148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073137 n * A073138 n

end

end A073141.P2860800475902141148

noncomputable section

/-- A073141: Product of the largest and smallest number having in binary representation the same number of 0's and 1's as n.

Offset 0, canonical program `A073141.P2860800475902141148`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073141 (n : ℕ) : ℤ :=
  A073141.P2860800475902141148.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073141.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074705.P16843531673910082680

`A050216(n+1)+A050216(n)`
-/

namespace A074705.P16843531673910082680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050216 (n + 1) + A050216 n

end

end A074705.P16843531673910082680

noncomputable section

/-- A074705: a(1)=4; for n>1: number of primes between squares of (n-1)-th and (n+1)-th primes.

Offset 1, canonical program `A074705.P16843531673910082680`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1130 terms. -/
def A074705 (n : ℕ) : ℤ :=
  A074705.P16843531673910082680.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1130 terms. -/
def A074705.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079904.P1795222969403769225

`A076110(n+1)-1`
-/

namespace A079904.P1795222969403769225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076110 (n + 1) - 1

end

end A079904.P1795222969403769225

noncomputable section

/-- A079904: Triangle read by rows: T(n, k) = n*k, 0 <= k <= n.

Offset 0, canonical program `A079904.P1795222969403769225`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079904 (n : ℕ) : ℤ :=
  A079904.P1795222969403769225.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079904.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082888.P10948072775015990092

`A000040(lt[A001748(n+1), A050216(n)])`
-/

namespace A082888.P10948072775015990092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001748 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050216 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A082888.P10948072775015990092

noncomputable section

/-- A082888: Primes p such that (r-p)/log(p) > 3, where r is the next prime after p.

Offset 1, canonical program `A082888.P10948072775015990092`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A082888 (n : ℕ) : ℤ :=
  A082888.P10948072775015990092.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A082888.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089609.P11712678957692010116

`p?[A050216(n+1)]`
-/

namespace A089609.P11712678957692010116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050216 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089609.P11712678957692010116

noncomputable section

/-- A089609: Prime number of primes between squares of consecutive primes; or, primes occurring in A050216.

Offset 0, canonical program `A089609.P11712678957692010116`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A089609 (n : ℕ) : ℤ :=
  A089609.P11712678957692010116.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A089609.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104325.P3966084804121133080

`A023416(record[and(n+1, A073138(n))])`
-/

namespace A104325.P3966084804121133080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A073138 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A104325.P3966084804121133080

noncomputable section

/-- A104325: Number of runs of equal bits in the dual Zeckendorf representation of n (A104326).

Offset 0, canonical program `A104325.P3966084804121133080`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 652 terms. -/
def A104325 (n : ℕ) : ℤ :=
  A104325.P3966084804121133080.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 652 terms. -/
def A104325.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104587.P8087848092054787042

`A096038(n+1)-A059036(n)`
-/

namespace A104587.P8087848092054787042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096038 (n + 1) - A059036 n

end

end A104587.P8087848092054787042

noncomputable section

/-- A104587: Triangle read by rows, given by the matrix product A * B where A (A094727) = [1; 2, 3; 3, 4, 5; 4, 5, 6, 7; ...] and B = [1; 1, 1; 1, 1, 1; ...] (both are infinite lower triangular matrices with the other terms zero).

Offset 0, canonical program `A104587.P8087848092054787042`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104587 (n : ℕ) : ℤ :=
  A104587.P8087848092054787042.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104587.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128228.P15670148006439190940

`A076110(n+2)+A002262(n)`
-/

namespace A128228.P15670148006439190940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076110 (n + 2) + A002262 n

end

end A128228.P15670148006439190940

noncomputable section

/-- A128228: A128229 * A002260.

Offset 1, canonical program `A128228.P15670148006439190940`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128228 (n : ℕ) : ℤ :=
  A128228.P15670148006439190940.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128228.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131035.P6781276959955165699

`A131033(n+1)-char[∑[n+2]-1]`
-/

namespace A131035.P6781276959955165699
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131033 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A131035.P6781276959955165699

noncomputable section

/-- A131035: Triangle read by rows: A051340 * A129686 as infinite lower triangular matrices.

Offset 0, canonical program `A131035.P6781276959955165699`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131035 (n : ℕ) : ℤ :=
  A131035.P6781276959955165699.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131035.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131231.P11716200327351419876

`A032766(A131230(n+1))`
-/

namespace A131231.P11716200327351419876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A131230 (n + 1)).toNat

end

end A131231.P11716200327351419876

noncomputable section

/-- A131231: 3*A130296 - 2*A128174.

Offset 1, canonical program `A131231.P11716200327351419876`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131231 (n : ℕ) : ℤ :=
  A131231.P11716200327351419876.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131231.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131844.P2662401534427251052

`floor(3/2*A131843(n))`
-/

namespace A131844.P2662401534427251052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) / 2 * (A131843 n : ℚ)⌋

end

end A131844.P2662401534427251052

noncomputable section

/-- A131844: 3*A131821 - 2.

Offset 0, canonical program `A131844.P2662401534427251052`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131844 (n : ℕ) : ℤ :=
  A131844.P2662401534427251052.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131844.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131911.P5837187211749281594

`A131843(n)+A025581(n)%2`
-/

namespace A131911.P5837187211749281594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131843 n + Int.tmod (A025581 n) 2

end

end A131911.P5837187211749281594

noncomputable section

/-- A131911: 2*A131821 - A128174.

Offset 1, canonical program `A131911.P5837187211749281594`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131911 (n : ℕ) : ℤ :=
  A131911.P5837187211749281594.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131911.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134231.P5158807517234732924

`A134226(n+1)+A114327(n)`
-/

namespace A134231.P5158807517234732924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134226 (n + 1) + A114327 n

end

end A134231.P5158807517234732924

noncomputable section

/-- A134231: Triangle T(n, k) = n -k +1 with T(n, n-1) = 2*n-1 and T(n, n) = 1, read by rows.

Offset 1, canonical program `A134231.P5158807517234732924`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134231 (n : ℕ) : ℤ :=
  A134231.P5158807517234732924.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134231.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136579.P5647402470606448

`A116447(A133728(n+1))`
-/

namespace A136579.P5647402470606448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116447 (A133728 (n + 1)).toNat

end

end A136579.P5647402470606448

noncomputable section

/-- A136579: Triangle read by rows: A128174 * A136572.

Offset 0, canonical program `A136579.P5647402470606448`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2555 terms. -/
def A136579 (n : ℕ) : ℤ :=
  A136579.P5647402470606448.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2555 terms. -/
def A136579.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137259.P5308526100559247135

`A130493(n+1)-A130493(n+1)/A094587(n)`
-/

namespace A137259.P5308526100559247135
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130493 (n + 1) : ℚ) - (A130493 (n + 1) : ℚ) / (A094587 n : ℚ)

end

end A137259.P5308526100559247135

noncomputable section

/-- A137259: Triangle T(n, k) = n*( (n-1)! - (k-1)! ), read by rows.

Offset 1, canonical program `A137259.P5308526100559247135`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2415 terms. -/
def A137259 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A137259.P5308526100559247135.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2415 terms. -/
def A137259.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143104.P8981237344369215233

`A077051(A132119(n+1))`
-/

namespace A143104.P8981237344369215233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077051 (A132119 (n + 1)).toNat

end

end A143104.P8981237344369215233

noncomputable section

/-- A143104: Infinite Redheffer matrix read by upwards antidiagonals.

Offset 1, canonical program `A143104.P8981237344369215233`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A143104 (n : ℕ) : ℤ :=
  A143104.P8981237344369215233.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A143104.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144693.P3964769176750840430

`A101468(A066182(n+1)-A002024(n+1))`
-/

namespace A144693.P3964769176750840430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101468 (A066182 (n + 1) - A002024 (n + 1)).toNat

end

end A144693.P3964769176750840430

noncomputable section

/-- A144693: Triangle read by rows, A000012 * (3*A144328 - 2*A000012), where A000012 means a lower triangular matrix of all 1's.

Offset 1, canonical program `A144693.P3964769176750840430`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144693 (n : ℕ) : ℤ :=
  A144693.P3964769176750840430.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144693.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145482.P8102989359742908315

`p?[A097932(n+1)]`
-/

namespace A145482.P8102989359742908315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097932 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145482.P8102989359742908315

noncomputable section

/-- A145482: Primes p such that 2*p - 19 is prime.

Offset 1, canonical program `A145482.P8102989359742908315`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 715 terms. -/
def A145482 (n : ℕ) : ℤ :=
  A145482.P8102989359742908315.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 715 terms. -/
def A145482.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145484.P14134080532556417672

`p?[A098605(n+1)+6]`
-/

namespace A145484.P14134080532556417672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098605 (n + 1) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145484.P14134080532556417672

noncomputable section

/-- A145484: Primes p such that 2*p - 29 is a positive prime.

Offset 1, canonical program `A145484.P14134080532556417672`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 732 terms. -/
def A145484 (n : ℕ) : ℤ :=
  A145484.P14134080532556417672.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 732 terms. -/
def A145484.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145485.P6572718752289477689

`p?[A098605(n+1)+7]`
-/

namespace A145485.P6572718752289477689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098605 (n + 1) + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145485.P6572718752289477689

noncomputable section

/-- A145485: Primes p such that 2*p - 31 is prime.

Offset 1, canonical program `A145485.P6572718752289477689`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 714 terms. -/
def A145485 (n : ℕ) : ℤ :=
  A145485.P6572718752289477689.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 714 terms. -/
def A145485.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145486.P840962072842077579

`p?[A098605(n+1)+10]`
-/

namespace A145486.P840962072842077579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098605 (n + 1) + 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145486.P840962072842077579

noncomputable section

/-- A145486: Primes p such that 2*p - 37 is prime.

Offset 1, canonical program `A145486.P840962072842077579`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 699 terms. -/
def A145486 (n : ℕ) : ℤ :=
  A145486.P840962072842077579.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 699 terms. -/
def A145486.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A152883.P12280392344549894985

`A004736(n+1)*A130493(n+1)`
-/

namespace A152883.P12280392344549894985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A130493 (n + 1)

end

end A152883.P12280392344549894985

noncomputable section

/-- A152883: Triangle read by rows: T(n,k) is the number of permutations of {1,2,...,n} in which k is an excedance (n >= 2, 1 <= k <= n-1). An excedance of a permutation p is a value j such that p(j) > j.

Offset 2, canonical program `A152883.P12280392344549894985`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2346 terms. -/
def A152883 (n : ℕ) : ℤ :=
  A152883.P12280392344549894985.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2346 terms. -/
def A152883.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155550.P1170858249237067651

`A155546(n+1)-1`
-/

namespace A155550.P1170858249237067651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155546 (n + 1) - 1

end

end A155550.P1170858249237067651

noncomputable section

/-- A155550: Triangle read by rows where T(m,n)=2*m*n + m + n - 6.

Offset 1, canonical program `A155550.P1170858249237067651`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A155550 (n : ℕ) : ℤ :=
  A155550.P1170858249237067651.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A155550.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155704.P17941847991558611743

`A154685(n+1)+6`
-/

namespace A155704.P17941847991558611743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154685 (n + 1) + 6

end

end A155704.P17941847991558611743

noncomputable section

/-- A155704: Triangle read by rows where T(m,n)=2*m*n + m + n + 10.

Offset 1, canonical program `A155704.P17941847991558611743`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A155704 (n : ℕ) : ℤ :=
  A155704.P17941847991558611743.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A155704.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155705.P10801029224185168873

`A154685(n+1)-2`
-/

namespace A155705.P10801029224185168873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154685 (n + 1) - 2

end

end A155705.P10801029224185168873

noncomputable section

/-- A155705: Triangle read by rows where T(m,n) = 2*m*n + m + n + 2.

Offset 1, canonical program `A155705.P10801029224185168873`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A155705 (n : ℕ) : ℤ :=
  A155705.P10801029224185168873.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A155705.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155724.P4877932996777807972

`A155546(n+1)+1`
-/

namespace A155724.P4877932996777807972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155546 (n + 1) + 1

end

end A155724.P4877932996777807972

noncomputable section

/-- A155724: Triangle read by rows: T(n, k) = 2*n*k + n + k - 4.

Offset 1, canonical program `A155724.P4877932996777807972`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A155724 (n : ℕ) : ℤ :=
  A155724.P4877932996777807972.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A155724.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156006.P8984880958140237192

`A106566(A038722(n+2))+A106566(n)`
-/

namespace A156006.P8984880958140237192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106566 (A038722 (n + 2)).toNat + A106566 n

end

end A156006.P8984880958140237192

noncomputable section

/-- A156006: Triangle, read by rows, T(n, k) = ((n-k)/(n+k))*binomial(n+k, n) + (k/(2*n-k))*binomial(2*n -k, n), with T(0,0) = 1.

Offset 0, canonical program `A156006.P8984880958140237192`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A156006 (n : ℕ) : ℤ :=
  A156006.P8984880958140237192.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A156006.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157458.P16856629470642738053

`A157454(n+1)-A003982(n)`
-/

namespace A157458.P16856629470642738053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157454 (n + 1) - A003982 n

end

end A157458.P16856629470642738053

noncomputable section

/-- A157458: Triangle, read by rows, double tent function: T(n,k) = min(1 + 2*k, 1 + 2*(n-k), n).

Offset 0, canonical program `A157458.P16856629470642738053`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157458 (n : ℕ) : ℤ :=
  A157458.P16856629470642738053.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157458.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157522.P11153422520438621454

`A053616(A143182(n)+A127739(n+1))`
-/

namespace A157522.P11153422520438621454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053616 (A143182 n + A127739 (n + 1)).toNat

end

end A157522.P11153422520438621454

noncomputable section

/-- A157522: Triangle T(n, k) = f(n, k) + f(n, n-k) - 1, where f(n, k) = k if k <= floor(n/4), floor(n/2) - k if floor(n/4) < k <= floor(n/2), k - floor(n/2) if floor(n/2) < k <= floor(3*n/4), otherwise n-k, read by rows.

Offset 0, canonical program `A157522.P11153422520438621454`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A157522 (n : ℕ) : ℤ :=
  A157522.P11153422520438621454.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A157522.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A158821.P7475338757825604441

`abs(2-A131033(n+1))`
-/

namespace A158821.P7475338757825604441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A131033 (n + 1)|

end

end A158821.P7475338757825604441

noncomputable section

/-- A158821: Triangle read by rows: row n (n>=0) ends with 1, and for n>=1 begins with n; other entries are zero.

Offset 0, canonical program `A158821.P7475338757825604441`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158821 (n : ℕ) : ℤ :=
  A158821.P7475338757825604441.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158821.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A158897.P8888983181281037156

`A141620(n)+A158405(n+2)`
-/

namespace A158897.P8888983181281037156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141620 n + A158405 (n + 2)

end

end A158897.P8888983181281037156

noncomputable section

/-- A158897: The elements of A059100 at indices of triangular numbers, padded with zeros.

Offset 1, canonical program `A158897.P8888983181281037156`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141620, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A158897 (n : ℕ) : ℤ :=
  A158897.P8888983181281037156.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141620, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A158897.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163652.P16440456399062423218

`A154685(n+1)+2`
-/

namespace A163652.P16440456399062423218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154685 (n + 1) + 2

end

end A163652.P16440456399062423218

noncomputable section

/-- A163652: Triangle read by rows where T(n,m)=2*m*n + m + n + 6.

Offset 1, canonical program `A163652.P16440456399062423218`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163652 (n : ℕ) : ℤ :=
  A163652.P16440456399062423218.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163652.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A169591.P10839436935339926891

`A169590(n)%2`
-/

namespace A169591.P10839436935339926891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A169590 n) 2

end

end A169591.P10839436935339926891

noncomputable section

/-- A169591: Triangle T(n,k) with column n = A059841 if n even and column n = A000007 if n odd.

Offset 0, canonical program `A169591.P10839436935339926891`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A169591 (n : ℕ) : ℤ :=
  A169591.P10839436935339926891.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A169591.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A172292.P11252882940955182599

`A163676(n+1)+2`
-/

namespace A172292.P11252882940955182599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163676 (n + 1) + 2

end

end A172292.P11252882940955182599

noncomputable section

/-- A172292: Triangle read by rows: T(n, k) = (2*n+1)*(2*k+1), n>=1, 1<=k<=n.

Offset 1, canonical program `A172292.P11252882940955182599`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A172292 (n : ℕ) : ℤ :=
  A172292.P11252882940955182599.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A172292.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174376.P921593247632662995

`A016116(A157454(n+1))*A159623(n)`
-/

namespace A174376.P921593247632662995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A157454 (n + 1)).toNat * A159623 n

end

end A174376.P921593247632662995

noncomputable section

/-- A174376: Triangle T(n, k) = n!*q^k/(n-k)! if floor(n/2) > k-1 otherwise n!*q^(n-k)/k!, with q = 2, read by rows.

Offset 0, canonical program `A174376.P921593247632662995`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A174376 (n : ℕ) : ℤ :=
  A174376.P921593247632662995.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A174376.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174378.P1780650614204798079

`A016116(A157454(n+1))²*A159623(n)`
-/

namespace A174378.P1780650614204798079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A157454 (n + 1)).toNat ^ 2 * A159623 n

end

end A174378.P1780650614204798079

noncomputable section

/-- A174378: Triangle T(n, k) = n!*q^k/(n-k)! if floor(n/2) > k-1 otherwise n!*q^(n-k)/k!, with q = 4, read by rows.

Offset 0, canonical program `A174378.P1780650614204798079`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A174378 (n : ℕ) : ℤ :=
  A174378.P1780650614204798079.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A174378.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176227.P861613329376267430

`A176224(eq[0, A053398(n+1)])`
-/

namespace A176227.P861613329376267430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053398 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176224 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A176227.P861613329376267430

noncomputable section

/-- A176227: A symmetrical triangle sequence: T(n, k) = q^k + q^(n-k) - q^n, with q=4.

Offset 0, canonical program `A176227.P861613329376267430`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2550 terms. -/
def A176227 (n : ℕ) : ℤ :=
  A176227.P861613329376267430.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2550 terms. -/
def A176227.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184049.P6454318504092061159

`A074909(A132119(n+1))`
-/

namespace A184049.P6454318504092061159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (A132119 (n + 1)).toNat

end

end A184049.P6454318504092061159

noncomputable section

/-- A184049: T(n,k) is the number of order-preserving and order-decreasing partial isometries (of an n-chain) of height k (height of alpha = |Im(alpha)|).

Offset 0, canonical program `A184049.P6454318504092061159`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184049 (n : ℕ) : ℤ :=
  A184049.P6454318504092061159.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184049.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186352.P12779478422952954059

`eq[1, A131843(2*n+1)]-1`
-/

namespace A186352.P12779478422952954059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131843 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1

end

end A186352.P12779478422952954059

noncomputable section

/-- A186352: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) after g(j) when f(i)=g(j), where f and g are the odd numbers and the triangular numbers. Complement of A186353.

Offset 1, canonical program `A186352.P12779478422952954059`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186352 (n : ℕ) : ℤ :=
  A186352.P12779478422952954059.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186352.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187760.P14445012374948674786

`A143182(n)+1-A101688(n)`
-/

namespace A187760.P14445012374948674786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143182 n + (1 - A101688 n)

end

end A187760.P14445012374948674786

noncomputable section

/-- A187760: Table T(n,k) read by antidiagonals. T(n,k)=n-k+1, if n>=k, T(n,k)=k-n+2, if n < k.

Offset 1, canonical program `A187760.P14445012374948674786`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187760 (n : ℕ) : ℤ :=
  A187760.P14445012374948674786.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187760.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202451.P8607763733024815919

`A000045(A101688(n)*A143182(n))`
-/

namespace A202451.P8607763733024815919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A101688 n * A143182 n).toNat

end

end A202451.P8607763733024815919

noncomputable section

/-- A202451: Upper triangular Fibonacci matrix, by SW antidiagonals.

Offset 1, canonical program `A202451.P8607763733024815919`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A202451 (n : ℕ) : ℤ :=
  A202451.P8607763733024815919.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A202451.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A008379.P2564125293776314890

`∑[A008378(n)]`
-/

namespace A008379.P2564125293776314890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008379.P2564125293776314890

noncomputable section

/-- A008379: Crystal ball sequence for D_10 lattice.

Offset 0, canonical program `A008379.P2564125293776314890`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008379 (n : ℕ) : ℤ :=
  A008379.P2564125293776314890.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008379.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A013615.P5041340170745269079

`A013611(n)*A059268(n)`
-/

namespace A013615.P5041340170745269079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013611 n * A059268 n

end

end A013615.P5041340170745269079

noncomputable section

/-- A013615: Triangle of coefficients in expansion of (1+8x)^n.

Offset 0, canonical program `A013615.P5041340170745269079`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5763 terms. -/
def A013615 (n : ℕ) : ℤ :=
  A013615.P5041340170745269079.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5763 terms. -/
def A013615.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A013619.P11563524332984274693

`A013613(n)*A059268(n)`
-/

namespace A013619.P11563524332984274693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013613 n * A059268 n

end

end A013619.P11563524332984274693

noncomputable section

/-- A013619: Triangle of coefficients in expansion of (1+12x)^n.

Offset 0, canonical program `A013619.P11563524332984274693`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4266 terms. -/
def A013619 (n : ℕ) : ℤ :=
  A013619.P11563524332984274693.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4266 terms. -/
def A013619.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A013625.P14020138275572852531

`A013623(n)*A130321(n)`
-/

namespace A013625.P14020138275572852531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013623 n * A130321 n

end

end A013625.P14020138275572852531

noncomputable section

/-- A013625: Triangle of coefficients in expansion of (4+7x)^n.

Offset 0, canonical program `A013625.P14020138275572852531`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4904 terms. -/
def A013625 (n : ℕ) : ℤ :=
  A013625.P14020138275572852531.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4904 terms. -/
def A013625.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A013627.P4308516248732266953

`A013624(n)*A130321(n)`
-/

namespace A013627.P4308516248732266953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013624 n * A130321 n

end

end A013627.P4308516248732266953

noncomputable section

/-- A013627: Triangle of coefficients in expansion of (6+7x)^n.

Offset 0, canonical program `A013627.P4308516248732266953`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4230 terms. -/
def A013627 (n : ℕ) : ℤ :=
  A013627.P4308516248732266953.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4230 terms. -/
def A013627.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A013628.P5912449761623070188

`A013621(n)*A130321(n)`
-/

namespace A013628.P5912449761623070188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013621 n * A130321 n

end

end A013628.P5912449761623070188

noncomputable section

/-- A013628: Triangle of coefficients in expansion of (4 + 5*x)^n.

Offset 0, canonical program `A013628.P5912449761623070188`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5728 terms. -/
def A013628 (n : ℕ) : ℤ :=
  A013628.P5912449761623070188.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5728 terms. -/
def A013628.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020652.P12873781580618070316

`A002260(A166527(n+1))`
-/

namespace A020652.P12873781580618070316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A166527 (n + 1)).toNat

end

end A020652.P12873781580618070316

noncomputable section

/-- A020652: Numerators in canonical bijection from positive integers to positive rationals.

Offset 1, canonical program `A020652.P12873781580618070316`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7007 terms. -/
def A020652 (n : ℕ) : ℤ :=
  A020652.P12873781580618070316.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7007 terms. -/
def A020652.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022555.P8597993334409940497

`comp[A105125(n)]`
-/

namespace A022555.P8597993334409940497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105125 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A022555.P8597993334409940497

noncomputable section

/-- A022555: Positive integers that are not the sum of two nonnegative cubes.

Offset 1, canonical program `A022555.P8597993334409940497`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022555 (n : ℕ) : ℤ :=
  (A022555.P8597993334409940497.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022555.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023251.P18393185888038551927

`∩[A023216(n+1), A156005(n+1)]`
-/

namespace A023251.P18393185888038551927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156005 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023251.P18393185888038551927

noncomputable section

/-- A023251: Primes that remain prime through 2 iterations of function f(x) = 4x + 9.

Offset 1, canonical program `A023251.P18393185888038551927`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1822 terms. -/
def A023251 (n : ℕ) : ℤ :=
  (A023251.P18393185888038551927.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1822 terms. -/
def A023251.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024592.P4824825726536328379

`A213774(∑[n+1]-(or(1, n)-1)/2)`
-/

namespace A024592.P4824825726536328379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213774 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) - ((Nat.lor 1 n : ℤ) - 1 : ℚ) / 2)).toNat

end

end A024592.P4824825726536328379

noncomputable section

/-- A024592: a(n) = s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n+1-k), where k = [ (n+1)/2 ], s = (F(2), F(3), ...), t = (odd natural numbers).

Offset 1, canonical program `A024592.P4824825726536328379`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A024592 (n : ℕ) : ℤ :=
  A024592.P4824825726536328379.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A024592.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026154.P6977599240601749339

`2*A026126(n+4)-∑[A026126(n+4)]`
-/

namespace A026154.P6977599240601749339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026126 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026126 (n + 4) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026154.P6977599240601749339

noncomputable section

/-- A026154: a(n) = T(n,n-3), where T is the array in A026148.

Offset 3, canonical program `A026154.P6977599240601749339`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A026154 (n : ℕ) : ℤ :=
  A026154.P6977599240601749339.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A026154.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A035259.P13691517442612984009

`lt[1, a(A035202(n))+2]` with `a(0)=-1, a(1)=2, a(2)=2, a(3)=1`
-/

namespace A035259.P13691517442612984009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-1, 2, 2, 1] fun n f2 =>
  f2 (A035202 n).toNat + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A035259.P13691517442612984009

noncomputable section

/-- A035259: Indices of the nonzero terms in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m= 20.

Offset 1, canonical program `A035259.P13691517442612984009`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2785 terms. -/
def A035259 (n : ℕ) : ℤ :=
  (A035259.P13691517442612984009.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2785 terms. -/
def A035259.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038210.P16937682952618424332

`A038208(n)*A059268(n)`
-/

namespace A038210.P16937682952618424332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038208 n * A059268 n

end

end A038210.P16937682952618424332

noncomputable section

/-- A038210: Triangle whose (i,j)-th entry is binomial(i,j)*2^(i-j)*4^j.

Offset 0, canonical program `A038210.P16937682952618424332`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8600 terms. -/
def A038210 (n : ℕ) : ℤ :=
  A038210.P16937682952618424332.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8600 terms. -/
def A038210.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038218.P1610424104128460836

`A013611(n)*A036561(n)`
-/

namespace A038218.P1610424104128460836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013611 n * A036561 n

end

end A038218.P1610424104128460836

noncomputable section

/-- A038218: Triangle whose (i,j)-th entry is binomial(i,j)*2^(i-j)*12^j (with i, j >= 0).

Offset 0, canonical program `A038218.P1610424104128460836`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4074 terms. -/
def A038218 (n : ℕ) : ℤ :=
  A038218.P1610424104128460836.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4074 terms. -/
def A038218.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038222.P11897565041674984479

`A038220(n)*A059268(n)`
-/

namespace A038222.P11897565041674984479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038220 n * A059268 n

end

end A038222.P11897565041674984479

noncomputable section

/-- A038222: Triangle whose (i,j)-th entry is binomial(i,j)*3^(i-j)*4^j.

Offset 0, canonical program `A038222.P11897565041674984479`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7323 terms. -/
def A038222 (n : ℕ) : ℤ :=
  A038222.P11897565041674984479.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7323 terms. -/
def A038222.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038230.P9041281356629012167

`A038224(n)*A059268(n)`
-/

namespace A038230.P9041281356629012167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038224 n * A059268 n

end

end A038230.P9041281356629012167

noncomputable section

/-- A038230: Triangle whose (i,j)-th entry is binomial(i,j)*3^(i-j)*12^j.

Offset 0, canonical program `A038230.P9041281356629012167`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3807 terms. -/
def A038230 (n : ℕ) : ℤ :=
  A038230.P9041281356629012167.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3807 terms. -/
def A038230.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038232.P2014966778022240931

`A038231(n)*A059268(n)`
-/

namespace A038232.P2014966778022240931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038231 n * A059268 n

end

end A038232.P2014966778022240931

noncomputable section

/-- A038232: Triangle whose (i,j)-th entry is binomial(i,j)*4^(i-j)*2^j.

Offset 0, canonical program `A038232.P2014966778022240931`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8557 terms. -/
def A038232 (n : ℕ) : ℤ :=
  A038232.P2014966778022240931.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8557 terms. -/
def A038232.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038236.P5554220315760387373

`A036561(n)*A038208(n)`
-/

namespace A038236.P5554220315760387373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n * A038208 n

end

end A038236.P5554220315760387373

noncomputable section

/-- A038236: Triangle whose (i,j)-th entry is binomial(i,j)*4^(i-j)*6^j.

Offset 0, canonical program `A038236.P5554220315760387373`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5305 terms. -/
def A038236 (n : ℕ) : ℤ :=
  A038236.P5554220315760387373.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5305 terms. -/
def A038236.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038240.P4209308538273484688

`A038216(n)*A130321(n)`
-/

namespace A038240.P4209308538273484688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038216 n * A130321 n

end

end A038240.P4209308538273484688

noncomputable section

/-- A038240: Triangle whose (i,j)-th entry is binomial(i,j)*4^(i-j)*10^j.

Offset 0, canonical program `A038240.P4209308538273484688`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4060 terms. -/
def A038240 (n : ℕ) : ℤ :=
  A038240.P4209308538273484688.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4060 terms. -/
def A038240.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038241.P10458296533401089343

`A038217(n)*A130321(n)`
-/

namespace A038241.P10458296533401089343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038217 n * A130321 n

end

end A038241.P10458296533401089343

noncomputable section

/-- A038241: Triangle whose (i,j)-th entry is binomial(i,j)*4^(i-j)*11^j.

Offset 0, canonical program `A038241.P10458296533401089343`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3802 terms. -/
def A038241 (n : ℕ) : ℤ :=
  A038241.P10458296533401089343.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3802 terms. -/
def A038241.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038245.P18047517022959830435

`lcm(A013610(n), A038243(n))`
-/

namespace A038245.P18047517022959830435
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013610 n) (A038243 n)

end

end A038245.P18047517022959830435

noncomputable section

/-- A038245: Triangle whose (i,j)-th entry is binomial(i,j)*5^(i-j)*3^j.

Offset 0, canonical program `A038245.P18047517022959830435`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6368 terms. -/
def A038245 (n : ℕ) : ℤ :=
  (A038245.P18047517022959830435.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6368 terms. -/
def A038245.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038246.P15260867033814283851

`A038244(n)*A059268(n)`
-/

namespace A038246.P15260867033814283851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038244 n * A059268 n

end

end A038246.P15260867033814283851

noncomputable section

/-- A038246: Triangle whose (i,j)-th entry is binomial(i,j)*5^(i-j)*4^j.

Offset 0, canonical program `A038246.P15260867033814283851`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5716 terms. -/
def A038246 (n : ℕ) : ℤ :=
  A038246.P15260867033814283851.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5716 terms. -/
def A038246.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038248.P5226553571580903322

`lcm(A013610(n), A038244(n))`
-/

namespace A038248.P5226553571580903322
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013610 n) (A038244 n)

end

end A038248.P5226553571580903322

noncomputable section

/-- A038248: Triangle whose (i,j)-th entry is binomial(i,j)*5^(i-j)*6^j.

Offset 0, canonical program `A038248.P5226553571580903322`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4895 terms. -/
def A038248 (n : ℕ) : ℤ :=
  (A038248.P5226553571580903322.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4895 terms. -/
def A038248.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038256.P10874332263028825232

`A038255(n)*A059268(n)`
-/

namespace A038256.P10874332263028825232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038255 n * A059268 n

end

end A038256.P10874332263028825232

noncomputable section

/-- A038256: Triangle whose (i,j)-th entry is binomial(i,j)*6^(i-j)*2^j.

Offset 0, canonical program `A038256.P10874332263028825232`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6353 terms. -/
def A038256 (n : ℕ) : ℤ :=
  A038256.P10874332263028825232.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6353 terms. -/
def A038256.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038260.P1305462305108585901

`A036561(n)*A038220(n)`
-/

namespace A038260.P1305462305108585901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n * A038220 n

end

end A038260.P1305462305108585901

noncomputable section

/-- A038260: Triangle read by rows: T(n,k) = binomial(n,k)*6^(n-k)*6^k, 0<=k<=n.

Offset 0, canonical program `A038260.P1305462305108585901`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4506 terms. -/
def A038260 (n : ℕ) : ℤ :=
  A038260.P1305462305108585901.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4506 terms. -/
def A038260.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038264.P12280773742557705400

`A038259(n)*A059268(n)`
-/

namespace A038264.P12280773742557705400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038259 n * A059268 n

end

end A038264.P12280773742557705400

noncomputable section

/-- A038264: Triangle whose (i,j)-th entry is binomial(i,j)*6^(i-j)*10^j.

Offset 0, canonical program `A038264.P12280773742557705400`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3620 terms. -/
def A038264 (n : ℕ) : ℤ :=
  A038264.P12280773742557705400.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3620 terms. -/
def A038264.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038265.P17989473238907539147

`A038229(n)*A130321(n)`
-/

namespace A038265.P17989473238907539147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038229 n * A130321 n

end

end A038265.P17989473238907539147

noncomputable section

/-- A038265: Triangle whose (i,j)-th entry is binomial(i,j)*6^(i-j)*11^j.

Offset 0, canonical program `A038265.P17989473238907539147`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3530 terms. -/
def A038265 (n : ℕ) : ℤ :=
  A038265.P17989473238907539147.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3530 terms. -/
def A038265.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038268.P54957190970159689

`A027466(n)*A059268(n)`
-/

namespace A038268.P54957190970159689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027466 n * A059268 n

end

end A038268.P54957190970159689

noncomputable section

/-- A038268: Triangle whose (i,j)-th entry is binomial(i,j)*7^(i-j)*2^j.

Offset 0, canonical program `A038268.P54957190970159689`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5692 terms. -/
def A038268 (n : ℕ) : ℤ :=
  A038268.P54957190970159689.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5692 terms. -/
def A038268.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038269.P5706044203948938292

`lcm(A013610(n), A027466(n))`
-/

namespace A038269.P5706044203948938292
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013610 n) (A027466 n)

end

end A038269.P5706044203948938292

noncomputable section

/-- A038269: Triangle whose (i,j)-th entry is binomial(i,j)*7^(i-j)*3^j.

Offset 0, canonical program `A038269.P5706044203948938292`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5275 terms. -/
def A038269 (n : ℕ) : ℤ :=
  (A038269.P5706044203948938292.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5275 terms. -/
def A038269.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038271.P10808170088373566834

`A000351(A002262(n))*A027466(n)`
-/

namespace A038271.P10808170088373566834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 (A002262 n).toNat * A027466 n

end

end A038271.P10808170088373566834

noncomputable section

/-- A038271: Triangle whose (i,j)-th entry is binomial(i,j)*7^(i-j)*5^j.

Offset 0, canonical program `A038271.P10808170088373566834`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4498 terms. -/
def A038271 (n : ℕ) : ℤ :=
  A038271.P10808170088373566834.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4498 terms. -/
def A038271.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038275.P16286396353460600798

`lcm(A013616(n), A027466(n))`
-/

namespace A038275.P16286396353460600798
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013616 n) (A027466 n)

end

end A038275.P16286396353460600798

noncomputable section

/-- A038275: Triangle whose (i,j)-th entry is binomial(i,j)*7^(i-j)*9^j.

Offset 0, canonical program `A038275.P16286396353460600798`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3615 terms. -/
def A038275 (n : ℕ) : ℤ :=
  (A038275.P16286396353460600798.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3615 terms. -/
def A038275.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038277.P4730209142109428037

`lcm(A013618(n), A027466(n))`
-/

namespace A038277.P4730209142109428037
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013618 n) (A027466 n)

end

end A038277.P4730209142109428037

noncomputable section

/-- A038277: Triangle whose (i,j)-th entry is binomial(i,j)*7^(i-j)*11^j.

Offset 0, canonical program `A038277.P4730209142109428037`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3363 terms. -/
def A038277 (n : ℕ) : ℤ :=
  (A038277.P4730209142109428037.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3363 terms. -/
def A038277.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038279.P10513893213796960196

`A038231(n)*A130321(n)`
-/

namespace A038279.P10513893213796960196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038231 n * A130321 n

end

end A038279.P10513893213796960196

noncomputable section

/-- A038279: Triangle whose (i,j)-th entry is binomial(i,j)*8^(i-j)*1^j.

Offset 0, canonical program `A038279.P10513893213796960196`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5680 terms. -/
def A038279 (n : ℕ) : ℤ :=
  A038279.P10513893213796960196.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5680 terms. -/
def A038279.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038281.P5950782525459084005

`A036561(n)*A038231(n)`
-/

namespace A038281.P5950782525459084005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n * A038231 n

end

end A038281.P5950782525459084005

noncomputable section

/-- A038281: Triangle whose (i,j)-th entry is binomial(i,j)*8^(i-j)*3^j.

Offset 0, canonical program `A038281.P5950782525459084005`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4869 terms. -/
def A038281 (n : ℕ) : ℤ :=
  A038281.P5950782525459084005.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4869 terms. -/
def A038281.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038283.P4750763514084286301

`A038231(n)*A232646(n+1)`
-/

namespace A038283.P4750763514084286301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038231 n * A232646 (n + 1)

end

end A038283.P4750763514084286301

noncomputable section

/-- A038283: Triangle whose (i,j)-th entry is binomial(i,j)*8^(i-j)*5^j.

Offset 0, canonical program `A038283.P4750763514084286301`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4216 terms. -/
def A038283 (n : ℕ) : ℤ :=
  A038283.P4750763514084286301.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4216 terms. -/
def A038283.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038285.P11789365728904312411

`A036565(n)*A038231(n)`
-/

namespace A038285.P11789365728904312411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036565 n * A038231 n

end

end A038285.P11789365728904312411

noncomputable section

/-- A038285: Triangle whose (i,j)-th entry is binomial(i,j)*8^(i-j)*7^j.

Offset 0, canonical program `A038285.P11789365728904312411`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3779 terms. -/
def A038285 (n : ℕ) : ℤ :=
  A038285.P11789365728904312411.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3779 terms. -/
def A038285.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038287.P6371543836308166356

`A036561(n)*A038233(n)`
-/

namespace A038287.P6371543836308166356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n * A038233 n

end

end A038287.P6371543836308166356

noncomputable section

/-- A038287: Triangle whose (i,j)-th entry is binomial(i,j)*8^(i-j)*9^j.

Offset 0, canonical program `A038287.P6371543836308166356`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3520 terms. -/
def A038287 (n : ℕ) : ℤ :=
  A038287.P6371543836308166356.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3520 terms. -/
def A038287.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038292.P13230035069150523367

`A038291(n)*A059268(n)`
-/

namespace A038292.P13230035069150523367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038291 n * A059268 n

end

end A038292.P13230035069150523367

noncomputable section

/-- A038292: Triangle whose (i,j)-th entry is binomial(i,j)*9^(i-j)*2^j.

Offset 0, canonical program `A038292.P13230035069150523367`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4769 terms. -/
def A038292 (n : ℕ) : ℤ :=
  A038292.P13230035069150523367.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4769 terms. -/
def A038292.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038296.P12595348449861327754

`A038293(n)*A059268(n)`
-/

namespace A038296.P12595348449861327754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038293 n * A059268 n

end

end A038296.P12595348449861327754

noncomputable section

/-- A038296: Triangle whose (i,j)-th entry is binomial(i,j)*9^(i-j)*6^j.

Offset 0, canonical program `A038296.P12595348449861327754`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3773 terms. -/
def A038296 (n : ℕ) : ℤ :=
  A038296.P12595348449861327754.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3773 terms. -/
def A038296.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038297.P5251436414743647897

`A013624(n)*A140303(n)`
-/

namespace A038297.P5251436414743647897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013624 n * A140303 n

end

end A038297.P5251436414743647897

noncomputable section

/-- A038297: Triangle whose (i,j)-th entry is binomial(i,j)*9^(i-j)*7^j.

Offset 0, canonical program `A038297.P5251436414743647897`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3604 terms. -/
def A038297 (n : ℕ) : ℤ :=
  A038297.P5251436414743647897.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3604 terms. -/
def A038297.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038300.P16302804784907082499

`A038295(n)*A059268(n)`
-/

namespace A038300.P16302804784907082499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038295 n * A059268 n

end

end A038300.P16302804784907082499

noncomputable section

/-- A038300: Triangle whose (i,j)-th entry is binomial(i,j)*9^(i-j)*10^j.

Offset 0, canonical program `A038300.P16302804784907082499`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3272 terms. -/
def A038300 (n : ℕ) : ℤ :=
  A038300.P16302804784907082499.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3272 terms. -/
def A038300.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038301.P13802189218561258901

`A038229(n)*A140303(n)`
-/

namespace A038301.P13802189218561258901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038229 n * A140303 n

end

end A038301.P13802189218561258901

noncomputable section

/-- A038301: Triangle whose (i,j)-th entry is binomial(i,j)*9^(i-j)*11^j.

Offset 0, canonical program `A038301.P13802189218561258901`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3118 terms. -/
def A038301 (n : ℕ) : ℤ :=
  A038301.P13802189218561258901.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3118 terms. -/
def A038301.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038303.P9809714490949260166

`A038243(n)*A130321(n)`
-/

namespace A038303.P9809714490949260166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038243 n * A130321 n

end

end A038303.P9809714490949260166

noncomputable section

/-- A038303: Triangle whose (i,j)-th entry is binomial(i,j)*10^(i-j)*1^j.

Offset 0, canonical program `A038303.P9809714490949260166`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4760 terms. -/
def A038303 (n : ℕ) : ℤ :=
  A038303.P9809714490949260166.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4760 terms. -/
def A038303.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038304.P16871392387466480336

`A038244(n)*A130321(n)`
-/

namespace A038304.P16871392387466480336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038244 n * A130321 n

end

end A038304.P16871392387466480336

noncomputable section

/-- A038304: Triangle whose (i,j)-th entry is binomial(i,j)*10^(i-j)*2^j.

Offset 0, canonical program `A038304.P16871392387466480336`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4476 terms. -/
def A038304 (n : ℕ) : ℤ :=
  A038304.P16871392387466480336.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4476 terms. -/
def A038304.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038308.P13048394951449472334

`A036561(n)*A038244(n)`
-/

namespace A038308.P13048394951449472334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n * A038244 n

end

end A038308.P13048394951449472334

noncomputable section

/-- A038308: Triangle whose (i,j)-th entry is binomial(i,j)*10^(i-j)*6^j.

Offset 0, canonical program `A038308.P13048394951449472334`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3599 terms. -/
def A038308 (n : ℕ) : ℤ :=
  A038308.P13048394951449472334.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3599 terms. -/
def A038308.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038309.P12037403270942558099

`A036565(n)*A038243(n)`
-/

namespace A038309.P12037403270942558099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036565 n * A038243 n

end

end A038309.P12037403270942558099

noncomputable section

/-- A038309: Triangle whose (i,j)-th entry is binomial(i,j)*10^(i-j)*7^j.

Offset 0, canonical program `A038309.P12037403270942558099`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3511 terms. -/
def A038309 (n : ℕ) : ℤ :=
  A038309.P12037403270942558099.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3511 terms. -/
def A038309.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038311.P7291639214337696738

`A038251(n)*A130321(n)`
-/

namespace A038311.P7291639214337696738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038251 n * A130321 n

end

end A038311.P7291639214337696738

noncomputable section

/-- A038311: Triangle whose (i,j)-th entry is binomial(i,j)*10^(i-j)*9^j.

Offset 0, canonical program `A038311.P7291639214337696738`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3268 terms. -/
def A038311 (n : ℕ) : ℤ :=
  A038311.P7291639214337696738.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3268 terms. -/
def A038311.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038312.P16927072279910717967

`A038307(n)*A059268(n)`
-/

namespace A038312.P16927072279910717967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038307 n * A059268 n

end

end A038312.P16927072279910717967

noncomputable section

/-- A038312: Triangle whose (i,j)-th entry is binomial(i,j)*10^(i-j)*10^j.

Offset 0, canonical program `A038312.P16927072279910717967`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3114 terms. -/
def A038312 (n : ℕ) : ℤ :=
  A038312.P16927072279910717967.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3114 terms. -/
def A038312.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038313.P14065364112438360125

`A038253(n)*A130321(n)`
-/

namespace A038313.P14065364112438360125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038253 n * A130321 n

end

end A038313.P14065364112438360125

noncomputable section

/-- A038313: Triangle whose (i,j)-th entry is binomial(i,j)*10^(i-j)*11^j.

Offset 0, canonical program `A038313.P14065364112438360125`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3036 terms. -/
def A038313 (n : ℕ) : ℤ :=
  A038313.P14065364112438360125.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3036 terms. -/
def A038313.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038318.P611432276331124910

`A038316(n)*A059268(n)`
-/

namespace A038318.P611432276331124910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038316 n * A059268 n

end

end A038318.P611432276331124910

noncomputable section

/-- A038318: Triangle whose (i,j)-th entry is binomial(i,j)*11^(i-j)*4^j.

Offset 0, canonical program `A038318.P611432276331124910`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3761 terms. -/
def A038318 (n : ℕ) : ℤ :=
  A038318.P611432276331124910.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3761 terms. -/
def A038318.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038320.P3855008514307432265

`A038317(n)*A059268(n)`
-/

namespace A038320.P3855008514307432265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038317 n * A059268 n

end

end A038320.P3855008514307432265

noncomputable section

/-- A038320: Triangle whose (i,j)-th entry is binomial(i,j)*11^(i-j)*6^j.

Offset 0, canonical program `A038320.P3855008514307432265`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3506 terms. -/
def A038320 (n : ℕ) : ℤ :=
  A038320.P3855008514307432265.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3506 terms. -/
def A038320.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038324.P6800404260969209044

`A038319(n)*A059268(n)`
-/

namespace A038324.P6800404260969209044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038319 n * A059268 n

end

end A038324.P6800404260969209044

noncomputable section

/-- A038324: Triangle read by rows whose (i,j)-th entry is binomial(i,j)*11^(i-j)*10^j.

Offset 0, canonical program `A038324.P6800404260969209044`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3032 terms. -/
def A038324 (n : ℕ) : ℤ :=
  A038324.P6800404260969209044.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3032 terms. -/
def A038324.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038327.P13753667775385349031

`A038255(n)*A130321(n)`
-/

namespace A038327.P13753667775385349031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038255 n * A130321 n

end

end A038327.P13753667775385349031

noncomputable section

/-- A038327: Triangle whose (i,j)-th entry is binomial(i,j)*12^(i-j)*1^j.

Offset 0, canonical program `A038327.P13753667775385349031`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4189 terms. -/
def A038327 (n : ℕ) : ℤ :=
  A038327.P13753667775385349031.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4189 terms. -/
def A038327.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038329.P4069789945351460797

`A036561(n)*A038255(n)`
-/

namespace A038329.P4069789945351460797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n * A038255 n

end

end A038329.P4069789945351460797

noncomputable section

/-- A038329: Triangle whose (i,j)-th entry is binomial(i,j)*12^(i-j)*3^j.

Offset 0, canonical program `A038329.P4069789945351460797`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3755 terms. -/
def A038329 (n : ℕ) : ℤ :=
  A038329.P4069789945351460797.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3755 terms. -/
def A038329.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038331.P5405017633700267871

`A038231(n)*A120027(n)`
-/

namespace A038331.P5405017633700267871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038231 n * A120027 n

end

end A038331.P5405017633700267871

noncomputable section

/-- A038331: Triangle whose (i,j)-th entry is binomial(i,j)*12^(i-j)*5^j.

Offset 0, canonical program `A038331.P5405017633700267871`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3502 terms. -/
def A038331 (n : ℕ) : ℤ :=
  A038331.P5405017633700267871.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3502 terms. -/
def A038331.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038333.P10434678551363861500

`A036565(n)*A038255(n)`
-/

namespace A038333.P10434678551363861500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036565 n * A038255 n

end

end A038333.P10434678551363861500

noncomputable section

/-- A038333: Triangle whose (i,j)-th entry is binomial(i,j)*12^(i-j)*7^j.

Offset 0, canonical program `A038333.P10434678551363861500`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3260 terms. -/
def A038333 (n : ℕ) : ℤ :=
  A038333.P10434678551363861500.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3260 terms. -/
def A038333.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038335.P623811621264060916

`A036561(n)*A038257(n)`
-/

namespace A038335.P623811621264060916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n * A038257 n

end

end A038335.P623811621264060916

noncomputable section

/-- A038335: Triangle whose (i,j)-th entry is binomial(i,j)*12^(i-j)*9^j.

Offset 0, canonical program `A038335.P623811621264060916`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3028 terms. -/
def A038335 (n : ℕ) : ℤ :=
  A038335.P623811621264060916.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3028 terms. -/
def A038335.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043302.P8846524501448389907

`A001498(n)*A130321(n)`
-/

namespace A043302.P8846524501448389907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001498 n * A130321 n

end

end A043302.P8846524501448389907

noncomputable section

/-- A043302: Triangular table of 2^n *(n+k)! / ((n-k)! * k! * 4^k).

Offset 1, canonical program `A043302.P8846524501448389907`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1947 terms. -/
def A043302 (n : ℕ) : ℤ :=
  A043302.P8846524501448389907.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1947 terms. -/
def A043302.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045936.P1176020740706065092

`A045935(eq[1, A045935(n+2)-A045935(n+1)]+1)`
-/

namespace A045936.P1176020740706065092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045935 (n + 2) - A045935 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045935 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A045936.P1176020740706065092

noncomputable section

/-- A045936: Numbers n such that n through n+7 are divisible by the same number of distinct primes.

Offset 1, canonical program `A045936.P1176020740706065092`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3449 terms. -/
def A045936 (n : ℕ) : ℤ :=
  A045936.P1176020740706065092.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3449 terms. -/
def A045936.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046208.P6883400748665039636

`A046207(A152271(n))-A059841(n)`
-/

namespace A046208.P6883400748665039636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046207 (A152271 n).toNat - A059841 n

end

end A046208.P6883400748665039636

noncomputable section

/-- A046208: In Leibniz's Harmonic Triangle, write the numerator first and then the denominator of each element to the right of the central elements.

Offset 1, canonical program `A046208.P6883400748665039636`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046208 (n : ℕ) : ℤ :=
  A046208.P6883400748665039636.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046208.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046326.P8551065587354507488

`A000040(n+1)*A046325(n+2)`
-/

namespace A046326.P8551065587354507488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A046325 (n + 2)

end

end A046326.P8551065587354507488

noncomputable section

/-- A046326: Product of 8 successive primes.

Offset 1, canonical program `A046326.P8551065587354507488`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A046326 (n : ℕ) : ℤ :=
  A046326.P8551065587354507488.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A046326.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048786.P16977385035580172812

`A038231(n)*A173333(n+1)`
-/

namespace A048786.P16977385035580172812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038231 n * A173333 (n + 1)

end

end A048786.P16977385035580172812

noncomputable section

/-- A048786: Triangle of coefficients of certain exponential convolution polynomials.

Offset 1, canonical program `A048786.P16977385035580172812`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1378 terms. -/
def A048786 (n : ℕ) : ℤ :=
  A048786.P16977385035580172812.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1378 terms. -/
def A048786.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051125.P9703982554680975134

`A003984(n)+1`
-/

namespace A051125.P9703982554680975134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003984 n + 1

end

end A051125.P9703982554680975134

noncomputable section

/-- A051125: Table T(n,k) = max{n,k} read by antidiagonals (n >= 1, k >= 1).

Offset 1, canonical program `A051125.P9703982554680975134`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051125 (n : ℕ) : ℤ :=
  A051125.P9703982554680975134.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051125.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A054445.P13488964530829040640

`A030237(∑[char[∑[n]]]²-n)`
-/

namespace A054445.P13488964530829040640
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030237 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A054445.P13488964530829040640

noncomputable section

/-- A054445: Triangle read by rows giving partial row sums of triangle A033184(n,m), n >= m >= 1 (Catalan triangle).

Offset 0, canonical program `A054445.P13488964530829040640`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054445 (n : ℕ) : ℤ :=
  A054445.P13488964530829040640.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054445.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055372.P3710115892001001327

`ceil(A038208(n)/2)`
-/

namespace A055372.P3710115892001001327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A038208 n : ℚ) / 2⌉

end

end A055372.P3710115892001001327

noncomputable section

/-- A055372: Invert transform of Pascal's triangle A007318.

Offset 0, canonical program `A055372.P3710115892001001327`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055372 (n : ℕ) : ℤ :=
  A055372.P3710115892001001327.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055372.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056975.P9115286003234946508

`A056978(A065883(n+1))`
-/

namespace A056975.P9115286003234946508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056978 (A065883 (n + 1)).toNat

end

end A056975.P9115286003234946508

noncomputable section

/-- A056975: Number of blocks of {0, 0, 1} in binary expansion of n.

Offset 1, canonical program `A056975.P9115286003234946508`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056975 (n : ℕ) : ℤ :=
  A056975.P9115286003234946508.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056975.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057903.P7767242056551869797

`comp[A105125(comp[∑[n+1]])]`
-/

namespace A057903.P7767242056551869797
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105125 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A057903.P7767242056551869797

noncomputable section

/-- A057903: Positive integers that are not the sum of exactly two positive cubes.

Offset 1, canonical program `A057903.P7767242056551869797`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057903 (n : ℕ) : ℤ :=
  (A057903.P7767242056551869797.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057903.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059365.P1128714534162912503

`A106566(A028310(n))`
-/

namespace A059365.P1128714534162912503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106566 (A028310 n).toNat

end

end A059365.P1128714534162912503

noncomputable section

/-- A059365: Another version of the Catalan triangle: T(r,s) = binomial(2*r-s-1,r-1) - binomial(2*r-s-1,r), r>=0, 0 <= s <= r.

Offset 0, canonical program `A059365.P1128714534162912503`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059365 (n : ℕ) : ℤ :=
  A059365.P1128714534162912503.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059365.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059481.P9969934564956536567

`abs(A027555(n))`
-/

namespace A059481.P9969934564956536567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A027555 n|

end

end A059481.P9969934564956536567

noncomputable section

/-- A059481: Triangle read by rows. T(n, k) = binomial(n+k-1, k) for 0 <= k <= n.

Offset 0, canonical program `A059481.P9969934564956536567`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A027555, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A059481 (n : ℕ) : ℤ :=
  A059481.P9969934564956536567.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A027555, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A059481.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A062052.P7099610489018356514

`record[A115216(A014132(n+2))]`
-/

namespace A062052.P7099610489018356514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115216 (A014132 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062052.P7099610489018356514

noncomputable section

/-- A062052: Numbers with exactly 2 odd integers in their Collatz (or 3x+1) trajectory.

Offset 1, canonical program `A062052.P7099610489018356514`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A062052 (n : ℕ) : ℤ :=
  A062052.P7099610489018356514.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A062052.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065931.P6308883333468479651

`A000217(A094727(n+1))*A001498(n)`
-/

namespace A065931.P6308883333468479651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A094727 (n + 1)).toNat * A001498 n

end

end A065931.P6308883333468479651

noncomputable section

/-- A065931: Triangle of coefficients of Bessel polynomials {y_n(x)}'.

Offset 1, canonical program `A065931.P6308883333468479651`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1827 terms. -/
def A065931 (n : ℕ) : ℤ :=
  A065931.P6308883333468479651.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1827 terms. -/
def A065931.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076537.P12288578895659982277

`eq[0, A300294(n+1)]`
-/

namespace A076537.P12288578895659982277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300294 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A076537.P12288578895659982277

noncomputable section

/-- A076537: Map positive rational numbers to positive integers by diagonal method using c(p,q) = (p + q - 2) * (p + q - 1) / 2 + p where p and q are positive integers. a(n) is an increasing sequence including all c(p,q) where gcd(p,q) > 1.

Offset 1, canonical program `A076537.P12288578895659982277`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4318 terms. -/
def A076537 (n : ℕ) : ℤ :=
  (A076537.P12288578895659982277.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4318 terms. -/
def A076537.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080309.P15158434456608786977

`record[gcd(n, A080307(A028310(n)))]`
-/

namespace A080309.P15158434456608786977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A080307 (A028310 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080309.P15158434456608786977

noncomputable section

/-- A080309: Numbers k such that the k-th positive even number equals the k-th multiple of a Fermat number.

Offset 1, canonical program `A080309.P15158434456608786977`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2343 terms. -/
def A080309 (n : ℕ) : ℤ :=
  (A080309.P15158434456608786977.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2343 terms. -/
def A080309.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080419.P10035802788885381002

`A027465(n)+A027465(n+1)%A027466(n)`
-/

namespace A080419.P10035802788885381002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027465 n + Int.tmod (A027465 (n + 1)) (A027466 n)

end

end A080419.P10035802788885381002

noncomputable section

/-- A080419: Triangle of generalized Chebyshev coefficients.

Offset 1, canonical program `A080419.P10035802788885381002`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6339 terms. -/
def A080419 (n : ℕ) : ℤ :=
  A080419.P10035802788885381002.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6339 terms. -/
def A080419.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080928.P9505429453997537061

`abs(ceil(A065109(n)/2))`
-/

namespace A080928.P9505429453997537061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌈(A065109 n : ℚ) / 2⌉|

end

end A080928.P9505429453997537061

noncomputable section

/-- A080928: Triangle T(n,k) read by rows: T(n,k) = Sum_{i=0..n} C(n,2i)*C(2i,k).

Offset 0, canonical program `A080928.P9505429453997537061`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080928 (n : ℕ) : ℤ :=
  A080928.P9505429453997537061.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080928.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088737.P1992063766082002598

`A086971(A002808(n+1))`
-/

namespace A088737.P1992063766082002598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086971 (A002808 (n + 1)).toNat

end

end A088737.P1992063766082002598

noncomputable section

/-- A088737: Number of semiprime divisors of n-th composite number.

Offset 1, canonical program `A088737.P1992063766082002598`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8770 terms. -/
def A088737 (n : ℕ) : ℤ :=
  A088737.P1992063766082002598.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8770 terms. -/
def A088737.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094439.P8547368482496176600

`A094438(n)+A094437(n)`
-/

namespace A094439.P8547368482496176600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094438 n + A094437 n

end

end A094439.P8547368482496176600

noncomputable section

/-- A094439: Triangular array T(n,k) = Fibonacci(k+4)*C(n,k), k=0..n, n>=0.

Offset 0, canonical program `A094439.P8547368482496176600`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A094439 (n : ℕ) : ℤ :=
  A094439.P8547368482496176600.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A094439.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094444.P11066417991049071357

`A094443(n)+A094442(n)`
-/

namespace A094444.P11066417991049071357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094443 n + A094442 n

end

end A094444.P11066417991049071357

noncomputable section

/-- A094444: Triangular array T(n,k) = Fibonacci(n+4-k)*C(n,k), k=0..n, n>=0.

Offset 0, canonical program `A094444.P11066417991049071357`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A094444 (n : ℕ) : ℤ :=
  A094444.P11066417991049071357.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A094444.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094496.P15988676897616343177

`A007318(n)-A094495(n)`
-/

namespace A094496.P15988676897616343177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A094495 n

end

end A094496.P15988676897616343177

noncomputable section

/-- A094496: Triangle read by rows: T(n,k) = binomial(n,k) - binomial(n,k) mod n^2, with T(0,0) = 1.

Offset 0, canonical program `A094496.P15988676897616343177`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A094496 (n : ℕ) : ℤ :=
  A094496.P15988676897616343177.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A094496.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095079.P17346675219366142704

`p?[A379267(n+1)]`
-/

namespace A095079.P17346675219366142704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379267 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095079.P17346675219366142704

noncomputable section

/-- A095079: Primes with two 0-bits in their binary expansion.

Offset 1, canonical program `A095079.P17346675219366142704`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 148 terms. -/
def A095079 (n : ℕ) : ℤ :=
  A095079.P17346675219366142704.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 148 terms. -/
def A095079.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095859.P2589316410080943525

`(C(comp[∑[n]]-n, 2)-(n+1))^A193738(n)²`
-/

namespace A095859.P2589316410080943525
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℚ) ^ (A193738 n ^ 2 : ℤ)

end

end A095859.P2589316410080943525

noncomputable section

/-- A095859: Triangle read by rows: T(n,k) = (n-k)^(k^2), n>=1, 1<=k<=n.

Offset 1, canonical program `A095859.P2589316410080943525`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. -/
def A095859 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A095859.P2589316410080943525.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. -/
def A095859.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099039.P8333967815748513514

`A097807(n)*A106566(n)`
-/

namespace A099039.P8333967815748513514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A106566 n

end

end A099039.P8333967815748513514

noncomputable section

/-- A099039: Riordan array (1,c(-x)), where c(x) = g.f. of Catalan numbers.

Offset 0, canonical program `A099039.P8333967815748513514`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099039 (n : ℕ) : ℤ :=
  A099039.P8333967815748513514.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099039.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099089.P15896369819035492277

`A026729(n)*A116588(n)`
-/

namespace A099089.P15896369819035492277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 n * A116588 n

end

end A099089.P15896369819035492277

noncomputable section

/-- A099089: Riordan array (1, 2+x).

Offset 0, canonical program `A099089.P15896369819035492277`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099089 (n : ℕ) : ℤ :=
  A099089.P15896369819035492277.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099089.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099095.P17860397901266749864

`A099097(n)*A130321(n)`
-/

namespace A099095.P17860397901266749864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099097 n * A130321 n

end

end A099095.P17860397901266749864

noncomputable section

/-- A099095: Riordan array (1,3+2x).

Offset 0, canonical program `A099095.P17860397901266749864`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099095 (n : ℕ) : ℤ :=
  A099095.P17860397901266749864.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099095.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101936.P12055823515065416503

`A045935(n+1)+3`
-/

namespace A101936.P12055823515065416503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045935 (n + 1) + 3

end

end A101936.P12055823515065416503

noncomputable section

/-- A101936: Numbers n with omega(n) = omega of 3 nearest larger and 3 nearest smaller neighbors.

Offset 1, canonical program `A101936.P12055823515065416503`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A101936 (n : ℕ) : ℤ :=
  A101936.P12055823515065416503.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A101936.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A102426.P776678391830445668

`A098925(abs(1-n))-A000007(n)`
-/

namespace A102426.P776678391830445668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098925 |1 - (n : ℤ)|.toNat - A000007 n

end

end A102426.P776678391830445668

noncomputable section

/-- A102426: Triangle read by rows giving coefficients of polynomials defined by F(0,x)=0, F(1,x)=1, F(n,x) = F(n-1,x) + x*F(n-2,x).

Offset 0, canonical program `A102426.P776678391830445668`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A102426 (n : ℕ) : ℤ :=
  A102426.P776678391830445668.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A102426.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103283.P12453437943033002142

`A093375(n+1)*A097807(n)`
-/

namespace A103283.P12453437943033002142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093375 (n + 1) * A097807 n

end

end A103283.P12453437943033002142

noncomputable section

/-- A103283: Triangle read by rows: T(n,k) is the coefficient of x^k in the monic characteristic polynomial of the n X n matrix with 2's on the diagonal and 1's elsewhere (n >= 1 and 0 <= k <= n). Row 0 consists of the single term 1.

Offset 0, canonical program `A103283.P12453437943033002142`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A103283 (n : ℕ) : ℤ :=
  A103283.P12453437943033002142.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A103283.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108756.P8484326914205275965

`A098925(A056537(n+1)-1)`
-/

namespace A108756.P8484326914205275965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098925 (A056537 (n + 1) - 1).toNat

end

end A108756.P8484326914205275965

noncomputable section

/-- A108756: A triangle related to the Jacobsthal polynomials.

Offset 0, canonical program `A108756.P8484326914205275965`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5149 terms. -/
def A108756 (n : ℕ) : ℤ :=
  A108756.P8484326914205275965.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5149 terms. -/
def A108756.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109402.P4898399199614324654

`∑[A109400(n+1)]`
-/

namespace A109402.P4898399199614324654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109400 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109402.P4898399199614324654

noncomputable section

/-- A109402: Partial sums of A109400.

Offset 1, canonical program `A109402.P4898399199614324654`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A109402 (n : ℕ) : ℤ :=
  A109402.P4898399199614324654.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A109402.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109983.P3206352724979772563

`A109187(A091995(n+1)-1)`
-/

namespace A109983.P3206352724979772563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109187 (A091995 (n + 1) - 1).toNat

end

end A109983.P3206352724979772563

noncomputable section

/-- A109983: Triangle read by rows: T(n, k) (0<=k<=2n) is the number of Delannoy paths of length n, having k steps.

Offset 0, canonical program `A109983.P3206352724979772563`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5111 terms. -/
def A109983 (n : ℕ) : ℤ :=
  A109983.P3206352724979772563.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5111 terms. -/
def A109983.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110324.P17338203710823644534

`A104762(n+1)*A110314(n)`
-/

namespace A110324.P17338203710823644534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104762 (n + 1) * A110314 n

end

end A110324.P17338203710823644534

noncomputable section

/-- A110324: Inverse of a number triangle related to the Jacobsthal numbers.

Offset 0, canonical program `A110324.P17338203710823644534`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110324 (n : ℕ) : ℤ :=
  A110324.P17338203710823644534.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110324.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110330.P12777464114074436010

`A110314(n)-A132440(n)`
-/

namespace A110330.P12777464114074436010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110314 n - A132440 n

end

end A110330.P12777464114074436010

noncomputable section

/-- A110330: Inverse of a number triangle related to the Pell numbers.

Offset 0, canonical program `A110330.P12777464114074436010`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110330 (n : ℕ) : ℤ :=
  A110330.P12777464114074436010.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110330.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110510.P4459465771356179059

`A106566(n)*A130321(n)`
-/

namespace A110510.P4459465771356179059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106566 n * A130321 n

end

end A110510.P4459465771356179059

noncomputable section

/-- A110510: Riordan array (1, x*c(2x)), c(x) the g.f. of A000108.

Offset 0, canonical program `A110510.P4459465771356179059`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6787 terms. -/
def A110510 (n : ℕ) : ℤ :=
  A110510.P4459465771356179059.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6787 terms. -/
def A110510.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110518.P11180625807063837773

`A106566(n)*A140303(n)`
-/

namespace A110518.P11180625807063837773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106566 n * A140303 n

end

end A110518.P11180625807063837773

noncomputable section

/-- A110518: Riordan array (1, x*c(3x)), c(x) the g.f. of A000108.

Offset 0, canonical program `A110518.P11180625807063837773`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4754 terms. -/
def A110518 (n : ℕ) : ℤ :=
  A110518.P11180625807063837773.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4754 terms. -/
def A110518.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110813.P12087588426013829952

`A214292(n)+A051597(n)`
-/

namespace A110813.P12087588426013829952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214292 n + A051597 n

end

end A110813.P12087588426013829952

noncomputable section

/-- A110813: A triangle of pyramidal numbers.

Offset 0, canonical program `A110813.P12087588426013829952`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110813 (n : ℕ) : ℤ :=
  A110813.P12087588426013829952.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110813.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111049.P6292796028926116323

`(A110552(n+1)+A071919(n))/2`
-/

namespace A111049.P6292796028926116323
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110552 (n + 1) + A071919 n : ℚ) / 2

end

end A111049.P6292796028926116323

noncomputable section

/-- A111049: Triangle T(n,k), 0 <= k <= n, read by rows, given by [1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, ...] DELTA [1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, ...] where DELTA is the operator defined in A084938.

Offset 0, canonical program `A111049.P6292796028926116323`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A111049 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A111049.P6292796028926116323.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A111049.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115126.P18305659817422248974

`A030237(char[comp[∑[n-1]]]+n+1)`
-/

namespace A115126.P18305659817422248974
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030237 ((if ∃ j, f1 j = n then 1 else 0) + (n + 1))

end

end A115126.P18305659817422248974

noncomputable section

/-- A115126: First (k=1) triangle of numbers related to totally asymmetric exclusion process (case alpha=1, beta=1).

Offset 1, canonical program `A115126.P18305659817422248974`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115126 (n : ℕ) : ℤ :=
  A115126.P18305659817422248974.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115126.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115363.P10062065464569452837

`A115361(n)*A129264(n+1)`
-/

namespace A115363.P10062065464569452837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115361 n * A129264 (n + 1)

end

end A115363.P10062065464569452837

noncomputable section

/-- A115363: ((1,x)-(x,x^2))^(-2) (using Riordan array notation).

Offset 0, canonical program `A115363.P10062065464569452837`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A115363 (n : ℕ) : ℤ :=
  A115363.P10062065464569452837.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A115363.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117372.P11884890092664752815

`(A117377(n)+A117362(n))/2`
-/

namespace A117372.P11884890092664752815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117377 n + A117362 n : ℚ) / 2

end

end A117372.P11884890092664752815

noncomputable section

/-- A117372: Riordan array (1-3x,x(1-x)).

Offset 0, canonical program `A117372.P11884890092664752815`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117372 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A117372.P11884890092664752815.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117372.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117434.P10171176462269036354

`abs(A115179(n))`
-/

namespace A117434.P10171176462269036354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A115179 n|

end

end A117434.P10171176462269036354

noncomputable section

/-- A117434: Expansion of c(x*y(1+x)), c(x) the g.f. of A000108.

Offset 0, canonical program `A117434.P10171176462269036354`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A117434 (n : ℕ) : ℤ :=
  A117434.P10171176462269036354.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A117434.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117939.P7458379872733415547

`A049347(A014473(n))*A059151(A025581(n))`
-/

namespace A117939.P7458379872733415547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (A014473 n).toNat * A059151 (A025581 n).toNat

end

end A117939.P7458379872733415547

noncomputable section

/-- A117939: Triangle related to powers of 3 partitions of n.

Offset 0, canonical program `A117939.P7458379872733415547`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A117939 (n : ℕ) : ℤ :=
  A117939.P7458379872733415547.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A117939.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117945.P3427762021949423667

`(A109187(n)+1)%3-1`
-/

namespace A117945.P3427762021949423667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109187 n + 1) 3 - 1

end

end A117945.P3427762021949423667

noncomputable section

/-- A117945: Triangle related to powers of 3 partitions of n.

Offset 0, canonical program `A117945.P3427762021949423667`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117945 (n : ℕ) : ℤ :=
  A117945.P3427762021949423667.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117945.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119258.P10503097935816686306

`2*A082137(n)-a(n-1)` with `a(0)=1`
-/

namespace A119258.P10503097935816686306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * A082137 n - a (n - 1)

end

end A119258.P10503097935816686306

noncomputable section

/-- A119258: Triangle read by rows: T(n,0) = T(n,n) = 1 and for 0

Offset 0, canonical program `A119258.P10503097935816686306`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A119258 (n : ℕ) : ℤ :=
  A119258.P10503097935816686306.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A119258.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124846.P10905854118473259616

`2*A124845(n)-A007318(n)`
-/

namespace A124846.P10905854118473259616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A124845 n - A007318 n

end

end A124846.P10905854118473259616

noncomputable section

/-- A124846: Triangle read by rows: T(n,k) = (2 - (-1)^k)*binomial(n,k) (0 <= k <= n).

Offset 0, canonical program `A124846.P10905854118473259616`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124846 (n : ℕ) : ℤ :=
  A124846.P10905854118473259616.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124846.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125185.P11360573012885096283

`A115068(n+1)+A119468(n)-A038207(n)`
-/

namespace A125185.P11360573012885096283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115068 (n + 1) + (A119468 n - A038207 n)

end

end A125185.P11360573012885096283

noncomputable section

/-- A125185: Triangle read by rows: T(n,k) is the coefficient of t^k in the polynomial S(n,t)=[(1+t)(2+t)^n+(1-t)t^n]/2 (0<=k<=n).

Offset 0, canonical program `A125185.P11360573012885096283`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125185 (n : ℕ) : ℤ :=
  A125185.P11360573012885096283.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125185.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127336.P17802364800562295121

`A127335(n+1)+A000040(n+9)`
-/

namespace A127336.P17802364800562295121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127335 (n + 1) + A000040 (n + 9)

end

end A127336.P17802364800562295121

noncomputable section

/-- A127336: Numbers that are the sum of 9 consecutive primes.

Offset 1, canonical program `A127336.P17802364800562295121`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A127335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A127336 (n : ℕ) : ℤ :=
  A127336.P17802364800562295121.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A127335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A127336.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A127572.P3347120465689043577

`A010766(n+1)*A127570(n+1)`
-/

namespace A127572.P3347120465689043577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (n + 1) * A127570 (n + 1)

end

end A127572.P3347120465689043577

noncomputable section

/-- A127572: Triangle, T(n,k) = sigma(k) * n/k if k|n, T(n,k) = 0 otherwise.

Offset 1, canonical program `A127572.P3347120465689043577`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127572 (n : ℕ) : ℤ :=
  A127572.P3347120465689043577.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127572.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127641.P15862743544218899426

`A182986(A127446(n+1)+1)`
-/

namespace A127641.P15862743544218899426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A127446 (n + 1) + 1).toNat

end

end A127641.P15862743544218899426

noncomputable section

/-- A127641: A127640 * A051731 as infinite lower triangular matrices.

Offset 1, canonical program `A127641.P15862743544218899426`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127641 (n : ℕ) : ℤ :=
  A127641.P15862743544218899426.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127641.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128181.P677379216419681310

`A002260(n+1)*A128175(n+1)`
-/

namespace A128181.P677379216419681310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A128175 (n + 1)

end

end A128181.P677379216419681310

noncomputable section

/-- A128181: A007318 * A128179 as infinite lower triangular matrices.

Offset 1, canonical program `A128181.P677379216419681310`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128181 (n : ℕ) : ℤ :=
  A128181.P677379216419681310.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128181.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129303.P18038319524124215169

`∑{d}[n+1, A035187(#)*A126246((n+1)/#)]`
-/

namespace A129303.P18038319524124215169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035187 d * A126246 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A129303.P18038319524124215169

noncomputable section

/-- A129303: Expansion of eta(q^2)^3 * eta(q^5)^2 * eta(q^10) / eta(q)^2 in powers of q.

Offset 1, canonical program `A129303.P18038319524124215169`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129303 (n : ℕ) : ℤ :=
  A129303.P18038319524124215169.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129303.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129360.P6323221230572987550

`A127139(n+1)%2`
-/

namespace A129360.P6323221230572987550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127139 (n + 1)) 2

end

end A129360.P6323221230572987550

noncomputable section

/-- A129360: Triangle read by rows: A054525 * A115361 as infinite lower triangular matrices.

Offset 1, canonical program `A129360.P6323221230572987550`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129360 (n : ℕ) : ℤ :=
  A129360.P6323221230572987550.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129360.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129572.P323978587708688268

`A097806(gcd(n, Δ[A129372(n+1)]))`
-/

namespace A129572.P323978587708688268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129372 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 (Int.gcd (n : ℤ) (f1 (n + 1) - f1 n))

end

end A129572.P323978587708688268

noncomputable section

/-- A129572: A129372 * A097806.

Offset 1, canonical program `A129572.P323978587708688268`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A129572 (n : ℕ) : ℤ :=
  A129572.P323978587708688268.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A129572.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129689.P16579253702323434123

`2*A128175(n+1)-A007318(n)`
-/

namespace A129689.P16579253702323434123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A128175 (n + 1) - A007318 n

end

end A129689.P16579253702323434123

noncomputable section

/-- A129689: A007318 * A129688.

Offset 1, canonical program `A129689.P16579253702323434123`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129689 (n : ℕ) : ℤ :=
  A129689.P16579253702323434123.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129689.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131052.P3356453068962717231

`A128175(A131225(n+1)+A038722(n+1))`
-/

namespace A131052.P3356453068962717231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128175 (A131225 (n + 1) + A038722 (n + 1)).toNat

end

end A131052.P3356453068962717231

noncomputable section

/-- A131052: A131047 * A000012.

Offset 1, canonical program `A131052.P3356453068962717231`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9860 terms. -/
def A131052 (n : ℕ) : ℤ :=
  A131052.P3356453068962717231.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9860 terms. -/
def A131052.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131061.P592121948917823822

`2*A109128(n)-1`
-/

namespace A131061.P592121948917823822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A109128 n - 1

end

end A131061.P592121948917823822

noncomputable section

/-- A131061: Triangle read by rows: T(n,k) = 4*binomial(n,k) - 3 for 0 <= k <= n.

Offset 0, canonical program `A131061.P592121948917823822`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131061 (n : ℕ) : ℤ :=
  A131061.P592121948917823822.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131061.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131065.P9875973799830615181

`2*A131060(n)-1`
-/

namespace A131065.P9875973799830615181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131060 n - 1

end

end A131065.P9875973799830615181

noncomputable section

/-- A131065: Triangle read by rows: T(n,k) = 6*binomial(n,k) - 5 for 0 <= k <= n.

Offset 0, canonical program `A131065.P9875973799830615181`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131065 (n : ℕ) : ℤ :=
  A131065.P9875973799830615181.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131065.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131111.P2883146783880344196

`2*A129994(n)-A007318(n)`
-/

namespace A131111.P2883146783880344196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A129994 n - A007318 n

end

end A131111.P2883146783880344196

noncomputable section

/-- A131111: T(n, k) = 3*binomial(n,k) - 2*I(n,k), where I is the identity matrix; triangle T read by rows (n >= 0 and 0 <= k <= n).

Offset 0, canonical program `A131111.P2883146783880344196`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131111 (n : ℕ) : ℤ :=
  A131111.P2883146783880344196.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131111.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131129.P5347046498365630187

`floor(3*A131108(n)/2)`
-/

namespace A131129.P5347046498365630187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 * A131108 n : ℚ) / 2⌋

end

end A131129.P5347046498365630187

noncomputable section

/-- A131129: 3*A007318 - 2*A097806, where A007318 = Pascal's triangle and A097806 = the pairwise operator.

Offset 0, canonical program `A131129.P5347046498365630187`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131129 (n : ℕ) : ℤ :=
  A131129.P5347046498365630187.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131129.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131131.P12474892076116979280

`2*A131108(n)-A097806(n)`
-/

namespace A131131.P12474892076116979280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131108 n - A097806 n

end

end A131131.P12474892076116979280

noncomputable section

/-- A131131: 4*A007318 - 3*A097806.

Offset 0, canonical program `A131131.P12474892076116979280`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131131 (n : ℕ) : ℤ :=
  A131131.P12474892076116979280.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131131.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131398.P13475172351634249680

`A131108(n)+A014473(n)`
-/

namespace A131398.P13475172351634249680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131108 n + A014473 n

end

end A131398.P13475172351634249680

noncomputable section

/-- A131398: 3*A007318 - A097806 - A000012.

Offset 0, canonical program `A131398.P13475172351634249680`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131398 (n : ℕ) : ℤ :=
  A131398.P13475172351634249680.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131398.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131832.P1419238520302392278

`2*A131830(n)-1`
-/

namespace A131832.P1419238520302392278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131830 n - 1

end

end A131832.P1419238520302392278

noncomputable section

/-- A131832: 2*(A131830) - A000012.

Offset 0, canonical program `A131832.P1419238520302392278`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131832 (n : ℕ) : ℤ :=
  A131832.P1419238520302392278.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131832.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132048.P7025370900978820074

`A132046(n)+A014473(n)`
-/

namespace A132048.P7025370900978820074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132046 n + A014473 n

end

end A132048.P7025370900978820074

noncomputable section

/-- A132048: 3*A007318 - A103451 - A000012.

Offset 0, canonical program `A132048.P7025370900978820074`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132048 (n : ℕ) : ℤ :=
  A132048.P7025370900978820074.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132048.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132068.P1201751376170146837

`Δ[eq[1, A300294(A028310(n))]]`
-/

namespace A132068.P1201751376170146837
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300294 (A028310 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A132068.P1201751376170146837

noncomputable section

/-- A132068: Irregular array: row n has A000010(n) terms: the sum of the first m terms of row n is the m-th positive integer which is coprime to n.

Offset 1, canonical program `A132068.P1201751376170146837`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A132068 (n : ℕ) : ℤ :=
  A132068.P1201751376170146837.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A132068.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132073.P1418040610760282867

`A131830(n)+1-A103451(n)`
-/

namespace A132073.P1418040610760282867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131830 n + (1 - A103451 n)

end

end A132073.P1418040610760282867

noncomputable section

/-- A132073: A007318 + A131821 - A103451 as infinite lower triangular matrices.

Offset 0, canonical program `A132073.P1418040610760282867`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132073 (n : ℕ) : ℤ :=
  A132073.P1418040610760282867.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132073.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132148.P3285758219306203646

`4*A094441(n)-A094443(n)`
-/

namespace A132148.P3285758219306203646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A094441 n - A094443 n

end

end A132148.P3285758219306203646

noncomputable section

/-- A132148: Triangular array T(n,k) = C(n,k)*Lucas(n-k), 0 <= k <= n.

Offset 0, canonical program `A132148.P3285758219306203646`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132148 (n : ℕ) : ℤ :=
  A132148.P3285758219306203646.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132148.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132169.P12794010027182556537

`A141616(n+1)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A132169.P12794010027182556537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141616 (n + 1) : ℚ) / 4

end

end A132169.P12794010027182556537

noncomputable section

/-- A132169: Irregular triangle read by rows. A141616(n)/4.

Offset 0, canonical program `A132169.P12794010027182556537`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141616, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A132169 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A132169.P12794010027182556537.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141616, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A132169.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A132731.P8579366909004604972

`xor(1, A132046(n)-1)`
-/

namespace A132731.P8579366909004604972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A132046 n - 1)

end

end A132731.P8579366909004604972

noncomputable section

/-- A132731: Triangle T(n,k) = 2 * binomial(n,k) - 2 with T(n,0) = T(n,n) = 1, read by rows.

Offset 0, canonical program `A132731.P8579366909004604972`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132731 (n : ℕ) : ℤ :=
  A132731.P8579366909004604972.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132731.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132735.P4142998940236059687

`floor(A132046(n)/2)+1`
-/

namespace A132735.P4142998940236059687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A132046 n : ℚ) / 2⌋ + 1

end

end A132735.P4142998940236059687

noncomputable section

/-- A132735: Triangle T(n,k) = binomial(n,k) + 1 with T(n,0) = T(n,n) = 1, read by rows.

Offset 0, canonical program `A132735.P4142998940236059687`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132735 (n : ℕ) : ℤ :=
  A132735.P4142998940236059687.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132735.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132737.P15042610219091654609

`or(1, A132046(n))`
-/

namespace A132737.P15042610219091654609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A132046 n)

end

end A132737.P15042610219091654609

noncomputable section

/-- A132737: Triangle T(n,k) = 2*binomial(n,k) + 1, read by rows.

Offset 0, canonical program `A132737.P15042610219091654609`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132737 (n : ℕ) : ℤ :=
  A132737.P15042610219091654609.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132737.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132752.P12795586409169669326

`2*A132749(n)-1`
-/

namespace A132752.P12795586409169669326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A132749 n - 1

end

end A132752.P12795586409169669326

noncomputable section

/-- A132752: Triangle T(n, k) = 2*A132749(n, k) - 1, read by rows.

Offset 0, canonical program `A132752.P12795586409169669326`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132752 (n : ℕ) : ℤ :=
  A132752.P12795586409169669326.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132752.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133128.P6744000441068247650

`A141620(A057428(n)+n)%∑[n+3]`
-/

namespace A133128.P6744000441068247650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A141620 (A057428 n + (n : ℤ)).toNat) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A133128.P6744000441068247650

noncomputable section

/-- A133128: Triangle of first differences of A120070 with a leftmost column of A002522.

Offset 0, canonical program `A133128.P6744000441068247650`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133128 (n : ℕ) : ℤ :=
  A133128.P6744000441068247650.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133128.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133601.P11914507238003591422

`2*A135278(n)-A133567(n+1)`
-/

namespace A133601.P11914507238003591422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A135278 n - A133567 (n + 1)

end

end A133601.P11914507238003591422

noncomputable section

/-- A133601: Triangle read by rows: A007318 * (A097806 + A133080 - I) as infinite lower triangular matrices, where I is the identity matrix.

Offset 0, canonical program `A133601.P11914507238003591422`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133601 (n : ℕ) : ℤ :=
  A133601.P11914507238003591422.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133601.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133729.P396639260184250691

`A128175(n+1)*A158405(n+1)`
-/

namespace A133729.P396639260184250691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128175 (n + 1) * A158405 (n + 1)

end

end A133729.P396639260184250691

noncomputable section

/-- A133729: A007318 * A133728.

Offset 1, canonical program `A133729.P396639260184250691`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133729 (n : ℕ) : ℤ :=
  A133729.P396639260184250691.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133729.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133805.P12564843643079496267

`A198321(n+1)+A133567(n+2)`
-/

namespace A133805.P12564843643079496267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198321 (n + 1) + A133567 (n + 2)

end

end A133805.P12564843643079496267

noncomputable section

/-- A133805: Triangle read by rows: A007318 * A133566 * A133080 as infinite lower triangular matrices.

Offset 0, canonical program `A133805.P12564843643079496267`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A133805 (n : ℕ) : ℤ :=
  A133805.P12564843643079496267.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A133805.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134060.P5985046479831318220

`lcm(A124928(n), A132749(n))`
-/

namespace A134060.P5985046479831318220
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A124928 n) (A132749 n)

end

end A134060.P5985046479831318220

noncomputable section

/-- A134060: Triangle T(n,k) = A124927(n,k) + A134058(n,k) - A007318(n,k), read by rows.

Offset 0, canonical program `A134060.P5985046479831318220`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A134060 (n : ℕ) : ℤ :=
  (A134060.P5985046479831318220.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A134060.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134081.P16212659300749954708

`2*A093375(n+1)-A135278(n)`
-/

namespace A134081.P16212659300749954708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A093375 (n + 1) - A135278 n

end

end A134081.P16212659300749954708

noncomputable section

/-- A134081: Triangle T(n, k) = binomial(n, k)*((2*k+1)*(n-k) +k+1)/(k+1), read by rows.

Offset 0, canonical program `A134081.P16212659300749954708`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134081 (n : ℕ) : ℤ :=
  A134081.P16212659300749954708.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134081.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134308.P14992044366070988865

`A082137(n)*A130321(n)`
-/

namespace A134308.P14992044366070988865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082137 n * A130321 n

end

end A134308.P14992044366070988865

noncomputable section

/-- A134308: A007318 * A082137.

Offset 0, canonical program `A134308.P14992044366070988865`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134308 (n : ℕ) : ℤ :=
  A134308.P14992044366070988865.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134308.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134318.P15553528286371622200

`A128175(n+1)*A232089(n)`
-/

namespace A134318.P15553528286371622200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128175 (n + 1) * A232089 n

end

end A134318.P15553528286371622200

noncomputable section

/-- A134318: A007318 * A134317.

Offset 0, canonical program `A134318.P15553528286371622200`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134318 (n : ℕ) : ℤ :=
  A134318.P15553528286371622200.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134318.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134319.P9968611260785887123

`2*A082137(n)-A007318(n)`
-/

namespace A134319.P9968611260785887123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A082137 n - A007318 n

end

end A134319.P9968611260785887123

noncomputable section

/-- A134319: Triangle read by rows. T(n, k) = binomial(n, k)*(2^k - 1 + 0^k).

Offset 0, canonical program `A134319.P9968611260785887123`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134319 (n : ℕ) : ℤ :=
  A134319.P9968611260785887123.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134319.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134346.P6609946835705553961

`2*A038208(n)-A007318(n)`
-/

namespace A134346.P6609946835705553961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A038208 n - A007318 n

end

end A134346.P6609946835705553961

noncomputable section

/-- A134346: Triangle read by rows: T(n,k) = (2^(n+1)-1)*binomial(n,k).

Offset 0, canonical program `A134346.P6609946835705553961`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134346 (n : ℕ) : ℤ :=
  A134346.P6609946835705553961.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134346.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134399.P11389715286082548429

`A128710(n)-A124927(n)`
-/

namespace A134399.P11389715286082548429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128710 n - A124927 n

end

end A134399.P11389715286082548429

noncomputable section

/-- A134399: Matrix product of Binomial triangle A007318 and triangle with (1, 1, 2, 3, 4, 5, ...) in the main diagonal and the rest zeros.

Offset 0, canonical program `A134399.P11389715286082548429`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134399 (n : ℕ) : ℤ :=
  A134399.P11389715286082548429.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134399.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134513.P11345042164523319292

`A134505(n+1)*A134505(n+2)`
-/

namespace A134513.P11345042164523319292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134505 (n + 1) * A134505 (n + 2)

end

end A134513.P11345042164523319292

noncomputable section

/-- A134513: Triangle read by rows: T(n, k) = binomial(ceiling((n+k)/2), floor((n-k)/2)).

Offset 0, canonical program `A134513.P11345042164523319292`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A134513 (n : ℕ) : ℤ :=
  A134513.P11345042164523319292.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A134513.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134521.P5434930508267671466

`A131087(n)-A014473(n)`
-/

namespace A134521.P5434930508267671466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131087 n - A014473 n

end

end A134521.P5434930508267671466

noncomputable section

/-- A134521: Triangle read by rows: T(n,k) = binomial(n,k) + (n + k) mod 2.

Offset 0, canonical program `A134521.P5434930508267671466`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134521 (n : ℕ) : ℤ :=
  A134521.P5434930508267671466.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134521.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134576.P2013391426293502039

`A127446(n+1)²`
-/

namespace A134576.P2013391426293502039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127446 (n + 1) ^ 2

end

end A134576.P2013391426293502039

noncomputable section

/-- A134576: Triangle read by rows: T(n,k) = n^2*A051731(n,k).

Offset 1, canonical program `A134576.P2013391426293502039`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134576 (n : ℕ) : ℤ :=
  A134576.P2013391426293502039.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134576.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134577.P17996659558019461021

`A002260(n+1)*A127170(n+1)`
-/

namespace A134577.P17996659558019461021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A127170 (n + 1)

end

end A134577.P17996659558019461021

noncomputable section

/-- A134577: Triangle read by rows: T(n,k) = tau(n/k)*k if k divides n, T(n,k) = 0 otherwise, where tau = A000005.

Offset 1, canonical program `A134577.P17996659558019461021`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A134577 (n : ℕ) : ℤ :=
  A134577.P17996659558019461021.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A134577.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135232.P1770735486883114960

`∑[A089581(n+1)]`
-/

namespace A135232.P1770735486883114960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135232.P1770735486883114960

noncomputable section

/-- A135232: Sum of the products of the first n prime pairs.

Offset 1, canonical program `A135232.P1770735486883114960`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135232 (n : ℕ) : ℤ :=
  A135232.P1770735486883114960.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135232.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137409.P1497138613230208861

`comp[A222946(n+2)]`
-/

namespace A137409.P1497138613230208861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222946 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A137409.P1497138613230208861

noncomputable section

/-- A137409: Numbers that cannot be the value of 'C' in a primitive Pythagorean triple (A < B; A^2 + B^2 = C^2).

Offset 1, canonical program `A137409.P1497138613230208861`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6748 terms. -/
def A137409 (n : ℕ) : ℤ :=
  (A137409.P1497138613230208861.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6748 terms. -/
def A137409.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140618.P13228081226966697851

`∩[A134517(n+1), A139834(n+1)]`
-/

namespace A140618.P13228081226966697851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134517 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140618.P13228081226966697851

noncomputable section

/-- A140618: Primes of the form 20*x^2+4*x*y+23*y^2.

Offset 1, canonical program `A140618.P13228081226966697851`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5035 terms. -/
def A140618 (n : ℕ) : ℤ :=
  (A140618.P13228081226966697851.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5035 terms. -/
def A140618.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141597.P7167630318283122630

`ceil(A141596(n)/2)`
-/

namespace A141597.P7167630318283122630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A141596 n : ℚ) / 2⌉

end

end A141597.P7167630318283122630

noncomputable section

/-- A141597: Triangle T(n,k) = 2*binomial(n,k)^2 - 1, read by rows, 0<=k<=n.

Offset 0, canonical program `A141597.P7167630318283122630`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141597 (n : ℕ) : ℤ :=
  A141597.P7167630318283122630.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141597.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141692.P2436459036825277489

`A003056(n)*A112467(n)`
-/

namespace A141692.P2436459036825277489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n * A112467 n

end

end A141692.P2436459036825277489

noncomputable section

/-- A141692: Triangle read by rows: T(n,k) = n*(binomial(n - 1, k - 1) - binomial(n - 1, k)), 0 <= k <= n.

Offset 0, canonical program `A141692.P2436459036825277489`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A141692 (n : ℕ) : ℤ :=
  A141692.P2436459036825277489.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A141692.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141700.P8708006094042400397

`∑{p}[A138618(n+1), #]`
-/

namespace A141700.P8708006094042400397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138618 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A141700.P8708006094042400397

noncomputable section

/-- A141700: Triangle read by rows: A120007 interleaved with (k-1) zeros.

Offset 1, canonical program `A141700.P8708006094042400397`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A141700 (n : ℕ) : ℤ :=
  (A141700.P8708006094042400397.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A141700.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143185.P1168285322455693736

`A007318(n)*A008619(A157654(n))`
-/

namespace A143185.P1168285322455693736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A008619 (A157654 n).toNat

end

end A143185.P1168285322455693736

noncomputable section

/-- A143185: Triangle read by rows: T(n, k) = (1 + abs(n-2*k))*binomial(n,k), with T(n, 0) = T(n, n) = 1.

Offset 0, canonical program `A143185.P1168285322455693736`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A143185 (n : ℕ) : ℤ :=
  A143185.P1168285322455693736.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A143185.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143311.P1988251396051349915

`lcm(A118013(n+1), A129555(n))`
-/

namespace A143311.P1988251396051349915
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A118013 (n + 1)) (A129555 n)

end

end A143311.P1988251396051349915

noncomputable section

/-- A143311: Triangle read by rows, A127648 * A126988; 1<=k<=n.

Offset 1, canonical program `A143311.P1988251396051349915`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143311 (n : ℕ) : ℤ :=
  (A143311.P1988251396051349915.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143311.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143728.P7047325683167744552

`A128227(n)*A128431(n+1)`
-/

namespace A143728.P7047325683167744552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 n * A128431 (n + 1)

end

end A143728.P7047325683167744552

noncomputable section

/-- A143728: Triangle read by rows: termwise product of mu(n) and n-th row of A127368.

Offset 1, canonical program `A143728.P7047325683167744552`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143728 (n : ℕ) : ℤ :=
  A143728.P7047325683167744552.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143728.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143730.P16899165122371351592

`A141616(n+1)-A100181(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A143730.P16899165122371351592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141616 (n + 1) - A100181 (n + 1)

end

end A143730.P16899165122371351592

noncomputable section

/-- A143730: a(n) = A141616(n) - A100181(n).

Offset 1, canonical program `A143730.P16899165122371351592`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A100181, A141616, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A143730 (n : ℕ) : ℤ :=
  A143730.P16899165122371351592.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A100181, A141616, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A143730.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A144214.P6525772958191010318

`∩[A081092(n+1), A144213(n+1)]`
-/

namespace A144214.P6525772958191010318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144213 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144214.P6525772958191010318

noncomputable section

/-- A144214: Primes with both a prime number of 0's and a prime number of 1's in their binary representations.

Offset 1, canonical program `A144214.P6525772958191010318`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4913 terms. -/
def A144214 (n : ℕ) : ℤ :=
  (A144214.P6525772958191010318.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4913 terms. -/
def A144214.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144389.P4957507962664652954

`A093375(n+1)-2*A119467(n)`
-/

namespace A144389.P4957507962664652954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093375 (n + 1) - 2 * A119467 n

end

end A144389.P4957507962664652954

noncomputable section

/-- A144389: Triangle T(n,k) = n*binomial(n - 1, k) - (-1)^(n - k)*binomial(n, k), T(0,0) = 1, read by rows, 0 <= k <= n.

Offset 0, canonical program `A144389.P4957507962664652954`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144389 (n : ℕ) : ℤ :=
  A144389.P4957507962664652954.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144389.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144515.P918910334272225371

`ceil(A127170(n+1)/A007318(n))`
-/

namespace A144515.P918910334272225371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A127170 (n + 1) : ℚ) / (A007318 n : ℚ)⌉

end

end A144515.P918910334272225371

noncomputable section

/-- A144515: Triangle read by rows: A051731 * A103451.

Offset 0, canonical program `A144515.P918910334272225371`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144515 (n : ℕ) : ℤ :=
  A144515.P918910334272225371.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144515.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144562.P12796245676937325510

`A083487(n+1)-1`
-/

namespace A144562.P12796245676937325510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083487 (n + 1) - 1

end

end A144562.P12796245676937325510

noncomputable section

/-- A144562: Triangle read by rows: T(n, k) = 2*n*k + n + k - 1.

Offset 1, canonical program `A144562.P12796245676937325510`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144562 (n : ℕ) : ℤ :=
  A144562.P12796245676937325510.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144562.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144650.P16604839193950878399

`A083487(n+1)+1`
-/

namespace A144650.P16604839193950878399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083487 (n + 1) + 1

end

end A144650.P16604839193950878399

noncomputable section

/-- A144650: Triangle read by rows where T(m,n) = 2m*n + m + n + 1.

Offset 1, canonical program `A144650.P16604839193950878399`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144650 (n : ℕ) : ℤ :=
  A144650.P16604839193950878399.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144650.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144652.P2853167490625725112

`floor(A083487(n+1)/2)`
-/

namespace A144652.P2853167490625725112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A083487 (n + 1) : ℚ) / 2⌋

end

end A144652.P2853167490625725112

noncomputable section

/-- A144652: Triangle, read by rows, where T(m,n) = floor((2mn+m+n)/2) with m >= n >= 1.

Offset 1, canonical program `A144652.P2853167490625725112`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144652 (n : ℕ) : ℤ :=
  A144652.P2853167490625725112.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144652.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A147716.P16289614370559288185

`A027466(n)*A130321(n)`
-/

namespace A147716.P16289614370559288185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027466 n * A130321 n

end

end A147716.P16289614370559288185

noncomputable section

/-- A147716: Triangle of coefficients in expansion of (14 + x)^n.

Offset 0, canonical program `A147716.P16289614370559288185`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3744 terms. -/
def A147716 (n : ℕ) : ℤ :=
  A147716.P16289614370559288185.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3744 terms. -/
def A147716.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154631.P9638786672000276920

`A154685(n+1)+1`
-/

namespace A154631.P9638786672000276920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154685 (n + 1) + 1

end

end A154631.P9638786672000276920

noncomputable section

/-- A154631: Triangle read by rows: T(m,n) = 2mn + m + n + 5.

Offset 1, canonical program `A154631.P9638786672000276920`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A154631 (n : ℕ) : ℤ :=
  A154631.P9638786672000276920.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A154631.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154692.P9801047649925696033

`A038220(n)+A013620(n)`
-/

namespace A154692.P9801047649925696033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038220 n + A013620 n

end

end A154692.P9801047649925696033

noncomputable section

/-- A154692: Triangle read by rows: T(n, k) = (2^(n-k)*3^k + 2^k*3^(n-k))*binomial(n, k).

Offset 0, canonical program `A154692.P9801047649925696033`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A154692 (n : ℕ) : ℤ :=
  A154692.P9801047649925696033.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A154692.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154990.P14967395727332028427

`xor(A023532(n), A114284(n))`
-/

namespace A154990.P14967395727332028427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A023532 n) (A114284 n)

end

end A154990.P14967395727332028427

noncomputable section

/-- A154990: Triangle read by rows. Main diagonal is positive. The rest of the terms are negative.

Offset 1, canonical program `A154990.P14967395727332028427`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A154990 (n : ℕ) : ℤ :=
  A154990.P14967395727332028427.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A154990.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155156.P2516037963333073016

`2*A083487(n+1)`
-/

namespace A155156.P2516037963333073016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A083487 (n + 1)

end

end A155156.P2516037963333073016

noncomputable section

/-- A155156: Triangle T(n, k) = 4*n*k + 2*n + 2*k, read by rows.

Offset 1, canonical program `A155156.P2516037963333073016`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083487, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A155156 (n : ℕ) : ℤ :=
  A155156.P2516037963333073016.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083487, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A155156.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A155864.P5469586023862322716

`ceil(A155863(n)/∑[A010054(n)])`
-/

namespace A155864.P5469586023862322716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A155863 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)⌉

end

end A155864.P5469586023862322716

noncomputable section

/-- A155864: Triangle T(n,k) = n*(n-1)*binomial(n-2, k-1) for 1 <= k <= n-1, n >= 2, and T(n,0) = T(n,n) = 1 for n >= 0, read by rows.

Offset 0, canonical program `A155864.P5469586023862322716`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A155864 (n : ℕ) : ℤ :=
  A155864.P5469586023862322716.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A155864.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155997.P13400350603564636073

`A119467(A061579(n))+A119467(n)`
-/

namespace A155997.P13400350603564636073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119467 (A061579 n).toNat + A119467 n

end

end A155997.P13400350603564636073

noncomputable section

/-- A155997: Triangle read by rows: T(n, k) = f(n, k) + f(n, n-k), where f(n, k) = binomial(n, k)*(1 + (-1)^k)/2.

Offset 0, canonical program `A155997.P13400350603564636073`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A155997 (n : ℕ) : ℤ :=
  A155997.P13400350603564636073.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A155997.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157807.P1767010887328603501

`A092543(A166527(n+1))`
-/

namespace A157807.P1767010887328603501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092543 (A166527 (n + 1)).toNat

end

end A157807.P1767010887328603501

noncomputable section

/-- A157807: Numerators of fractions arranged in "antidiagonal boustrophedon" ordering with equivalent fractions removed: (1/1, 2/1, 1/2, 1/3, 3/1, 4/1, 3/2, 2/3, 1/4, 1/5, 5/1, 6/1, 5/2, ...).

Offset 1, canonical program `A157807.P1767010887328603501`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6155 terms. -/
def A157807 (n : ℕ) : ℤ :=
  A157807.P1767010887328603501.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6155 terms. -/
def A157807.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A158280.P10487180928719056174

`7*A133700(2*n+1)`
-/

namespace A158280.P10487180928719056174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A133700 (2 * n + 1)

end

end A158280.P10487180928719056174

noncomputable section

/-- A158280: Octosection: A145511(8n+4) or A145501(8n+4).

Offset 0, canonical program `A158280.P10487180928719056174`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158280 (n : ℕ) : ℤ :=
  A158280.P10487180928719056174.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158280.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A159855.P15097114354535819429

`A112467(n)-A097805(A103517(n)%A181133(n+1))`
-/

namespace A159855.P15097114354535819429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112467 n - A097805 (Int.tmod (A103517 n) (A181133 (n + 1))).toNat

end

end A159855.P15097114354535819429

noncomputable section

/-- A159855: Riordan array ((1-2*x-x^2)/(1-x), x/(1-x)).

Offset 0, canonical program `A159855.P15097114354535819429`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A159855 (n : ℕ) : ℤ :=
  A159855.P15097114354535819429.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A159855.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161556.P15517187539568904594

`A072346(A025581(n))*A119467(n)`
-/

namespace A161556.P15517187539568904594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072346 (A025581 n).toNat * A119467 n

end

end A161556.P15517187539568904594

noncomputable section

/-- A161556: Exponential Riordan array [1 + (sqrt(Pi)/2)*x*exp(x^2/4)*erf(x/2), x].

Offset 0, canonical program `A161556.P15517187539568904594`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A161556 (n : ℕ) : ℤ :=
  A161556.P15517187539568904594.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A161556.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A165293.P663986949524880736

`A000351(A025581(n))*A065109(n)`
-/

namespace A165293.P663986949524880736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 (A025581 n).toNat * A065109 n

end

end A165293.P663986949524880736

noncomputable section

/-- A165293: Inverse of A038303, and generalization of A130595.

Offset 1, canonical program `A165293.P663986949524880736`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4664 terms. -/
def A165293 (n : ℕ) : ℤ :=
  A165293.P663986949524880736.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4664 terms. -/
def A165293.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166335.P11026299203422421980

`A028310(A025581(n))*A119467(n)`
-/

namespace A166335.P11026299203422421980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A025581 n).toNat * A119467 n

end

end A166335.P11026299203422421980

noncomputable section

/-- A166335: Exponential Riordan array [1+x*sinh(x), x].

Offset 0, canonical program `A166335.P11026299203422421980`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166335 (n : ℕ) : ℤ :=
  A166335.P11026299203422421980.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166335.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166455.P6643648984415993271

`A219463(n)+A109128(n)`
-/

namespace A166455.P6643648984415993271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219463 n + A109128 n

end

end A166455.P6643648984415993271

noncomputable section

/-- A166455: Triangle read by rows, twice Pascal's triangle minus Sierpinski's gasket: 2*A007318 - A047999.

Offset 0, canonical program `A166455.P6643648984415993271`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166455 (n : ℕ) : ℤ :=
  A166455.P6643648984415993271.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166455.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166918.P4761057443469163411

`A059268(n)-A166692(n)`
-/

namespace A166918.P4761057443469163411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n - A166692 n

end

end A166918.P4761057443469163411

noncomputable section

/-- A166918: Triangle T(n,k) read by rows: T(n,0) = n mod 2. T(n,k) = 2^(k-1), 0

Offset 0, canonical program `A166918.P4761057443469163411`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166918 (n : ℕ) : ℤ :=
  A166918.P4761057443469163411.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166918.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167366.P4537059373881404542

`A131127(n)%4`
-/

namespace A167366.P4537059373881404542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131127 n) 4

end

end A167366.P4537059373881404542

noncomputable section

/-- A167366: Triangle read by rows, 2*A047999 - A097806 (signed) = twice Sierpinski's gasket - the signed pair sum operator.

Offset 0, canonical program `A167366.P4537059373881404542`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167366 (n : ℕ) : ℤ :=
  A167366.P4537059373881404542.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167366.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167666.P3519015945170238925

`A185868(n+1)%A005408(A113125(n))`
-/

namespace A167666.P3519015945170238925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A185868 (n + 1)) (A005408 (A113125 n).toNat)

end

end A167666.P3519015945170238925

noncomputable section

/-- A167666: Triangle read by rows given by [1,1,-4,2,0,0,0,0,0,0,0,...] DELTA [1,0,0,1,0,0,0,0,0,0,0,...] where DELTA is the operator defined in A084938.

Offset 0, canonical program `A167666.P3519015945170238925`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167666 (n : ℕ) : ℤ :=
  A167666.P3519015945170238925.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167666.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A169700.P8168186238467961938

`Δ[A169699(n)]`
-/

namespace A169700.P8168186238467961938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169699 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A169700.P8168186238467961938

noncomputable section

/-- A169700: First differences of A169699.

Offset 0, canonical program `A169700.P8168186238467961938`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4663 terms. -/
def A169700 (n : ℕ) : ℤ :=
  A169700.P8168186238467961938.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4663 terms. -/
def A169700.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A172370.P12160375368130657257

`A120072(∑[char[∑[n]]]²-n+1)`
-/

namespace A172370.P12160375368130657257
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120072 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) + 1).toNat

end

end A172370.P12160375368130657257

noncomputable section

/-- A172370: Mirrored triangle A120072 read by rows.

Offset 2, canonical program `A172370.P12160375368130657257`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A172370 (n : ℕ) : ℤ :=
  A172370.P12160375368130657257.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A172370.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174298.P6680327952782887561

`A003984(n)!*A008459(n)`
-/

namespace A174298.P6680327952782887561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A003984 n).toNat : ℤ) * A008459 n

end

end A174298.P6680327952782887561

noncomputable section

/-- A174298: Triangle T(n, k) = binomial(n, k)*( n!/k! if floor(n/2) >= k otherwise n!/(n-k)! ), read by rows.

Offset 0, canonical program `A174298.P6680327952782887561`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A174298 (n : ℕ) : ℤ :=
  A174298.P6680327952782887561.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A174298.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176890.P508741093252212917

`A057427(n)-abs(A155031(n+1))`
-/

namespace A176890.P508741093252212917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n - |A155031 (n + 1)|

end

end A176890.P508741093252212917

noncomputable section

/-- A176890: Triangle T(n,k) read by rows. Signed subsequence of A051731.

Offset 1, canonical program `A176890.P508741093252212917`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176890 (n : ℕ) : ℤ :=
  A176890.P508741093252212917.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176890.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A177228.P5726255244693317150

`4-A173741(n)`
-/

namespace A177228.P5726255244693317150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A173741 n

end

end A177228.P5726255244693317150

noncomputable section

/-- A177228: Triangle read by rows: T(n, k) = -binomial(n,k) for 1 <= k <= n-1, otherwise T(n, k) = 3.

Offset 0, canonical program `A177228.P5726255244693317150`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A177228 (n : ℕ) : ℤ :=
  A177228.P5726255244693317150.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A177228.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184048.P14701129384521830144

`2*(A183986(n+1)+A131816(n))-1`
-/

namespace A184048.P14701129384521830144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A183986 (n + 1) + A131816 n) - 1

end

end A184048.P14701129384521830144

noncomputable section

/-- A184048: T(n,k) = 1/9 the number of (n+1) X (k+1) 0..2 arrays with all 2 X 2 subblocks having the same four values.

Offset 1, canonical program `A184048.P14701129384521830144`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 391 terms. -/
def A184048 (n : ℕ) : ℤ :=
  A184048.P14701129384521830144.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 391 terms. -/
def A184048.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185916.P655898616161062102

`A115359((n-1)%(n+1))`
-/

namespace A185916.P655898616161062102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115359 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

end

end A185916.P655898616161062102

noncomputable section

/-- A185916: Weight array of A185914, by antidiagonals.

Offset 1, canonical program `A185916.P655898616161062102`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185916 (n : ℕ) : ℤ :=
  A185916.P655898616161062102.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185916.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187926.P123076117038563951

`A008949(A128116(n+1)+A061579(n))`
-/

namespace A187926.P123076117038563951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008949 (A128116 (n + 1) + A061579 n).toNat

end

end A187926.P123076117038563951

noncomputable section

/-- A187926: Riordan matrix (1/(1-4x),(1-sqrt(1-4x))/2).

Offset 0, canonical program `A187926.P123076117038563951`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. -/
def A187926 (n : ℕ) : ℤ :=
  A187926.P123076117038563951.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. -/
def A187926.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188023.P11150660518032503552

`A002260(n+1)*A115361(n)`
-/

namespace A188023.P11150660518032503552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A115361 n

end

end A188023.P11150660518032503552

noncomputable section

/-- A188023: Triangle read by rows, T(n,k) = k*A115361(n-1,k-1).

Offset 1, canonical program `A188023.P11150660518032503552`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188023 (n : ℕ) : ℤ :=
  A188023.P11150660518032503552.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188023.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188091.P13272439363286867468

`A188077(n+4)-5`
-/

namespace A188091.P13272439363286867468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188077 (n + 4) - 5

end

end A188091.P13272439363286867468

noncomputable section

/-- A188091: Positions of 0 in A188090; complement of A188092.

Offset 1, canonical program `A188091.P13272439363286867468`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A188091 (n : ℕ) : ℤ :=
  A188091.P13272439363286867468.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A188091.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191524.P4442675164963678049

`A000079(n)+A191309(n)-A050168(n)`
-/

namespace A191524.P4442675164963678049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (A191309 n - A050168 n)

end

end A191524.P4442675164963678049

noncomputable section

/-- A191524: Number of double rises in all left factors of Dyck paths of length n (a double rise consists of two consecutive (1,1)-steps).

Offset 0, canonical program `A191524.P4442675164963678049`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A191524 (n : ℕ) : ℤ :=
  A191524.P4442675164963678049.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A191524.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191907.P6778175255354609110

`A023532(n)*A177121(n+1)`
-/

namespace A191907.P6778175255354609110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023532 n * A177121 (n + 1)

end

end A191907.P6778175255354609110

noncomputable section

/-- A191907: Square array read by antidiagonals up: T(n,k) = -(n-1) if n divides k, else 1.

Offset 1, canonical program `A191907.P6778175255354609110`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A191907 (n : ℕ) : ℤ :=
  A191907.P6778175255354609110.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A191907.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193561.P13429840221131930164

`(C(comp[∑[n]]-n, 2)-n)!*A001498(n)`
-/

namespace A193561.P13429840221131930164
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)).toNat : ℤ) * A001498 n

end

end A193561.P13429840221131930164

noncomputable section

/-- A193561: Augmentation of the triangle A004736. See Comments.

Offset 0, canonical program `A193561.P13429840221131930164`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1920 terms. -/
def A193561 (n : ℕ) : ℤ :=
  A193561.P13429840221131930164.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1920 terms. -/
def A193561.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193787.P12948706295467712163

`gcd(A071919(n), A134309(n))`
-/

namespace A193787.P12948706295467712163
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A071919 n) (A134309 n)

end

end A193787.P12948706295467712163

noncomputable section

/-- A193787: Triangular array: the fusion of polynomial sequences P and Q given by p(n,x)=(x+1)^n and q(n,x)=1+x^n.

Offset 0, canonical program `A193787.P12948706295467712163`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193787 (n : ℕ) : ℤ :=
  (A193787.P12948706295467712163.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193787.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193842.P15840078129144065471

`A119673(A007401(n+1))`
-/

namespace A193842.P15840078129144065471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119673 (A007401 (n + 1)).toNat

end

end A193842.P15840078129144065471

noncomputable section

/-- A193842: Triangular array: the fission of the polynomial sequence ((x+1)^n: n >= 0) by the polynomial sequence ((x+2)^n: n >= 0). (Fission is defined at Comments.)

Offset 0, canonical program `A193842.P15840078129144065471`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9860 terms. -/
def A193842 (n : ℕ) : ℤ :=
  A193842.P15840078129144065471.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9860 terms. -/
def A193842.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193858.P7170798059563055956

`A130321(n)*A193844(n)`
-/

namespace A193858.P7170798059563055956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n * A193844 n

end

end A193858.P7170798059563055956

noncomputable section

/-- A193858: Triangular array: the fission of ((x+1)^n) by ((2x+1)^n).

Offset 0, canonical program `A193858.P7170798059563055956`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193858 (n : ℕ) : ℤ :=
  A193858.P7170798059563055956.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193858.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193975.P7422222807454422260

`A177877(n-A049780(n))+A177877(n)`
-/

namespace A193975.P7422222807454422260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177877 ((n : ℤ) - A049780 n).toNat + A177877 n

end

end A193975.P7422222807454422260

noncomputable section

/-- A193975: Triangular array: the self-fission of (p(n,x)), where p(n,x)=x*p(n-1,x)+n+1, where p(0,x)=1.

Offset 0, canonical program `A193975.P7422222807454422260`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193975 (n : ℕ) : ℤ :=
  A193975.P7422222807454422260.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193975.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194595.P5598326238077145847

`A215630(n+1)/A133819(n+1)*A181543(n)`
-/

namespace A194595.P5598326238077145847
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215630 (n + 1) : ℚ) / (A133819 (n + 1) : ℚ) * (A181543 n : ℚ)

end

end A194595.P5598326238077145847

noncomputable section

/-- A194595: Triangle by rows T(n,k), showing the number of meanders with length (n+1)*3 and containing (k+1)*3 L's and (n-k)*3 R's, where L's and R's denote arcs of equal length and a central angle of 120 degrees which are positively or negatively oriented.

Offset 0, canonical program `A194595.P5598326238077145847`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2016 terms. -/
def A194595 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A194595.P5598326238077145847.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2016 terms. -/
def A194595.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A200139.P8566556275138631539

`A135226(n)*A155038(n+1)`
-/

namespace A200139.P8566556275138631539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135226 n * A155038 (n + 1)

end

end A200139.P8566556275138631539

noncomputable section

/-- A200139: Triangle T(n,k), read by rows, given by (1,1,0,0,0,0,0,0,0,...) DELTA (1,0,0,0,0,0,0,0,0,...) where DELTA is the operator defined in A084938.

Offset 0, canonical program `A200139.P8566556275138631539`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A200139 (n : ℕ) : ℤ :=
  A200139.P8566556275138631539.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A200139.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202335.P3583749144337499304

`A027170(eq[0, A103451(n)])+6`
-/

namespace A202335.P3583749144337499304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027170 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + 6

end

end A202335.P3583749144337499304

noncomputable section

/-- A202335: T(n,k)=Number of (n+1)X(k+1) binary arrays with consecutive windows of two bits considered as a binary number nondecreasing in every row and column.

Offset 1, canonical program `A202335.P3583749144337499304`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9720 terms. -/
def A202335 (n : ℕ) : ℤ :=
  A202335.P3583749144337499304.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9720 terms. -/
def A202335.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A003754.P7281650019262553655

`(A365808(n+2)+1)/3-1`
-/

namespace A003754.P7281650019262553655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A365808 (n + 2) + 1 : ℚ) / 3 - 1

end

end A003754.P7281650019262553655

noncomputable section

/-- A003754: Numbers with no adjacent 0's in binary expansion.

Offset 1, canonical program `A003754.P7281650019262553655`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A003754 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A003754.P7281650019262553655.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A003754.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004435.P8512248828130465738

`filter[A004439(n+1), A049240(#)]`
-/

namespace A004435.P8512248828130465738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004439 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A004435.P8512248828130465738

noncomputable section

/-- A004435: Positive integers that are not the sum of 2 distinct square integers.

Offset 1, canonical program `A004435.P8512248828130465738`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9937 terms. -/
def A004435 (n : ℕ) : ℤ :=
  A004435.P8512248828130465738.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9937 terms. -/
def A004435.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005325.P14530918733206490296

`∑[∑[A026126(n+4)]]`
-/

namespace A005325.P14530918733206490296
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026126 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005325.P14530918733206490296

noncomputable section

/-- A005325: Column of Motzkin triangle.

Offset 5, canonical program `A005325.P14530918733206490296`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A005325 (n : ℕ) : ℤ :=
  A005325.P14530918733206490296.a (n - 5)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A005325.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006995.P15003658570251687479

`∪[A048700(n+1), A048701(n)]`
-/

namespace A006995.P15003658570251687479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048701 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A006995.P15003658570251687479

noncomputable section

/-- A006995: Binary palindromes: numbers whose binary expansion is palindromic.

Offset 1, canonical program `A006995.P15003658570251687479`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A006995 (n : ℕ) : ℤ :=
  (A006995.P15003658570251687479.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A006995.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008291.P3366930625600708790

`A008290(lt[A055137(n), 0])`
-/

namespace A008291.P3366930625600708790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055137 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008290 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A008291.P3366930625600708790

noncomputable section

/-- A008291: Triangle of rencontres numbers.

Offset 2, canonical program `A008291.P3366930625600708790`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2415 terms. -/
def A008291 (n : ℕ) : ℤ :=
  A008291.P3366930625600708790.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2415 terms. -/
def A008291.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008367.P17016500990834177546

`∩[A008366(n+1), A038511(n+1)]`
-/

namespace A008367.P17016500990834177546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008366 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A008367.P17016500990834177546

noncomputable section

/-- A008367: Composite but smallest prime factor >= 17.

Offset 1, canonical program `A008367.P17016500990834177546`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4675 terms. -/
def A008367 (n : ℕ) : ℤ :=
  (A008367.P17016500990834177546.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4675 terms. -/
def A008367.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A013498.P10703321779851996206

`A103450(A007590(n))%A075118(n)`
-/

namespace A013498.P10703321779851996206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103450 (A007590 n).toNat) (A075118 n)

end

end A013498.P10703321779851996206

noncomputable section

/-- A013498: Number of permutations in S_n with a certain property.

Offset 1, canonical program `A013498.P10703321779851996206`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A013498 (n : ℕ) : ℤ :=
  A013498.P10703321779851996206.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A013498.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A013626.P7478277466104224450

`lcm(A013614(n), A038243(n))`
-/

namespace A013626.P7478277466104224450
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013614 n) (A038243 n)

end

end A013626.P7478277466104224450

noncomputable section

/-- A013626: Triangle of coefficients in expansion of (5+7x)^n.

Offset 0, canonical program `A013626.P7478277466104224450`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4514 terms. -/
def A013626 (n : ℕ) : ℤ :=
  (A013626.P7478277466104224450.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4514 terms. -/
def A013626.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014725.P11893219493432893868

`A014414(n+1)²`
-/

namespace A014725.P11893219493432893868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014414 (n + 1) ^ 2

end

end A014725.P11893219493432893868

noncomputable section

/-- A014725: Squares of odd elements in Pascal triangle that are not 1.

Offset 1, canonical program `A014725.P11893219493432893868`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014414, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014725 (n : ℕ) : ℤ :=
  A014725.P11893219493432893868.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014414, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014725.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A014760.P5591794879927673891

`A014475(eq[2, 2%A014475(n+1)]+1)²`
-/

namespace A014760.P5591794879927673891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 2 (A014475 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 2

end

end A014760.P5591794879927673891

noncomputable section

/-- A014760: Squares of numbers in array formed from odd elements to the right of middle of rows of Pascal triangle that are not 1.

Offset 0, canonical program `A014760.P5591794879927673891`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1506 terms. -/
def A014760 (n : ℕ) : ℤ :=
  A014760.P5591794879927673891.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1506 terms. -/
def A014760.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014761.P9492238368805406279

`A014475(n+1)²`
-/

namespace A014761.P9492238368805406279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014475 (n + 1) ^ 2

end

end A014761.P9492238368805406279

noncomputable section

/-- A014761: Squares of numbers in array formed from odd elements to the right of middle of rows of Pascal triangle.

Offset 1, canonical program `A014761.P9492238368805406279`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014475, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014761 (n : ℕ) : ℤ :=
  A014761.P9492238368805406279.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014475, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014761.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A018191.P5198761685577893535

`A291632(n)+A047974(n)`
-/

namespace A018191.P5198761685577893535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291632 n + A047974 n

end

end A018191.P5198761685577893535

noncomputable section

/-- A018191: a(n) = Sum_{k=0..n} binomial(n, k) * k! / floor(k/2)!.

Offset 0, canonical program `A018191.P5198761685577893535`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. -/
def A018191 (n : ℕ) : ℤ :=
  A018191.P5198761685577893535.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. -/
def A018191.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025093.P5417694836519234021

`A025106(n+1)+A025106(n+1)-A025083(n+1)`
-/

namespace A025093.P5417694836519234021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025106 (n + 1) + (A025106 (n + 1) - A025083 (n + 1))

end

end A025093.P5417694836519234021

noncomputable section

/-- A025093: a(n) = s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n-k+1), where k = [ n/2 ], s = (Lucas numbers), t = (odd natural numbers).

Offset 1, canonical program `A025093.P5417694836519234021`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 924 terms. -/
def A025093 (n : ℕ) : ℤ :=
  A025093.P5417694836519234021.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 924 terms. -/
def A025093.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026153.P12716791351611435440

`2*A026125(n+3)-A026110(n+4)`
-/

namespace A026153.P12716791351611435440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026125 (n + 3) - A026110 (n + 4)

end

end A026153.P12716791351611435440

noncomputable section

/-- A026153: T(n,n-2), where T is the array in A026148.

Offset 2, canonical program `A026153.P12716791351611435440`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. -/
def A026153 (n : ℕ) : ℤ :=
  A026153.P12716791351611435440.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. -/
def A026153.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026615.P4384294417434262214

`A028326(n)-A135225(A083920(n))`
-/

namespace A026615.P4384294417434262214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - A135225 (A083920 n).toNat

end

end A026615.P4384294417434262214

noncomputable section

/-- A026615: Triangle read by rows: T(n,0) = T(n,n) = 1 for n >= 0, T(n,1) = T(n,n-1) = 2*n-1 for n >= 1, T(n,k) = T(n-1,k-1) + T(n-1,k) for 2 <= k <= n-2 and n >= 4.

Offset 0, canonical program `A026615.P4384294417434262214`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026615 (n : ℕ) : ℤ :=
  A026615.P4384294417434262214.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026615.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026743.P7713919475354622590

`Δ[A026734(n)]-A026677(n)`
-/

namespace A026743.P7713919475354622590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026734 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026677 n

end

end A026743.P7713919475354622590

noncomputable section

/-- A026743: a(n) = Sum_{j=0..n} T(n,j), T given by A026736.

Offset 0, canonical program `A026743.P7713919475354622590`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 317 terms. -/
def A026743 (n : ℕ) : ℤ :=
  A026743.P7713919475354622590.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 317 terms. -/
def A026743.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026842.P1998304907469912435

`A026672(n+4)-A026855(n+3)`
-/

namespace A026842.P1998304907469912435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026672 (n + 4) - A026855 (n + 3)

end

end A026842.P1998304907469912435

noncomputable section

/-- A026842: a(n) = T(2n,n-3), T given by A026725.

Offset 3, canonical program `A026842.P1998304907469912435`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. -/
def A026842 (n : ℕ) : ℤ :=
  A026842.P1998304907469912435.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. -/
def A026842.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026843.P4420461623608991391

`A026675(n+3)-A026855(n+2)`
-/

namespace A026843.P4420461623608991391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026675 (n + 3) - A026855 (n + 2)

end

end A026843.P4420461623608991391

noncomputable section

/-- A026843: a(n) = T(2n,n+3), T given by A026725.

Offset 3, canonical program `A026843.P4420461623608991391`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. -/
def A026843 (n : ℕ) : ℤ :=
  A026843.P4420461623608991391.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. -/
def A026843.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026851.P6803457974734952251

`A026855(n+2)-A026850(n+2)`
-/

namespace A026851.P6803457974734952251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026855 (n + 2) - A026850 (n + 2)

end

end A026851.P6803457974734952251

noncomputable section

/-- A026851: a(n) = T(2n,n+2), T given by A026736.

Offset 2, canonical program `A026851.P6803457974734952251`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. -/
def A026851 (n : ℕ) : ℤ :=
  A026851.P6803457974734952251.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. -/
def A026851.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027467.P242322843362571297

`A038243(n)*A140303(n)`
-/

namespace A027467.P242322843362571297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038243 n * A140303 n

end

end A027467.P242322843362571297

noncomputable section

/-- A027467: Triangle whose (n,k)-th entry is 15^(n-k)*binomial(n,k).

Offset 0, canonical program `A027467.P242322843362571297`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3573 terms. -/
def A027467 (n : ℕ) : ℤ :=
  A027467.P242322843362571297.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3573 terms. -/
def A027467.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028275.P981092791414747383

`A028326(n)-abs(A159853(n))`
-/

namespace A028275.P981092791414747383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - |A159853 n|

end

end A028275.P981092791414747383

noncomputable section

/-- A028275: Elements in 4-Pascal triangle (by row).

Offset 0, canonical program `A028275.P981092791414747383`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A028275 (n : ℕ) : ℤ :=
  A028275.P981092791414747383.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A028275.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029441.P7731090560958311187

`A029400(n)+A029431(n)-A029391(n)`
-/

namespace A029441.P7731090560958311187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029400 n + (A029431 n - A029391 n)

end

end A029441.P7731090560958311187

noncomputable section

/-- A029441: Expansion of 1/((1-x^7)(1-x^10)(1-x^11)(1-x^12)).

Offset 0, canonical program `A029441.P7731090560958311187`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029441 (n : ℕ) : ℤ :=
  A029441.P7731090560958311187.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029441.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029602.P5566939383577341015

`A029600(A080036(n)-1)`
-/

namespace A029602.P5566939383577341015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029600 (A080036 n - 1).toNat

end

end A029602.P5566939383577341015

noncomputable section

/-- A029602: Numbers in the (2,3)-Pascal triangle A029600 that are different from 2.

Offset 0, canonical program `A029602.P5566939383577341015`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029602 (n : ℕ) : ℤ :=
  A029602.P5566939383577341015.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029602.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029603.P3722168384408911614

`A029600(eq[A010054(n), A103451(n)])`
-/

namespace A029603.P3722168384408911614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029600 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A029603.P3722168384408911614

noncomputable section

/-- A029603: Numbers in the (2,3)-Pascal triangle A029600 that are different from 3.

Offset 0, canonical program `A029603.P3722168384408911614`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9862 terms. -/
def A029603 (n : ℕ) : ℤ :=
  A029603.P3722168384408911614.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9862 terms. -/
def A029603.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029604.P6160767166410733694

`A029600(eq[1, A029600(n)%2])`
-/

namespace A029604.P6160767166410733694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029600 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029600 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029604.P6160767166410733694

noncomputable section

/-- A029604: Odd numbers in the (2,3)-Pascal triangle A029600.

Offset 0, canonical program `A029604.P6160767166410733694`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2410 terms. -/
def A029604 (n : ℕ) : ℤ :=
  A029604.P6160767166410733694.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2410 terms. -/
def A029604.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029605.P7080579544809329854

`A029600(eq[2, gcd(2, A029600(n))])`
-/

namespace A029605.P7080579544809329854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A029600 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029600 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A029605.P7080579544809329854

noncomputable section

/-- A029605: Even numbers in the (2,3)-Pascal triangle A029600.

Offset 0, canonical program `A029605.P7080579544809329854`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9066 terms. -/
def A029605 (n : ℕ) : ℤ :=
  A029605.P7080579544809329854.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9066 terms. -/
def A029605.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029618.P143499929436318524

`A029600(A061579(n))`
-/

namespace A029618.P143499929436318524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029600 (A061579 n).toNat

end

end A029618.P143499929436318524

noncomputable section

/-- A029618: Numbers in (3,2)-Pascal triangle (by row).

Offset 0, canonical program `A029618.P143499929436318524`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029618 (n : ℕ) : ℤ :=
  A029618.P143499929436318524.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029618.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029640.P8656181183472079223

`A029635(eq[0, A029635(n)%2])`
-/

namespace A029640.P8656181183472079223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029635 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029640.P8656181183472079223

noncomputable section

/-- A029640: Even numbers in the (1,2)-Pascal triangle A029635.

Offset 1, canonical program `A029640.P8656181183472079223`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7729 terms. -/
def A029640 (n : ℕ) : ℤ :=
  A029640.P8656181183472079223.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7729 terms. -/
def A029640.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029652.P7281469354468211075

`A029635(eq[1, gcd(2, A029635(n))])`
-/

namespace A029652.P7281469354468211075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A029635 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A029652.P7281469354468211075

noncomputable section

/-- A029652: Odd numbers in the (1,2)-Pascal triangle A029635.

Offset 1, canonical program `A029652.P7281469354468211075`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2271 terms. -/
def A029652 (n : ℕ) : ℤ :=
  A029652.P7281469354468211075.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2271 terms. -/
def A029652.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029657.P10201678815065626017

`A029669(lt[1, A029669(n)])`
-/

namespace A029657.P10201678815065626017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029669 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029669 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A029657.P10201678815065626017

noncomputable section

/-- A029657: Odd numbers in (2,1)-Pascal triangle A029653 that are different from 1.

Offset 0, canonical program `A029657.P10201678815065626017`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9473 terms. -/
def A029657 (n : ℕ) : ℤ :=
  A029657.P10201678815065626017.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9473 terms. -/
def A029657.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A031374.P6567541883320236962

`A031370(2*(n+1))`
-/

namespace A031374.P6567541883320236962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031370 (2 * (n + 1))

end

end A031374.P6567541883320236962

noncomputable section

/-- A031374: a(n) = prime(8*n - 1).

Offset 1, canonical program `A031374.P6567541883320236962`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A031374 (n : ℕ) : ℤ :=
  A031374.P6567541883320236962.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A031374.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A031908.P13070959978911551669

`A031370(Δ[n²])`
-/

namespace A031908.P13070959978911551669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031370 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A031908.P13070959978911551669

noncomputable section

/-- A031908: a(n) = prime(8*n - 5).

Offset 1, canonical program `A031908.P13070959978911551669`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A031908 (n : ℕ) : ℤ :=
  A031908.P13070959978911551669.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A031908.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033282.P16262282567658621791

`A086810(comp[∑[n]])`
-/

namespace A033282.P16262282567658621791
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086810 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A033282.P16262282567658621791

noncomputable section

/-- A033282: Triangle read by rows: T(n, k) is the number of diagonal dissections of a convex n-gon into k+1 regions.

Offset 3, canonical program `A033282.P16262282567658621791`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9408 terms. -/
def A033282 (n : ℕ) : ℤ :=
  A033282.P16262282567658621791.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9408 terms. -/
def A033282.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033820.P6750726917053275800

`A078817(A061579(n))`
-/

namespace A033820.P6750726917053275800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078817 (A061579 n).toNat

end

end A033820.P6750726917053275800

noncomputable section

/-- A033820: Triangle read by rows: T(k,j) = ((2*j+1)/(k+1))*binomial(2*j,j)*binomial(2*k-2*j,k-j).

Offset 0, canonical program `A033820.P6750726917053275800`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033820 (n : ℕ) : ℤ :=
  A033820.P6750726917053275800.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033820.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038994.P9699052350017523539

`∑{d}[n+1, #*A038993(#)]`
-/

namespace A038994.P9699052350017523539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A038993 d

end

end A038994.P9699052350017523539

noncomputable section

/-- A038994: Number of sublattices of index n in generic 7-dimensional lattice.

Offset 1, canonical program `A038994.P9699052350017523539`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038994 (n : ℕ) : ℤ :=
  A038994.P9699052350017523539.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038994.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049323.P2092163580346850062

`A001263(n+1)/A007318(n)*A058127(n+1)`
-/

namespace A049323.P2092163580346850062
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001263 (n + 1) : ℚ) / (A007318 n : ℚ) * (A058127 (n + 1) : ℚ)

end

end A049323.P2092163580346850062

noncomputable section

/-- A049323: Triangle of coefficients of certain polynomials (exponents in increasing order), equivalent to A033842.

Offset 0, canonical program `A049323.P2092163580346850062`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1766 terms. -/
def A049323 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A049323.P2092163580346850062.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1766 terms. -/
def A049323.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049513.P3798320867267262351

`A004247(n)*A166692(n)+1`
-/

namespace A049513.P3798320867267262351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 n * A166692 n + 1

end

end A049513.P3798320867267262351

noncomputable section

/-- A049513: Array T by antidiagonals: T(k,n) = k*n*2^(n-1) + 1, n >= 0, k >= 0.

Offset 0, canonical program `A049513.P3798320867267262351`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049513 (n : ℕ) : ℤ :=
  A049513.P3798320867267262351.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049513.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054523.P592142950605229816

`A130207(A286158(n+1))`
-/

namespace A054523.P592142950605229816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130207 (A286158 (n + 1)).toNat

end

end A054523.P592142950605229816

noncomputable section

/-- A054523: Triangle read by rows: T(n,k) = phi(n/k) if k divides n, T(n,k)=0 otherwise (n >= 1, 1 <= k <= n).

Offset 1, canonical program `A054523.P592142950605229816`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054523 (n : ℕ) : ℤ :=
  A054523.P592142950605229816.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054523.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054527.P15635467565137321450

`A054525(A000124(A002262(n)))`
-/

namespace A054527.P15635467565137321450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054525 (A000124 (A002262 n).toNat).toNat

end

end A054527.P15635467565137321450

noncomputable section

/-- A054527: Triangle read by rows: T(n,k) = Moebius mu(k) (n >= 1, 1 <= k <= n).

Offset 1, canonical program `A054527.P15635467565137321450`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054527 (n : ℕ) : ℤ :=
  A054527.P15635467565137321450.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054527.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055485.P28527827585103714

`A055194(n+2)+A005783(n)`
-/

namespace A055485.P28527827585103714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055194 (n + 2) + A005783 n

end

end A055485.P28527827585103714

noncomputable section

/-- A055485: Number of unlabeled 3-element intersecting families (with distinct sets) of an n-element set.

Offset 3, canonical program `A055485.P28527827585103714`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055485 (n : ℕ) : ℤ :=
  A055485.P28527827585103714.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055485.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057027.P16662688705013223200

`A038722(A059399(n+1))`
-/

namespace A057027.P16662688705013223200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A059399 (n + 1)).toNat

end

end A057027.P16662688705013223200

noncomputable section

/-- A057027: Triangle T read by rows: row n consists of the numbers C(n,2)+1 to C(n+1,2); numbers in odd-numbered places form an increasing sequence and the others a decreasing sequence.

Offset 1, canonical program `A057027.P16662688705013223200`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057027 (n : ℕ) : ℤ :=
  A057027.P16662688705013223200.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057027.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059342.P11166942202048713264

`gcd(A059268(n), A159335(A080036(n)))`
-/

namespace A059342.P11166942202048713264
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A059268 n) (A159335 (A080036 n).toNat)

end

end A059342.P11166942202048713264

noncomputable section

/-- A059342: Triangle giving denominators of coefficients of Euler polynomials, highest powers first.

Offset 0, canonical program `A059342.P11166942202048713264`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3869 terms. -/
def A059342 (n : ℕ) : ℤ :=
  (A059342.P11166942202048713264.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3869 terms. -/
def A059342.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060097.P1955645356064434113

`gcd(A137688(n), A159335(A014132(n+1)-1))`
-/

namespace A060097.P1955645356064434113
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A137688 n) (A159335 (A014132 (n + 1) - 1).toNat)

end

end A060097.P1955645356064434113

noncomputable section

/-- A060097: Denominator of coefficients of Euler polynomials (rising powers).

Offset 0, canonical program `A060097.P1955645356064434113`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A060097 (n : ℕ) : ℤ :=
  (A060097.P1955645356064434113.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A060097.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060693.P10828110940058912455

`A001263(n+1)/A007318(n)*A033184(n+1)`
-/

namespace A060693.P10828110940058912455
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001263 (n + 1) : ℚ) / (A007318 n : ℚ) * (A033184 (n + 1) : ℚ)

end

end A060693.P10828110940058912455

noncomputable section

/-- A060693: Triangle (0 <= k <= n) read by rows: T(n, k) is the number of Schröder paths from (0,0) to (2n,0) having k peaks.

Offset 0, canonical program `A060693.P10828110940058912455`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9486 terms. -/
def A060693 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A060693.P10828110940058912455.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9486 terms. -/
def A060693.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066667.P10004507947924964948

`A021009(n)-A002262(n+1)*A021009(n+1)`
-/

namespace A066667.P10004507947924964948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021009 n - A002262 (n + 1) * A021009 (n + 1)

end

end A066667.P10004507947924964948

noncomputable section

/-- A066667: Coefficient triangle of generalized Laguerre polynomials (a=1).

Offset 0, canonical program `A066667.P10004507947924964948`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2282 terms. -/
def A066667 (n : ℕ) : ℤ :=
  A066667.P10004507947924964948.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2282 terms. -/
def A066667.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073278.P2371061609722676516

`A066325(A061579(n))*A097807(n)`
-/

namespace A073278.P2371061609722676516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066325 (A061579 n).toNat * A097807 n

end

end A073278.P2371061609722676516

noncomputable section

/-- A073278: Triangle read by rows. The triangle is constructed from the coefficients of the n-th derivative of the normal probability distribution function.

Offset 0, canonical program `A073278.P2371061609722676516`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7008 terms. -/
def A073278 (n : ℕ) : ℤ :=
  A073278.P2371061609722676516.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7008 terms. -/
def A073278.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081277.P2168798880117759400

`A208510(n+1)*A232089(n)`
-/

namespace A081277.P2168798880117759400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208510 (n + 1) * A232089 n

end

end A081277.P2168798880117759400

noncomputable section

/-- A081277: Square array of unsigned coefficients of Chebyshev polynomials of the first kind.

Offset 0, canonical program `A081277.P2168798880117759400`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081277 (n : ℕ) : ℤ :=
  A081277.P2168798880117759400.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081277.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085387.P4663447753190101228

`(A066325(∑[n])+A005425(n))/2`
-/

namespace A085387.P4663447753190101228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066325 (∑ j ∈ Finset.range (n + 1), f1 j) + A005425 n : ℚ) / 2

end

end A085387.P4663447753190101228

noncomputable section

/-- A085387: E.g.f exp(x)*cosh(x+x^2/2).

Offset 0, canonical program `A085387.P4663447753190101228`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A085387 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A085387.P4663447753190101228.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A085387.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087698.P14480629531617901505

`abs(A159853(n))`
-/

namespace A087698.P14480629531617901505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A159853 n|

end

end A087698.P14480629531617901505

noncomputable section

/-- A087698: Triangle read by rows, giving T(n,k) = maximum number of examples (Boolean inputs) at Hamming distance 2 for symmetric Boolean functions that can have different outputs.

Offset 0, canonical program `A087698.P14480629531617901505`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087698 (n : ℕ) : ℤ :=
  A087698.P14480629531617901505.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087698.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089732.P16063154535274882972

`A001263(A056536(abs(1-n)+1))`
-/

namespace A089732.P16063154535274882972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (A056536 (|1 - (n : ℤ)| + 1).toNat).toNat

end

end A089732.P16063154535274882972

noncomputable section

/-- A089732: Triangle read by rows: T(n,k) = number of peakless Motzkin paths of length n having k (1,1) steps (can be easily translated into RNA secondary structure terminology). Except for row 0, row n has ceiling(n/2) entries.

Offset 0, canonical program `A089732.P16063154535274882972`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5042 terms. -/
def A089732 (n : ℕ) : ℤ :=
  A089732.P16063154535274882972.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5042 terms. -/
def A089732.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092243.P77833294890424511

`∑[-A079054(abs(1-n)+2)]`
-/

namespace A092243.P77833294890424511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A079054 (|1 - (n : ℤ)| + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092243.P77833294890424511

noncomputable section

/-- A092243: Score at stage n in "tug of war" between prime gap increases vs. prime gap decreases: start with score = 0 at n = 1 and at stage n = k > 1, increase (resp. decrease) the score by 1 if the k-th prime gap is greater (resp. less) than the previous prime gap.

Offset 1, canonical program `A092243.P77833294890424511`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092243 (n : ℕ) : ℤ :=
  A092243.P77833294890424511.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092243.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092371.P9823255814737309741

`abs(A109954(n)*A135278(n))`
-/

namespace A092371.P9823255814737309741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A109954 n * A135278 n|

end

end A092371.P9823255814737309741

noncomputable section

/-- A092371: Triangle read by rows: T(n, k) = binomial(n, k) * binomial(n+k, n-k).

Offset 1, canonical program `A092371.P9823255814737309741`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092371 (n : ℕ) : ℤ :=
  A092371.P9823255814737309741.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092371.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A093560.P8767465861786318513

`A028326(n)-A112467(n)`
-/

namespace A093560.P8767465861786318513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - A112467 n

end

end A093560.P8767465861786318513

noncomputable section

/-- A093560: (3,1) Pascal triangle.

Offset 0, canonical program `A093560.P8767465861786318513`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A093560 (n : ℕ) : ℤ :=
  A093560.P8767465861786318513.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A093560.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095660.P7165856868933140095

`A097805(n)+A029635(n)`
-/

namespace A095660.P7165856868933140095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n + A029635 n

end

end A095660.P7165856868933140095

noncomputable section

/-- A095660: Pascal (1,3) triangle.

Offset 0, canonical program `A095660.P7165856868933140095`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095660 (n : ℕ) : ℤ :=
  A095660.P7165856868933140095.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095660.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095801.P16736391009877272143

`A001263(n+1)*A208355(A099375(n))`
-/

namespace A095801.P16736391009877272143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (n + 1) * A208355 (A099375 n).toNat

end

end A095801.P16736391009877272143

noncomputable section

/-- A095801: Square of Narayana triangle A001263: View A001263 as a lower triangular matrix. Then the square of that matrix is also lower triangular. Sequence gives this lower triangle, read by rows.

Offset 1, canonical program `A095801.P16736391009877272143`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6359 terms. -/
def A095801 (n : ℕ) : ℤ :=
  A095801.P16736391009877272143.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6359 terms. -/
def A095801.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096713.P528370935851722280

`A066325(record[n-A025581(n)])`
-/

namespace A096713.P528370935851722280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066325 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A096713.P528370935851722280

noncomputable section

/-- A096713: Irregular triangle T(n,k) of nonzero coefficients of the modified Hermite polynomials (n >= 0 and 0 <= k <= floor(n/2)).

Offset 0, canonical program `A096713.P528370935851722280`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3543 terms. -/
def A096713 (n : ℕ) : ℤ :=
  A096713.P528370935851722280.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3543 terms. -/
def A096713.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098470.P690787606297198268

`A025182(n+6)-A014532(n+3)`
-/

namespace A098470.P690787606297198268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025182 (n + 6) - A014532 (n + 3)

end

end A098470.P690787606297198268

noncomputable section

/-- A098470: Form array in which n-th row is obtained by expanding (1+x+x^2)^n and taking the 5th column from the center.

Offset 5, canonical program `A098470.P690787606297198268`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. -/
def A098470 (n : ℕ) : ℤ :=
  A098470.P690787606297198268.a (n - 5)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. -/
def A098470.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099174.P6730670868907277430

`abs(A066325(n))`
-/

namespace A099174.P6730670868907277430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A066325 n|

end

end A099174.P6730670868907277430

noncomputable section

/-- A099174: Triangle read by rows: coefficients of modified Hermite polynomials.

Offset 0, canonical program `A099174.P6730670868907277430`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7027 terms. -/
def A099174 (n : ℕ) : ℤ :=
  A099174.P6730670868907277430.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7027 terms. -/
def A099174.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099575.P10676971306045907005

`A030111(A245300(n)+A193739(n))`
-/

namespace A099575.P10676971306045907005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030111 (A245300 n + A193739 n).toNat

end

end A099575.P10676971306045907005

noncomputable section

/-- A099575: Number triangle T(n,k) = binomial(n + floor(k/2) + 1, n + 1), 0 <= k <= n.

Offset 0, canonical program `A099575.P10676971306045907005`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2626 terms. -/
def A099575 (n : ℕ) : ℤ :=
  A099575.P10676971306045907005.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2626 terms. -/
def A099575.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099813.P574082998773418701

`ceil(A109128(2*n+1)/2)`
-/

namespace A099813.P574082998773418701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A109128 (2 * n + 1) : ℚ) / 2⌉

end

end A099813.P574082998773418701

noncomputable section

/-- A099813: Bisection of A007318.

Offset 0, canonical program `A099813.P574082998773418701`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5738 terms. -/
def A099813 (n : ℕ) : ℤ :=
  A099813.P574082998773418701.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5738 terms. -/
def A099813.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103316.P15141751217750397105

`A055248(n)*A097807(n)`
-/

namespace A103316.P15141751217750397105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055248 n * A097807 n

end

end A103316.P15141751217750397105

noncomputable section

/-- A103316: Riordan array (1/(1+2x), x/(1+x)).

Offset 0, canonical program `A103316.P15141751217750397105`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A103316 (n : ℕ) : ℤ :=
  A103316.P15141751217750397105.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A103316.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105413.P9477685925488357748

`p?[A024675(n+1)-A162153(n+6)]`
-/

namespace A105413.P9477685925488357748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1) - A162153 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A105413.P9477685925488357748

noncomputable section

/-- A105413: Primes p = prime(k) such that both p+2 and prime(k+6)-2 are prime numbers.

Offset 1, canonical program `A105413.P9477685925488357748`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. -/
def A105413 (n : ℕ) : ℤ :=
  A105413.P9477685925488357748.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. -/
def A105413.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105414.P3057525973384244371

`p?[A006093(n+1)-A162153(n+5)]`
-/

namespace A105414.P3057525973384244371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) - A162153 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A105414.P3057525973384244371

noncomputable section

/-- A105414: Primes p = prime(k) such that p+2 and prime(k+7)-2 are both prime numbers.

Offset 1, canonical program `A105414.P3057525973384244371`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A105414 (n : ℕ) : ℤ :=
  A105414.P3057525973384244371.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A105414.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107006.P955908448269712890

`24*A139483(n+1)+7`
-/

namespace A107006.P955908448269712890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * A139483 (n + 1) + 7

end

end A107006.P955908448269712890

noncomputable section

/-- A107006: Primes of the form 4x^2-4xy+7y^2, with x and y nonnegative.

Offset 1, canonical program `A107006.P955908448269712890`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A139483, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A107006 (n : ℕ) : ℤ :=
  A107006.P955908448269712890.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A139483, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A107006.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A107599.P7799038033738361722

`1-A079054(n+2)`
-/

namespace A107599.P7799038033738361722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A079054 (n + 2)

end

end A107599.P7799038033738361722

noncomputable section

/-- A107599: a(n) = 0,1,2 (resp.) if (1/2)[prime(n-1)+prime(n+1)] is less than, equal to or greater than prime(n) (resp.).

Offset 2, canonical program `A107599.P7799038033738361722`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 999 terms. -/
def A107599 (n : ℕ) : ℤ :=
  A107599.P7799038033738361722.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 999 terms. -/
def A107599.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107972.P1932068832478795391

`(comp[∑[n]]-n)/2*A177877(n)`
-/

namespace A107972.P1932068832478795391
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) : ℚ) / 2 * (A177877 n : ℚ)

end

end A107972.P1932068832478795391

noncomputable section

/-- A107972: Triangle read by rows: T(n,k) = (k+1)(k+2)(n+2)(3n-2k+3)/12 for 0<=k<=n.

Offset 0, canonical program `A107972.P1932068832478795391`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107972 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A107972.P1932068832478795391.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107972.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108263.P18378031101420940815

`A086810(A091018(n))`
-/

namespace A108263.P18378031101420940815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086810 (A091018 n).toNat

end

end A108263.P18378031101420940815

noncomputable section

/-- A108263: Triangle read by rows: T(n,k) is the number of short bushes with n edges and k branchnodes (i.e., nodes of outdegree at least two). A short bush is an ordered tree with no nodes of outdegree 1.

Offset 0, canonical program `A108263.P18378031101420940815`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2652 terms. -/
def A108263 (n : ℕ) : ℤ :=
  A108263.P18378031101420940815.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2652 terms. -/
def A108263.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108415.P14242309755812235254

`A079054(n+2)+2`
-/

namespace A108415.P14242309755812235254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079054 (n + 2) + 2

end

end A108415.P14242309755812235254

noncomputable section

/-- A108415: a(n) = 1, 2 or 3 (resp.) if prime(n) is weak, balanced or strong (resp.).

Offset 2, canonical program `A108415.P14242309755812235254`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A108415 (n : ℕ) : ℤ :=
  A108415.P14242309755812235254.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A108415.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110162.P15690801050727080128

`A028326(n)/A029635(n)*A129818(n)`
-/

namespace A110162.P15690801050727080128
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 n : ℚ) / (A029635 n : ℚ) * (A129818 n : ℚ)

end

end A110162.P15690801050727080128

noncomputable section

/-- A110162: Riordan array ((1-x)/(1+x), x/(1+x)^2).

Offset 0, canonical program `A110162.P15690801050727080128`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110162 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A110162.P15690801050727080128.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110162.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111596.P6007535604357986319

`A097807(n)*A271703(n)`
-/

namespace A111596.P6007535604357986319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A271703 n

end

end A111596.P6007535604357986319

noncomputable section

/-- A111596: The matrix inverse of the unsigned Lah numbers A271703.

Offset 0, canonical program `A111596.P6007535604357986319`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2351 terms. -/
def A111596 (n : ℕ) : ℤ :=
  A111596.P6007535604357986319.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2351 terms. -/
def A111596.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111967.P13674875290881375490

`Δ[A000523(A002024(n+1))-A115361(n)]`
-/

namespace A111967.P13674875290881375490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A002024 (n + 1)).toNat - A115361 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111967.P13674875290881375490

noncomputable section

/-- A111967: Inverse of number triangle A101688.

Offset 0, canonical program `A111967.P13674875290881375490`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A111967 (n : ℕ) : ℤ :=
  A111967.P13674875290881375490.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A111967.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112552.P47081054228314261

`A030111(n+1)*A369736(n)`
-/

namespace A112552.P47081054228314261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030111 (n + 1) * A369736 n

end

end A112552.P47081054228314261

noncomputable section

/-- A112552: A modified Chebyshev transform of the second kind.

Offset 0, canonical program `A112552.P47081054228314261`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A112552 (n : ℕ) : ℤ :=
  A112552.P47081054228314261.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A112552.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112857.P9246049942416849065

`A193844(A056943(n))`
-/

namespace A112857.P9246049942416849065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193844 (A056943 n).toNat

end

end A112857.P9246049942416849065

noncomputable section

/-- A112857: Triangle T(n,k) read by rows: number of Green's R-classes in the semigroup of order-preserving partial transformations (of an n-element chain) consisting of elements of height k (height(alpha) = |Im(alpha)|).

Offset 0, canonical program `A112857.P9246049942416849065`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A112857 (n : ℕ) : ℤ :=
  A112857.P9246049942416849065.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A112857.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113428.P12735616040462337458

`A113429(9*n)`
-/

namespace A113428.P12735616040462337458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113429 (9 * n)

end

end A113428.P12735616040462337458

noncomputable section

/-- A113428: Expansion of f(-x^2, -x^3) in powers of x where f(, ) is Ramanujan's general theta function.

Offset 0, canonical program `A113428.P12735616040462337458`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1112 terms. -/
def A113428 (n : ℕ) : ℤ :=
  A113428.P12735616040462337458.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1112 terms. -/
def A113428.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114521.P13125088130632841430

`A008475(A114520(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A114521.P13125088130632841430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (A114520 (n + 1)).toNat

end

end A114521.P13125088130632841430

noncomputable section

/-- A114521: a(n) = A008475(A114520(n)).

Offset 1, canonical program `A114521.P13125088130632841430`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008475, A114520, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A114521 (n : ℕ) : ℤ :=
  A114521.P13125088130632841430.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008475, A114520, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A114521.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A114643.P3385208476335884825

`and(A050361(n+1), A063659(n+1))`
-/

namespace A114643.P3385208476335884825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A050361 (n + 1)) (A063659 (n + 1))

end

end A114643.P3385208476335884825

noncomputable section

/-- A114643: Number of real primitive Dirichlet characters modulo n.

Offset 1, canonical program `A114643.P3385208476335884825`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A114643 (n : ℕ) : ℤ :=
  A114643.P3385208476335884825.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A114643.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114656.P12625337701375377770

`A001263(n+1)*A130321(n)`
-/

namespace A114656.P12625337701375377770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (n + 1) * A130321 n

end

end A114656.P12625337701375377770

noncomputable section

/-- A114656: Triangle read by rows: T(n,k) is the number of double rise-bicolored Dyck paths (double rises come in two colors; also called marked Dyck paths) of semilength n and having k peaks (1 <= k <= n).

Offset 1, canonical program `A114656.P12625337701375377770`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9368 terms. -/
def A114656 (n : ℕ) : ℤ :=
  A114656.P12625337701375377770.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9368 terms. -/
def A114656.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114687.P6567509454073305954

`A001263(n+1)*A059268(n)`
-/

namespace A114687.P6567509454073305954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (n + 1) * A059268 n

end

end A114687.P6567509454073305954

noncomputable section

/-- A114687: Triangle read by rows: T(n,k) is the number of double rise-bicolored Dyck paths (double rises come in two colors; also called marked Dyck paths) of semilength n and having k double rises (0 <= k <= n-1).

Offset 1, canonical program `A114687.P6567509454073305954`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9392 terms. -/
def A114687 (n : ℕ) : ℤ :=
  A114687.P6567509454073305954.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9392 terms. -/
def A114687.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115150.P14078774331538153993

`record[A115138(n)]`
-/

namespace A115150.P14078774331538153993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115138 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115150.P14078774331538153993

noncomputable section

/-- A115150: Third diagonal (M=3) sequence of triangle A113647, called Y(2,1).

Offset 0, canonical program `A115150.P14078774331538153993`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A115150 (n : ℕ) : ℤ :=
  A115150.P14078774331538153993.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A115150.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117411.P2575899155432081916

`A117435(A185180(n+1)-1)`
-/

namespace A117411.P2575899155432081916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117435 (A185180 (n + 1) - 1).toNat

end

end A117411.P2575899155432081916

noncomputable section

/-- A117411: Skew triangle associated to the Euler numbers.

Offset 0, canonical program `A117411.P2575899155432081916`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A117411 (n : ℕ) : ℤ :=
  A117411.P2575899155432081916.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A117411.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118976.P8420611041753619682

`A001263(n+1)+A001263(n+2)-A010054(n+1)`
-/

namespace A118976.P8420611041753619682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (n + 1) + (A001263 (n + 2) - A010054 (n + 1))

end

end A118976.P8420611041753619682

noncomputable section

/-- A118976: Triangle read by rows: T(n,k) = binomial(n-1,k-1)*binomial(n,k-1)/k + binomial(n-1,k)*binomial(n,k)/(k+1) (1 <= k <= n). In other words, to each entry of the Narayana triangle (A001263) add the entry on its right.

Offset 1, canonical program `A118976.P8420611041753619682`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A118976 (n : ℕ) : ℤ :=
  A118976.P8420611041753619682.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A118976.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120406.P18260987011367859992

`A007318(n)*A135573(∑[A035214(n)])`
-/

namespace A120406.P18260987011367859992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A135573 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A120406.P18260987011367859992

noncomputable section

/-- A120406: Triangle read by rows: related to series expansion of the square root of 2 linear factors.

Offset 0, canonical program `A120406.P18260987011367859992`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1225 terms. -/
def A120406 (n : ℕ) : ℤ :=
  A120406.P18260987011367859992.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1225 terms. -/
def A120406.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120889.P18281959753175321360

`gcd(A193738(n), A193739(A286158(n+1)))`
-/

namespace A120889.P18281959753175321360
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A193738 n) (A193739 (A286158 (n + 1)).toNat)

end

end A120889.P18281959753175321360

noncomputable section

/-- A120889: Triangle read by rows: T(n,k) = gcd(k,ceiling(n/k)) (1 <= k <= n).

Offset 1, canonical program `A120889.P18281959753175321360`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A120889 (n : ℕ) : ℤ :=
  (A120889.P18281959753175321360.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A120889.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123202.P17354685668513878885

`A002720(A002262(n))*A021009(n)`
-/

namespace A123202.P17354685668513878885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002720 (A002262 n).toNat * A021009 n

end

end A123202.P17354685668513878885

noncomputable section

/-- A123202: Triangle of coefficients of n!*(1 - x)^n*L_n(x/(1 - x)), where L_n(x) is the Laguerre polynomial.

Offset 0, canonical program `A123202.P17354685668513878885`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1796 terms. -/
def A123202 (n : ℕ) : ℤ :=
  A123202.P17354685668513878885.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1796 terms. -/
def A123202.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123706.P7339613672439894422

`A054525(n+1)-A054525(n+2)*A177978(n+2)`
-/

namespace A123706.P7339613672439894422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054525 (n + 1) - A054525 (n + 2) * A177978 (n + 2)

end

end A123706.P7339613672439894422

noncomputable section

/-- A123706: Matrix inverse of triangle A010766, where A010766(n,k) = [n/k], for n>=k>=1.

Offset 1, canonical program `A123706.P7339613672439894422`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A123706 (n : ℕ) : ℤ :=
  A123706.P7339613672439894422.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A123706.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125093.P12968392047181113007

`A054525(n+1)*A002024(n+1)`
-/

namespace A125093.P12968392047181113007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054525 (n + 1) * A002024 (n + 1)

end

end A125093.P12968392047181113007

noncomputable section

/-- A125093: Triangle T(n,k) = n*A054525(n,k) read by rows.

Offset 1, canonical program `A125093.P12968392047181113007`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125093 (n : ℕ) : ℤ :=
  A125093.P12968392047181113007.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125093.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125271.P12543909301820514993

`2*A062327(n+1)-A000005(n+1)`
-/

namespace A125271.P12543909301820514993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A062327 (n + 1) - A000005 (n + 1)

end

end A125271.P12543909301820514993

noncomputable section

/-- A125271: Number of Gaussian integer divisors of n (having positive real part).

Offset 1, canonical program `A125271.P12543909301820514993`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062327, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A125271 (n : ℕ) : ℤ :=
  A125271.P12543909301820514993.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062327, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A125271.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A126073.P6431351007355356300

`∑[(n+1)*A176702((n+1)/A106616(n+1)+1)]`
-/

namespace A126073.P6431351007355356300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A176702 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A106616 (n + 1) : ℚ) + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126073.P6431351007355356300

noncomputable section

/-- A126073: Sum of numbers <= n which are multiples of 3 or 5 but not 15.

Offset 1, canonical program `A126073.P6431351007355356300`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A126073 (n : ℕ) : ℤ :=
  A126073.P6431351007355356300.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A126073.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127168.P12510765935863555111

`A010766(n+1)*A127170(n+1)`
-/

namespace A127168.P12510765935863555111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (n + 1) * A127170 (n + 1)

end

end A127168.P12510765935863555111

noncomputable section

/-- A127168: Triangle read by rows: square of A126988.

Offset 0, canonical program `A127168.P12510765935863555111`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127168 (n : ℕ) : ℤ :=
  A127168.P12510765935863555111.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127168.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127172.P7443549897825496608

`A134676(n+1)/A002260(n+1)`
-/

namespace A127172.P7443549897825496608
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134676 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ)

end

end A127172.P7443549897825496608

noncomputable section

/-- A127172: Triangle read by rows: A051731^3 as an infinite lower triangular matrix.

Offset 1, canonical program `A127172.P7443549897825496608`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A127172 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A127172.P7443549897825496608.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A127172.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127448.P10553008276063831497

`A002260(n+1)*A054525(n+1)`
-/

namespace A127448.P10553008276063831497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A054525 (n + 1)

end

end A127448.P10553008276063831497

noncomputable section

/-- A127448: Triangle T(n,k) read by rows: matrix product A054525 * A127648.

Offset 1, canonical program `A127448.P10553008276063831497`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127448 (n : ℕ) : ℤ :=
  A127448.P10553008276063831497.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127448.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127504.P11541494672643269183

`∑{d}[A127446(n+1), A007431(#)]`
-/

namespace A127504.P11541494672643269183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127446 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007431 d

end

end A127504.P11541494672643269183

noncomputable section

/-- A127504: Triangle T(n,k) = phi(n) if k|n, =0 otherwise.

Offset 1, canonical program `A127504.P11541494672643269183`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127504 (n : ℕ) : ℤ :=
  A127504.P11541494672643269183.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127504.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127507.P8560988778016771768

`A054525(n+2-A002260(n+1))`
-/

namespace A127507.P8560988778016771768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054525 ((n + 2 : ℤ) - A002260 (n + 1)).toNat

end

end A127507.P8560988778016771768

noncomputable section

/-- A127507: Triangle read by rows: T(n,k) = mu(n) where 1<=k<=n and mu=A008683.

Offset 1, canonical program `A127507.P8560988778016771768`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127507 (n : ℕ) : ℤ :=
  A127507.P8560988778016771768.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127507.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127569.P10157742646930506048

`A054525(n+1)*A127570(n+1)`
-/

namespace A127569.P10157742646930506048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054525 (n + 1) * A127570 (n + 1)

end

end A127569.P10157742646930506048

noncomputable section

/-- A127569: Triangle read by rows: product of the Mobius matrix A054525 by the diagonal matrix diag(A000203(n)).

Offset 1, canonical program `A127569.P10157742646930506048`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127569 (n : ℕ) : ℤ :=
  A127569.P10157742646930506048.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127569.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127627.P12845971405644131649

`A054525(n+1)*A127626(n+1)`
-/

namespace A127627.P12845971405644131649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054525 (n + 1) * A127626 (n + 1)

end

end A127627.P12845971405644131649

noncomputable section

/-- A127627: Triangle T(n,k) = A054525(n,k)*A018804(k), read by rows 1<=k<=n.

Offset 1, canonical program `A127627.P12845971405644131649`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127627 (n : ℕ) : ℤ :=
  A127627.P12845971405644131649.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127627.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127638.P2313957262884529139

`A037126(n+1)*A054525(n+1)`
-/

namespace A127638.P2313957262884529139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (n + 1) * A054525 (n + 1)

end

end A127638.P2313957262884529139

noncomputable section

/-- A127638: A054525 * A127640, where A127640 = infinite lower triangular matrix with the sequence of primes in the main diagonal and the rest zeros.

Offset 1, canonical program `A127638.P2313957262884529139`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127638 (n : ℕ) : ℤ :=
  A127638.P2313957262884529139.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127638.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127718.P10724454338439117394

`A002260(n+1)*A055248(n)`
-/

namespace A127718.P10724454338439117394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A055248 n

end

end A127718.P10724454338439117394

noncomputable section

/-- A127718: A007318 * A002260 as infinite lower triangular matrices; A002260 = [1; 1,2; 1,2,3; ...].

Offset 1, canonical program `A127718.P10724454338439117394`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127718 (n : ℕ) : ℤ :=
  A127718.P10724454338439117394.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127718.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128133.P8730551136205866684

`A128710(n)-A135278(n)`
-/

namespace A128133.P8730551136205866684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128710 n - A135278 n

end

end A128133.P8730551136205866684

noncomputable section

/-- A128133: Binomial transform of A128132.

Offset 1, canonical program `A128133.P8730551136205866684`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128133 (n : ℕ) : ℤ :=
  A128133.P8730551136205866684.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128133.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128184.P251226975296983160

`gcd(A114002(n), A176702(n+1))`
-/

namespace A128184.P251226975296983160
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114002 n) (A176702 (n + 1))

end

end A128184.P251226975296983160

noncomputable section

/-- A128184: A051731 * A097806.

Offset 1, canonical program `A128184.P251226975296983160`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128184 (n : ℕ) : ℤ :=
  (A128184.P251226975296983160.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128184.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128430.P7978969669841181230

`a(n-1)-A054524(n)` with `a(0)=1`
-/

namespace A128430.P7978969669841181230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - A054524 n

end

end A128430.P7978969669841181230

noncomputable section

/-- A128430: Triangle read by rows: A054524 * A000012.

Offset 1, canonical program `A128430.P7978969669841181230`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128430 (n : ℕ) : ℤ :=
  A128430.P7978969669841181230.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128430.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128821.P16376626232729770862

`A001263(n+1)*A099375(n)`
-/

namespace A128821.P16376626232729770862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (n + 1) * A099375 n

end

end A128821.P16376626232729770862

noncomputable section

/-- A128821: Triangle T(n,k), 1<=k<=n, read by rows defined by :T(n,k)=C(n,k)*C(n-1,k-1)+C(n,k-1)*C(n-1,k)where C(n,k)=A007318(n,k) .

Offset 1, canonical program `A128821.P16376626232729770862`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128821 (n : ℕ) : ℤ :=
  A128821.P16376626232729770862.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128821.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128980.P8498659622662109189

`A007431(abs(A127139(n+1)))`
-/

namespace A128980.P8498659622662109189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007431 |A127139 (n + 1)|.toNat

end

end A128980.P8498659622662109189

noncomputable section

/-- A128980: A054525 * A129691(unsigned).

Offset 1, canonical program `A128980.P8498659622662109189`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128980 (n : ℕ) : ℤ :=
  A128980.P8498659622662109189.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128980.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129710.P7540357634890969964

`A029653(A091018(n))`
-/

namespace A129710.P7540357634890969964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029653 (A091018 n).toNat

end

end A129710.P7540357634890969964

noncomputable section

/-- A129710: Triangle read by rows: T(n,k) is the number of Fibonacci binary words of length n and having k 01 subwords (0 <= k <= floor(n/2)). A Fibonacci binary word is a binary word having no 00 subword.

Offset 0, canonical program `A129710.P7540357634890969964`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5041 terms. -/
def A129710 (n : ℕ) : ℤ :=
  A129710.P7540357634890969964.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5041 terms. -/
def A129710.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130106.P5653707462542104831

`A051731(n+1)*A063659(A002260(n+1))`
-/

namespace A130106.P5653707462542104831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A063659 (A002260 (n + 1)).toNat

end

end A130106.P5653707462542104831

noncomputable section

/-- A130106: A051731 * diagonalized matrix of A063659.

Offset 1, canonical program `A130106.P5653707462542104831`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130106 (n : ℕ) : ℤ :=
  A130106.P5653707462542104831.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130106.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130197.P1298093891695330778

`2*A055248(n)-A135278(n)`
-/

namespace A130197.P1298093891695330778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055248 n - A135278 n

end

end A130197.P1298093891695330778

noncomputable section

/-- A130197: Binomial transform of A130196.

Offset 1, canonical program `A130197.P1298093891695330778`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130197 (n : ℕ) : ℤ :=
  A130197.P1298093891695330778.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130197.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130265.P7668724315621306673

`A055248(n)+A103406(n)-A007318(n)`
-/

namespace A130265.P7668724315621306673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055248 n + (A103406 n - A007318 n)

end

end A130265.P7668724315621306673

noncomputable section

/-- A130265: Triangle read by rows: matrix product A007318 * A051340.

Offset 0, canonical program `A130265.P7668724315621306673`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130265 (n : ℕ) : ℤ :=
  A130265.P7668724315621306673.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130265.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130277.P1302981945449131391

`A141674(n+1)/A010766(n+1)`
-/

namespace A130277.P1302981945449131391
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141674 (n + 1) : ℚ) / (A010766 (n + 1) : ℚ)

end

end A130277.P1302981945449131391

noncomputable section

/-- A130277: Triangle read by rows: T(n, k) = A000005(n) if k divides n, T(n, k) = 0 otherwise.

Offset 1, canonical program `A130277.P1302981945449131391`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A130277 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A130277.P1302981945449131391.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A130277.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130300.P17282070162645378256

`round(A131033(n+1)/2*A055248(n))`
-/

namespace A130300.P17282070162645378256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A131033 (n + 1) : ℚ) / 2 * (A055248 n : ℚ))

end

end A130300.P17282070162645378256

noncomputable section

/-- A130300: A007318 * A130296.

Offset 1, canonical program `A130300.P17282070162645378256`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130300 (n : ℕ) : ℤ :=
  A130300.P17282070162645378256.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130300.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131084.P7589424651343713133

`A029653(n-1)-a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A131084.P7589424651343713133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A029653 (n - 1) - a (n - 1)

end

end A131084.P7589424651343713133

noncomputable section

/-- A131084: A129686 * A007318. Riordan triangle (1+x, x/(1-x)).

Offset 1, canonical program `A131084.P7589424651343713133`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131084 (n : ℕ) : ℤ :=
  A131084.P7589424651343713133.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131084.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131088.P15408998772554303099

`lcm(2, A114002(n))-A054525(n+1)`
-/

namespace A131088.P15408998772554303099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A114002 n) : ℤ) - A054525 (n + 1)

end

end A131088.P15408998772554303099

noncomputable section

/-- A131088: 2*A051731 - A054525 as infinite lower triangular matrices.

Offset 1, canonical program `A131088.P15408998772554303099`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131088 (n : ℕ) : ℤ :=
  A131088.P15408998772554303099.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131088.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131110.P10774728730179441097

`A133567(A014132(n+2))+A098108(3*n+2)`
-/

namespace A131110.P10774728730179441097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133567 (A014132 (n + 2)).toNat + A098108 (3 * n + 2)

end

end A131110.P10774728730179441097

noncomputable section

/-- A131110: A000012 * A133084.

Offset 1, canonical program `A131110.P10774728730179441097`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9859 terms. -/
def A131110 (n : ℕ) : ℤ :=
  A131110.P10774728730179441097.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9859 terms. -/
def A131110.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131198.P17134115705625064705

`A367270(n)/A128227(n)`
-/

namespace A131198.P17134115705625064705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A367270 n : ℚ) / (A128227 n : ℚ)

end

end A131198.P17134115705625064705

noncomputable section

/-- A131198: Triangle T(n,k), 0 <= k <= n, read by rows, given by [1,0,1,0,1,0,1,0,...] DELTA [0,1,0,1,0,1,0,1,...] where DELTA is the operator defined in A084938.

Offset 0, canonical program `A131198.P17134115705625064705`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131198 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A131198.P17134115705625064705.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131198.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131415.P7466821744159895081

`A051597(n)+A055248(n)-A074909(n)`
-/

namespace A131415.P7466821744159895081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051597 n + (A055248 n - A074909 n)

end

end A131415.P7466821744159895081

noncomputable section

/-- A131415: (A007318 * A000012) + (A000012 * A007318) - A007318.

Offset 0, canonical program `A131415.P7466821744159895081`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131415 (n : ℕ) : ℤ :=
  A131415.P7466821744159895081.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131415.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132787.P877745916948461370

`2*A001263(n+1)-1`
-/

namespace A132787.P877745916948461370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001263 (n + 1) - 1

end

end A132787.P877745916948461370

noncomputable section

/-- A132787: Triangle read by rows: T(n,k) = 2*A001263(n,k) - 1.

Offset 1, canonical program `A132787.P877745916948461370`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132787 (n : ℕ) : ℤ :=
  A132787.P877745916948461370.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132787.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132789.P6314999068272681053

`A014473(n)+A001263(n+1)`
-/

namespace A132789.P6314999068272681053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 n + A001263 (n + 1)

end

end A132789.P6314999068272681053

noncomputable section

/-- A132789: Triangle read by rows: T(n,k) = A007318(n-1, k-1) + A001263(n, k) - 1.

Offset 1, canonical program `A132789.P6314999068272681053`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132789 (n : ℕ) : ℤ :=
  A132789.P6314999068272681053.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132789.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132808.P15259316369820012761

`A000108(A130296(n+1))*A001263(n+1)`
-/

namespace A132808.P15259316369820012761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A130296 (n + 1)).toNat * A001263 (n + 1)

end

end A132808.P15259316369820012761

noncomputable section

/-- A132808: A001263 * A103451 as infinite lower triangular matrices.

Offset 1, canonical program `A132808.P15259316369820012761`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132808 (n : ℕ) : ℤ :=
  A132808.P15259316369820012761.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132808.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132818.P8465170161499007808

`A001263(n+1)*A127739(n+1)`
-/

namespace A132818.P8465170161499007808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (n + 1) * A127739 (n + 1)

end

end A132818.P8465170161499007808

noncomputable section

/-- A132818: The matrix product A127773 * A001263 of infinite lower triangular matrices.

Offset 1, canonical program `A132818.P8465170161499007808`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132818 (n : ℕ) : ℤ :=
  A132818.P8465170161499007808.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132818.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132819.P1713287214340186641

`(1-A049780(n)+n)*A001263(n+1)`
-/

namespace A132819.P1713287214340186641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A049780 n + (n : ℤ)) * A001263 (n + 1)

end

end A132819.P1713287214340186641

noncomputable section

/-- A132819: A001263 * A127773.

Offset 1, canonical program `A132819.P1713287214340186641`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132819 (n : ℕ) : ℤ :=
  A132819.P1713287214340186641.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132819.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133156.P15073346869318780918

`A065109(A091018(n))`
-/

namespace A133156.P15073346869318780918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065109 (A091018 n).toNat

end

end A133156.P15073346869318780918

noncomputable section

/-- A133156: Irregular triangle read by rows: coefficients of U(n,x), Chebyshev polynomials of the second kind with exponents in decreasing order.

Offset 0, canonical program `A133156.P15073346869318780918`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5041 terms. -/
def A133156 (n : ℕ) : ℤ :=
  A133156.P15073346869318780918.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5041 terms. -/
def A133156.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133200.P7253229306496765429

`A001263(n+1)+A001263(n+1)-A010054(n)`
-/

namespace A133200.P7253229306496765429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (n + 1) + (A001263 (n + 1) - A010054 n)

end

end A133200.P7253229306496765429

noncomputable section

/-- A133200: A001263 * A136521 as infinite lower triangular matrices, where A001263 = the Narayana triangle and A136521 = an infinite lower triangular matrix with (1, 2, 2, 2, ...) in the main diagonal and the rest zeros.

Offset 1, canonical program `A133200.P7253229306496765429`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133200 (n : ℕ) : ℤ :=
  A133200.P7253229306496765429.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133200.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133698.P17080952443487719908

`A023531(n)*A133699(n+1)`
-/

namespace A133698.P17080952443487719908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A133699 (n + 1)

end

end A133698.P17080952443487719908

noncomputable section

/-- A133698: Triangle, diagonal = A001227 with the rest zeros.

Offset 1, canonical program `A133698.P17080952443487719908`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133698 (n : ℕ) : ℤ :=
  A133698.P17080952443487719908.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133698.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133994.P15079085757915823484

`A002260(eq[1, A304571(n+1)+1]+1)`
-/

namespace A133994.P15079085757915823484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304571 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A133994.P15079085757915823484

noncomputable section

/-- A133994: Irregular array read by rows: n-th row contains (in numerical order) both the positive integers <= n that are divisors of n and those that are coprime to n.

Offset 1, canonical program `A133994.P15079085757915823484`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7488 terms. -/
def A133994 (n : ℕ) : ℤ :=
  A133994.P15079085757915823484.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7488 terms. -/
def A133994.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134540.P11855111430007588773

`a(n-1)-A054525(n)` with `a(0)=1`
-/

namespace A134540.P11855111430007588773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - A054525 n

end

end A134540.P11855111430007588773

noncomputable section

/-- A134540: Triangle read by rows: T(n,k) = Sum_{d|n, d>=k} moebius(n/d).

Offset 1, canonical program `A134540.P11855111430007588773`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134540 (n : ℕ) : ℤ :=
  A134540.P11855111430007588773.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134540.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135224.P16771129364297537144

`A073424(n)+A055248(n)`
-/

namespace A135224.P16771129364297537144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 n + A055248 n

end

end A135224.P16771129364297537144

noncomputable section

/-- A135224: Triangle A103451 * A007318 * A000012, read by rows. T(n, k) for 0 <= k <= n.

Offset 0, canonical program `A135224.P16771129364297537144`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135224 (n : ℕ) : ℤ :=
  A135224.P16771129364297537144.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135224.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135657.P17440851590307991758

`A135659(comp[A139483(n+1)])`
-/

namespace A135657.P17440851590307991758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139483 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135659 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A135657.P17440851590307991758

noncomputable section

/-- A135657: Nonprimes of the form 24n+7.

Offset 1, canonical program `A135657.P17440851590307991758`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7341 terms. -/
def A135657 (n : ℕ) : ℤ :=
  A135657.P17440851590307991758.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7341 terms. -/
def A135657.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140575.P13172063658639731110

`A000007(n)-A091917(n)`
-/

namespace A140575.P13172063658639731110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - A091917 n

end

end A140575.P13172063658639731110

noncomputable section

/-- A140575: Triangle read by rows: the coefficient of [x^k] of the polynomial 1-(x-1)^n in row n and column k, 0<=k

Offset 0, canonical program `A140575.P13172063658639731110`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140575 (n : ℕ) : ℤ :=
  A140575.P13172063658639731110.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140575.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143239.P4788495363014780299

`A010766(n+1)*A054524(n+1)`
-/

namespace A143239.P4788495363014780299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (n + 1) * A054524 (n + 1)

end

end A143239.P4788495363014780299

noncomputable section

/-- A143239: Triangle read by rows, A126988 * A128407 as infinite lower triangular matrices.

Offset 1, canonical program `A143239.P4788495363014780299`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143239 (n : ℕ) : ℤ :=
  A143239.P4788495363014780299.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143239.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143317.P4651974082893048059

`A000203(A054531(n+1))*A054524(n+1)`
-/

namespace A143317.P4651974082893048059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A054531 (n + 1)).toNat * A054524 (n + 1)

end

end A143317.P4651974082893048059

noncomputable section

/-- A143317: Triangle read by rows: A051731 * A143239.

Offset 1, canonical program `A143317.P4651974082893048059`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143317 (n : ℕ) : ℤ :=
  A143317.P4651974082893048059.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143317.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143352.P578810991757619496

`A054524(n+1)*A127170(n+1)`
-/

namespace A143352.P578810991757619496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054524 (n + 1) * A127170 (n + 1)

end

end A143352.P578810991757619496

noncomputable section

/-- A143352: Triangle read by rows, A051731 * A054524 = (A051731)^2 * A128407; 1<=k<=n.

Offset 1, canonical program `A143352.P578810991757619496`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143352 (n : ℕ) : ℤ :=
  A143352.P578810991757619496.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143352.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143353.P15910154969480121083

`A007425(A010766(n+1))*A054524(n+1)`
-/

namespace A143353.P15910154969480121083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (A010766 (n + 1)).toNat * A054524 (n + 1)

end

end A143353.P15910154969480121083

noncomputable section

/-- A143353: Triangle read by rows, A127172 * A128407 = (A051731)^3 * A128407, 1<=k<=n.

Offset 1, canonical program `A143353.P15910154969480121083`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A143353 (n : ℕ) : ℤ :=
  A143353.P15910154969480121083.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A143353.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143424.P11284984421560187409

`A054525(n+1)*A059268(n)`
-/

namespace A143424.P11284984421560187409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054525 (n + 1) * A059268 n

end

end A143424.P11284984421560187409

noncomputable section

/-- A143424: Triangle read by rows, A054525 * A130123, 1<=k<=n.

Offset 1, canonical program `A143424.P11284984421560187409`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143424 (n : ℕ) : ℤ :=
  A143424.P11284984421560187409.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143424.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143467.P10375842645312805045

`A054524(n+1)*A143315(n+1)`
-/

namespace A143467.P10375842645312805045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054524 (n + 1) * A143315 (n + 1)

end

end A143467.P10375842645312805045

noncomputable section

/-- A143467: Triangle read by rows, A143315 * A128407, 1<=k<=n.

Offset 1, canonical program `A143467.P10375842645312805045`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143467 (n : ℕ) : ℤ :=
  A143467.P10375842645312805045.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143467.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143468.P8235683988876298013

`A054525(n+1)*A134560(n+1)`
-/

namespace A143468.P8235683988876298013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054525 (n + 1) * A134560 (n + 1)

end

end A143468.P8235683988876298013

noncomputable section

/-- A143468: Triangle read by rows, A054525 * A127775, 1<=k<=n.

Offset 1, canonical program `A143468.P8235683988876298013`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143468 (n : ℕ) : ℤ :=
  A143468.P8235683988876298013.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143468.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143518.P16129242294580754326

`A054525(n+1)*A122414(n+1)`
-/

namespace A143518.P16129242294580754326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054525 (n + 1) * A122414 (n + 1)

end

end A143518.P16129242294580754326

noncomputable section

/-- A143518: Triangle read by rows, A054525 * (A010051 * 0^(n-k)), 1<=k<=n.

Offset 1, canonical program `A143518.P16129242294580754326`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143518 (n : ℕ) : ℤ :=
  A143518.P16129242294580754326.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143518.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144333.P2564093978440185654

`A055248(n)*A144328(n+1)`
-/

namespace A144333.P2564093978440185654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055248 n * A144328 (n + 1)

end

end A144333.P2564093978440185654

noncomputable section

/-- A144333: Triangle read by rows, A007318 * A144328.

Offset 1, canonical program `A144333.P2564093978440185654`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144333 (n : ℕ) : ℤ :=
  A144333.P2564093978440185654.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144333.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144680.P12713142862218865544

`A002024(n+1)+A177877(n)-A141419(n+1)`
-/

namespace A144680.P12713142862218865544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) + (A177877 n - A141419 (n + 1))

end

end A144680.P12713142862218865544

noncomputable section

/-- A144680: Triangle read by rows, lower half of an array formed by A004736 * A144328 (transform).

Offset 1, canonical program `A144680.P12713142862218865544`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144680 (n : ℕ) : ℤ :=
  A144680.P12713142862218865544.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144680.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A152455.P5904217643679634782

`xor(A063524(n), A080737(n+1))`
-/

namespace A152455.P5904217643679634782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A063524 n) (A080737 (n + 1))

end

end A152455.P5904217643679634782

noncomputable section

/-- A152455: a(n) = minimal integer m such that there exists an m X m integer matrix of order n.

Offset 1, canonical program `A152455.P5904217643679634782`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A152455 (n : ℕ) : ℤ :=
  A152455.P5904217643679634782.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A152455.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A152830.P15574207938550705769

`A119963(n-A025581(n))`
-/

namespace A152830.P15574207938550705769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119963 ((n : ℤ) - A025581 n).toNat

end

end A152830.P15574207938550705769

noncomputable section

/-- A152830: Triangle read by rows, A007318 rows repeated four times .

Offset 0, canonical program `A152830.P15574207938550705769`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A152830 (n : ℕ) : ℤ :=
  A152830.P15574207938550705769.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A152830.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155497.P5528436175458581706

`A001263(n+1)*A086645(n)`
-/

namespace A155497.P5528436175458581706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (n + 1) * A086645 n

end

end A155497.P5528436175458581706

noncomputable section

/-- A155497: Triangle T(n, k) = binomial(n, k)*binomial(n+1, k+1)*binomial(2*n, 2*k)/(n-k+1), read by rows.

Offset 0, canonical program `A155497.P5528436175458581706`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A155497 (n : ℕ) : ℤ :=
  A155497.P5528436175458581706.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A155497.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155516.P17990118231390158911

`A001263(A185868(n+1))`
-/

namespace A155516.P17990118231390158911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (A185868 (n + 1)).toNat

end

end A155516.P17990118231390158911

noncomputable section

/-- A155516: Triangle T(n, k) = binomial(2*n, 2*k)*binomial(2*n+1, 2*k+1)/(2*n-2*k+1), read by rows.

Offset 0, canonical program `A155516.P17990118231390158911`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2550 terms. -/
def A155516 (n : ℕ) : ℤ :=
  A155516.P17990118231390158911.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2550 terms. -/
def A155516.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155537.P495067462620103375

`(A140513(n)+1)*A001263(n+1)`
-/

namespace A155537.P495067462620103375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A140513 n + 1) * A001263 (n + 1)

end

end A155537.P495067462620103375

noncomputable section

/-- A155537: Triangle T(n,k,p,q) = (p^n + q^n)*A001263(n, k) with p=2 and q=1, read by rows.

Offset 1, canonical program `A155537.P495067462620103375`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6723 terms. -/
def A155537 (n : ℕ) : ℤ :=
  A155537.P495067462620103375.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6723 terms. -/
def A155537.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156788.P10934474786452329996

`A004248(A245300(n))*A008290(n)`
-/

namespace A156788.P10934474786452329996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004248 (A245300 n).toNat * A008290 n

end

end A156788.P10934474786452329996

noncomputable section

/-- A156788: Triangle T(n, k) = binomial(n, k)*A000166(n-k)*k^n with T(0, 0) = 1, read by rows.

Offset 0, canonical program `A156788.P10934474786452329996`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1139 terms. -/
def A156788 (n : ℕ) : ℤ :=
  A156788.P10934474786452329996.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1139 terms. -/
def A156788.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A158902.P4390019292788329709

`A158906(n+1)+A152770(A130296(n+1))`
-/

namespace A158902.P4390019292788329709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158906 (n + 1) + A152770 (A130296 (n + 1)).toNat

end

end A158902.P4390019292788329709

noncomputable section

/-- A158902: Triangle read by rows: the matrix product A051731 * A158821.

Offset 1, canonical program `A158902.P4390019292788329709`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158902 (n : ℕ) : ℤ :=
  A158902.P4390019292788329709.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158902.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161119.P4814406896109000407

`A066325(n)²*A233543(n)`
-/

namespace A161119.P4814406896109000407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066325 n ^ 2 * A233543 n

end

end A161119.P4814406896109000407

noncomputable section

/-- A161119: Triangle read by rows: T(n,k) is the number of fixed-point-free involutions of {1,2,...,2n} having k cycles with entries of opposite parities (0 <= k <= n).

Offset 0, canonical program `A161119.P4814406896109000407`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A161119 (n : ℕ) : ℤ :=
  A161119.P4814406896109000407.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A161119.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163409.P2175835081042334788

`A008475(A163408(n+1))`
-/

namespace A163409.P2175835081042334788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (A163408 (n + 1)).toNat

end

end A163409.P2175835081042334788

noncomputable section

/-- A163409: Subsequence of composite terms of A008475.

Offset 1, canonical program `A163409.P2175835081042334788`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008475, A163408, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A163409 (n : ℕ) : ℤ :=
  A163409.P2175835081042334788.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008475, A163408, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A163409.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A164705.P302139925214532792

`ceil(A276418(n)/2)`
-/

namespace A164705.P302139925214532792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A276418 n : ℚ) / 2⌉

end

end A164705.P302139925214532792

noncomputable section

/-- A164705: T(n,k) = binomial(2n-k,n) * 2^(k-1), T(0,0)=1; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

Offset 0, canonical program `A164705.P302139925214532792`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A164705 (n : ℕ) : ℤ :=
  A164705.P302139925214532792.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A164705.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A165316.P17245115861618815472

`A320042(n+1)+A297030(n+1)`
-/

namespace A165316.P17245115861618815472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320042 (n + 1) + A297030 (n + 1)

end

end A165316.P17245115861618815472

noncomputable section

/-- A165316: a(n) = the number of digits in the binary representation of n that each either precede and/or follow a similarly valued digit.

Offset 1, canonical program `A165316.P17245115861618815472`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A165316 (n : ℕ) : ℤ :=
  A165316.P17245115861618815472.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A165316.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166061.P17363544562752125072

`∩[A008366(n+1), A160543(n+1)]`
-/

namespace A166061.P17363544562752125072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008366 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166061.P17363544562752125072

noncomputable section

/-- A166061: 19-rough numbers: positive integers that have no prime factors less than 19.

Offset 1, canonical program `A166061.P17363544562752125072`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A166061 (n : ℕ) : ℤ :=
  (A166061.P17363544562752125072.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A166061.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173424.P14328537752421797639

`A059366(n)/A007318(n)`
-/

namespace A173424.P14328537752421797639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059366 n : ℚ) / (A007318 n : ℚ)

end

end A173424.P14328537752421797639

noncomputable section

/-- A173424: Triangle read by rows: T(n, k) = (2*n - 2*k)!*(2*k)!/(2^n*(n - k)!*k!).

Offset 0, canonical program `A173424.P14328537752421797639`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1891 terms. -/
def A173424 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A173424.P14328537752421797639.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1891 terms. -/
def A173424.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173537.P4657731176384884408

`A173522(n+2)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A173537.P4657731176384884408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173522 (n + 2) : ℚ) / 2

end

end A173537.P4657731176384884408

noncomputable section

/-- A173537: a(n) = A173522(n)/2.

Offset 2, canonical program `A173537.P4657731176384884408`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173522, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A173537 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A173537.P4657731176384884408.a (n - 2))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173522, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A173537.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A173540.P7434116664741020737

`A173541(record[gcd(n+1, A126988(n+1))])`
-/

namespace A173540.P7434116664741020737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A126988 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173541 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A173540.P7434116664741020737

noncomputable section

/-- A173540: Triangle read by rows in which row n lists the proper nondivisors of n, or zero if n <= 2.

Offset 1, canonical program `A173540.P7434116664741020737`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9280 terms. -/
def A173540 (n : ℕ) : ℤ :=
  A173540.P7434116664741020737.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9280 terms. -/
def A173540.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174102.P15722752568304188998

`floor(A001263(eq[0, A103451(n)]+1)/2)`
-/

namespace A174102.P15722752568304188998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001263 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) : ℚ) / 2⌋

end

end A174102.P15722752568304188998

noncomputable section

/-- A174102: Triangle read by rows: T(n, m) = floor(binomial(n+1, m)* binomial(n+2, m)/(2*m+2)), 1 <= m <= n.

Offset 1, canonical program `A174102.P15722752568304188998`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4851 terms. -/
def A174102 (n : ℕ) : ℤ :=
  A174102.P15722752568304188998.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4851 terms. -/
def A174102.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174124.P6351116376219015781

`A001263(n+1)*A154325(n)`
-/

namespace A174124.P6351116376219015781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (n + 1) * A154325 n

end

end A174124.P6351116376219015781

noncomputable section

/-- A174124: Triangle T(n, k, q) = (q+1)*binomial(n, k)*(Pochhammer(q+1, n)/(Pochhammer(q+1, k)*Pochhammer(q+1, n-k))), with T(n, 0) = T(n, n) = 1, and q = 1, read by rows.

Offset 0, canonical program `A174124.P6351116376219015781`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A174124 (n : ℕ) : ℤ :=
  A174124.P6351116376219015781.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A174124.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174158.P4598955516773709472

`A001263(n+1)²`
-/

namespace A174158.P4598955516773709472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (n + 1) ^ 2

end

end A174158.P4598955516773709472

noncomputable section

/-- A174158: Triangle read by rows: T(n,m) = (binomial(n - 1, m - 1)*binomial(n, m - 1)/m)^2.

Offset 1, canonical program `A174158.P4598955516773709472`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4048 terms. -/
def A174158 (n : ℕ) : ℤ :=
  A174158.P4598955516773709472.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4048 terms. -/
def A174158.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174689.P14791063807516805288

`A174690(n)+A174790(n)-1`
-/

namespace A174689.P14791063807516805288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174690 n + (A174790 n - 1)

end

end A174689.P14791063807516805288

noncomputable section

/-- A174689: Triangle T(n, k) = n! * binomial(n, k)^2 - n! + 1, read by rows.

Offset 0, canonical program `A174689.P14791063807516805288`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1505 terms. -/
def A174689 (n : ℕ) : ℤ :=
  A174689.P14791063807516805288.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1505 terms. -/
def A174689.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174718.P11900434341111267060

`A008949(n)+A055248(n)-A038208(n)`
-/

namespace A174718.P11900434341111267060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008949 n + (A055248 n - A038208 n)

end

end A174718.P11900434341111267060

noncomputable section

/-- A174718: Triangle T(n, k, q) = (1-q^n)*( binomial(n, k) - 1 ) + 1, with q = 2, read by rows.

Offset 0, canonical program `A174718.P11900434341111267060`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A174718 (n : ℕ) : ℤ :=
  A174718.P11900434341111267060.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A174718.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175275.P10989980241705012297

`p?[A031944(n+1)]`
-/

namespace A175275.P10989980241705012297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031944 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A175275.P10989980241705012297

noncomputable section

/-- A175275: Base-3 pandigital primes: primes having at least one of each digit 0,1,2 when written in base 3.

Offset 1, canonical program `A175275.P10989980241705012297`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1192 terms. -/
def A175275 (n : ℕ) : ℤ :=
  A175275.P10989980241705012297.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1192 terms. -/
def A175275.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176013.P13187406637236969248

`A001263(n+1)/A007318(n)*A008297(n+1)`
-/

namespace A176013.P13187406637236969248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001263 (n + 1) : ℚ) / (A007318 n : ℚ) * (A008297 (n + 1) : ℚ)

end

end A176013.P13187406637236969248

noncomputable section

/-- A176013: Triangle, read by rows, T(n, k) = (-1)^n * n!/(k*k!) * binomial(n-1, k-1) * binomial(n, k-1).

Offset 1, canonical program `A176013.P13187406637236969248`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1962 terms. -/
def A176013 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A176013.P13187406637236969248.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1962 terms. -/
def A176013.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176022.P13989985666709970606

`A001263(n+1)/A007318(n)*A169653(n+1)`
-/

namespace A176022.P13989985666709970606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001263 (n + 1) : ℚ) / (A007318 n : ℚ) * (A169653 (n + 1) : ℚ)

end

end A176022.P13989985666709970606

noncomputable section

/-- A176022: Triangle T(n, k) = A176013(n, k) + A176013(n, n-k+1), read by rows.

Offset 1, canonical program `A176022.P13989985666709970606`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1962 terms. -/
def A176022 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A176022.P13989985666709970606.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1962 terms. -/
def A176022.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176190.P17056815295521249194

`(A001263(n+1)+1)^∑[char[∑[n+1]]]`
-/

namespace A176190.P17056815295521249194
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001263 (n + 1) + 1) ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A176190.P17056815295521249194

noncomputable section

/-- A176190: Triangle T(n,m) read by rows: (1 + binomial(n, m)*binomial(n + 1, m)/(m + 1) )^n, 0<=m<=n.

Offset 0, canonical program `A176190.P17056815295521249194`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. -/
def A176190 (n : ℕ) : ℤ :=
  A176190.P17056815295521249194.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. -/
def A176190.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A177974.P11264548605649928012

`A155162(n)-A021009(A057944(n))`
-/

namespace A177974.P11264548605649928012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155162 n - A021009 (A057944 n).toNat

end

end A177974.P11264548605649928012

noncomputable section

/-- A177974: Triangle T(n,k) = n!/(n - k)! + n!/k! - n! read by rows, 0 <= k <= n.

Offset 0, canonical program `A177974.P11264548605649928012`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2346 terms. -/
def A177974 (n : ℕ) : ℤ :=
  A177974.P11264548605649928012.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2346 terms. -/
def A177974.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178112.P10234567992871743151

`A369736(n)²*A119963(n)`
-/

namespace A178112.P10234567992871743151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369736 n ^ 2 * A119963 n

end

end A178112.P10234567992871743151

noncomputable section

/-- A178112: Number triangle T(n,k)=C(floor(n/2),floor(k/2))*(1+(-1)^(n-k))/2.

Offset 0, canonical program `A178112.P10234567992871743151`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A178112 (n : ℕ) : ℤ :=
  A178112.P10234567992871743151.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A178112.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180918.P14651875171913315953

`A119963(A080036(n))-A010054(n)`
-/

namespace A180918.P14651875171913315953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119963 (A080036 n).toNat - A010054 n

end

end A180918.P14651875171913315953

noncomputable section

/-- A180918: 'DPE(n,k)' triangle read by rows. DPE(n,k) is the number of k-double-palindromes of n up to cyclic equivalence.

Offset 1, canonical program `A180918.P14651875171913315953`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A180918 (n : ℕ) : ℤ :=
  A180918.P14651875171913315953.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A180918.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181089.P1090113602927549719

`A060821(n)+A060821(A061579(n))`
-/

namespace A181089.P1090113602927549719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060821 n + A060821 (A061579 n).toNat

end

end A181089.P1090113602927549719

noncomputable section

/-- A181089: Triangle T(n, k) = A060821(n,k) + A060821(n,n-k), read by rows.

Offset 0, canonical program `A181089.P1090113602927549719`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A181089 (n : ℕ) : ℤ :=
  A181089.P1090113602927549719.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A181089.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185045.P11001116623469928180

`A059268(n)*A208510(n+1)`
-/

namespace A185045.P11001116623469928180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A208510 (n + 1)

end

end A185045.P11001116623469928180

noncomputable section

/-- A185045: Triangle of coefficients of polynomials u(n,x) jointly generated with A208659; see the Formula section.

Offset 1, canonical program `A185045.P11001116623469928180`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185045 (n : ℕ) : ℤ :=
  A185045.P11001116623469928180.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185045.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191528.P9215815392354335812

`A007318(A091018(n)-A000194(n))`
-/

namespace A191528.P9215815392354335812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A091018 n - A000194 n).toNat

end

end A191528.P9215815392354335812

noncomputable section

/-- A191528: Triangle read by rows: T(n,k) is the number of left factors of Dyck paths of length n that have k returns to the axis.

Offset 0, canonical program `A191528.P9215815392354335812`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2601 terms. -/
def A191528 (n : ℕ) : ℤ :=
  A191528.P9215815392354335812.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2601 terms. -/
def A191528.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193816.P13211586873865539970

`A193844(n)-char[∑[n+2]]`
-/

namespace A193816.P13211586873865539970
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193844 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A193816.P13211586873865539970

noncomputable section

/-- A193816: Triangular array: the fusion of polynomial sequences P and Q given by p(n,x) = x^n + x^(n-1) + ... + x+1 and q(n,x) = (x+2)^n.

Offset 0, canonical program `A193816.P13211586873865539970`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193816 (n : ℕ) : ℤ :=
  A193816.P13211586873865539970.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193816.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194005.P16383905771412357298

`A030111(A038722(n+2))`
-/

namespace A194005.P16383905771412357298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030111 (A038722 (n + 2)).toNat

end

end A194005.P16383905771412357298

noncomputable section

/-- A194005: Triangle of the coefficients of an (n+1)-th order differential equation associated with A103631.

Offset 0, canonical program `A194005.P16383905771412357298`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9869 terms. -/
def A194005 (n : ℕ) : ℤ :=
  A194005.P16383905771412357298.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9869 terms. -/
def A194005.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194119.P1363849121054771469

`A222403(2*comp[∑[n]]-n)`
-/

namespace A194119.P1363849121054771469
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222403 (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - n)

end

end A194119.P1363849121054771469

noncomputable section

/-- A194119: Triangular array: T(n,k)=C(n+3,k)+C(n+3,k+3), 0<=k<=n.

Offset 0, canonical program `A194119.P1363849121054771469`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9730 terms. -/
def A194119 (n : ℕ) : ℤ :=
  A194119.P1363849121054771469.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9730 terms. -/
def A194119.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A008556.P3156705809874669738

`A034868(n)*A094527(A091018(n))`
-/

namespace A008556.P3156705809874669738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034868 n * A094527 (A091018 n).toNat

end

end A008556.P3156705809874669738

noncomputable section

/-- A008556: Triangle of coefficients of Legendre polynomials 2^n P_n (x).

Offset 0, canonical program `A008556.P3156705809874669738`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5041 terms. -/
def A008556 (n : ℕ) : ℤ :=
  A008556.P3156705809874669738.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5041 terms. -/
def A008556.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024516.P5773989287278470041

`eq[0, val(A000404(n+1), 2)]+1`
-/

namespace A024516.P5773989287278470041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000404 (n + 1)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A024516.P5773989287278470041

noncomputable section

/-- A024516: Positions of odd numbers in A000404 (sums of 2 nonzero squares).

Offset 1, canonical program `A024516.P5773989287278470041`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4794 terms. -/
def A024516 (n : ℕ) : ℤ :=
  (A024516.P5773989287278470041.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4794 terms. -/
def A024516.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025926.P18037225688025791001

`A029115(n)+A029412(n)-A029104(n)`
-/

namespace A025926.P18037225688025791001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029115 n + (A029412 n - A029104 n)

end

end A025926.P18037225688025791001

noncomputable section

/-- A025926: Expansion of 1/((1-x^10)*(1-x^11)*(1-x^12)).

Offset 0, canonical program `A025926.P18037225688025791001`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025926 (n : ℕ) : ℤ :=
  A025926.P18037225688025791001.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025926.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028274.P11794825833933731270

`A028272(eq[1, A028272(n)%2])`
-/

namespace A028274.P11794825833933731270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028272 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028272 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A028274.P11794825833933731270

noncomputable section

/-- A028274: Odd elements (greater than 1) to right of central elements in 3-Pascal triangle A028262.

Offset 1, canonical program `A028274.P11794825833933731270`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2305 terms. -/
def A028274 (n : ℕ) : ℤ :=
  A028274.P11794825833933731270.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2305 terms. -/
def A028274.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028285.P5292532840332202507

`A028272(n)+A014413(n+1)`
-/

namespace A028285.P5292532840332202507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028272 n + A014413 (n + 1)

end

end A028285.P5292532840332202507

noncomputable section

/-- A028285: Elements to right of central elements in 4-Pascal triangle A028275 that are not 1.

Offset 0, canonical program `A028285.P5292532840332202507`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A028285 (n : ℕ) : ℤ :=
  A028285.P5292532840332202507.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A028285.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029241.P4809283722259501140

`A029133(n)+A029243(n)-A029134(n)`
-/

namespace A029241.P4809283722259501140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029133 n + (A029243 n - A029134 n)

end

end A029241.P4809283722259501140

noncomputable section

/-- A029241: Expansion of 1/((1-x^2)*(1-x^9)*(1-x^10)*(1-x^11)).

Offset 0, canonical program `A029241.P4809283722259501140`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029241 (n : ℕ) : ℤ :=
  A029241.P4809283722259501140.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029241.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029367.P16821808984905599140

`A029358(n)+A029400(n)-A029391(n)`
-/

namespace A029367.P16821808984905599140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029358 n + (A029400 n - A029391 n)

end

end A029367.P16821808984905599140

noncomputable section

/-- A029367: Expansion of 1/((1-x^4)*(1-x^7)*(1-x^10)*(1-x^12)).

Offset 0, canonical program `A029367.P16821808984905599140`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029367 (n : ℕ) : ℤ :=
  A029367.P16821808984905599140.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029367.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029401.P4755430295429988404

`A029212(n+5)-A029234(n+5)`
-/

namespace A029401.P4755430295429988404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029212 (n + 5) - A029234 (n + 5)

end

end A029401.P4755430295429988404

noncomputable section

/-- A029401: Expansion of 1/((1-x^5)*(1-x^7)*(1-x^10)*(1-x^12)).

Offset 0, canonical program `A029401.P4755430295429988404`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9995 terms. -/
def A029401 (n : ℕ) : ℤ :=
  A029401.P4755430295429988404.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9995 terms. -/
def A029401.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034807.P8516672241715785906

`A029635(A091018(n))`
-/

namespace A034807.P8516672241715785906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (A091018 n).toNat

end

end A034807.P8516672241715785906

noncomputable section

/-- A034807: Triangle T(n,k) of coefficients of Lucas (or Cardan) polynomials.

Offset 0, canonical program `A034807.P8516672241715785906`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5041 terms. -/
def A034807 (n : ℕ) : ℤ :=
  A034807.P8516672241715785906.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5041 terms. -/
def A034807.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035249.P5089818469351572190

`lt[0, A035183(n+1)]+1`
-/

namespace A035249.P5089818469351572190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035183 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A035249.P5089818469351572190

noncomputable section

/-- A035249: Indices of the nonzero terms in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m= -5.

Offset 1, canonical program `A035249.P5089818469351572190`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2584 terms. -/
def A035249 (n : ℕ) : ℤ :=
  (A035249.P5089818469351572190.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2584 terms. -/
def A035249.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037201.P6658727426378706638

`A001223(eq[1, A079054(n+2)²]+1)`
-/

namespace A037201.P6658727426378706638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079054 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A037201.P6658727426378706638

noncomputable section

/-- A037201: Differences between consecutive primes (A001223) but with repeats omitted.

Offset 1, canonical program `A037201.P6658727426378706638`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037201 (n : ℕ) : ℤ :=
  A037201.P6658727426378706638.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037201.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039425.P18439289750765105462

`∩[A011534(n+1), A039143(n+1)]`
-/

namespace A039425.P18439289750765105462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011534 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039425.P18439289750765105462

noncomputable section

/-- A039425: Numbers whose base-10 representation has the same nonzero number of 4's and 7's.

Offset 1, canonical program `A039425.P18439289750765105462`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1556 terms. -/
def A039425 (n : ℕ) : ℤ :=
  (A039425.P18439289750765105462.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1556 terms. -/
def A039425.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048943.P2977010921858124116

`eq[char[A258456(n+1)], A000007(n)]`
-/

namespace A048943.P2977010921858124116
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258456 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A048943.P2977010921858124116

noncomputable section

/-- A048943: Product of divisors of n is a square.

Offset 1, canonical program `A048943.P2977010921858124116`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7506 terms. -/
def A048943 (n : ℕ) : ℤ :=
  (A048943.P2977010921858124116.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7506 terms. -/
def A048943.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050803.P3163027175791198346

`A000404(n+1)^3`
-/

namespace A050803.P3163027175791198346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1) ^ 3

end

end A050803.P3163027175791198346

noncomputable section

/-- A050803: Cubes expressible as the sum of two nonzero squares in at least one way.

Offset 1, canonical program `A050803.P3163027175791198346`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1427 terms. -/
def A050803 (n : ℕ) : ℤ :=
  A050803.P3163027175791198346.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1427 terms. -/
def A050803.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051159.P11925439272814337638

`A106465(n)*A119963(n)`
-/

namespace A051159.P11925439272814337638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106465 n * A119963 n

end

end A051159.P11925439272814337638

noncomputable section

/-- A051159: Triangle read by rows: T(n, k) = binomial(n mod 2, k mod 2) * binomial(n div 2, k div 2), where 'div' denotes integer division.

Offset 0, canonical program `A051159.P11925439272814337638`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051159 (n : ℕ) : ℤ :=
  A051159.P11925439272814337638.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051159.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051634.P9175354426533819428

`A045319(eq[1, A079054(n+2)]+1)`
-/

namespace A051634.P9175354426533819428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079054 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A051634.P9175354426533819428

noncomputable section

/-- A051634: Strong primes: prime(k) > (prime(k-1) + prime(k+1))/2.

Offset 1, canonical program `A051634.P9175354426533819428`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4748 terms. -/
def A051634 (n : ℕ) : ℤ :=
  A051634.P9175354426533819428.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4748 terms. -/
def A051634.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052213.P7998642975196925189

`∩[A005237(n+1), A276553(n+1)]`
-/

namespace A052213.P7998642975196925189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276553 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052213.P7998642975196925189

noncomputable section

/-- A052213: Numbers k with prime signature(k) = prime signature(k+1).

Offset 1, canonical program `A052213.P7998642975196925189`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8541 terms. -/
def A052213 (n : ℕ) : ℤ :=
  (A052213.P7998642975196925189.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8541 terms. -/
def A052213.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053121.P10596287014634708780

`lcm(A165621(n), A369736(n))`
-/

namespace A053121.P10596287014634708780
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A165621 n) (A369736 n)

end

end A053121.P10596287014634708780

noncomputable section

/-- A053121: Catalan triangle (with 0's) read by rows.

Offset 0, canonical program `A053121.P10596287014634708780`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053121 (n : ℕ) : ℤ :=
  (A053121.P10596287014634708780.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053121.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057770.P11641716882874667681

`p?[A054047(n)]`
-/

namespace A057770.P11641716882874667681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054047 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A057770.P11641716882874667681

noncomputable section

/-- A057770: The primes in A045574.

Offset 1, canonical program `A057770.P11641716882874667681`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 859 terms. -/
def A057770 (n : ℕ) : ℤ :=
  A057770.P11641716882874667681.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 859 terms. -/
def A057770.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073412.P17420791294768471329

`∩[A274555(n+1)-1, A274555(n+1)]`
-/

namespace A073412.P17420791294768471329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274555 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073412.P17420791294768471329

noncomputable section

/-- A073412: Lesser of three consecutive nonsquare integers each of which is the sum of two squares.

Offset 1, canonical program `A073412.P17420791294768471329`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 798 terms. -/
def A073412 (n : ℕ) : ℤ :=
  (A073412.P17420791294768471329.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 798 terms. -/
def A073412.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075439.P4067390105220631629

`(1-A262855(n))^n`
-/

namespace A075439.P4067390105220631629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A262855 n) ^ n

end

end A075439.P4067390105220631629

noncomputable section

/-- A075439: Triangle read by rows giving successive iterations of the Rule 102 elementary cellular automaton starting with a single ON cell where row n is of length 2n+1.

Offset 0, canonical program `A075439.P4067390105220631629`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075439 (n : ℕ) : ℤ :=
  A075439.P4067390105220631629.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075439.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083851.P11439785682525996646

`∩[A110751(n+1), A160542(n+1)]`
-/

namespace A083851.P11439785682525996646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160542 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083851.P11439785682525996646

noncomputable section

/-- A083851: Decimal palindromes that are not multiples of 11.

Offset 1, canonical program `A083851.P11439785682525996646`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A083851 (n : ℕ) : ℤ :=
  (A083851.P11439785682525996646.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A083851.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084109.P4084513683396020648

`4*A020757(n+1)+1`
-/

namespace A084109.P4084513683396020648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A020757 (n + 1) + 1

end

end A084109.P4084513683396020648

noncomputable section

/-- A084109: n is congruent to 1 (mod 4) and is not the sum of two squares.

Offset 1, canonical program `A084109.P4084513683396020648`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A084109 (n : ℕ) : ℤ :=
  A084109.P4084513683396020648.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A084109.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091394.P2197546848758199376

`A035183(∏{p}[n+1, #])`
-/

namespace A091394.P2197546848758199376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035183 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A091394.P2197546848758199376

noncomputable section

/-- A091394: a(n) = Product_{ p | n } (1 + Legendre(-5,p) ).

Offset 1, canonical program `A091394.P2197546848758199376`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091394 (n : ℕ) : ℤ :=
  A091394.P2197546848758199376.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091394.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A097268.P6222232716503931075

`filter[A000404(n+1), A152822(#)]`
-/

namespace A097268.P6222232716503931075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A152822 (f1 j).toNat = 1) n)

end

end A097268.P6222232716503931075

noncomputable section

/-- A097268: Numbers that are both the sum of two nonzero squares and the difference of two nonzero squares.

Offset 1, canonical program `A097268.P6222232716503931075`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7488 terms. -/
def A097268 (n : ℕ) : ℤ :=
  A097268.P6222232716503931075.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7488 terms. -/
def A097268.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100829.P18026693143017884367

`A000404(eq[1, gcd(17, A000404(n+1))]+1)`
-/

namespace A100829.P18026693143017884367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 17 (A000404 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A100829.P18026693143017884367

noncomputable section

/-- A100829: Numbers that are a sum of two nonzero squares and not divisible by 17.

Offset 1, canonical program `A100829.P18026693143017884367`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9279 terms. -/
def A100829 (n : ℕ) : ℤ :=
  A100829.P18026693143017884367.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9279 terms. -/
def A100829.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103945.P12112293346248204690

`(n+3)*A069720(n+1)-A103944(n+1)`
-/

namespace A103945.P12112293346248204690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A069720 (n + 1) - A103944 (n + 1)

end

end A103945.P12112293346248204690

noncomputable section

/-- A103945: Number of rooted dual-unicursal n-edge maps in the plane (planar with a distinguished outside face).

Offset 1, canonical program `A103945.P12112293346248204690`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A103944, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A103945 (n : ℕ) : ℤ :=
  A103945.P12112293346248204690.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A103944, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A103945.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A113187.P3659463238577821774

`A097807(n)*A111418(n)`
-/

namespace A113187.P3659463238577821774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A111418 n

end

end A113187.P3659463238577821774

noncomputable section

/-- A113187: Inverse of twin-prime related triangle A111125.

Offset 0, canonical program `A113187.P3659463238577821774`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113187 (n : ℕ) : ℤ :=
  A113187.P3659463238577821774.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113187.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113521.P3809801254930279300

`A113520(A002808(n+1))`
-/

namespace A113521.P3809801254930279300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113520 (A002808 (n + 1)).toNat

end

end A113521.P3809801254930279300

noncomputable section

/-- A113521: a(n) = largest nonprime nonnegative integer < c(n) which is coprime to c(n), where c(n) is the n-th composite positive integer.

Offset 1, canonical program `A113521.P3809801254930279300`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 970 terms. -/
def A113521 (n : ℕ) : ℤ :=
  A113521.P3809801254930279300.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 970 terms. -/
def A113521.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122366.P5782370587932998969

`A111418(A061579(n))`
-/

namespace A122366.P5782370587932998969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111418 (A061579 n).toNat

end

end A122366.P5782370587932998969

noncomputable section

/-- A122366: Triangle read by rows: T(n,k) = binomial(2*n+1,k), 0 <= k <= n.

Offset 0, canonical program `A122366.P5782370587932998969`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A122366 (n : ℕ) : ℤ :=
  A122366.P5782370587932998969.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A122366.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126325.P5784178458865642924

`A111418(comp[∑[n]])`
-/

namespace A126325.P5784178458865642924
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111418 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A126325.P5784178458865642924

noncomputable section

/-- A126325: Triangle read by rows: T(n,k) = binomial(2*n+1, n-k) (1 <= k <= n).

Offset 1, canonical program `A126325.P5784178458865642924`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9859 terms. -/
def A126325 (n : ℕ) : ℤ :=
  A126325.P5784178458865642924.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9859 terms. -/
def A126325.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132350.P6308238298466199020

`∑{d}[n+1, A304362(#)]`
-/

namespace A132350.P6308238298466199020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A304362 d

end

end A132350.P6308238298466199020

noncomputable section

/-- A132350: If n > 1 is a k-th power with k >= 2 then a(n) = 0, otherwise a(n) = 1.

Offset 1, canonical program `A132350.P6308238298466199020`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132350 (n : ℕ) : ℤ :=
  A132350.P6308238298466199020.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132350.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135784.P13080440240153393537

`A000404(n+1)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A135784.P13080440240153393537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1) ^ 2

end

end A135784.P13080440240153393537

noncomputable section

/-- A135784: a(n) = A000404(n)^2.

Offset 1, canonical program `A135784.P13080440240153393537`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000404, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A135784 (n : ℕ) : ℤ :=
  A135784.P13080440240153393537.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000404, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A135784.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A135786.P18159718606420573415

`A000404(n+1)^4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A135786.P18159718606420573415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1) ^ 4

end

end A135786.P18159718606420573415

noncomputable section

/-- A135786: a(n) = A000404(n)^4.

Offset 1, canonical program `A135786.P18159718606420573415`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000404, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A135786 (n : ℕ) : ℤ :=
  A135786.P18159718606420573415.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000404, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A135786.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A135787.P5356217202802632134

`A000404(n+1)^5`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A135787.P5356217202802632134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1) ^ 5

end

end A135787.P5356217202802632134

noncomputable section

/-- A135787: a(n) = A000404(n)^5.

Offset 1, canonical program `A135787.P5356217202802632134`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000404, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A135787 (n : ℕ) : ℤ :=
  A135787.P5356217202802632134.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000404, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A135787.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A135788.P18286084477707124522

`A000404(n+1)^6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A135788.P18286084477707124522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1) ^ 6

end

end A135788.P18286084477707124522

noncomputable section

/-- A135788: a(n) = A000404(n)^6.

Offset 1, canonical program `A135788.P18286084477707124522`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000404, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A135788 (n : ℕ) : ℤ :=
  A135788.P18286084477707124522.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000404, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A135788.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A141132.P17603726109172318759

`A141217(A008578(n+1))`
-/

namespace A141132.P17603726109172318759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141217 (A008578 (n + 1)).toNat

end

end A141132.P17603726109172318759

noncomputable section

/-- A141132: a(n) = prime(prime(prime(prime(A028815(n) - 1) - 1) - 1) - 1) - 1.

Offset 0, canonical program `A141132.P17603726109172318759`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1230 terms. -/
def A141132 (n : ℕ) : ℤ :=
  A141132.P17603726109172318759.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1230 terms. -/
def A141132.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141139.P7707836835325056175

`A141217(A006093(n+1))`
-/

namespace A141139.P7707836835325056175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141217 (A006093 (n + 1)).toNat

end

end A141139.P7707836835325056175

noncomputable section

/-- A141139: a(n) = f(f(f(f(f(n))))), where f(n) is prime(n)-1.

Offset 1, canonical program `A141139.P7707836835325056175`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A141139 (n : ℕ) : ℤ :=
  A141139.P7707836835325056175.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A141139.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143061.P12994917075269842013

`A171729(A014132(n+1))`
-/

namespace A143061.P12994917075269842013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171729 (A014132 (n + 1)).toNat

end

end A143061.P12994917075269842013

noncomputable section

/-- A143061: Triangle read by rows, A000012 * A127647 * A000012.

Offset 1, canonical program `A143061.P12994917075269842013`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143061 (n : ℕ) : ℤ :=
  A143061.P12994917075269842013.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143061.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A151917.P4918562184165158230

`A151914(n)/4`
-/

namespace A151917.P4918562184165158230
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151914 n : ℚ) / 4

end

end A151917.P4918562184165158230

noncomputable section

/-- A151917: a(0)=0, a(1)=1; for n>=2, a(n) = (2/3)*(Sum_{i=1..n-1} 3^wt(i)) + 1, where wt() = A000120().

Offset 0, canonical program `A151917.P4918562184165158230`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151914, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A151917 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A151917.P4918562184165158230.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151914, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A151917.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A153193.P2844732109781554609

`A063647(n+1)+A048691(n+1)*A146564(n+2)`
-/

namespace A153193.P2844732109781554609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063647 (n + 1) + A048691 (n + 1) * A146564 (n + 2)

end

end A153193.P2844732109781554609

noncomputable section

/-- A153193: a(n) is the number of integers of the form n*(n+1)*k / (k - n*(n+1)) where k is an integer >= 1.

Offset 1, canonical program `A153193.P2844732109781554609`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A153193 (n : ℕ) : ℤ :=
  A153193.P2844732109781554609.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A153193.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166265.P12558758465814392092

`A000404(n+1)+1`
-/

namespace A166265.P12558758465814392092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1) + 1

end

end A166265.P12558758465814392092

noncomputable section

/-- A166265: Numbers of the form 1+x^2+y^2, x, y integers >= 1.

Offset 1, canonical program `A166265.P12558758465814392092`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166265 (n : ℕ) : ℤ :=
  A166265.P12558758465814392092.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166265.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167278.P3371775236650755278

`A151800(p?[A062729(n+1)])`
-/

namespace A167278.P3371775236650755278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062729 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A167278.P3371775236650755278

noncomputable section

/-- A167278: Smallest prime>n-th single (or isolated or non-twin) prime.

Offset 1, canonical program `A167278.P3371775236650755278`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A167278 (n : ℕ) : ℤ :=
  A167278.P3371775236650755278.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A167278.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189666.P13703486958930581488

`A284819(n+1)-1`
-/

namespace A189666.P13703486958930581488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284819 (n + 1) - 1

end

end A189666.P13703486958930581488

noncomputable section

/-- A189666: Positions of 1 in A189664; complement of A189665.

Offset 1, canonical program `A189666.P13703486958930581488`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189666 (n : ℕ) : ℤ :=
  A189666.P13703486958930581488.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189666.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A001743.P11802867957663763901

`∩[A072960(n+1), A054047(n)]`
-/

namespace A001743.P11802867957663763901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054047 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001743.P11802867957663763901

noncomputable section

/-- A001743: Numbers in which every digit contains at least one loop (version 1).

Offset 1, canonical program `A001743.P11802867957663763901`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2304 terms. -/
def A001743 (n : ℕ) : ℤ :=
  (A001743.P11802867957663763901.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2304 terms. -/
def A001743.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A011691.P2946875801288629197

`A011680(A008585(n+10))`
-/

namespace A011691.P2946875801288629197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011680 (A008585 (n + 10)).toNat

end

end A011691.P2946875801288629197

noncomputable section

/-- A011691: A binary m-sequence: expansion of reciprocal of x^7+x^6+x^5+x^2+1.

Offset 0, canonical program `A011691.P2946875801288629197`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3324 terms. -/
def A011691 (n : ℕ) : ℤ :=
  A011691.P2946875801288629197.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3324 terms. -/
def A011691.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024317.P406605019777847365

`A024880(A348776(n+1))`
-/

namespace A024317.P406605019777847365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024880 (A348776 (n + 1)).toNat

end

end A024317.P406605019777847365

noncomputable section

/-- A024317: a(n) = s(1)*t(n) + s(2)*t(n-1) + ... + s(k)*t(n+1-k), where k = floor((n+1)/2), s = A023531, t = A023532.

Offset 1, canonical program `A024317.P406605019777847365`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024317 (n : ℕ) : ℤ :=
  A024317.P406605019777847365.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024317.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033236.P2269156593757135419

`∩[A068228(n+1), A142956(n+1)]`
-/

namespace A033236.P2269156593757135419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142956 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033236.P2269156593757135419

noncomputable section

/-- A033236: Primes of form x^2+57*y^2.

Offset 1, canonical program `A033236.P2269156593757135419`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4970 terms. -/
def A033236 (n : ℕ) : ℤ :=
  (A033236.P2269156593757135419.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4970 terms. -/
def A033236.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035145.P5586715811141425784

`A035183(A038502(n+1))`
-/

namespace A035145.P5586715811141425784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035183 (A038502 (n + 1)).toNat

end

end A035145.P5586715811141425784

noncomputable section

/-- A035145: Coefficients in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m = -45.

Offset 1, canonical program `A035145.P5586715811141425784`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035145 (n : ℕ) : ℤ :=
  A035145.P5586715811141425784.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035145.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045574.P18400524519974954139

`A054047(record[n*A011558(n)])`
-/

namespace A045574.P18400524519974954139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A011558 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054047 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A045574.P18400524519974954139

noncomputable section

/-- A045574: Numbers that are still numbers when turned upside down (uses only digits 0, 1, 6, 8, 9 with no final 0's).

Offset 1, canonical program `A045574.P18400524519974954139`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8001 terms. -/
def A045574 (n : ℕ) : ℤ :=
  A045574.P18400524519974954139.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8001 terms. -/
def A045574.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050166.P15176177781290940153

`A039598(A061579(n))`
-/

namespace A050166.P15176177781290940153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039598 (A061579 n).toNat

end

end A050166.P15176177781290940153

noncomputable section

/-- A050166: Triangle T(n,k) = M(2n,k,-1), with 0 <= k <= n, n >= 0, and array M is defined in A050144.

Offset 0, canonical program `A050166.P15176177781290940153`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A050166 (n : ℕ) : ℤ :=
  A050166.P15176177781290940153.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A050166.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051035.P2378121049745272071

`filter[A014091(n+1), A005171(#)]`
-/

namespace A051035.P2378121049745272071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A051035.P2378121049745272071

noncomputable section

/-- A051035: Composite numbers which can be represented as the sum of two primes (i.e., A002808 excluding A025583).

Offset 1, canonical program `A051035.P2378121049745272071`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9711 terms. -/
def A051035 (n : ℕ) : ℤ :=
  A051035.P2378121049745272071.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9711 terms. -/
def A051035.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057653.P8862115344835850100

`A097269(n+1)/2`
-/

namespace A057653.P8862115344835850100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097269 (n + 1) : ℚ) / 2

end

end A057653.P8862115344835850100

noncomputable section

/-- A057653: Odd numbers of form x^2 + y^2.

Offset 1, canonical program `A057653.P8862115344835850100`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A097269, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A057653 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A057653.P8862115344835850100.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A097269, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A057653.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A059500.P3268541981243603628

`∩[A053176(n+1), A099184(n+2)]`
-/

namespace A059500.P3268541981243603628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099184 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059500.P3268541981243603628

noncomputable section

/-- A059500: Primes p such that both q=(p-1)/2 and 2p + 1 = 4q + 3 are composite numbers. Intersection of A059456 and A053176.

Offset 1, canonical program `A059500.P3268541981243603628`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8844 terms. -/
def A059500 (n : ℕ) : ℤ :=
  (A059500.P3268541981243603628.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8844 terms. -/
def A059500.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062506.P17612456515081535617

`comp[A062729(n+1)-1]+1`
-/

namespace A062506.P17612456515081535617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062729 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A062506.P17612456515081535617

noncomputable section

/-- A062506: Numbers divisible by at least one twin prime (A001097).

Offset 1, canonical program `A062506.P17612456515081535617`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062506 (n : ℕ) : ℤ :=
  (A062506.P17612456515081535617.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062506.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063919.P11181265949704613022

`A034460(n+1)+A000007(n)`
-/

namespace A063919.P11181265949704613022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034460 (n + 1) + A000007 n

end

end A063919.P11181265949704613022

noncomputable section

/-- A063919: Sum of proper unitary divisors (or unitary aliquot parts) of n, including 1.

Offset 1, canonical program `A063919.P11181265949704613022`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063919 (n : ℕ) : ℤ :=
  A063919.P11181265949704613022.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063919.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064000.P4860626485817944771

`comp[A034460(n+1)+n]+1`
-/

namespace A064000.P4860626485817944771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034460 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A064000.P4860626485817944771

noncomputable section

/-- A064000: Unitary untouchable numbers of second kind: numbers n such that usigma(x) = n has no solution, where usigma(x) (A034448) is the sum of unitary divisors of x.

Offset 1, canonical program `A064000.P4860626485817944771`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064000 (n : ℕ) : ℤ :=
  (A064000.P4860626485817944771.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064000.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064141.P4142753168141543112

`A048146(A001405(n+1))`
-/

namespace A064141.P4142753168141543112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048146 (A001405 (n + 1)).toNat

end

end A064141.P4142753168141543112

noncomputable section

/-- A064141: Sum of non-unitary divisors of central binomial coefficient C(n, floor(n/2)).

Offset 1, canonical program `A064141.P4142753168141543112`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048146, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064141 (n : ℕ) : ℤ :=
  A064141.P4142753168141543112.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048146, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064141.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A064594.P14338933010286859949

`record[gcd(n+1, A048146(n+1))]`
-/

namespace A064594.P14338933010286859949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A048146 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064594.P14338933010286859949

noncomputable section

/-- A064594: Nonunitary multiply perfect numbers: the sum of the nonunitary divisors of n is a multiple of n; i.e., n divides sigma(n) - usigma(n).

Offset 1, canonical program `A064594.P14338933010286859949`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064594 (n : ℕ) : ℤ :=
  (A064594.P14338933010286859949.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064594.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064597.P7941161019768686173

`lt[n+1, A048146(n+1)]+1`
-/

namespace A064597.P7941161019768686173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048146 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A064597.P7941161019768686173

noncomputable section

/-- A064597: Nonunitary abundant numbers: the sum of the nonunitary divisors of k is larger than k; i.e., sigma(k) - usigma(k) > k.

Offset 1, canonical program `A064597.P7941161019768686173`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4045 terms. -/
def A064597 (n : ℕ) : ℤ :=
  (A064597.P7941161019768686173.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4045 terms. -/
def A064597.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064598.P8686075922530309048

`lt[A048146(n+1), n+1]+1`
-/

namespace A064598.P8686075922530309048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048146 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A064598.P8686075922530309048

noncomputable section

/-- A064598: Nonunitary deficient numbers: the sum of the nonunitary divisors of n is less than n; i.e., sigma(n) - usigma(n) < n.

Offset 1, canonical program `A064598.P8686075922530309048`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064598 (n : ℕ) : ℤ :=
  (A064598.P8686075922530309048.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064598.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067611.P11907712872118763159

`eq[1, A283265(6*n+5)]+1`
-/

namespace A067611.P11907712872118763159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283265 (6 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A067611.P11907712872118763159

noncomputable section

/-- A067611: Numbers of the form 6xy +- x +- y, where x, y are positive integers.

Offset 1, canonical program `A067611.P11907712872118763159`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067611 (n : ℕ) : ℤ :=
  (A067611.P11907712872118763159.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067611.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067812.P12747793671398424527

`A176888(n+2)/2`
-/

namespace A067812.P12747793671398424527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176888 (n + 2) : ℚ) / 2

end

end A067812.P12747793671398424527

noncomputable section

/-- A067812: Nonprime n such that 2n+1 is prime.

Offset 1, canonical program `A067812.P12747793671398424527`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A067812 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A067812.P12747793671398424527.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A067812.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071869.P8198727716046455675

`A079747(n+2)-1`
-/

namespace A071869.P8198727716046455675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079747 (n + 2) - 1

end

end A071869.P8198727716046455675

noncomputable section

/-- A071869: Numbers k such that gpf(k) < gpf(k+1) < gpf(k+2) where gpf(k) denotes the largest prime factor of k.

Offset 1, canonical program `A071869.P8198727716046455675`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079747, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A071869 (n : ℕ) : ℤ :=
  A071869.P8198727716046455675.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079747, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A071869.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A073488.P9820232983872603750

`record[∏{p}[A073494(n+1), #]]`
-/

namespace A073488.P9820232983872603750
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073494 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073488.P9820232983872603750

noncomputable section

/-- A073488: Squarefree numbers having exactly two prime gaps.

Offset 1, canonical program `A073488.P9820232983872603750`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5522 terms. -/
def A073488 (n : ℕ) : ℤ :=
  (A073488.P9820232983872603750.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5522 terms. -/
def A073488.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073491.P6445803315451258056

`∪[A066311(n+1), A017284(n)]`
-/

namespace A073491.P6445803315451258056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066311 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017284 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A073491.P6445803315451258056

noncomputable section

/-- A073491: Numbers having no prime gaps in their factorization.

Offset 1, canonical program `A073491.P6445803315451258056`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073491 (n : ℕ) : ℤ :=
  (A073491.P6445803315451258056.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073491.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080259.P15760386087156708994

`lt[A341629(n+1), 1]+1`
-/

namespace A080259.P15760386087156708994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341629 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A080259.P15760386087156708994

noncomputable section

/-- A080259: Numbers whose squarefree kernel is not a primorial number, i.e., A007947(a(n)) is not in A002110.

Offset 1, canonical program `A080259.P15760386087156708994`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080259 (n : ℕ) : ℤ :=
  (A080259.P15760386087156708994.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080259.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083390.P13570770619546265520

`(A061346(n+1)-1)/2`
-/

namespace A083390.P13570770619546265520
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061346 (n + 1) - 1 : ℚ) / 2

end

end A083390.P13570770619546265520

noncomputable section

/-- A083390: Integers m such that 2m + 1 divides lcm(1,3,5,...,2m - 1).

Offset 1, canonical program `A083390.P13570770619546265520`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061346, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A083390 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A083390.P13570770619546265520.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061346, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A083390.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A086616.P4854257795119713207

`2*A104858(n)-1`
-/

namespace A086616.P4854257795119713207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A104858 n - 1

end

end A086616.P4854257795119713207

noncomputable section

/-- A086616: Partial sums of the large Schroeder numbers (A006318).

Offset 0, canonical program `A086616.P4854257795119713207`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A086616 (n : ℕ) : ℤ :=
  A086616.P4854257795119713207.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A086616.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089995.P4274821303083598371

`filter[A073487(n+1), A353788(#)]`
-/

namespace A089995.P4274821303083598371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353788 (f1 j).toNat = 1) n)

end

end A089995.P4274821303083598371

noncomputable section

/-- A089995: Products of pairs of distinct, non-consecutive primes.

Offset 1, canonical program `A089995.P4274821303083598371`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8143 terms. -/
def A089995 (n : ℕ) : ℤ :=
  A089995.P4274821303083598371.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8143 terms. -/
def A089995.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A097700.P16427070202235837695

`lt[A216282(n+1), 1]+1`
-/

namespace A097700.P16427070202235837695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216282 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A097700.P16427070202235837695

noncomputable section

/-- A097700: Numbers not of form x^2 + 2y^2.

Offset 1, canonical program `A097700.P16427070202235837695`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097700 (n : ℕ) : ℤ :=
  (A097700.P16427070202235837695.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097700.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100299.P6607277383001077956

`Δ[ceil(A104858(n)/2)]`
-/

namespace A100299.P6607277383001077956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A104858 n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100299.P6607277383001077956

noncomputable section

/-- A100299: Number of dissections of a convex n-gon by nonintersecting diagonals into an even number of regions.

Offset 3, canonical program `A100299.P6607277383001077956`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A100299 (n : ℕ) : ℤ :=
  A100299.P6607277383001077956.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A100299.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101428.P10351250407509594824

`A216282(8*n+1)`
-/

namespace A101428.P10351250407509594824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216282 (8 * n + 1)

end

end A101428.P10351250407509594824

noncomputable section

/-- A101428: Number of ways to write n as an ordered sum of a triangular number (A000217) and a square (A000290).

Offset 0, canonical program `A101428.P10351250407509594824`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A101428 (n : ℕ) : ℤ :=
  A101428.P10351250407509594824.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A101428.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103245.P10041254579713256490

`A111418(n)*A144224(n+1)`
-/

namespace A103245.P10041254579713256490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111418 n * A144224 (n + 1)

end

end A103245.P10041254579713256490

noncomputable section

/-- A103245: Triangle read by rows: T(n,k) = binomial(2n+1, n-k)*Fibonacci(2k+1), 0 <= k <= n.

Offset 0, canonical program `A103245.P10041254579713256490`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A103245 (n : ℕ) : ℤ :=
  A103245.P10041254579713256490.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A103245.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116881.P11536297269579421476

`A119259(n)+n*A064062(n)`
-/

namespace A116881.P11536297269579421476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119259 n + (n : ℤ) * A064062 n

end

end A116881.P11536297269579421476

noncomputable section

/-- A116881: Row sums of triangle A116880 (generalized Catalan C(1,2)).

Offset 0, canonical program `A116881.P11536297269579421476`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A116881 (n : ℕ) : ℤ :=
  A116881.P11536297269579421476.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A116881.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118919.P10255842838776648866

`A039598(2*n-floor(sqrt(n)))`
-/

namespace A118919.P10255842838776648866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039598 (2 * n - Nat.sqrt n)

end

end A118919.P10255842838776648866

noncomputable section

/-- A118919: Triangle read by rows: T(n,k) is the number of Grand Dyck paths of semilength n that cross downwards the x-axis k times. (A Grand Dyck path of semilength n is a path in the half-plane x>=0, starting at (0,0), ending at (2n,0) and consisting of steps u=(1,1) and d=(1,-1)).

Offset 0, canonical program `A118919.P10255842838776648866`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5035 terms. -/
def A118919 (n : ℕ) : ℤ :=
  A118919.P10255842838776648866.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5035 terms. -/
def A118919.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118920.P14137352841196939575

`2*A039598(n)`
-/

namespace A118920.P14137352841196939575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A039598 n

end

end A118920.P14137352841196939575

noncomputable section

/-- A118920: Triangle read by rows: T(n,k) is the number of Grand Dyck paths of semilength n that cross the x-axis k times (n>=1, k>=0).

Offset 1, canonical program `A118920.P14137352841196939575`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A039598, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A118920 (n : ℕ) : ℤ :=
  A118920.P14137352841196939575.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A039598, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A118920.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A120736.P12991699903577371064

`eq[A000005(n+1), A306671(n+1)]+1`
-/

namespace A120736.P12991699903577371064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306671 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A120736.P12991699903577371064

noncomputable section

/-- A120736: Numbers k such that every prime p that divides d(k) (A000005) also divides k.

Offset 1, canonical program `A120736.P12991699903577371064`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5770 terms. -/
def A120736 (n : ℕ) : ℤ :=
  (A120736.P12991699903577371064.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5770 terms. -/
def A120736.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120986.P13077428414608136279

`A001263(n+1)/A007318(n)*A039598(n)`
-/

namespace A120986.P13077428414608136279
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001263 (n + 1) : ℚ) / (A007318 n : ℚ) * (A039598 n : ℚ)

end

end A120986.P13077428414608136279

noncomputable section

/-- A120986: Triangle read by rows: T(n,k) is the number of ternary trees with n edges and having k middle edges (n >= 0, k >= 0).

Offset 0, canonical program `A120986.P13077428414608136279`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8037 terms. -/
def A120986 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A120986.P13077428414608136279.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8037 terms. -/
def A120986.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122919.P16004870726118325551

`A039598(n)-A128899(n+1)`
-/

namespace A122919.P16004870726118325551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039598 n - A128899 (n + 1)

end

end A122919.P16004870726118325551

noncomputable section

/-- A122919: Inverse of Riordan array (1/(1+x+x^2),x/(1+x)^2).

Offset 0, canonical program `A122919.P16004870726118325551`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122919 (n : ℕ) : ℤ :=
  A122919.P16004870726118325551.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122919.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126850.P4999085369403255151

`A107749(a(n-1))` with `a(0)=2`
-/

namespace A126850.P4999085369403255151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A107749 (a (n - 1)).toNat

end

end A126850.P4999085369403255151

noncomputable section

/-- A126850: a(n) = OrdinaryUnitarySigma(a(n-1)).

Offset 2, canonical program `A126850.P4999085369403255151`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A107749, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A126850 (n : ℕ) : ℤ :=
  A126850.P4999085369403255151.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A107749, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A126850.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A129468.P11362039589036067826

`A034460(n+1)-(n+1)`
-/

namespace A129468.P11362039589036067826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034460 (n + 1) - (n + 1 : ℤ)

end

end A129468.P11362039589036067826

noncomputable section

/-- A129468: Unitary abundance of n.

Offset 1, canonical program `A129468.P11362039589036067826`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034460, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129468 (n : ℕ) : ℤ :=
  A129468.P11362039589036067826.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034460, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129468.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A129487.P5016934466193962312

`lt[A034460(n+1), n+1]+1`
-/

namespace A129487.P5016934466193962312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034460 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A129487.P5016934466193962312

noncomputable section

/-- A129487: Unitary deficient numbers.

Offset 1, canonical program `A129487.P5016934466193962312`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129487 (n : ℕ) : ℤ :=
  (A129487.P5016934466193962312.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129487.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132255.P14005809028749772227

`filter[A132239(n+1), A283265(#)]`
-/

namespace A132255.P14005809028749772227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132239 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A283265 (f1 j).toNat = 1) n)

end

end A132255.P14005809028749772227

noncomputable section

/-- A132255: Isolated primes congruent to {17, 19} mod 30.

Offset 1, canonical program `A132255.P14005809028749772227`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A132255 (n : ℕ) : ℤ :=
  A132255.P14005809028749772227.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A132255.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139647.P13605728883241360849

`∩[A033207(n+1), A142956(n+1)]`
-/

namespace A139647.P13605728883241360849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142956 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139647.P13605728883241360849

noncomputable section

/-- A139647: Primes of the form x^2 + 133*y^2.

Offset 1, canonical program `A139647.P13605728883241360849`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2484 terms. -/
def A139647 (n : ℕ) : ℤ :=
  (A139647.P13605728883241360849.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2484 terms. -/
def A139647.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139664.P5772820645049705131

`∩[A107145(n+1), A142956(n+1)]`
-/

namespace A139664.P5772820645049705131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142956 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139664.P5772820645049705131

noncomputable section

/-- A139664: Primes of the form x^2 + 760*y^2.

Offset 1, canonical program `A139664.P5772820645049705131`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2484 terms. -/
def A139664 (n : ℕ) : ℤ :=
  (A139664.P5772820645049705131.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2484 terms. -/
def A139664.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139978.P8284319907745252078

`∩[A107144(n+1), A142956(n+1)]`
-/

namespace A139978.P8284319907745252078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142956 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139978.P8284319907745252078

noncomputable section

/-- A139978: Primes of the form 5x^2+152y^2.

Offset 1, canonical program `A139978.P8284319907745252078`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2529 terms. -/
def A139978 (n : ℕ) : ℤ :=
  (A139978.P8284319907745252078.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2529 terms. -/
def A139978.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153146.P7490805428586605407

`(A271347(n+1)+19)/2`
-/

namespace A153146.P7490805428586605407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271347 (n + 1) + 19 : ℚ) / 2

end

end A153146.P7490805428586605407

noncomputable section

/-- A153146: Numbers n such that 2*n + 19 and 2*n - 19 are prime.

Offset 1, canonical program `A153146.P7490805428586605407`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153146 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A153146.P7490805428586605407.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153146.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155055.P6362800158186461931

`∩[A386337(n+1), A386348(n+1)]`
-/

namespace A155055.P6362800158186461931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386348 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155055.P6362800158186461931

noncomputable section

/-- A155055: Primes without positive even digits.

Offset 1, canonical program `A155055.P6362800158186461931`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2373 terms. -/
def A155055 (n : ℕ) : ℤ :=
  (A155055.P6362800158186461931.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2373 terms. -/
def A155055.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167707.P14412773003900474856

`eq[A283265(A093178(n)), A292438(n)]`
-/

namespace A167707.P14412773003900474856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283265 (A093178 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A167707.P14412773003900474856

noncomputable section

/-- A167707: The non-single or nonisolated numbers. The union of non-single (or nonisolated or twin) primes and non-single (or nonisolated) nonprimes.

Offset 1, canonical program `A167707.P14412773003900474856`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A167707 (n : ℕ) : ℤ :=
  (A167707.P14412773003900474856.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A167707.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A169829.P7353233119474052115

`∩[A073485(n+1), A110751(n+1)]`
-/

namespace A169829.P7353233119474052115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110751 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A169829.P7353233119474052115

noncomputable section

/-- A169829: Palindromes that are a product of consecutive primes.

Offset 1, canonical program `A169829.P7353233119474052115`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A169829 (n : ℕ) : ℤ :=
  (A169829.P7353233119474052115.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A169829.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184805.P4720329603602837182

`A000040(A184807(n+1))`
-/

namespace A184805.P4720329603602837182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A184807 (n + 1)).toNat

end

end A184805.P4720329603602837182

noncomputable section

/-- A184805: Primes of the form floor(k*s), where s=(5+sqrt(5))/4.

Offset 1, canonical program `A184805.P4720329603602837182`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5551 terms. -/
def A184805 (n : ℕ) : ℤ :=
  A184805.P4720329603602837182.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5551 terms. -/
def A184805.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184860.P16539278793343903838

`round(A184859(n+1)/ϕ)`
-/

namespace A184860.P16539278793343903838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A184859 (n + 1) : ℝ) / Real.goldenRatio)

end

end A184860.P16539278793343903838

noncomputable section

/-- A184860: Numbers k such that floor(nr+h) is prime, where r=(1+sqrt(5))/2 and h=1/2.

Offset 1, canonical program `A184860.P16539278793343903838`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184860 (n : ℕ) : ℤ :=
  A184860.P16539278793343903838.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184860.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192066.P7006570664675293436

`A107749((n+1)/and(n+1, -(n+1)))`
-/

namespace A192066.P7006570664675293436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107749 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat

end

end A192066.P7006570664675293436

noncomputable section

/-- A192066: Sum of the odd unitary divisors of n.

Offset 1, canonical program `A192066.P7006570664675293436`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A192066 (n : ℕ) : ℤ :=
  A192066.P7006570664675293436.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A192066.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192280.P15229704503069968207

`char[A073485(n+1)-1]`
-/

namespace A192280.P15229704503069968207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073485 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A192280.P15229704503069968207

noncomputable section

/-- A192280: Characteristic function of numbers that are the product of consecutive primes.

Offset 1, canonical program `A192280.P15229704503069968207`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A192280 (n : ℕ) : ℤ :=
  (A192280.P15229704503069968207.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A192280.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193166.P2077116164672252544

`∪[A013929(n+1), A073492(n+1)]`
-/

namespace A193166.P2077116164672252544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A193166.P2077116164672252544

noncomputable section

/-- A193166: Numbers that are not the product of consecutive primes.

Offset 1, canonical program `A193166.P2077116164672252544`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193166 (n : ℕ) : ℤ :=
  (A193166.P2077116164672252544.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193166.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A201639.P15906228441824827675

`A039598(n)*A130321(n)`
-/

namespace A201639.P15906228441824827675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039598 n * A130321 n

end

end A201639.P15906228441824827675

noncomputable section

/-- A201639: Triangle read by rows, T(n,k) for 0<=k<=n, generalizes the Motzkin lattice paths with weights of A003645.

Offset 0, canonical program `A201639.P15906228441824827675`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6555 terms. -/
def A201639 (n : ℕ) : ℤ :=
  A201639.P15906228441824827675.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6555 terms. -/
def A201639.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A014528.P14309397987583269711

`∪[A061346(n+1), A359375(n+1)]`
-/

namespace A014528.P14309397987583269711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A014528.P14309397987583269711

noncomputable section

/-- A014528: Neither == 0 (mod 4) nor a power of 3.

Offset 0, canonical program `A014528.P14309397987583269711`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014528 (n : ℕ) : ℤ :=
  (A014528.P14309397987583269711.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014528.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024628.P14360975281112832861

`A061346(eq[2, A061346(n+2)-A061346(n+1)]+1)`
-/

namespace A024628.P14360975281112832861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061346 (n + 2) - A061346 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061346 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A024628.P14360975281112832861

noncomputable section

/-- A024628: Odd numbers k such that neither k nor k + 2 is a power of a prime.

Offset 1, canonical program `A024628.P14360975281112832861`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7553 terms. -/
def A024628 (n : ℕ) : ℤ :=
  A024628.P14360975281112832861.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7553 terms. -/
def A024628.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062370.P15216578190729335330

`∑{d}[n+1, A007429(#)*A343569((n+1)/#)]`
-/

namespace A062370.P15216578190729335330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007429 d * A343569 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A062370.P15216578190729335330

noncomputable section

/-- A062370: a(n) = Sum_{i|n,j|n} sigma(i)*sigma(j)/sigma(gcd(i,j)), where sigma(n) = sum of divisors of n.

Offset 1, canonical program `A062370.P15216578190729335330`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062370 (n : ℕ) : ℤ :=
  A062370.P15216578190729335330.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062370.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073486.P7562161125869896796

`∩[A000469(n+1), A073492(n+1)]`
-/

namespace A073486.P7562161125869896796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073486.P7562161125869896796

noncomputable section

/-- A073486: Squarefree numbers having at least one prime gap.

Offset 1, canonical program `A073486.P7562161125869896796`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5670 terms. -/
def A073486 (n : ℕ) : ℤ :=
  (A073486.P7562161125869896796.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5670 terms. -/
def A073486.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A002695.P1761537967106017533

`(n+2)*(n+1)*A001003(n+1)/2`
-/

namespace A002695.P1761537967106017533
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 2) * (n + 1) : ℤ) * A001003 (n + 1) : ℚ) / 2

end

end A002695.P1761537967106017533

noncomputable section

/-- A002695: P_n'(3), where P_n is n-th Legendre polynomial.

Offset 1, canonical program `A002695.P1761537967106017533`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001003, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A002695 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A002695.P1761537967106017533.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001003, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A002695.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A010683.P1762741132413524874

`(A001003(n)+A001003(n+1))/2`
-/

namespace A010683.P1762741132413524874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001003 n + A001003 (n + 1) : ℚ) / 2

end

end A010683.P1762741132413524874

noncomputable section

/-- A010683: Let S(x,y) = number of lattice paths from (0,0) to (x,y) that use the step set { (0,1), (1,0), (2,0), (3,0), ...} and never pass below y = x. Sequence gives S(n-1,n) = number of 'Schröder' trees with n+1 leaves and root of degree 2.

Offset 0, canonical program `A010683.P1762741132413524874`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001003, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A010683 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A010683.P1762741132413524874.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001003, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A010683.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A010736.P2490338144400101786

`(A001003(n+2)+A001003(n))/4`
-/

namespace A010736.P2490338144400101786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001003 (n + 2) + A001003 n : ℚ) / 4

end

end A010736.P2490338144400101786

noncomputable section

/-- A010736: Let S(x,y) = number of lattice paths from (0,0) to (x,y) that use the step set { (0,1), (1,0), (2,0), (3,0), ....} and never pass below y = x. Sequence gives S(n-2,n).

Offset 0, canonical program `A010736.P2490338144400101786`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 134 terms. -/
def A010736 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A010736.P2490338144400101786.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 134 terms. -/
def A010736.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014442.P5459533592084316320

`A006530(1+(n+1)²)`
-/

namespace A014442.P5459533592084316320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (1 + (n + 1) ^ 2)

end

end A014442.P5459533592084316320

noncomputable section

/-- A014442: Largest prime factor of n^2 + 1.

Offset 1, canonical program `A014442.P5459533592084316320`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014442 (n : ℕ) : ℤ :=
  A014442.P5459533592084316320.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014442.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A023503.P1741513283774222757

`A006530(A006093(n+2))`
-/

namespace A023503.P1741513283774222757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A006093 (n + 2)).toNat

end

end A023503.P1741513283774222757

noncomputable section

/-- A023503: Greatest prime divisor of prime(n) - 1.

Offset 2, canonical program `A023503.P1741513283774222757`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023503 (n : ℕ) : ℤ :=
  A023503.P1741513283774222757.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023503.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A023509.P11626369917524831244

`A006530(A008864(n+1))`
-/

namespace A023509.P11626369917524831244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A008864 (n + 1)).toNat

end

end A023509.P11626369917524831244

noncomputable section

/-- A023509: Greatest prime divisor of prime(n) + 1.

Offset 1, canonical program `A023509.P11626369917524831244`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023509 (n : ℕ) : ℤ :=
  A023509.P11626369917524831244.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023509.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A023525.P12971342342399725470

`A006530(A023523(n+1))`
-/

namespace A023525.P12971342342399725470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A023523 (n + 1)).toNat

end

end A023525.P12971342342399725470

noncomputable section

/-- A023525: Greatest prime divisor of prime(n)*prime(n-1) + 1.

Offset 1, canonical program `A023525.P12971342342399725470`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A023523, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A023525 (n : ℕ) : ℤ :=
  A023525.P12971342342399725470.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A023523, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A023525.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A023569.P13251674062579295552

`A006530(∑[abs(Δ[p?[2*n+1]])])`
-/

namespace A023569.P13251674062579295552
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f2 (n + 1) : ℤ) - (f2 n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A023569.P13251674062579295552

noncomputable section

/-- A023569: Greatest prime divisor of prime(n) - 3.

Offset 3, canonical program `A023569.P13251674062579295552`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9591 terms. -/
def A023569 (n : ℕ) : ℤ :=
  A023569.P13251674062579295552.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9591 terms. -/
def A023569.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023576.P7935691990157790967

`A006530(A113935(n+1))`
-/

namespace A023576.P7935691990157790967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A113935 (n + 1)).toNat

end

end A023576.P7935691990157790967

noncomputable section

/-- A023576: Greatest prime divisor of prime(n)+3.

Offset 1, canonical program `A023576.P7935691990157790967`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A113935, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A023576 (n : ℕ) : ℤ :=
  A023576.P7935691990157790967.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A113935, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A023576.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A023583.P4687228853221385482

`A006530(A076274(n+2))`
-/

namespace A023583.P4687228853221385482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A076274 (n + 2)).toNat

end

end A023583.P4687228853221385482

noncomputable section

/-- A023583: Greatest prime divisor of 2*prime(n)-1.

Offset 1, canonical program `A023583.P4687228853221385482`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A076274, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A023583 (n : ℕ) : ℤ :=
  A023583.P4687228853221385482.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A076274, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A023583.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A023590.P10993388026348196137

`A006530(A072055(n+1))`
-/

namespace A023590.P10993388026348196137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A072055 (n + 1)).toNat

end

end A023590.P10993388026348196137

noncomputable section

/-- A023590: Greatest prime divisor of 2*prime(n)+1.

Offset 1, canonical program `A023590.P10993388026348196137`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A072055, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A023590 (n : ℕ) : ℤ :=
  A023590.P10993388026348196137.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A072055, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A023590.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A023733.P14761496966563633410

`lt[A006530(A338803(n)), 3]`
-/

namespace A023733.P14761496966563633410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A338803 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A023733.P14761496966563633410

noncomputable section

/-- A023733: Numbers with no 3's in base-5 expansion.

Offset 1, canonical program `A023733.P14761496966563633410`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3072 terms. -/
def A023733 (n : ℕ) : ℤ :=
  (A023733.P14761496966563633410.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3072 terms. -/
def A023733.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025240.P15418065983883315172

`A000007(n)+2*A001003(n)`
-/

namespace A025240.P15418065983883315172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + 2 * A001003 n

end

end A025240.P15418065983883315172

noncomputable section

/-- A025240: a(n) = a(1)*a(n-1) + a(2)*a(n-2) + ...+ a(n-2)*a(2) for n >= 3.

Offset 1, canonical program `A025240.P15418065983883315172`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A025240 (n : ℕ) : ℤ :=
  A025240.P15418065983883315172.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A025240.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037474.P6444879889403224104

`lt[A006530(A338881(n)), 6]`
-/

namespace A037474.P6444879889403224104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A338881 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A037474.P6444879889403224104

noncomputable section

/-- A037474: a(n) = Sum{d(i)*8^i: i=0,1,...,m}, where Sum{d(i)*7^i: i=0,1,...,m} is the base 7 representation of n.

Offset 0, canonical program `A037474.P6444879889403224104`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6041 terms. -/
def A037474 (n : ℕ) : ℤ :=
  (A037474.P6444879889403224104.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6041 terms. -/
def A037474.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039635.P9559047743557119153

`A006530(a(floor(n/2))*A118136(n))` with `a(0)=1`
-/

namespace A039635.P9559047743557119153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006530 (a ⌊(n : ℚ) / 2⌋.toNat * A118136 n).toNat

end

end A039635.P9559047743557119153

noncomputable section

/-- A039635: Fixed point of "n -> n/2 or (n+1)/2 until result is prime".

Offset 1, canonical program `A039635.P9559047743557119153`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 456 terms. -/
def A039635 (n : ℕ) : ℤ :=
  A039635.P9559047743557119153.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 456 terms. -/
def A039635.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043732.P8942046301726362525

`eq[5, A006530(A088748(n))]`
-/

namespace A043732.P8942046301726362525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A088748 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043732.P8942046301726362525

noncomputable section

/-- A043732: Numbers whose number of runs in the base-2 representation is congruent to 4 mod 5.

Offset 1, canonical program `A043732.P8942046301726362525`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3004 terms. -/
def A043732 (n : ℕ) : ℤ :=
  (A043732.P8942046301726362525.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3004 terms. -/
def A043732.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046670.P10223319622505229549

`∑[A006530(n+1)]`
-/

namespace A046670.P10223319622505229549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046670.P10223319622505229549

noncomputable section

/-- A046670: Partial sums of A006530.

Offset 1, canonical program `A046670.P10223319622505229549`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046670 (n : ℕ) : ℤ :=
  A046670.P10223319622505229549.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046670.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048098.P16238626268452753250

`comp[(n+1)%A006530(n+1)²]`
-/

namespace A048098.P16238626268452753250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A006530 (n + 1) ^ 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A048098.P16238626268452753250

noncomputable section

/-- A048098: Numbers k that are sqrt(k)-smooth: if p | k then p^2 <= k when p is prime.

Offset 1, canonical program `A048098.P16238626268452753250`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048098 (n : ℕ) : ℤ :=
  (A048098.P16238626268452753250.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048098.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049079.P3747407735435422151

`A038580(A018252(n+1))`
-/

namespace A049079.P3747407735435422151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038580 (A018252 (n + 1)).toNat

end

end A049079.P3747407735435422151

noncomputable section

/-- A049079: Primes prime(k) for which A049076(k) = 3.

Offset 1, canonical program `A049079.P3747407735435422151`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8771 terms. -/
def A049079 (n : ℕ) : ℤ :=
  A049079.P3747407735435422151.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8771 terms. -/
def A049079.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052126.P1944428405920482243

`(n+1)/A006530(n+1)`
-/

namespace A052126.P1944428405920482243
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A006530 (n + 1) : ℚ)

end

end A052126.P1944428405920482243

noncomputable section

/-- A052126: a(1) = 1; for n>1, a(n)=n/(largest prime dividing n).

Offset 1, canonical program `A052126.P1944428405920482243`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A052126 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A052126.P1944428405920482243.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A052126.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A052369.P7787911746371594632

`A006530(A002808(n+1))`
-/

namespace A052369.P7787911746371594632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A002808 (n + 1)).toNat

end

end A052369.P7787911746371594632

noncomputable section

/-- A052369: Largest prime factor of n, where n runs through composite numbers.

Offset 1, canonical program `A052369.P7787911746371594632`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A006530, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A052369 (n : ℕ) : ℤ :=
  A052369.P7787911746371594632.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A006530, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A052369.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A056790.P5110018989701522880

`A006530(A056788(n+1))`
-/

namespace A056790.P5110018989701522880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A056788 (n + 1)).toNat

end

end A056790.P5110018989701522880

noncomputable section

/-- A056790: Greatest prime factor of n^n + (n+1)^(n+1).

Offset 0, canonical program `A056790.P5110018989701522880`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056790 (n : ℕ) : ℤ :=
  A056790.P5110018989701522880.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056790.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A057001.P8794725094572777734

`Δ[A055684(n+3)]`
-/

namespace A057001.P8794725094572777734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055684 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A057001.P8794725094572777734

noncomputable section

/-- A057001: (phi(n+1)-phi(n))/2.

Offset 3, canonical program `A057001.P8794725094572777734`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A057001 (n : ℕ) : ℤ :=
  A057001.P8794725094572777734.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A057001.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A058250.P143675427339852433

`lcm(a(n-1), A006530(A000040(n)-1))` with `a(0)=1`
-/

namespace A058250.P143675427339852433
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (A006530 (A000040 n - 1).toNat)

end

end A058250.P143675427339852433

noncomputable section

/-- A058250: GCD of n-th primorial number and its totient.

Offset 0, canonical program `A058250.P143675427339852433`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 182 terms. -/
def A058250 (n : ℕ) : ℤ :=
  (A058250.P143675427339852433.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 182 terms. -/
def A058250.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059435.P3368301534231985512

`2^n*A001003(n)`
-/

namespace A059435.P3368301534231985512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A001003 n

end

end A059435.P3368301534231985512

noncomputable section

/-- A059435: Number of lattice paths in plane starting at (0,0) and ending at (n,n) with steps from {(i,j): i+j > 0, i, j >= 0} that never go below the line y = x.

Offset 0, canonical program `A059435.P3368301534231985512`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001003, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A059435 (n : ℕ) : ℤ :=
  A059435.P3368301534231985512.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001003, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A059435.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A060461.P10262298228971221195

`A171696(n+2)`
-/

namespace A060461.P10262298228971221195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171696 (n + 2)

end

end A060461.P10262298228971221195

noncomputable section

/-- A060461: Numbers k such that 6*k-1 and 6*k+1 are twin composites.

Offset 1, canonical program `A060461.P10262298228971221195`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A060461 (n : ℕ) : ℤ :=
  A060461.P10262298228971221195.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A060461.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060954.P1185278210260250434

`A006530(10*n+11)`
-/

namespace A060954.P1185278210260250434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (10 * n + 11)

end

end A060954.P1185278210260250434

noncomputable section

/-- A060954: Largest prime factor of 10*n + 1.

Offset 1, canonical program `A060954.P1185278210260250434`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A060954 (n : ℕ) : ℤ :=
  A060954.P1185278210260250434.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A060954.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062308.P8241217940045893361

`A006530(A034524(n))`
-/

namespace A062308.P8241217940045893361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A034524 n).toNat

end

end A062308.P8241217940045893361

noncomputable section

/-- A062308: Largest prime factor of 11^n+1 (A034524).

Offset 0, canonical program `A062308.P8241217940045893361`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062308 (n : ℕ) : ℤ :=
  A062308.P8241217940045893361.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062308.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A062736.P495047314603251771

`p?[A060939(n+1)]`
-/

namespace A062736.P495047314603251771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060939 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062736.P495047314603251771

noncomputable section

/-- A062736: Primes of form Sum_{k=1..n} (prime(k)+1).

Offset 1, canonical program `A062736.P495047314603251771`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A062736 (n : ℕ) : ℤ :=
  A062736.P495047314603251771.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A062736.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062950.P11962313584920516019

`A001065(A055684(n+3)+1)-1`
-/

namespace A062950.P11962313584920516019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A055684 (n + 3) + 1).toNat - 1

end

end A062950.P11962313584920516019

noncomputable section

/-- A062950: C(H(n)), where C(n) is Chowla's function (A048050) and H(n) is the half-totient function (A023022).

Offset 3, canonical program `A062950.P11962313584920516019`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062950 (n : ℕ) : ℤ :=
  A062950.P11962313584920516019.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062950.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063475.P17155963557761105303

`A001157(A055684(n+3)+1)`
-/

namespace A063475.P17155963557761105303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (A055684 (n + 3) + 1).toNat

end

end A063475.P17155963557761105303

noncomputable section

/-- A063475: Sum_{d | H(n)} d^2, where H(n) is the Half-Totient function (A023022).

Offset 3, canonical program `A063475.P17155963557761105303`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063475 (n : ℕ) : ℤ :=
  A063475.P17155963557761105303.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063475.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063538.P13239145947067511465

`lt[n, A006530(n+2)²]+2`
-/

namespace A063538.P13239145947067511465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A063538.P13239145947067511465

noncomputable section

/-- A063538: Numbers n that are not sqrt(n-1)-smooth: largest prime factor of n (=A006530(n)) >= sqrt(n).

Offset 1, canonical program `A063538.P13239145947067511465`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063538 (n : ℕ) : ℤ :=
  (A063538.P13239145947067511465.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063538.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063539.P11657316754676393287

`comp[(n+1)%A006530(n+2)²]+1`
-/

namespace A063539.P11657316754676393287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A006530 (n + 2) ^ 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A063539.P11657316754676393287

noncomputable section

/-- A063539: Numbers n that are sqrt(n-1)-smooth: largest prime factor of n (=A006530(n)) < sqrt(n).

Offset 1, canonical program `A063539.P11657316754676393287`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063539 (n : ℕ) : ℤ :=
  (A063539.P11657316754676393287.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063539.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063763.P4469231396961410402

`record[A002808(n+2)%A006530(A002808(n+2))²]`
-/

namespace A063763.P4469231396961410402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002808 (n + 2)) (A006530 (A002808 (n + 2)).toNat ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063763.P4469231396961410402

noncomputable section

/-- A063763: Composite integers k such that largest prime factor of k > sqrt(k).

Offset 1, canonical program `A063763.P4469231396961410402`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063763 (n : ℕ) : ℤ :=
  A063763.P4469231396961410402.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063763.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064052.P2225117651996299170

`record[(n+2)%A006530(n+2)²]`
-/

namespace A064052.P2225117651996299170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 2 : ℤ) (A006530 (n + 2) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064052.P2225117651996299170

noncomputable section

/-- A064052: Not sqrt(n)-smooth: some prime factor of n is > sqrt(n).

Offset 1, canonical program `A064052.P2225117651996299170`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064052 (n : ℕ) : ℤ :=
  A064052.P2225117651996299170.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064052.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067133.P3784150760399719741

`lt[and(n, n+1)-3, A006530(n+1)]+1`
-/

namespace A067133.P3784150760399719741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land n (n + 1) : ℤ) - 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A067133.P3784150760399719741

noncomputable section

/-- A067133: n is a term if the phi(n) numbers in [0,n-1] and coprime to n form an arithmetic progression.

Offset 1, canonical program `A067133.P3784150760399719741`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5149 terms. -/
def A067133 (n : ℕ) : ℤ :=
  (A067133.P3784150760399719741.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5149 terms. -/
def A067133.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067612.P14760073717960903170

`eq[3, A006530(A000203(n+3))]+3`
-/

namespace A067612.P14760073717960903170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000203 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 3

end

end A067612.P14760073717960903170

noncomputable section

/-- A067612: Numbers n such that sigma(n) = 3*phi(sigma(n)).

Offset 1, canonical program `A067612.P14760073717960903170`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 678 terms. -/
def A067612 (n : ℕ) : ℤ :=
  (A067612.P14760073717960903170.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 678 terms. -/
def A067612.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068364.P8799271198221962977

`record[A006530(A073738(n+10)-A073738(n))]`
-/

namespace A068364.P8799271198221962977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A073738 (n + 10) - A073738 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068364.P8799271198221962977

noncomputable section

/-- A068364: Primes p such that there exists k such that p = prime(k) + prime(k+2) + prime(k+4) + prime(k+6) + prime(k+8).

Offset 1, canonical program `A068364.P8799271198221962977`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 443 terms. -/
def A068364 (n : ℕ) : ℤ :=
  A068364.P8799271198221962977.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 443 terms. -/
def A068364.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069483.P18068761225960219392

`A006530(A069482(n+1))`
-/

namespace A069483.P18068761225960219392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A069482 (n + 1)).toNat

end

end A069483.P18068761225960219392

noncomputable section

/-- A069483: Largest prime factor of prime(n+1)^2 - prime(n)^2.

Offset 1, canonical program `A069483.P18068761225960219392`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A069482, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A069483 (n : ℕ) : ℤ :=
  A069483.P18068761225960219392.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A069482, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A069483.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A069485.P7893629048120254601

`A006530(A069484(n+1))`
-/

namespace A069485.P7893629048120254601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A069484 (n + 1)).toNat

end

end A069485.P7893629048120254601

noncomputable section

/-- A069485: Greatest prime factor of prime(n+1)^2 + prime(n)^2.

Offset 1, canonical program `A069485.P7893629048120254601`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A069484, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A069485 (n : ℕ) : ℤ :=
  A069485.P7893629048120254601.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A069484, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A069485.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A069902.P1945416378932648319

`A006530(A000217(n+1))`
-/

namespace A069902.P1945416378932648319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000217 (n + 1)).toNat

end

end A069902.P1945416378932648319

noncomputable section

/-- A069902: Largest prime factor of n(n+1)/2, the n-th triangular number.

Offset 1, canonical program `A069902.P1945416378932648319`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A069902 (n : ℕ) : ℤ :=
  A069902.P1945416378932648319.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A069902.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A070044.P6218347205458979483

`eq[ceil(n^(3/2)), A006530(floor(n^(3/2))+1)]`
-/

namespace A070044.P6218347205458979483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) ^ ((3 : ℚ) / 2 : ℝ)⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (⌊(n : ℝ) ^ ((3 : ℚ) / 2 : ℝ)⌋ + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A070044.P6218347205458979483

noncomputable section

/-- A070044: Numbers k such that ceiling(k^1.5) is prime.

Offset 0, canonical program `A070044.P6218347205458979483`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A070044 (n : ℕ) : ℤ :=
  (A070044.P6218347205458979483.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A070044.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070087.P14390244323313631810

`lt[A006530(n+2), A006530(n+1)]+1`
-/

namespace A070087.P14390244323313631810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A070087.P14390244323313631810

noncomputable section

/-- A070087: P(n) > P(n+1) where P(n) (A006530) is the largest prime factor of n.

Offset 1, canonical program `A070087.P14390244323313631810`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070087 (n : ℕ) : ℤ :=
  (A070087.P14390244323313631810.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070087.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070221.P2249143978924678585

`Δ[A006530(n+2)]`
-/

namespace A070221.P2249143978924678585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A070221.P2249143978924678585

noncomputable section

/-- A070221: a(n)=LPF(n+1)-LPF(n), where LPF(n) denotes the largest prime factor of n.

Offset 2, canonical program `A070221.P2249143978924678585`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070221 (n : ℕ) : ℤ :=
  A070221.P2249143978924678585.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070221.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070819.P18230764371308682130

`A006093(n+1)-A006530(A006093(n+1))`
-/

namespace A070819.P18230764371308682130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) - A006530 (A006093 (n + 1)).toNat

end

end A070819.P18230764371308682130

noncomputable section

/-- A070819: Values of commutator[phi,gpf] = commutator[A000010, A006530] at prime arguments; a(1)=0 by convention.

Offset 1, canonical program `A070819.P18230764371308682130`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9592 terms. -/
def A070819 (n : ℕ) : ℤ :=
  A070819.P18230764371308682130.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9592 terms. -/
def A070819.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071166.P5224187019395811307

`n+2-A006530(A000203(n+2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A071166.P5224187019395811307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A006530 (A000203 (n + 2)).toNat

end

end A071166.P5224187019395811307

noncomputable section

/-- A071166: a(n) = n - A006530(A000203(n)), difference between n and largest prime factor of the sum of its divisors.

Offset 2, canonical program `A071166.P5224187019395811307`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A071166 (n : ℕ) : ℤ :=
  A071166.P5224187019395811307.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A071166.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A071178.P17375525505785378954

`val(n+1, A006530(2*(n+1)))`
-/

namespace A071178.P17375525505785378954
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) (A006530 (2 * (n + 1))).toNat

end

end A071178.P17375525505785378954

noncomputable section

/-- A071178: Exponent of the largest prime factor of n.

Offset 1, canonical program `A071178.P17375525505785378954`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071178 (n : ℕ) : ℤ :=
  (A071178.P17375525505785378954.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071178.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071188.P8515757286936621774

`A006530(A000005(n+1))`
-/

namespace A071188.P8515757286936621774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000005 (n + 1)).toNat

end

end A071188.P8515757286936621774

noncomputable section

/-- A071188: Largest prime factor of number of divisors of n; a(1)=1.

Offset 1, canonical program `A071188.P8515757286936621774`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A071188 (n : ℕ) : ℤ :=
  A071188.P8515757286936621774.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A071188.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A071190.P6657897633682184868

`A006530(A000203(n+1))`
-/

namespace A071190.P6657897633682184868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000203 (n + 1)).toNat

end

end A071190.P6657897633682184868

noncomputable section

/-- A071190: Greatest prime factor of sum of divisors of n, for n >= 2; a(1) = 1.

Offset 1, canonical program `A071190.P6657897633682184868`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A071190 (n : ℕ) : ℤ :=
  A071190.P6657897633682184868.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A071190.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A071216.P14150095501163198575

`A006530(A001043(n+1))`
-/

namespace A071216.P14150095501163198575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A001043 (n + 1)).toNat

end

end A071216.P14150095501163198575

noncomputable section

/-- A071216: a(n) is the largest prime factor of prime(n) + prime(n+1).

Offset 1, canonical program `A071216.P14150095501163198575`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A071216 (n : ℕ) : ℤ :=
  A071216.P14150095501163198575.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A071216.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A071520.P14427511125662410922

`∑[val(A006530(5*(n+1)), 5)]`
-/

namespace A071520.P14427511125662410922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A006530 (5 * (n + 1))).toNat 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071520.P14427511125662410922

noncomputable section

/-- A071520: Number of 5-smooth numbers (A051037) <= n.

Offset 1, canonical program `A071520.P14427511125662410922`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071520 (n : ℕ) : ℤ :=
  (A071520.P14427511125662410922.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071520.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071523.P13389231110135260503

`∑[round(6/A006530(5*(n+1)))]`
-/

namespace A071523.P13389231110135260503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (6 / (A006530 (5 * (n + 1)) : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071523.P13389231110135260503

noncomputable section

/-- A071523: Number of 11-smooth numbers <= n.

Offset 1, canonical program `A071523.P13389231110135260503`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071523 (n : ℕ) : ℤ :=
  A071523.P13389231110135260503.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071523.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071821.P18435798428974889159

`eq[0, and(2, A006530(n+2))]+2`
-/

namespace A071821.P18435798428974889159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A006530 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A071821.P18435798428974889159

noncomputable section

/-- A071821: Numbers whose largest prime factor is of the form 4k+1.

Offset 1, canonical program `A071821.P18435798428974889159`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071821 (n : ℕ) : ℤ :=
  (A071821.P18435798428974889159.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071821.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071822.P2791233987195657750

`lt[2, A006530(n+1)%4]+1`
-/

namespace A071822.P2791233987195657750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (n + 1)) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A071822.P2791233987195657750

noncomputable section

/-- A071822: Numbers whose largest prime factor is of the form 4k+3.

Offset 1, canonical program `A071822.P2791233987195657750`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071822 (n : ℕ) : ℤ :=
  (A071822.P2791233987195657750.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071822.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071823.P9374140248912975097

`∑[4%(A006530(n+1)%4)]`
-/

namespace A071823.P9374140248912975097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 4 (Int.tmod (A006530 (n + 1)) 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071823.P9374140248912975097

noncomputable section

/-- A071823: Number of numbers x <= n with largest prime factor of the form 4k+3.

Offset 1, canonical program `A071823.P9374140248912975097`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071823 (n : ℕ) : ℤ :=
  A071823.P9374140248912975097.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071823.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071824.P1848342865038717700

`∑[A005089(A006530(n+1))]`
-/

namespace A071824.P1848342865038717700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005089 (A006530 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071824.P1848342865038717700

noncomputable section

/-- A071824: Number of integers <= n whose largest prime factor is of the form 4*k+1.

Offset 1, canonical program `A071824.P1848342865038717700`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071824 (n : ℕ) : ℤ :=
  A071824.P1848342865038717700.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071824.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071834.P10650818885645563854

`eq[A006530(A000203(n+2)), A006530(n+2)]+2`
-/

namespace A071834.P10650818885645563854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000203 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A071834.P10650818885645563854

noncomputable section

/-- A071834: Numbers k > 1 such that k and sigma(k) have the same largest prime factor.

Offset 1, canonical program `A071834.P10650818885645563854`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A071834 (n : ℕ) : ℤ :=
  (A071834.P10650818885645563854.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A071834.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074249.P5424559262920802764

`A006530(A024075(n+1))`
-/

namespace A074249.P5424559262920802764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A024075 (n + 1)).toNat

end

end A074249.P5424559262920802764

noncomputable section

/-- A074249: a(n) = largest prime factor of 7^n-1.

Offset 1, canonical program `A074249.P5424559262920802764`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A074249 (n : ℕ) : ℤ :=
  A074249.P5424559262920802764.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A074249.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A074476.P1190046633127875077

`A006530(A034472(n))`
-/

namespace A074476.P1190046633127875077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A034472 n).toNat

end

end A074476.P1190046633127875077

noncomputable section

/-- A074476: Largest prime factor of 3^n + 1.

Offset 0, canonical program `A074476.P1190046633127875077`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A074476 (n : ℕ) : ℤ :=
  A074476.P1190046633127875077.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A074476.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A074477.P8611732268246268122

`A006530(3^(n+1)-1)`
-/

namespace A074477.P8611732268246268122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (3 ^ (n + 1) - 1)

end

end A074477.P8611732268246268122

noncomputable section

/-- A074477: Largest prime factor of 3^n - 1.

Offset 1, canonical program `A074477.P8611732268246268122`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A074477 (n : ℕ) : ℤ :=
  A074477.P8611732268246268122.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A074477.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A074478.P4885902236053813004

`A006530(A034474(n))`
-/

namespace A074478.P4885902236053813004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A034474 n).toNat

end

end A074478.P4885902236053813004

noncomputable section

/-- A074478: Largest prime factor of 5^n + 1.

Offset 0, canonical program `A074478.P4885902236053813004`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A074478 (n : ℕ) : ℤ :=
  A074478.P4885902236053813004.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A074478.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A074479.P1372449578538919510

`A006530(A024049(n+1))`
-/

namespace A074479.P1372449578538919510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A024049 (n + 1)).toNat

end

end A074479.P1372449578538919510

noncomputable section

/-- A074479: Largest prime factor of 5^n - 1.

Offset 1, canonical program `A074479.P1372449578538919510`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A074479 (n : ℕ) : ℤ :=
  A074479.P1372449578538919510.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A074479.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A074593.P13854002765739044957

`A006530(A024619(n+1))`
-/

namespace A074593.P13854002765739044957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A024619 (n + 1)).toNat

end

end A074593.P13854002765739044957

noncomputable section

/-- A074593: Largest prime factors of numbers that are not prime powers.

Offset 1, canonical program `A074593.P13854002765739044957`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A024619, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A074593 (n : ℕ) : ℤ :=
  A074593.P13854002765739044957.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A024619, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A074593.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A076242.P9726685083958255532

`A038580(n+1)%A000040(n+1)`
-/

namespace A076242.P9726685083958255532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038580 (n + 1)) (A000040 (n + 1))

end

end A076242.P9726685083958255532

noncomputable section

/-- A076242: Remainder when 3rd order prime A038580(n) is divided by n-th prime=A000040(n).

Offset 1, canonical program `A076242.P9726685083958255532`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038580, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A076242 (n : ℕ) : ℤ :=
  A076242.P9726685083958255532.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038580, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A076242.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A076243.P16034999221877447586

`A038580(n+1)%(n+1)`
-/

namespace A076243.P16034999221877447586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038580 (n + 1)) (n + 1 : ℤ)

end

end A076243.P16034999221877447586

noncomputable section

/-- A076243: Remainder when 3rd-order prime ppp(n) = A038580(n) is divided by n.

Offset 1, canonical program `A076243.P16034999221877447586`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076243 (n : ℕ) : ℤ :=
  A076243.P16034999221877447586.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076243.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076555.P7673371548901123607

`A006530(A052147(n+1))`
-/

namespace A076555.P7673371548901123607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A052147 (n + 1)).toNat

end

end A076555.P7673371548901123607

noncomputable section

/-- A076555: Greatest prime divisor of n-th prime + 2.

Offset 1, canonical program `A076555.P7673371548901123607`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9592 terms. -/
def A076555 (n : ℕ) : ℤ :=
  A076555.P7673371548901123607.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9592 terms. -/
def A076555.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076557.P15080869135659825067

`A006530(A014689(n+3))`
-/

namespace A076557.P15080869135659825067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A014689 (n + 3)).toNat

end

end A076557.P15080869135659825067

noncomputable section

/-- A076557: Greatest prime divisor of (n-th prime - n).

Offset 3, canonical program `A076557.P15080869135659825067`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A014689, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A076557 (n : ℕ) : ℤ :=
  A076557.P15080869135659825067.a (n - 3)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A014689, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A076557.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A076559.P8490046228483160738

`A006530(A024675(n+1))`
-/

namespace A076559.P8490046228483160738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A024675 (n + 1)).toNat

end

end A076559.P8490046228483160738

noncomputable section

/-- A076559: Greatest prime divisor of n-th interprime: (prime(n) + prime(n+1))/2.

Offset 2, canonical program `A076559.P8490046228483160738`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A076559 (n : ℕ) : ℤ :=
  A076559.P8490046228483160738.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A076559.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A076560.P6572053109122002493

`A006530(a(n-1)+1+n)` with `a(0)=1`
-/

namespace A076560.P6572053109122002493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006530 (a (n - 1) + 1 + (n : ℤ)).toNat

end

end A076560.P6572053109122002493

noncomputable section

/-- A076560: a(1)=1; a(n>1)= greatest prime divisor of (a(n-1) + n).

Offset 1, canonical program `A076560.P6572053109122002493`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076560 (n : ℕ) : ℤ :=
  A076560.P6572053109122002493.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076560.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076561.P13951901980164501420

`A006530(a(n-1)+1+n)` with `a(0)=2`
-/

namespace A076561.P13951901980164501420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A006530 (a (n - 1) + 1 + (n : ℤ)).toNat

end

end A076561.P13951901980164501420

noncomputable section

/-- A076561: a(1)=2; a(n>1)= greatest prime divisor of {a(n-1) + n}.

Offset 1, canonical program `A076561.P13951901980164501420`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076561 (n : ℕ) : ℤ :=
  A076561.P13951901980164501420.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076561.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076562.P2465950073859678297

`A006530(a(n-1)+1+n)` with `a(0)=3`
-/

namespace A076562.P2465950073859678297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A006530 (a (n - 1) + 1 + (n : ℤ)).toNat

end

end A076562.P2465950073859678297

noncomputable section

/-- A076562: a(1)=3; a(n>1)= greatest prime divisor of a(n-1) + n.

Offset 1, canonical program `A076562.P2465950073859678297`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076562 (n : ℕ) : ℤ :=
  A076562.P2465950073859678297.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076562.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076563.P4071807998228768681

`n+2-A006530(n+2)`
-/

namespace A076563.P4071807998228768681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A006530 (n + 2)

end

end A076563.P4071807998228768681

noncomputable section

/-- A076563: a(n) = n - greatest prime divisor of n, for n>1.

Offset 2, canonical program `A076563.P4071807998228768681`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A076563 (n : ℕ) : ℤ :=
  A076563.P4071807998228768681.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A076563.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A076565.P14706420899526487685

`A006530(2*(n+1)+1)`
-/

namespace A076565.P14706420899526487685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * (n + 1) + 1)

end

end A076565.P14706420899526487685

noncomputable section

/-- A076565: Greatest prime divisor of 2n+1 (sum of two successive integers).

Offset 1, canonical program `A076565.P14706420899526487685`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A076565 (n : ℕ) : ℤ :=
  A076565.P14706420899526487685.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A076565.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A076569.P878931947249207020

`A006530(6*(n+1)+15)`
-/

namespace A076569.P878931947249207020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (6 * (n + 1) + 15)

end

end A076569.P878931947249207020

noncomputable section

/-- A076569: Greatest prime divisor of 6n+15 (sum of six successive integers).

Offset 1, canonical program `A076569.P878931947249207020`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A076569 (n : ℕ) : ℤ :=
  A076569.P878931947249207020.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A076569.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A076570.P16756945530304824433

`A006530(A007504(n+1))`
-/

namespace A076570.P16756945530304824433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A007504 (n + 1)).toNat

end

end A076570.P16756945530304824433

noncomputable section

/-- A076570: Greatest prime divisor of sum of first n primes.

Offset 1, canonical program `A076570.P16756945530304824433`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A007504, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A076570 (n : ℕ) : ℤ :=
  A076570.P16756945530304824433.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A007504, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A076570.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A076605.P15984416530963121362

`A006530(A006530(n+1)*A006530(n+3))`
-/

namespace A076605.P15984416530963121362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A006530 (n + 1) * A006530 (n + 3)).toNat

end

end A076605.P15984416530963121362

noncomputable section

/-- A076605: Largest prime divisor of n^2 - 1.

Offset 2, canonical program `A076605.P15984416530963121362`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 346 terms. -/
def A076605 (n : ℕ) : ℤ :=
  A076605.P15984416530963121362.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 346 terms. -/
def A076605.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076820.P8986618252350859910

`A006530(∏{p}[n+1, #]/A006530(n+1))`
-/

namespace A076820.P8986618252350859910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) / (A006530 (n + 1) : ℚ))).toNat

end

end A076820.P8986618252350859910

noncomputable section

/-- A076820: Second-largest distinct prime dividing n (or 1 if n is a power of a prime).

Offset 1, canonical program `A076820.P8986618252350859910`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076820 (n : ℕ) : ℤ :=
  A076820.P8986618252350859910.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076820.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A077654.P1810886267983371320

`comp[A006530(2*n+1)%(n+1)]`
-/

namespace A077654.P1810886267983371320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (2 * n + 1)) (n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A077654.P1810886267983371320

noncomputable section

/-- A077654: Composites k such that 2k+1 is also composite.

Offset 1, canonical program `A077654.P1810886267983371320`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A077654 (n : ℕ) : ℤ :=
  (A077654.P1810886267983371320.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A077654.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078312.P13960604439947323661

`A006530(A078310(n+1))`
-/

namespace A078312.P13960604439947323661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A078310 (n + 1)).toNat

end

end A078312.P13960604439947323661

noncomputable section

/-- A078312: Greatest prime factor of n*rad(n)+1, where rad = A007947 (squarefree kernel).

Offset 1, canonical program `A078312.P13960604439947323661`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A078312 (n : ℕ) : ℤ :=
  A078312.P13960604439947323661.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A078312.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A078327.P16613963034878203912

`eq[A006530(n+1), A078142(n+1)]+1`
-/

namespace A078327.P16613963034878203912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078142 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A078327.P16613963034878203912

noncomputable section

/-- A078327: Numbers k such that A078142(k) = A006530(k).

Offset 1, canonical program `A078327.P16613963034878203912`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. -/
def A078327 (n : ℕ) : ℤ :=
  (A078327.P16613963034878203912.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. -/
def A078327.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078545.P16287826699666276305

`A006530(∏{e}[n+2, #+1])`
-/

namespace A078545.P16287826699666276305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))

end

end A078545.P16287826699666276305

noncomputable section

/-- A078545: Largest prime dividing tau(n), the number of divisors of n.

Offset 2, canonical program `A078545.P16287826699666276305`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078545 (n : ℕ) : ℤ :=
  A078545.P16287826699666276305.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078545.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078551.P4479326662747081933

`A006530(A001157(n+2))`
-/

namespace A078551.P4479326662747081933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A001157 (n + 2)).toNat

end

end A078551.P4479326662747081933

noncomputable section

/-- A078551: Largest prime dividing sigma(2,n).

Offset 2, canonical program `A078551.P4479326662747081933`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, A006530, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A078551 (n : ℕ) : ℤ :=
  A078551.P4479326662747081933.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, A006530, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A078551.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A078552.P17214500758562532020

`A006530(A001158(n+2))`
-/

namespace A078552.P17214500758562532020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A001158 (n + 2)).toNat

end

end A078552.P17214500758562532020

noncomputable section

/-- A078552: Largest prime dividing sigma(3,n).

Offset 2, canonical program `A078552.P17214500758562532020`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001158, A006530, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A078552 (n : ℕ) : ℤ :=
  A078552.P17214500758562532020.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001158, A006530, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A078552.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A078553.P15455178871410636653

`A006530(A001159(n+2))`
-/

namespace A078553.P15455178871410636653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A001159 (n + 2)).toNat

end

end A078553.P15455178871410636653

noncomputable section

/-- A078553: Largest prime dividing sigma(4,n).

Offset 2, canonical program `A078553.P15455178871410636653`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001159, A006530, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A078553 (n : ℕ) : ℤ :=
  A078553.P15455178871410636653.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001159, A006530, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A078553.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A078554.P10578055555926618645

`A006530(A001160(n+2))`
-/

namespace A078554.P10578055555926618645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A001160 (n + 2)).toNat

end

end A078554.P10578055555926618645

noncomputable section

/-- A078554: Largest prime dividing sigma(5,n).

Offset 2, canonical program `A078554.P10578055555926618645`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001160, A006530, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A078554 (n : ℕ) : ℤ :=
  A078554.P10578055555926618645.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001160, A006530, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A078554.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A078604.P15352080251453312958

`A006530(A011545(n))`
-/

namespace A078604.P15352080251453312958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A011545 n).toNat

end

end A078604.P15352080251453312958

noncomputable section

/-- A078604: Largest prime factor of the integer formed by truncating the decimal expansion of Pi to n places.

Offset 0, canonical program `A078604.P15352080251453312958`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A078604 (n : ℕ) : ℤ :=
  A078604.P15352080251453312958.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A078604.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A079084.P17451903791275680554

`A006530(A079079(n+1))`
-/

namespace A079084.P17451903791275680554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A079079 (n + 1)).toNat

end

end A079084.P17451903791275680554

noncomputable section

/-- A079084: Greatest prime factor of (prime(n)+1)*(prime(n+1)+1)/4.

Offset 1, canonical program `A079084.P17451903791275680554`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A079079, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A079084 (n : ℕ) : ℤ :=
  A079084.P17451903791275680554.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A079079, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A079084.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A079111.P4511102436320981456

`record[(floor(n/2)+1)%(A006530(n+2)+1)]`
-/

namespace A079111.P4511102436320981456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (⌊(n : ℚ) / 2⌋ + 1) (A006530 (n + 2) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079111.P4511102436320981456

noncomputable section

/-- A079111: Numbers n such that 2*n+1 or n itself is prime.

Offset 1, canonical program `A079111.P4511102436320981456`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079111 (n : ℕ) : ℤ :=
  A079111.P4511102436320981456.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079111.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079451.P9098584017831837256

`A006530(A000032(n))`
-/

namespace A079451.P9098584017831837256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000032 n).toNat

end

end A079451.P9098584017831837256

noncomputable section

/-- A079451: Largest prime dividing the n-th Lucas number (A000032); 1 when no such prime exists.

Offset 0, canonical program `A079451.P9098584017831837256`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A079451 (n : ℕ) : ℤ :=
  A079451.P9098584017831837256.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A079451.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A080213.P4118106251419514332

`C(n+1, A006530(n+1))`
-/

namespace A080213.P4118106251419514332
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A006530 (n + 1)).toNat

end

end A080213.P4118106251419514332

noncomputable section

/-- A080213: a(n) = binomial(n, greatest prime factor of n).

Offset 1, canonical program `A080213.P4118106251419514332`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A080213 (n : ℕ) : ℤ :=
  (A080213.P4118106251419514332.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A080213.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A080367.P9237446414144074029

`A006530(A055231(n+1))%A091306(n+1)`
-/

namespace A080367.P9237446414144074029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (A055231 (n + 1)).toNat) (A091306 (n + 1))

end

end A080367.P9237446414144074029

noncomputable section

/-- A080367: Largest unitary prime divisor of n or a(n) = 0 if no such prime divisor exists.

Offset 1, canonical program `A080367.P9237446414144074029`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080367 (n : ℕ) : ℤ :=
  A080367.P9237446414144074029.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080367.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080684.P2899133188120263658

`∑[round(7/A006530(7*(n+1)))]`
-/

namespace A080684.P2899133188120263658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (7 / (A006530 (7 * (n + 1)) : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080684.P2899133188120263658

noncomputable section

/-- A080684: Number of 13-smooth numbers <= n.

Offset 1, canonical program `A080684.P2899133188120263658`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080684 (n : ℕ) : ℤ :=
  A080684.P2899133188120263658.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080684.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080798.P8062325364738387648

`A006530(A058481(n+2))`
-/

namespace A080798.P8062325364738387648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A058481 (n + 2)).toNat

end

end A080798.P8062325364738387648

noncomputable section

/-- A080798: Largest prime factor of 3^n-2.

Offset 2, canonical program `A080798.P8062325364738387648`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A080798 (n : ℕ) : ℤ :=
  A080798.P8062325364738387648.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A080798.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A081256.P9897892585436177543

`A006530((n+1)^3+1)`
-/

namespace A081256.P9897892585436177543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((n + 1) ^ 3 + 1)

end

end A081256.P9897892585436177543

noncomputable section

/-- A081256: Greatest prime factor of n^3 + 1.

Offset 1, canonical program `A081256.P9897892585436177543`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A081256 (n : ℕ) : ℤ :=
  A081256.P9897892585436177543.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A081256.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A081257.P5186140164925073176

`A006530((n+2)^3-1)`
-/

namespace A081257.P5186140164925073176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((n + 2) ^ 3 - 1)

end

end A081257.P5186140164925073176

noncomputable section

/-- A081257: a(n) is the greatest prime factor of (n^3 - 1).

Offset 2, canonical program `A081257.P5186140164925073176`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A081257 (n : ℕ) : ℤ :=
  A081257.P5186140164925073176.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A081257.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A081412.P7707128000905813888

`A006530(A001223(n+2))`
-/

namespace A081412.P7707128000905813888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A001223 (n + 2)).toNat

end

end A081412.P7707128000905813888

noncomputable section

/-- A081412: Largest prime divisors of differences between consecutive primes.

Offset 2, canonical program `A081412.P7707128000905813888`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001223, A006530, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A081412 (n : ℕ) : ℤ :=
  A081412.P7707128000905813888.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001223, A006530, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A081412.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A081414.P15070070258934076791

`A006530(A074325(n))`
-/

namespace A081414.P15070070258934076791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A074325 n).toNat

end

end A081414.P15070070258934076791

noncomputable section

/-- A081414: Largest prime divisor of prime(2^n+1) - prime(2^n).

Offset 0, canonical program `A081414.P15070070258934076791`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A074325, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A081414 (n : ℕ) : ℤ :=
  A081414.P15070070258934076791.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A074325, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A081414.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A082062.P4474689263759568352

`A006530(gcd((n+1)², ∑{d}[n+1, #]))`
-/

namespace A082062.P4474689263759568352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.gcd ((n + 1) ^ 2) (∑ d ∈ Nat.divisors (f1 n), d))

end

end A082062.P4474689263759568352

noncomputable section

/-- A082062: Greatest common prime-divisor of n and sigma(n)=A000203(n); a(n)=1 if no common prime-divisor exists.

Offset 1, canonical program `A082062.P4474689263759568352`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082062 (n : ℕ) : ℤ :=
  A082062.P4474689263759568352.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082062.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082063.P10120746227278277568

`A006530(A179930(n+1))`
-/

namespace A082063.P10120746227278277568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A179930 (n + 1)).toNat

end

end A082063.P10120746227278277568

noncomputable section

/-- A082063: Greatest common prime divisor of n and sigma_2(n) = A001157(n), or 1 if the two are relatively prime.

Offset 1, canonical program `A082063.P10120746227278277568`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A179930, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A082063 (n : ℕ) : ℤ :=
  A082063.P10120746227278277568.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A179930, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A082063.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A082065.P6560568919401751915

`A006530(gcd(A001157(n+1)², A002246(n+1)))`
-/

namespace A082065.P6560568919401751915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.gcd (A001157 (n + 1) ^ 2) (A002246 (n + 1)))

end

end A082065.P6560568919401751915

noncomputable section

/-- A082065: Greatest common prime-divisor of phi(n)=A000010(n) and sigma(2,n) = A001157(n); a(n) = 1 if no common prime-divisor exists.

Offset 1, canonical program `A082065.P6560568919401751915`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082065 (n : ℕ) : ℤ :=
  A082065.P6560568919401751915.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082065.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082066.P17745168815098447101

`A006530(A179931(n+1))`
-/

namespace A082066.P17745168815098447101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A179931 (n + 1)).toNat

end

end A082066.P17745168815098447101

noncomputable section

/-- A082066: Greatest common prime-divisor of sigma_1(n)=A000203(n) and sigma_2(n)=A001157(n); a(n)=1 if no common prime-divisor exists.

Offset 1, canonical program `A082066.P17745168815098447101`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A179931, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A082066 (n : ℕ) : ℤ :=
  A082066.P17745168815098447101.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A179931, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A082066.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A083716.P2755060906059376070

`floor(A136548(n+2)/A006530(n+1))`
-/

namespace A083716.P2755060906059376070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A136548 (n + 2) : ℚ) / (A006530 (n + 1) : ℚ)⌋

end

end A083716.P2755060906059376070

noncomputable section

/-- A083716: a(n) = integer part of (greatest prime <= n)/(greatest prime factor of n); a(1) = 1.

Offset 1, canonical program `A083716.P2755060906059376070`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A083716 (n : ℕ) : ℤ :=
  A083716.P2755060906059376070.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A083716.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083722.P9989339320121623736

`A034386(n+1)/A034386(A006530(n+1))`
-/

namespace A083722.P9989339320121623736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034386 (n + 1) : ℚ) / (A034386 (A006530 (n + 1)).toNat : ℚ)

end

end A083722.P9989339320121623736

noncomputable section

/-- A083722: Product of primes greater than the greatest prime factor of n but not greater than n.

Offset 1, canonical program `A083722.P9989339320121623736`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 250 terms. -/
def A083722 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A083722.P9989339320121623736.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 250 terms. -/
def A083722.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084126.P17807045994218046963

`p?[ceil(n/A006530(n+1))]`
-/

namespace A084126.P17807045994218046963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / (A006530 (n + 1) : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A084126.P17807045994218046963

noncomputable section

/-- A084126: Prime factor <= other prime factor of n-th semiprime.

Offset 1, canonical program `A084126.P17807045994218046963`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A084126 (n : ℕ) : ℤ :=
  A084126.P17807045994218046963.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A084126.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085392.P10304220528637003889

`∏{d}[A006530(n+1)%(n+1), #]`
-/

namespace A085392.P10304220528637003889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (n + 1)) (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A085392.P10304220528637003889

noncomputable section

/-- A085392: a(n) = largest prime divisor of n, or 1 if n is 1 or a prime.

Offset 1, canonical program `A085392.P10304220528637003889`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085392 (n : ℕ) : ℤ :=
  (A085392.P10304220528637003889.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085392.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086292.P9461920715356499129

`A000005(lt[A006530(n+1), 8]+1)`
-/

namespace A086292.P9461920715356499129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A086292.P9461920715356499129

noncomputable section

/-- A086292: Number of divisors of 7-smooth numbers.

Offset 1, canonical program `A086292.P9461920715356499129`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 566 terms. -/
def A086292 (n : ℕ) : ℤ :=
  A086292.P9461920715356499129.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 566 terms. -/
def A086292.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086749.P2255557957570372886

`∑[A038580(n+1)]`
-/

namespace A086749.P2255557957570372886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038580 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086749.P2255557957570372886

noncomputable section

/-- A086749: Partial sums of A038580.

Offset 1, canonical program `A086749.P2255557957570372886`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086749 (n : ℕ) : ℤ :=
  A086749.P2255557957570372886.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086749.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087133.P14198249283811427652

`A243987(A006530(n+1)+∑[n])`
-/

namespace A087133.P14198249283811427652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243987 (A006530 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A087133.P14198249283811427652

noncomputable section

/-- A087133: Number of divisors of n that are not greater than the greatest prime-factor of n; a(1)=1.

Offset 1, canonical program `A087133.P14198249283811427652`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A087133 (n : ℕ) : ℤ :=
  A087133.P14198249283811427652.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A087133.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087273.P12180184023922161888

`A006530(1+3*A000040(n+1))`
-/

namespace A087273.P12180184023922161888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (1 + 3 * A000040 (n + 1)).toNat

end

end A087273.P12180184023922161888

noncomputable section

/-- A087273: Largest prime factor of 3*prime(n) + 1.

Offset 1, canonical program `A087273.P12180184023922161888`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A087273 (n : ℕ) : ℤ :=
  A087273.P12180184023922161888.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A087273.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A087429.P13691814880217108665

`floor(Δ[1/A006530(2*n+1-n)])²`
-/

namespace A087429.P13691814880217108665
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A006530 (2 * n + 1 - n) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋ ^ 2

end

end A087429.P13691814880217108665

noncomputable section

/-- A087429: a(n) = 1 if gpf(n) < gpf(n+1), otherwise 0, where gpf = A006530 (greatest prime factor).

Offset 1, canonical program `A087429.P13691814880217108665`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087429 (n : ℕ) : ℤ :=
  A087429.P13691814880217108665.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087429.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087713.P7912838068299207614

`A006530(A084920(n+1))`
-/

namespace A087713.P7912838068299207614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A084920 (n + 1)).toNat

end

end A087713.P7912838068299207614

noncomputable section

/-- A087713: Greatest prime factor of the product of the neighbors of the n-th prime.

Offset 1, canonical program `A087713.P7912838068299207614`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A087713 (n : ℕ) : ℤ :=
  A087713.P7912838068299207614.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A087713.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A089124.P12332690081814959682

`A006530(A117950(n+1))`
-/

namespace A089124.P12332690081814959682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A117950 (n + 1)).toNat

end

end A089124.P12332690081814959682

noncomputable section

/-- A089124: Largest prime factor of n^2 + 3.

Offset 1, canonical program `A089124.P12332690081814959682`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A089124 (n : ℕ) : ℤ :=
  A089124.P12332690081814959682.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A089124.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A089619.P11278826099276717813

`A006530(A001844(n+1))`
-/

namespace A089619.P11278826099276717813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A001844 (n + 1)).toNat

end

end A089619.P11278826099276717813

noncomputable section

/-- A089619: a(n) = greatest prime factor of n^2 + (n+1)^2 for n >= 1.

Offset 1, canonical program `A089619.P11278826099276717813`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A089619 (n : ℕ) : ℤ :=
  A089619.P11278826099276717813.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A089619.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A090081.P3944922333172897926

`lt[A006530(n+1)^3, n+2]+1`
-/

namespace A090081.P3944922333172897926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) ^ 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A090081.P3944922333172897926

noncomputable section

/-- A090081: Cube root-smooth numbers: numbers k whose largest prime factor does not exceed the cube root of k.

Offset 1, canonical program `A090081.P3944922333172897926`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2720 terms. -/
def A090081 (n : ℕ) : ℤ :=
  (A090081.P3944922333172897926.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2720 terms. -/
def A090081.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A090346.P12809804946488414554

`∏{e}[record[A006530(n+2)]+A000040(n+2), #+1]`
-/

namespace A090346.P12809804946488414554
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + A000040 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A090346.P12809804946488414554

noncomputable section

/-- A090346: Number of divisors of prime(n) + prime(n+1).

Offset 1, canonical program `A090346.P12809804946488414554`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9592 terms. -/
def A090346 (n : ℕ) : ℤ :=
  (A090346.P12809804946488414554.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9592 terms. -/
def A090346.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A090396.P14342691533600740330

`A060939(n+1)%(n+1)`
-/

namespace A090396.P14342691533600740330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060939 (n + 1)) (n + 1 : ℤ)

end

end A090396.P14342691533600740330

noncomputable section

/-- A090396: Remainder when the sum of the first n primes is divided by n.

Offset 1, canonical program `A090396.P14342691533600740330`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A090396 (n : ℕ) : ℤ :=
  A090396.P14342691533600740330.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A090396.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A090442.P10441181462503134609

`2^n*A001003(n+1)`
-/

namespace A090442.P10441181462503134609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A001003 (n + 1)

end

end A090442.P10441181462503134609

noncomputable section

/-- A090442: Row sums of array A090452 (s2_{3,2}, scaled (3,2)-Stirling2).

Offset 1, canonical program `A090442.P10441181462503134609`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001003, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A090442 (n : ℕ) : ℤ :=
  A090442.P10441181462503134609.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001003, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A090442.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A092249.P8919152455619656948

`A091369(n+1)-∑[n]`
-/

namespace A092249.P8919152455619656948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091369 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A092249.P8919152455619656948

noncomputable section

/-- A092249: Positions of the integers in the standard diagonal enumeration of the rationals (with the integers in the first column and diagonals moving up to the right).

Offset 1, canonical program `A092249.P8919152455619656948`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092249 (n : ℕ) : ℤ :=
  A092249.P8919152455619656948.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092249.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092386.P2269527021586584002

`A006530(lcm(2, A056221(n+1))/2)`
-/

namespace A092386.P2269527021586584002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((Int.lcm 2 (A056221 (n + 1)) : ℚ) / 2)).toNat

end

end A092386.P2269527021586584002

noncomputable section

/-- A092386: Let p(n) = n-th prime; a(n) = largest prime factor of (p(n+1)^2 - p(n)*p(n+2)).

Offset 0, canonical program `A092386.P2269527021586584002`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 983 terms. -/
def A092386 (n : ℕ) : ℤ :=
  A092386.P2269527021586584002.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 983 terms. -/
def A092386.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A093074.P9471661206475887899

`A006530((n+2)*A006530(A060798(n+1)))`
-/

namespace A093074.P9471661206475887899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((n + 2 : ℤ) * A006530 (A060798 (n + 1)).toNat).toNat

end

end A093074.P9471661206475887899

noncomputable section

/-- A093074: Greatest prime factor of n and its direct neighbors.

Offset 1, canonical program `A093074.P9471661206475887899`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 316 terms. -/
def A093074 (n : ℕ) : ℤ :=
  A093074.P9471661206475887899.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 316 terms. -/
def A093074.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A093817.P10961853332067796385

`A006530(A036563(n+2))`
-/

namespace A093817.P10961853332067796385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A036563 (n + 2)).toNat

end

end A093817.P10961853332067796385

noncomputable section

/-- A093817: Largest prime factor of 2^n-3.

Offset 2, canonical program `A093817.P10961853332067796385`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A093817 (n : ℕ) : ℤ :=
  A093817.P10961853332067796385.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A093817.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A094474.P5728663512082856571

`A006530(A007689(n+1))`
-/

namespace A094474.P5728663512082856571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A007689 (n + 1)).toNat

end

end A094474.P5728663512082856571

noncomputable section

/-- A094474: a(n) is the largest prime factor of 2^n + 3^n.

Offset 1, canonical program `A094474.P5728663512082856571`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A094474 (n : ℕ) : ℤ :=
  A094474.P5728663512082856571.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A094474.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A094516.P16943004974981708111

`record[A006530(2*A050796(n+1))]`
-/

namespace A094516.P16943004974981708111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A050796 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094516.P16943004974981708111

noncomputable section

/-- A094516: Primes p such that q=(p^2+1)/2 is not a prime.

Offset 1, canonical program `A094516.P16943004974981708111`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1232 terms. -/
def A094516 (n : ℕ) : ℤ :=
  A094516.P16943004974981708111.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1232 terms. -/
def A094516.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096058.P15095193995148871617

`A006530(A002627(n+1))`
-/

namespace A096058.P15095193995148871617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A002627 (n + 1)).toNat

end

end A096058.P15095193995148871617

noncomputable section

/-- A096058: a(1) = 1, a(n) = largest prime divisor of b(n), where b(1) = 1, b(n) = n*b(n-1) + 1 = A002627(n).

Offset 1, canonical program `A096058.P15095193995148871617`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A096058 (n : ℕ) : ℤ :=
  A096058.P15095193995148871617.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A096058.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A096916.P11970356656094627604

`p?[gcd(n+1, ((n+1)/A006530(n+1))²)]`
-/

namespace A096916.P11970356656094627604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway (((n + 1 : ℚ) / (A006530 (n + 1) : ℚ)) ^ 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A096916.P11970356656094627604

noncomputable section

/-- A096916: Lesser prime factor of n-th product of two distinct primes.

Offset 1, canonical program `A096916.P11970356656094627604`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A096916 (n : ℕ) : ℤ :=
  (A096916.P11970356656094627604.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A096916.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A097453.P1775989512565720974

`p?[Δ[A071411(n+1)]]`
-/

namespace A097453.P1775989512565720974
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071411 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A097453.P1775989512565720974

noncomputable section

/-- A097453: Primes in A014237 in the order of their appearance.

Offset 1, canonical program `A097453.P1775989512565720974`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1133 terms. -/
def A097453 (n : ℕ) : ℤ :=
  A097453.P1775989512565720974.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1133 terms. -/
def A097453.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A097692.P14164108178356660308

`A016001(A006530(n+1))*A171651(n-A057427(n))`
-/

namespace A097692.P14164108178356660308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016001 (A006530 (n + 1)).toNat * A171651 ((n : ℤ) - A057427 n).toNat

end

end A097692.P14164108178356660308

noncomputable section

/-- A097692: Triangle read by rows: a(n,k) = number of paths of n upsteps U and n downsteps D that contain k UDUs.

Offset 0, canonical program `A097692.P14164108178356660308`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097692 (n : ℕ) : ℤ :=
  A097692.P14164108178356660308.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097692.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A097975.P3584933818732001972

`A006530(n+1)*A341591(n+1)`
-/

namespace A097975.P3584933818732001972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) * A341591 (n + 1)

end

end A097975.P3584933818732001972

noncomputable section

/-- A097975: a(n) is the prime divisor of n which is >= sqrt(n), or 0 if there is no such prime divisor.

Offset 1, canonical program `A097975.P3584933818732001972`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097975 (n : ℕ) : ℤ :=
  A097975.P3584933818732001972.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097975.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098802.P17735371602114723446

`A006530(A007318(n))`
-/

namespace A098802.P17735371602114723446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A007318 n).toNat

end

end A098802.P17735371602114723446

noncomputable section

/-- A098802: Greatest prime factors in Pascal's triangle (read by rows).

Offset 0, canonical program `A098802.P17735371602114723446`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A007318, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A098802 (n : ℕ) : ℤ :=
  A098802.P17735371602114723446.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A007318, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A098802.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A100481.P9342611058166189309

`A006530(n+1+A000720(n+1))`
-/

namespace A100481.P9342611058166189309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((n + 1 : ℤ) + A000720 (n + 1)).toNat

end

end A100481.P9342611058166189309

noncomputable section

/-- A100481: Greatest prime factor in A095117(n).

Offset 1, canonical program `A100481.P9342611058166189309`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A100481 (n : ℕ) : ℤ :=
  A100481.P9342611058166189309.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A100481.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A101550.P1248887786389931329

`lt[4*n+5, A006530(n+2)²]+2`
-/

namespace A101550.P1248887786389931329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A101550.P1248887786389931329

noncomputable section

/-- A101550: Lopsided (or biased) numbers: numbers n such that the largest prime factor of n is > 2*sqrt(n).

Offset 1, canonical program `A101550.P1248887786389931329`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101550 (n : ℕ) : ℤ :=
  (A101550.P1248887786389931329.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101550.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A102068.P17693975610551222381

`A000142(A006530(n+1))`
-/

namespace A102068.P17693975610551222381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (A006530 (n + 1)).toNat

end

end A102068.P17693975610551222381

noncomputable section

/-- A102068: a(n) = P(n)!, where P(n) is the largest prime factor of n (with a(1) = 1).

Offset 1, canonical program `A102068.P17693975610551222381`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A102068 (n : ℕ) : ℤ :=
  A102068.P17693975610551222381.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A102068.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A102469.P7785129579363644246

`A006530(A061354(n))`
-/

namespace A102469.P7785129579363644246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A061354 n).toNat

end

end A102469.P7785129579363644246

noncomputable section

/-- A102469: Largest prime factor of numerator of Sum_{k=0...n} 1/k!, with a(0) = 1.

Offset 0, canonical program `A102469.P7785129579363644246`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A102469 (n : ℕ) : ℤ :=
  A102469.P7785129579363644246.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A102469.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A102624.P12330737729857547922

`eq[10*10*n+23, A006530(10*10*n+23)]`
-/

namespace A102624.P12330737729857547922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * (10 * n) + 23

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (10 * (10 * n) + 23)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102624.P12330737729857547922

noncomputable section

/-- A102624: Numbers k such that the number k23 is prime.

Offset 1, canonical program `A102624.P12330737729857547922`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 246 terms. -/
def A102624 (n : ℕ) : ℤ :=
  (A102624.P12330737729857547922.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 246 terms. -/
def A102624.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A102733.P8423406068844763618

`eq[2*(n+50)+1, A006530(2*(n+50)+1)]`
-/

namespace A102733.P8423406068844763618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 50) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * (n + 50) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102733.P8423406068844763618

noncomputable section

/-- A102733: Numbers n such that 2*n + 101 is prime.

Offset 1, canonical program `A102733.P8423406068844763618`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9567 terms. -/
def A102733 (n : ℕ) : ℤ :=
  (A102733.P8423406068844763618.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9567 terms. -/
def A102733.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A102750.P15152922031530197469

`lt[A006530(A057521(n+1)), A006530(n+1)]+1`
-/

namespace A102750.P15152922031530197469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A057521 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A102750.P15152922031530197469

noncomputable section

/-- A102750: Numbers n such that square of largest prime dividing n does not divide n.

Offset 1, canonical program `A102750.P15152922031530197469`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A102750 (n : ℕ) : ℤ :=
  (A102750.P15152922031530197469.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A102750.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103190.P4046247394355433449

`eq[10*10*n+29, A006530(10*10*n+29)]`
-/

namespace A103190.P4046247394355433449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * (10 * n) + 29

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (10 * (10 * n) + 29)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A103190.P4046247394355433449

noncomputable section

/-- A103190: Numbers k such that k29 is prime.

Offset 1, canonical program `A103190.P4046247394355433449`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 245 terms. -/
def A103190 (n : ℕ) : ℤ :=
  (A103190.P4046247394355433449.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 245 terms. -/
def A103190.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103666.P4115928620230331236

`record[A006530(2*A070089(n+2)+1)]`
-/

namespace A103666.P4115928620230331236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A070089 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103666.P4115928620230331236

noncomputable section

/-- A103666: Primes p such that the largest prime divisor of p-1 is less than the largest prime divisor of p+1.

Offset 1, canonical program `A103666.P4115928620230331236`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2101 terms. -/
def A103666 (n : ℕ) : ℤ :=
  A103666.P4115928620230331236.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2101 terms. -/
def A103666.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103776.P935012817224811071

`record[A006530(4*A088759(n+1)+2)]`
-/

namespace A103776.P935012817224811071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (4 * A088759 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103776.P935012817224811071

noncomputable section

/-- A103776: Primes p such that 8*p^2 + 4*p + 1 is also prime.

Offset 1, canonical program `A103776.P935012817224811071`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 539 terms. -/
def A103776 (n : ℕ) : ℤ :=
  A103776.P935012817224811071.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 539 terms. -/
def A103776.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103803.P168175832880173124

`record[A006530(A049481(n+1)+15)]`
-/

namespace A103803.P168175832880173124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A049481 (n + 1) + 15).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103803.P168175832880173124

noncomputable section

/-- A103803: Primes p such that both 2p - 15 and 2p + 15 are primes.

Offset 1, canonical program `A103803.P168175832880173124`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 605 terms. -/
def A103803 (n : ℕ) : ℤ :=
  A103803.P168175832880173124.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 605 terms. -/
def A103803.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104357.P12046058181516214273

`(a(n-1)+1)*A006530(n+1)-1` with `a(0)=0`
-/

namespace A104357.P12046058181516214273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (a (n - 1) + 1) * A006530 (n + 1) - 1

end

end A104357.P12046058181516214273

noncomputable section

/-- A104357: a(n) = A104350(n) - 1.

Offset 1, canonical program `A104357.P12046058181516214273`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A104357 (n : ℕ) : ℤ :=
  A104357.P12046058181516214273.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A104357.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A104365.P16239871047684487656

`(a(n-1)-1)*A006530(n+1)+1` with `a(0)=2`
-/

namespace A104365.P16239871047684487656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (a (n - 1) - 1) * A006530 (n + 1) + 1

end

end A104365.P16239871047684487656

noncomputable section

/-- A104365: a(n) = A104350(n) + 1.

Offset 1, canonical program `A104365.P16239871047684487656`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A104365 (n : ℕ) : ℤ :=
  A104365.P16239871047684487656.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A104365.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A105562.P6610698790544844903

`A000040(A006530(n+1))`
-/

namespace A105562.P6610698790544844903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A006530 (n + 1)).toNat

end

end A105562.P6610698790544844903

noncomputable section

/-- A105562: a(n) is the prime whose index is the greatest prime factor of n, for n >1; a(1)=2.

Offset 1, canonical program `A105562.P6610698790544844903`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A105562 (n : ℕ) : ℤ :=
  A105562.P6610698790544844903.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A105562.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A105585.P15190167194842954845

`record[A132740(n%(3*A006530(n+1))+1)]`
-/

namespace A105585.P15190167194842954845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132740 (Int.tmod (n : ℤ) (3 * A006530 (n + 1)) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105585.P15190167194842954845

noncomputable section

/-- A105585: 1, p and 3p, where p runs through all primes except 2 and 5.

Offset 1, canonical program `A105585.P15190167194842954845`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A105585 (n : ℕ) : ℤ :=
  A105585.P15190167194842954845.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A105585.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106009.P16468234761695848879

`record[A006530(A093013(n+3))%A022884(n+1)]`
-/

namespace A106009.P16468234761695848879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (A093013 (n + 3)).toNat) (A022884 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106009.P16468234761695848879

noncomputable section

/-- A106009: Primes p such that 20*p - 3 and 20*p + 3 are both primes.

Offset 1, canonical program `A106009.P16468234761695848879`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 317 terms. -/
def A106009 (n : ℕ) : ℤ :=
  A106009.P16468234761695848879.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 317 terms. -/
def A106009.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106022.P3953830917697227249

`∩[A092110(n+1), A164570(n+1)]`
-/

namespace A106022.P3953830917697227249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092110 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164570 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106022.P3953830917697227249

noncomputable section

/-- A106022: Primes p such that 2*p +/ - 3 and 8*p +/ - 3 are all primes.

Offset 1, canonical program `A106022.P3953830917697227249`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 303 terms. -/
def A106022 (n : ℕ) : ℤ :=
  (A106022.P3953830917697227249.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 303 terms. -/
def A106022.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106138.P12191522226839767428

`p?[ceil(n/A006530(n+1))]%2`
-/

namespace A106138.P12191522226839767428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / (A006530 (n + 1) : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) 2

end

end A106138.P12191522226839767428

noncomputable section

/-- A106138: Semiprimes (mod 2).

Offset 1, canonical program `A106138.P12191522226839767428`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106138 (n : ℕ) : ℤ :=
  A106138.P12191522226839767428.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106138.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106405.P14402904271098237239

`A086971(n+1)-A106404(n+1)`
-/

namespace A106405.P14402904271098237239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086971 (n + 1) - A106404 (n + 1)

end

end A106405.P14402904271098237239

noncomputable section

/-- A106405: Number of odd semiprimes dividing n.

Offset 1, canonical program `A106405.P14402904271098237239`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A086971, A106404, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A106405 (n : ℕ) : ℤ :=
  A106405.P14402904271098237239.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A086971, A106404, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A106405.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A106476.P5315817967873188888

`A089929(A212012(n+1))`
-/

namespace A106476.P5315817967873188888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089929 (A212012 (n + 1)).toNat

end

end A106476.P5315817967873188888

noncomputable section

/-- A106476: Sequence array of Euler phi function.

Offset 0, canonical program `A106476.P5315817967873188888`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106476 (n : ℕ) : ℤ :=
  A106476.P5315817967873188888.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106476.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112270.P2426147511943281131

`A007504(A103208(n+1))/3`
-/

namespace A112270.P2426147511943281131
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007504 (A103208 (n + 1)).toNat : ℚ) / 3

end

end A112270.P2426147511943281131

noncomputable section

/-- A112270: One third of the sum of the first n primes, when an integer.

Offset 1, canonical program `A112270.P2426147511943281131`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A112270 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A112270.P2426147511943281131.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A112270.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112271.P15116177394105532634

`A007504(A111319(n+1))/5`
-/

namespace A112271.P15116177394105532634
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007504 (A111319 (n + 1)).toNat : ℚ) / 5

end

end A112271.P15116177394105532634

noncomputable section

/-- A112271: One fifth of the sum of the first n primes, when an integer.

Offset 1, canonical program `A112271.P15116177394105532634`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A112271 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A112271.P15116177394105532634.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A112271.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112272.P10778085801830275971

`ceil(A007504(A111321(-xor(n, -1)))/7)`
-/

namespace A112272.P10778085801830275971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007504 (A111321 (-Int.xor (n : ℤ) (-1)).toNat).toNat : ℚ) / 7⌉

end

end A112272.P10778085801830275971

noncomputable section

/-- A112272: One seventh of the sum of the first n primes, when an integer.

Offset 1, canonical program `A112272.P10778085801830275971`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A112272 (n : ℕ) : ℤ :=
  A112272.P10778085801830275971.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A112272.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112758.P11136928158016478961

`A001221(lt[A006530(n+1), 6]+1)`
-/

namespace A112758.P11136928158016478961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A112758.P11136928158016478961

noncomputable section

/-- A112758: Number of distinct prime factors of n-th 5-smooth number.

Offset 1, canonical program `A112758.P11136928158016478961`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 265 terms. -/
def A112758 (n : ℕ) : ℤ :=
  A112758.P11136928158016478961.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 265 terms. -/
def A112758.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112764.P18285365227151392333

`A006530(lt[A006530(n+1), 6]+1)`
-/

namespace A112764.P18285365227151392333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A112764.P18285365227151392333

noncomputable section

/-- A112764: Greatest prime factor of the n-th 5-smooth number.

Offset 1, canonical program `A112764.P18285365227151392333`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 265 terms. -/
def A112764 (n : ℕ) : ℤ :=
  A112764.P18285365227151392333.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 265 terms. -/
def A112764.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113050.P6984668803832590430

`a((n-2)*char[A006530(n+2)])+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A113050.P6984668803832590430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (((n : ℤ) - 2) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat + a (n - 1)

end

end A113050.P6984668803832590430

noncomputable section

/-- A113050: a(1) = a(2) = 1; for n>2, a(n+1) = a(n) + a(n-1) iff n is prime, otherwise a(n+1) = a(n) + 1.

Offset 1, canonical program `A113050.P6984668803832590430`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A113050 (n : ℕ) : ℤ :=
  (A113050.P6984668803832590430.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A113050.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113417.P14092830831869927536

`A087960(n)*A124340(2*n+1)`
-/

namespace A113417.P14092830831869927536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n * A124340 (2 * n + 1)

end

end A113417.P14092830831869927536

noncomputable section

/-- A113417: Expansion of phi(x) * phi(-x)^2 * psi(x^4) in powers of x where phi(), psi() are Ramanujan theta functions.

Offset 0, canonical program `A113417.P14092830831869927536`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A113417 (n : ℕ) : ℤ :=
  A113417.P14092830831869927536.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A113417.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113972.P16992597825504816071

`A006530(29*2^n-1)`
-/

namespace A113972.P16992597825504816071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (29 * 2 ^ n - 1)

end

end A113972.P16992597825504816071

noncomputable section

/-- A113972: Define b(0)=28, b(n+1)=2*b(n)+1; sequence gives largest prime factor of b(n).

Offset 0, canonical program `A113972.P16992597825504816071`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A113972 (n : ℕ) : ℤ :=
  A113972.P16992597825504816071.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A113972.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A115074.P4145856416073480298

`A006530(A013929(n+1))`
-/

namespace A115074.P4145856416073480298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A013929 (n + 1)).toNat

end

end A115074.P4145856416073480298

noncomputable section

/-- A115074: a(n) is the largest prime dividing the n-th nonsquarefree positive integer.

Offset 1, canonical program `A115074.P4145856416073480298`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A013929, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A115074 (n : ℕ) : ℤ :=
  A115074.P4145856416073480298.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A013929, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A115074.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A115732.P15439679274567884474

`A000040(∑[char[A112997(n+1)]]+1)`
-/

namespace A115732.P15439679274567884474
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112997 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A115732.P15439679274567884474

noncomputable section

/-- A115732: n-th prime prime(n) repeated (prime(n)-n) times.

Offset 1, canonical program `A115732.P15439679274567884474`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115732 (n : ℕ) : ℤ :=
  A115732.P15439679274567884474.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115732.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116919.P3435591609378152600

`A006530(a(n-1))+n` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A116919.P3435591609378152600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006530 (a (n - 1)).toNat + (n : ℤ)

end

end A116919.P3435591609378152600

noncomputable section

/-- A116919: a(0)=1. a(n) = A006530(a(n-1)) + n.

Offset 0, canonical program `A116919.P3435591609378152600`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A116919 (n : ℕ) : ℤ :=
  A116919.P3435591609378152600.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A116919.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A117366.P12979558578758758009

`A151800(A006530(n+1))`
-/

namespace A117366.P12979558578758758009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A006530 (n + 1)).toNat

end

end A117366.P12979558578758758009

noncomputable section

/-- A117366: a(n) = smallest prime greater than the largest prime dividing n.

Offset 1, canonical program `A117366.P12979558578758758009`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A151800, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A117366 (n : ℕ) : ℤ :=
  A117366.P12979558578758758009.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A151800, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A117366.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A119416.P13607137128178787209

`(n+1)*A151800(A006530(n+1))`
-/

namespace A119416.P13607137128178787209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A151800 (A006530 (n + 1)).toNat

end

end A119416.P13607137128178787209

noncomputable section

/-- A119416: n * (smallest prime greater than largest prime factor of n).

Offset 1, canonical program `A119416.P13607137128178787209`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A151800, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A119416 (n : ℕ) : ℤ :=
  A119416.P13607137128178787209.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A151800, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A119416.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A120639.P12948301688875867014

`record[A006530(A024698(n+3))]`
-/

namespace A120639.P12948301688875867014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A024698 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120639.P12948301688875867014

noncomputable section

/-- A120639: Primes such that their quadruple is 1 away from a prime number.

Offset 1, canonical program `A120639.P12948301688875867014`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 765 terms. -/
def A120639 (n : ℕ) : ℤ :=
  A120639.P12948301688875867014.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 765 terms. -/
def A120639.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121359.P104378795013916928

`A006530(A000292(n+2))`
-/

namespace A121359.P104378795013916928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000292 (n + 2)).toNat

end

end A121359.P104378795013916928

noncomputable section

/-- A121359: Greatest prime factor of pyramidal number A000292(n).

Offset 2, canonical program `A121359.P104378795013916928`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A121359 (n : ℕ) : ℤ :=
  A121359.P104378795013916928.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A121359.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A122037.P14771729018691792230

`A006530(A102655(n+1))`
-/

namespace A122037.P14771729018691792230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A102655 (n + 1)).toNat

end

end A122037.P14771729018691792230

noncomputable section

/-- A122037: Largest prime factor of number equal to the arithmetic mean of four successive primes.

Offset 1, canonical program `A122037.P14771729018691792230`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A102655, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A122037 (n : ℕ) : ℤ :=
  A122037.P14771729018691792230.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A102655, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A122037.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A122259.P14863377937943997555

`A000040(lt[3, A006530(A005097(n+1))]+2)`
-/

namespace A122259.P14863377937943997555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A005097 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2)

end

end A122259.P14863377937943997555

noncomputable section

/-- A122259: Primes p such that p - 1 is not 3-smooth.

Offset 1, canonical program `A122259.P14863377937943997555`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9968 terms. -/
def A122259 (n : ℕ) : ℤ :=
  A122259.P14863377937943997555.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9968 terms. -/
def A122259.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127987.P7183224258703358641

`A006530(A127986(n+1))`
-/

namespace A127987.P7183224258703358641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A127986 (n + 1)).toNat

end

end A127987.P7183224258703358641

noncomputable section

/-- A127987: Largest prime factor of n! + 2^n - 1.

Offset 1, canonical program `A127987.P7183224258703358641`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A127987 (n : ℕ) : ℤ :=
  A127987.P7183224258703358641.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A127987.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A127990.P3314703042255939171

`A006530(A127989(n+1))`
-/

namespace A127990.P3314703042255939171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A127989 (n + 1)).toNat

end

end A127990.P3314703042255939171

noncomputable section

/-- A127990: Largest prime factor of 2*n^3 - 2*n + 9.

Offset 1, canonical program `A127990.P3314703042255939171`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A127990 (n : ℕ) : ℤ :=
  A127990.P3314703042255939171.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A127990.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A127991.P1404809648545136444

`A127989(n+1)/(3*A006530(A127989(n+1)))`
-/

namespace A127991.P1404809648545136444
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127989 (n + 1) : ℚ) / (3 * A006530 (A127989 (n + 1)).toNat : ℚ)

end

end A127991.P1404809648545136444

noncomputable section

/-- A127991: 2*n^3 - 2*n + 9 divided by 3*largest prime factor.

Offset 1, canonical program `A127991.P1404809648545136444`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A127991 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A127991.P1404809648545136444.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A127991.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A128220.P8404700930990336866

`A003056(n)+A006530(A130321(n))`
-/

namespace A128220.P8404700930990336866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n + A006530 (A130321 n).toNat

end

end A128220.P8404700930990336866

noncomputable section

/-- A128220: Triangle, A127701 * A000012.

Offset 1, canonical program `A128220.P8404700930990336866`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 153 terms. -/
def A128220 (n : ℕ) : ℤ :=
  A128220.P8404700930990336866.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 153 terms. -/
def A128220.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129597.P10688368682371008500

`2/A006530(2*(n+1))*(n+1)²`
-/

namespace A129597.P10688368682371008500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A006530 (2 * (n + 1)) : ℚ) * ((n + 1) ^ 2 : ℚ)

end

end A129597.P10688368682371008500

noncomputable section

/-- A129597: Central diagonal of array A129595.

Offset 1, canonical program `A129597.P10688368682371008500`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129597 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A129597.P10688368682371008500.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129597.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133133.P5258016011516317124

`A006530(A088822(n+2))`
-/

namespace A133133.P5258016011516317124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A088822 (n + 2)).toNat

end

end A133133.P5258016011516317124

noncomputable section

/-- A133133: a(n) is the largest prime factor of the sum of the largest prime factors of numbers from 2 to n.

Offset 2, canonical program `A133133.P5258016011516317124`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 847 terms. -/
def A133133 (n : ℕ) : ℤ :=
  A133133.P5258016011516317124.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 847 terms. -/
def A133133.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133992.P16766147261455074917

`A000005(A073065(n+1)-1)`
-/

namespace A133992.P16766147261455074917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A073065 (n + 1) - 1).toNat

end

end A133992.P16766147261455074917

noncomputable section

/-- A133992: a(n) = tau( prime(n)*prime(prime(n)) - 1 ).

Offset 1, canonical program `A133992.P16766147261455074917`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A073065, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A133992 (n : ℕ) : ℤ :=
  A133992.P16766147261455074917.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A073065, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A133992.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A134425.P9961486418266130695

`6*a(n-1)-A001003(n)` with `a(0)=1`
-/

namespace A134425.P9961486418266130695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  6 * a (n - 1) - A001003 n

end

end A134425.P9961486418266130695

noncomputable section

/-- A134425: Number of paths of length n in the first quadrant, starting at the origin and consisting of 2 kinds of upsteps U=(1,1) (U1 and U2), 3 kinds of flatsteps F=(1,0) (F1, F2 and F3) and 1 kind of downsteps D=(1,-1).

Offset 0, canonical program `A134425.P9961486418266130695`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A134425 (n : ℕ) : ℤ :=
  A134425.P9961486418266130695.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A134425.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136089.P14255672139635616555

`record[A006530(A141946(n+1)-24)]`
-/

namespace A136089.P14255672139635616555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A141946 (n + 1) - 24).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136089.P14255672139635616555

noncomputable section

/-- A136089: Son primes of order 12.

Offset 1, canonical program `A136089.P14255672139635616555`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 186 terms. -/
def A136089 (n : ℕ) : ℤ :=
  A136089.P14255672139635616555.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 186 terms. -/
def A136089.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136192.P16759247333533058441

`∩[A030432(n+1), A092110(n+1)]`
-/

namespace A136192.P16759247333533058441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092110 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136192.P16759247333533058441

noncomputable section

/-- A136192: Primes p such that 2p-3 and 2p+3 are both prime (A092110), with last decimal of p being 7.

Offset 1, canonical program `A136192.P16759247333533058441`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A136192 (n : ℕ) : ℤ :=
  (A136192.P16759247333533058441.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A136192.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137288.P10083510828041765000

`record[A061395(A006530(n+1)+1)]`
-/

namespace A137288.P10083510828041765000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A006530 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137288.P10083510828041765000

noncomputable section

/-- A137288: Numbers k such that 2*prime(k)-1 is prime.

Offset 1, canonical program `A137288.P10083510828041765000`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 672 terms. -/
def A137288 (n : ℕ) : ℤ :=
  A137288.P10083510828041765000.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 672 terms. -/
def A137288.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137845.P2059571329476721070

`lt[A006530(n+1), log(n+1)]+1`
-/

namespace A137845.P2059571329476721070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (n + 1 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n + 1

end

end A137845.P2059571329476721070

noncomputable section

/-- A137845: Logarithmically smooth numbers; numbers n whose largest prime factor is less than log(n).

Offset 1, canonical program `A137845.P2059571329476721070`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 483 terms. -/
def A137845 (n : ℕ) : ℤ :=
  (A137845.P2059571329476721070.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 483 terms. -/
def A137845.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137859.P12570958566388461762

`A050216(A029707(n+1))`
-/

namespace A137859.P12570958566388461762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050216 (A029707 (n + 1)).toNat

end

end A137859.P12570958566388461762

noncomputable section

/-- A137859: Number of primes between the n-th squared twin prime pair.

Offset 1, canonical program `A137859.P12570958566388461762`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A137859 (n : ℕ) : ℤ :=
  A137859.P12570958566388461762.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A137859.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139421.P14238100739878023942

`A006530(A006882(n+1))`
-/

namespace A139421.P14238100739878023942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A006882 (n + 1)).toNat

end

end A139421.P14238100739878023942

noncomputable section

/-- A139421: a(1)=1; for n>1, a(n) = largest prime divisor of n!!.

Offset 1, canonical program `A139421.P14238100739878023942`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A139421 (n : ℕ) : ℤ :=
  A139421.P14238100739878023942.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A139421.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A139467.P2342812551218913773

`A006530(A139464(n+1))`
-/

namespace A139467.P2342812551218913773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A139464 (n + 1)).toNat

end

end A139467.P2342812551218913773

noncomputable section

/-- A139467: Largest prime factor of n! + 2n - 1.

Offset 1, canonical program `A139467.P2342812551218913773`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A139467 (n : ℕ) : ℤ :=
  A139467.P2342812551218913773.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A139467.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A140558.P196578342444340295

`p?[n-21-round(A006530(n+1)/(n+3))]`
-/

namespace A140558.P196578342444340295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 21 - SequenceMachineLib.roundAway ((A006530 (n + 1) : ℚ) / (n + 3 : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140558.P196578342444340295

noncomputable section

/-- A140558: Primes p such that p + 22 is not a prime.

Offset 1, canonical program `A140558.P196578342444340295`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8239 terms. -/
def A140558 (n : ℕ) : ℤ :=
  A140558.P196578342444340295.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8239 terms. -/
def A140558.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140559.P15766714840253506100

`p?[C(A006530(n+1), n)-(33-n)]`
-/

namespace A140559.P15766714840253506100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A006530 (n + 1)).toNat n : ℤ) - (33 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140559.P15766714840253506100

noncomputable section

/-- A140559: Primes p such that p + 34 is not a prime.

Offset 1, canonical program `A140559.P15766714840253506100`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8283 terms. -/
def A140559 (n : ℕ) : ℤ :=
  A140559.P15766714840253506100.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8283 terms. -/
def A140559.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141559.P564601368839984872

`p?[A000040(n+1)-comp[A006530(n+2)]]`
-/

namespace A141559.P564601368839984872
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141559.P564601368839984872

noncomputable section

/-- A141559: Primes of form (p(n)-r(n)), where A141468(n)=r(n)=n-th nonprime and p(n)=n-th prime.

Offset 1, canonical program `A141559.P564601368839984872`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1061 terms. -/
def A141559 (n : ℕ) : ℤ :=
  A141559.P564601368839984872.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1061 terms. -/
def A141559.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144419.P7004838141369626204

`p?[Δ[A135267(n+1)]]`
-/

namespace A144419.P7004838141369626204
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135267 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A144419.P7004838141369626204

noncomputable section

/-- A144419: Primes of the form prime(k) - 2*k (terms can be repeated).

Offset 1, canonical program `A144419.P7004838141369626204`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1943 terms. -/
def A144419 (n : ℕ) : ℤ :=
  A144419.P7004838141369626204.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1943 terms. -/
def A144419.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A152024.P13674499214346546468

`A006530(A000166(n+3))`
-/

namespace A152024.P13674499214346546468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000166 (n + 3)).toNat

end

end A152024.P13674499214346546468

noncomputable section

/-- A152024: Largest prime factor in the subfactorial of n.

Offset 3, canonical program `A152024.P13674499214346546468`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A152024 (n : ℕ) : ℤ :=
  A152024.P13674499214346546468.a (n - 3)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A152024.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A153144.P16852802539869100357

`lt[A006530(2*n+1), n-2]-9`
-/

namespace A153144.P16852802539869100357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ) - 9

end

end A153144.P16852802539869100357

noncomputable section

/-- A153144: Numbers n such that 2*n+19 is not a prime.

Offset 1, canonical program `A153144.P16852802539869100357`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153144 (n : ℕ) : ℤ :=
  A153144.P16852802539869100357.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153144.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157772.P15998666800682161409

`eq[10*10*n+13, A006530(10*10*n+13)]`
-/

namespace A157772.P15998666800682161409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * (10 * n) + 13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (10 * (10 * n) + 13)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A157772.P15998666800682161409

noncomputable section

/-- A157772: Numbers n such that 100n + 13 is prime.

Offset 1, canonical program `A157772.P15998666800682161409`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 243 terms. -/
def A157772 (n : ℕ) : ℤ :=
  (A157772.P15998666800682161409.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 243 terms. -/
def A157772.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A158813.P10962523236652719903

`A006530(A158725(n+1))`
-/

namespace A158813.P10962523236652719903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A158725 (n + 1)).toNat

end

end A158813.P10962523236652719903

noncomputable section

/-- A158813: Largest prime factor of entries in A158725(n).

Offset 1, canonical program `A158813.P10962523236652719903`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158813 (n : ℕ) : ℤ :=
  A158813.P10962523236652719903.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158813.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A159081.P2427931122256216172

`A049084(A006530(n+1))+1`
-/

namespace A159081.P2427931122256216172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A006530 (n + 1)).toNat + 1

end

end A159081.P2427931122256216172

noncomputable section

/-- A159081: Let d be the largest element of A008578 which divides n, then a(n) is the position of d in A008578.

Offset 1, canonical program `A159081.P2427931122256216172`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A049084, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A159081 (n : ℕ) : ℤ :=
  A159081.P2427931122256216172.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A049084, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A159081.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A159923.P1227019017527381608

`A006530(A003989(n+1))`
-/

namespace A159923.P1227019017527381608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A003989 (n + 1)).toNat

end

end A159923.P1227019017527381608

noncomputable section

/-- A159923: Rectangular array read by antidiagonals: a(m,n) = greatest noncomposite (1 or prime) that divides both m and n.

Offset 1, canonical program `A159923.P1227019017527381608`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A159923 (n : ℕ) : ℤ :=
  A159923.P1227019017527381608.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A159923.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161542.P13832799179824774982

`record[A006530(A161537(n+1))-(n+1)]`
-/

namespace A161542.P13832799179824774982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A161537 (n + 1)).toNat - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161542.P13832799179824774982

noncomputable section

/-- A161542: m-th composite composite(m) is included iff composite(m) + m is prime.

Offset 1, canonical program `A161542.P13832799179824774982`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A161542 (n : ℕ) : ℤ :=
  A161542.P13832799179824774982.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A161542.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A162526.P65744712905578184

`6*(lt[n-1, A006530(n+6)]+6)`
-/

namespace A162526.P65744712905578184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 6)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 6)

end

end A162526.P65744712905578184

noncomputable section

/-- A162526: Numbers k whose largest divisor <= sqrt(k) equals 6.

Offset 1, canonical program `A162526.P65744712905578184`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5134 terms. -/
def A162526 (n : ℕ) : ℤ :=
  (A162526.P65744712905578184.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5134 terms. -/
def A162526.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A162786.P3053637740842247818

`lt[n-1, A006530(n+6)]+6`
-/

namespace A162786.P3053637740842247818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 6)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 6

end

end A162786.P3053637740842247818

noncomputable section

/-- A162786: a(n) = A162526(n)/6.

Offset 1, canonical program `A162786.P3053637740842247818`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A162526, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A162786 (n : ℕ) : ℤ :=
  (A162786.P3053637740842247818.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A162526, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A162786.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A164314.P4119450813910169316

`A006530(A008865(n+2))`
-/

namespace A164314.P4119450813910169316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A008865 (n + 2)).toNat

end

end A164314.P4119450813910169316

noncomputable section

/-- A164314: Largest prime factor of n^2 - 2.

Offset 2, canonical program `A164314.P4119450813910169316`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A164314 (n : ℕ) : ℤ :=
  A164314.P4119450813910169316.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A164314.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A166460.P3722313716413946598

`lt[n, xor(n, A006530(n+1))²]`
-/

namespace A166460.P3722313716413946598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A006530 (n + 1)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A166460.P3722313716413946598

noncomputable section

/-- A166460: Numbers k such that k + (-1)^k is not prime.

Offset 1, canonical program `A166460.P3722313716413946598`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166460 (n : ℕ) : ℤ :=
  (A166460.P3722313716413946598.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166460.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A168265.P10825794476371469253

`A037125(lt[1, A037125(n+1)])`
-/

namespace A168265.P10825794476371469253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037125 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037125 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A168265.P10825794476371469253

noncomputable section

/-- A168265: a(n) = A003557(A060735(n)).

Offset 1, canonical program `A168265.P10825794476371469253`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9932 terms. -/
def A168265 (n : ℕ) : ℤ :=
  A168265.P10825794476371469253.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9932 terms. -/
def A168265.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A172624.P1675348428344907413

`eq[3, A145154(n)/A062011(n+1)]`
-/

namespace A172624.P1675348428344907413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145154 n : ℚ) / (A062011 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A172624.P1675348428344907413

noncomputable section

/-- A172624: Numbers k such that 2*A000005(k) = 3*A000005(k+1).

Offset 1, canonical program `A172624.P1675348428344907413`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 420 terms. -/
def A172624 (n : ℕ) : ℤ :=
  (A172624.P1675348428344907413.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 420 terms. -/
def A172624.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174090.P3000555461621307898

`record[ceil(xor(n, n+1)/4)*A006530(n+1)]`
-/

namespace A174090.P3000555461621307898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor n (n + 1) : ℚ) / 4⌉ * A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174090.P3000555461621307898

noncomputable section

/-- A174090: Powers of 2 and odd primes; alternatively, numbers that cannot be written as a sum of at least three consecutive positive integers.

Offset 1, canonical program `A174090.P3000555461621307898`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9608 terms. -/
def A174090 (n : ℕ) : ℤ :=
  A174090.P3000555461621307898.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9608 terms. -/
def A174090.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175742.P17751392204006132798

`eq[7, log2(A145154(n))]`
-/

namespace A175742.P17751392204006132798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A145154 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A175742.P17751392204006132798

noncomputable section

/-- A175742: Numbers with 32 divisors.

Offset 1, canonical program `A175742.P17751392204006132798`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. -/
def A175742 (n : ℕ) : ℤ :=
  (A175742.P17751392204006132798.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. -/
def A175742.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176172.P13651353445178749655

`A006530(A046386(n+1)/A006530(A046386(n+1)))`
-/

namespace A176172.P13651353445178749655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A046386 (n + 1) : ℚ) / (A006530 (A046386 (n + 1)).toNat : ℚ))).toNat

end

end A176172.P13651353445178749655

noncomputable section

/-- A176172: 3rd prime-factor of n-th product of 4 distinct primes.

Offset 1, canonical program `A176172.P13651353445178749655`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7039 terms. -/
def A176172 (n : ℕ) : ℤ :=
  A176172.P13651353445178749655.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7039 terms. -/
def A176172.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176500.P10455789036156632366

`2*A176499(n+1)-3`
-/

namespace A176500.P10455789036156632366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A176499 (n + 1) - 3

end

end A176500.P10455789036156632366

noncomputable section

/-- A176500: a(n) = 2*Farey(Fibonacci(n + 1)) - 3.

Offset 1, canonical program `A176500.P10455789036156632366`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A176499, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A176500 (n : ℕ) : ℤ :=
  A176500.P10455789036156632366.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A176499, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A176500.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A177082.P1291897975373638475

`2*(n+1)*A071148(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A177082.P1291897975373638475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) * A071148 (n + 1)

end

end A177082.P1291897975373638475

noncomputable section

/-- A177082: a(n) = 2*n*A071148(n).

Offset 1, canonical program `A177082.P1291897975373638475`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071148, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A177082 (n : ℕ) : ℤ :=
  A177082.P1291897975373638475.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071148, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A177082.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A177904.P7722011036805203637

`A006530(a(n-1)+a(n-2)+a(n-3))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A177904.P7722011036805203637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A006530 (a (n - 1) + (a (n - 2) + a (n - 3))).toNat

end

end A177904.P7722011036805203637

noncomputable section

/-- A177904: a(1)=a(2)=a(3)=1; thereafter a(n) = gpf(a(n-1)+a(n-2)+a(n-3)), where gpf = "greatest prime factor".

Offset 1, canonical program `A177904.P7722011036805203637`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A177904 (n : ℕ) : ℤ :=
  A177904.P7722011036805203637.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A177904.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A177923.P2602948550540453143

`A006530(a(n-1)+a(n-2)+a(n-3))` with `a(0)=19, a(1)=13, a(2)=37`
-/

namespace A177923.P2602948550540453143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [19, 13, 37] fun n a =>
  A006530 (a (n - 1) + (a (n - 2) + a (n - 3))).toNat

end

end A177923.P2602948550540453143

noncomputable section

/-- A177923: a(1)=19, a(2)=13, a(3)=37; thereafter a(n) = gpf(a(n-1)+a(n-2)+a(n-3)), where gpf = "greatest prime factor".

Offset 1, canonical program `A177923.P2602948550540453143`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A177923 (n : ℕ) : ℤ :=
  A177923.P2602948550540453143.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A177923.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178174.P12290359058384693052

`A006530(a(n-1)+a(n-2)+a(n-3)+a(n-4))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A178174.P12290359058384693052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1] fun n a =>
  A006530 (a (n - 1) + (a (n - 2) + (a (n - 3) + a (n - 4)))).toNat

end

end A178174.P12290359058384693052

noncomputable section

/-- A178174: a(1)=a(2)=a(3)=a(4)=1; thereafter a(n) = gpf(a(n-1)+a(n-2)+a(n-3)+a(n-4)), where gpf is the greatest prime factor.

Offset 1, canonical program `A178174.P12290359058384693052`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A178174 (n : ℕ) : ℤ :=
  A178174.P12290359058384693052.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A178174.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178179.P13880318293807739231

`A006530(a(n-1)+a(n-2)+a(n-3))` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A178179.P13880318293807739231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  A006530 (a (n - 1) + (a (n - 2) + a (n - 3))).toNat

end

end A178179.P13880318293807739231

noncomputable section

/-- A178179: Like A177904, but start with a(1)=0, a(2)=a(3)=1.

Offset 1, canonical program `A178179.P13880318293807739231`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A178179 (n : ℕ) : ℤ :=
  A178179.P13880318293807739231.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A178179.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180107.P14694732307174921665

`A006530(a(n-1))+a(n-1)` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A180107.P14694732307174921665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  A006530 (a (n - 1)).toNat + a (n - 1)

end

end A180107.P14694732307174921665

noncomputable section

/-- A180107: Partial sums of terms in A180101.

Offset 0, canonical program `A180107.P14694732307174921665`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 634 terms. -/
def A180107 (n : ℕ) : ℤ :=
  A180107.P14694732307174921665.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 634 terms. -/
def A180107.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184797.P11283952732230749772

`lt[n+1, A006530(A022838(n+1))]+1`
-/

namespace A184797.P11283952732230749772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A022838 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A184797.P11283952732230749772

noncomputable section

/-- A184797: Numbers k such that floor(k*sqrt(3)) is prime.

Offset 1, canonical program `A184797.P11283952732230749772`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1152 terms. -/
def A184797 (n : ℕ) : ℤ :=
  (A184797.P11283952732230749772.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1152 terms. -/
def A184797.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185670.P7671735460308608982

`A100613(n+1)-A063985(n+1)`
-/

namespace A185670.P7671735460308608982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100613 (n + 1) - A063985 (n + 1)

end

end A185670.P7671735460308608982

noncomputable section

/-- A185670: Number of pairs (x,y) with 1 <= x < y <= n with at least one common factor.

Offset 1, canonical program `A185670.P7671735460308608982`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063985, A100613, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A185670 (n : ℕ) : ℤ :=
  A185670.P7671735460308608982.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063985, A100613, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A185670.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A190593.P5286973328351378839

`A006530(A338854(n))%(n+1)`
-/

namespace A190593.P5286973328351378839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (A338854 n).toNat) (n + 1 : ℤ)

end

end A190593.P5286973328351378839

noncomputable section

/-- A190593: Maximal digit in base-4 expansion of n.

Offset 0, canonical program `A190593.P5286973328351378839`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190593 (n : ℕ) : ℤ :=
  A190593.P5286973328351378839.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190593.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194939.P5364823241840886690

`A014284(A003057(n+2))-A014284(A004736(n+1))`
-/

namespace A194939.P5364823241840886690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014284 (A003057 (n + 2)).toNat - A014284 (A004736 (n + 1)).toNat

end

end A194939.P5364823241840886690

noncomputable section

/-- A194939: Table T read by rows, where T(n, k) is the sum of the largest k primes up to and including prime(n), for 1 <= k <= n.

Offset 1, canonical program `A194939.P5364823241840886690`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A194939 (n : ℕ) : ℤ :=
  A194939.P5364823241840886690.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A194939.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A199423.P11643478384372544174

`A006530(A014105(n+1))`
-/

namespace A199423.P11643478384372544174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A014105 (n + 1)).toNat

end

end A199423.P11643478384372544174

noncomputable section

/-- A199423: Greatest prime factor of n and 2*n+1.

Offset 1, canonical program `A199423.P11643478384372544174`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A199423 (n : ℕ) : ℤ :=
  A199423.P11643478384372544174.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A199423.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A199768.P6760462723311011706

`lt[A006530(n+1), A000005(n+1)]+1`
-/

namespace A199768.P6760462723311011706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A199768.P6760462723311011706

noncomputable section

/-- A199768: Numbers whose greatest prime factor is less than their number of divisors.

Offset 1, canonical program `A199768.P6760462723311011706`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2808 terms. -/
def A199768 (n : ℕ) : ℤ :=
  (A199768.P6760462723311011706.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2808 terms. -/
def A199768.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A001182.P18331014380152811402

`Δ[A211636(n)]`
-/

namespace A001182.P18331014380152811402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211636 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001182.P18331014380152811402

noncomputable section

/-- A001182: Number of cells of square lattice of edge 1/n inside quadrant of unit circle centered at 0.

Offset 1, canonical program `A001182.P18331014380152811402`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001182 (n : ℕ) : ℤ :=
  A001182.P18331014380152811402.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001182.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001751.P12650919447307229598

`record[(2-A010051(n+1))*A006530(n+1)]`
-/

namespace A001751.P12650919447307229598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A010051 (n + 1)) * A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001751.P12650919447307229598

noncomputable section

/-- A001751: Primes together with primes multiplied by 2.

Offset 1, canonical program `A001751.P12650919447307229598`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001751 (n : ℕ) : ℤ :=
  A001751.P12650919447307229598.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001751.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A002587.P15528568919996854647

`A006530(A000051(n))`
-/

namespace A002587.P15528568919996854647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000051 n).toNat

end

end A002587.P15528568919996854647

noncomputable section

/-- A002587: Largest prime factor of 2^n + 1.

Offset 0, canonical program `A002587.P15528568919996854647`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A002587 (n : ℕ) : ℤ :=
  A002587.P15528568919996854647.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A002587.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A003021.P3961287160256763782

`A006530(A062397(n))`
-/

namespace A003021.P3961287160256763782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A062397 n).toNat

end

end A003021.P3961287160256763782

noncomputable section

/-- A003021: Largest prime factor of 10^n + 1.

Offset 0, canonical program `A003021.P3961287160256763782`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A003021 (n : ℕ) : ℤ :=
  A003021.P3961287160256763782.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A003021.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A005420.P17976102140661701259

`A006530(A000225(n+2))`
-/

namespace A005420.P17976102140661701259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000225 (n + 2)).toNat

end

end A005420.P17976102140661701259

noncomputable section

/-- A005420: Largest prime factor of 2^n - 1.

Offset 2, canonical program `A005420.P17976102140661701259`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A005420 (n : ℕ) : ℤ :=
  A005420.P17976102140661701259.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A005420.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A005422.P10962967221910214508

`A006530(A002283(n+1))`
-/

namespace A005422.P10962967221910214508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A002283 (n + 1)).toNat

end

end A005422.P10962967221910214508

noncomputable section

/-- A005422: Largest prime factor of 10^n - 1.

Offset 1, canonical program `A005422.P10962967221910214508`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A005422 (n : ℕ) : ℤ :=
  A005422.P10962967221910214508.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A005422.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A023662.P10648617195950893557

`A167214(n+1)-A062020(n+1)`
-/

namespace A023662.P10648617195950893557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167214 (n + 1) - A062020 (n + 1)

end

end A023662.P10648617195950893557

noncomputable section

/-- A023662: Convolution of odd numbers and primes.

Offset 1, canonical program `A023662.P10648617195950893557`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062020, A167214, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A023662 (n : ℕ) : ℤ :=
  A023662.P10648617195950893557.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062020, A167214, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A023662.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A024448.P16753542507585520483

`∑[A000040(n+3)*A024447(n+2)]`
-/

namespace A024448.P16753542507585520483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 3) * A024447 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024448.P16753542507585520483

noncomputable section

/-- A024448: a(n) = 3rd elementary symmetric function of the first n+2 primes.

Offset 1, canonical program `A024448.P16753542507585520483`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A024448 (n : ℕ) : ℤ :=
  A024448.P16753542507585520483.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A024448.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024452.P18220208329630154241

`floor(A024447(n+2)/A007504(n+2))`
-/

namespace A024452.P18220208329630154241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024447 (n + 2) : ℚ) / (A007504 (n + 2) : ℚ)⌋

end

end A024452.P18220208329630154241

noncomputable section

/-- A024452: a(n) = [ (2nd elementary symmetric function of P(n))/(first elementary symmetric function of P(n)) ], where P(n) = {first n+1 primes}.

Offset 1, canonical program `A024452.P18220208329630154241`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A024452 (n : ℕ) : ℤ :=
  A024452.P18220208329630154241.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A024452.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024522.P10251569603433964511

`A024447(n+1)+∑[A000040(n+1)]`
-/

namespace A024522.P10251569603433964511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024447 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024522.P10251569603433964511

noncomputable section

/-- A024522: a(n) = 2nd elementary symmetric function of {1, prime(1), prime(2), ..., prime(n-1)}, where prime(0) = 1.

Offset 2, canonical program `A024522.P10251569603433964511`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024522 (n : ℕ) : ℤ :=
  A024522.P10251569603433964511.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024522.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024526.P216027257778899538

`∑[A005722(n+1)]+n*A024450(n+1)-A065595(n+1)`
-/

namespace A024526.P216027257778899538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005722 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n : ℤ) * A024450 (n + 1) - A065595 (n + 1))

end

end A024526.P216027257778899538

noncomputable section

/-- A024526: a(n) = Sum_{0 <= i < j <= n} (prime(j) - prime(i))^2, where prime(0) = 1.

Offset 1, canonical program `A024526.P216027257778899538`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024526 (n : ℕ) : ℤ :=
  A024526.P216027257778899538.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024526.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037225.P8815265586600777617

`A099958(n+1)-A190815(n+1)`
-/

namespace A037225.P8815265586600777617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099958 (n + 1) - A190815 (n + 1)

end

end A037225.P8815265586600777617

noncomputable section

/-- A037225: a(n) = phi(2n+1).

Offset 0, canonical program `A037225.P8815265586600777617`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037225 (n : ℕ) : ℤ :=
  A037225.P8815265586600777617.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037225.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045655.P11856846088611068955

`∑{d}[n, #*A038199(#)]+1`
-/

namespace A045655.P11856846088611068955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A038199 d + 1

end

end A045655.P11856846088611068955

noncomputable section

/-- A045655: Number of 2n-bead balanced binary strings, rotationally equivalent to reversed complement.

Offset 0, canonical program `A045655.P11856846088611068955`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A045655 (n : ℕ) : ℤ :=
  A045655.P11856846088611068955.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A045655.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049723.P10463802410882888049

`A048149(n)+A014200(A048147(n))`
-/

namespace A049723.P10463802410882888049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048149 n + A014200 (A048147 n).toNat

end

end A049723.P10463802410882888049

noncomputable section

/-- A049723: Array T read by diagonals; T(i,j)=number of lattice points (x,y) in closed right half-plane and circle with radius (0,0)-to-(i,j).

Offset 0, canonical program `A049723.P10463802410882888049`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A049723 (n : ℕ) : ℤ :=
  A049723.P10463802410882888049.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A049723.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054080.P10690886715511353127

`∑{d}[n+1, A001037(#-1)]`
-/

namespace A054080.P10690886715511353127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001037 (d - 1)

end

end A054080.P10690886715511353127

noncomputable section

/-- A054080: Inverse Moebius transform of A001037 (starting at term 0).

Offset 0, canonical program `A054080.P10690886715511353127`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A054080 (n : ℕ) : ℤ :=
  A054080.P10690886715511353127.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A054080.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056267.P9047364021855205352

`and(-2, A038199(n+1))`
-/

namespace A056267.P9047364021855205352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A038199 (n + 1))

end

end A056267.P9047364021855205352

noncomputable section

/-- A056267: Number of primitive (aperiodic) words of length n which contain exactly two different symbols.

Offset 1, canonical program `A056267.P9047364021855205352`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A056267 (n : ℕ) : ℤ :=
  A056267.P9047364021855205352.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A056267.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056917.P1491636041550893469

`lt[A249307(A000203(n+1)-A000010(n+1)), 2]+1`
-/

namespace A056917.P1491636041550893469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249307 (A000203 (n + 1) - A000010 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A056917.P1491636041550893469

noncomputable section

/-- A056917: Numbers n such that sigma(n)-phi(n) is a perfect square.

Offset 1, canonical program `A056917.P1491636041550893469`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A056917 (n : ℕ) : ℤ :=
  (A056917.P1491636041550893469.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A056917.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057921.P2394616819826387578

`eq[0, A145154(n)%A145154(n+1)]`
-/

namespace A057921.P2394616819826387578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A145154 n) (A145154 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A057921.P2394616819826387578

noncomputable section

/-- A057921: d(n+1) divides d(n), where d(n) is number of positive divisors of n.

Offset 0, canonical program `A057921.P2394616819826387578`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4385 terms. -/
def A057921 (n : ℕ) : ℤ :=
  (A057921.P2394616819826387578.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4385 terms. -/
def A057921.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A058766.P4843056571337141709

`abs(or(-2^n, A001037(n)))`
-/

namespace A058766.P4843056571337141709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor (-(2 ^ n : ℤ)) (A001037 n)|

end

end A058766.P4843056571337141709

noncomputable section

/-- A058766: a(0) = 1, a(1) = 2; for n>=2 a(n) is the number of degree-n reducible polynomials over GF(2).

Offset 0, canonical program `A058766.P4843056571337141709`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A058766 (n : ℕ) : ℤ :=
  A058766.P4843056571337141709.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A058766.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059413.P1689537449278519884

`A038199(n+1)+2*a(n-1)` with `a(0)=2`
-/

namespace A059413.P1689537449278519884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A038199 (n + 1) + 2 * a (n - 1)

end

end A059413.P1689537449278519884

noncomputable section

/-- A059413: Number of distinct languages accepted by unary DFA's with n states.

Offset 1, canonical program `A059413.P1689537449278519884`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 323 terms. -/
def A059413 (n : ℕ) : ℤ :=
  A059413.P1689537449278519884.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 323 terms. -/
def A059413.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059966.P5188141675617584754

`A001037((n+1)%(2*n+1))`
-/

namespace A059966.P5188141675617584754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001037 ((n + 1) % (2 * n + 1))

end

end A059966.P5188141675617584754

noncomputable section

/-- A059966: a(n) = (1/n) * Sum_{ d divides n } mu(n/d) * (2^d - 1).

Offset 1, canonical program `A059966.P5188141675617584754`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A059966 (n : ℕ) : ℤ :=
  A059966.P5188141675617584754.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A059966.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062692.P12181960848858303464

`a(n-1)+A038199(n+1)/(n+1)` with `a(0)=2`
-/

namespace A062692.P12181960848858303464
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (A038199 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A062692.P12181960848858303464

noncomputable section

/-- A062692: Number of irreducible polynomials over F_2 of degree at most n.

Offset 1, canonical program `A062692.P12181960848858303464`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A062692 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A062692.P12181960848858303464.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A062692.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066039.P1848661495712138601

`A202301(n+1)-A001223(A061568(n+1))`
-/

namespace A066039.P1848661495712138601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202301 (n + 1) - A001223 (A061568 (n + 1)).toNat

end

end A066039.P1848661495712138601

noncomputable section

/-- A066039: Largest prime less than or equal to the sum of first n primes (A007504).

Offset 1, canonical program `A066039.P1848661495712138601`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 617 terms. -/
def A066039 (n : ℕ) : ℤ :=
  A066039.P1848661495712138601.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 617 terms. -/
def A066039.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066449.P8482402725896442215

`C(n+1, A089929(2*(n+1)))`
-/

namespace A066449.P8482402725896442215
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A089929 (2 * (n + 1))).toNat

end

end A066449.P8482402725896442215

noncomputable section

/-- A066449: Binomial(n, phi(n)), where phi(n) is the Euler totient function.

Offset 1, canonical program `A066449.P8482402725896442215`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A066449 (n : ℕ) : ℤ :=
  (A066449.P8482402725896442215.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A066449.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066613.P5367228153376290154

`eq[A008574(A051801(n)), A145154(n)]`
-/

namespace A066613.P5367228153376290154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A051801 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145154 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A066613.P5367228153376290154

noncomputable section

/-- A066613: Numbers k such that the product of the nonzero digits of k equals the number of divisors of k.

Offset 1, canonical program `A066613.P5367228153376290154`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A066613 (n : ℕ) : ℤ :=
  (A066613.P5367228153376290154.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A066613.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068211.P6725276816017119652

`A006530(A000010(n+3))`
-/

namespace A068211.P6725276816017119652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000010 (n + 3)).toNat

end

end A068211.P6725276816017119652

noncomputable section

/-- A068211: Largest prime factor of Euler totient function phi(n).

Offset 3, canonical program `A068211.P6725276816017119652`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A006530, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A068211 (n : ℕ) : ℤ :=
  A068211.P6725276816017119652.a (n - 3)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A006530, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A068211.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A070238.P16120210470517707505

`A057428(n)+and(2, A038199(n+1))`
-/

namespace A070238.P16120210470517707505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + Int.land 2 (A038199 (n + 1))

end

end A070238.P16120210470517707505

noncomputable section

/-- A070238: Sign of core(n)-phi(n) where core(n) is the squarefree part of n and phi the Euler totient function.

Offset 1, canonical program `A070238.P16120210470517707505`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A070238 (n : ℕ) : ℤ :=
  A070238.P16120210470517707505.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A070238.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070777.P2681575224791587698

`A000010(A006530(n+1))`
-/

namespace A070777.P2681575224791587698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A006530 (n + 1)).toNat

end

end A070777.P2681575224791587698

noncomputable section

/-- A070777: a(1) = 1; a(n) = (largest prime factor of n) - 1.

Offset 1, canonical program `A070777.P2681575224791587698`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A006530, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A070777 (n : ℕ) : ℤ :=
  A070777.P2681575224791587698.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A006530, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A070777.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A070812.P10546468908593193003

`A000010(A006530(n+3))-A006530(A000010(n+3))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A070812.P10546468908593193003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A006530 (n + 3)).toNat - A006530 (A000010 (n + 3)).toNat

end

end A070812.P10546468908593193003

noncomputable section

/-- A070812: a(n) = phi(gpf(n)) - gpf(phi(n)) = A000010(A006530(n)) - A006530(A000010(n)).

Offset 3, canonical program `A070812.P10546468908593193003`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A006530, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A070812 (n : ℕ) : ℤ :=
  A070812.P10546468908593193003.a (n - 3)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A006530, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A070812.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A073812.P9999802940170027054

`∑{d}[A009223(n+1), A323166(A006530(#))]`
-/

namespace A073812.P9999802940170027054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A323166 (A006530 d).toNat

end

end A073812.P9999802940170027054

noncomputable section

/-- A073812: Number of common divisors of sigma(n) and phi(n).

Offset 1, canonical program `A073812.P9999802940170027054`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073812 (n : ℕ) : ℤ :=
  A073812.P9999802940170027054.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073812.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076245.P14473671880369075709

`eq[1, gcd(n, A001221(A265575(a(n-1)+1)))]` with `a(0)=0`
-/

namespace A076245.P14473671880369075709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  Int.gcd (n : ℤ) (A001221 (A265575 (f2 (n - 1) + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A076245.P14473671880369075709

noncomputable section

/-- A076245: Positions of records in A051547.

Offset 1, canonical program `A076245.P14473671880369075709`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 651 terms. -/
def A076245 (n : ℕ) : ℤ :=
  (A076245.P14473671880369075709.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 651 terms. -/
def A076245.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A077806.P828100804955235734

`A006530(A007088(n+1))`
-/

namespace A077806.P828100804955235734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A007088 (n + 1)).toNat

end

end A077806.P828100804955235734

noncomputable section

/-- A077806: Greatest prime factor of numbers containing in their decimal representation only the digits 0 and 1.

Offset 1, canonical program `A077806.P828100804955235734`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A007088, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A077806 (n : ℕ) : ℤ :=
  A077806.P828100804955235734.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A007088, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A077806.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A082064.P2877609420070187158

`A006530(A009223(n+1))`
-/

namespace A082064.P2877609420070187158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A009223 (n + 1)).toNat

end

end A082064.P2877609420070187158

noncomputable section

/-- A082064: Greatest common prime-divisor of phi(n) and sigma(n) = A000203(n); a(n)=1 if no common prime-divisor exists.

Offset 1, canonical program `A082064.P2877609420070187158`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A009223, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A082064 (n : ℕ) : ℤ :=
  A082064.P2877609420070187158.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A009223, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A082064.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A082550.P6841504247689330333

`A063776(n+1)-1`
-/

namespace A082550.P6841504247689330333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063776 (n + 1) - 1

end

end A082550.P6841504247689330333

noncomputable section

/-- A082550: Number of sets of distinct positive integers whose arithmetic mean is an integer, the largest integer of the set being n.

Offset 1, canonical program `A082550.P6841504247689330333`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063776, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A082550 (n : ℕ) : ℤ :=
  A082550.P6841504247689330333.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063776, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A082550.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A083542.P13241374269369926002

`A058515(n+1)*A066813(n+1)`
-/

namespace A083542.P13241374269369926002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058515 (n + 1) * A066813 (n + 1)

end

end A083542.P13241374269369926002

noncomputable section

/-- A083542: a(n) = phi(n+1)*phi(n), product of totients of two consecutive integers.

Offset 1, canonical program `A083542.P13241374269369926002`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A058515, A066813, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A083542 (n : ℕ) : ℤ :=
  A083542.P13241374269369926002.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A058515, A066813, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A083542.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A083900.P8267360639211876912

`A083899(n+1)+A083892(n+1)`
-/

namespace A083900.P8267360639211876912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083899 (n + 1) + A083892 (n + 1)

end

end A083900.P8267360639211876912

noncomputable section

/-- A083900: Number of divisors of n with largest digit <= 5 (base 10).

Offset 1, canonical program `A083900.P8267360639211876912`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083892, A083899, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A083900 (n : ℕ) : ℤ :=
  A083900.P8267360639211876912.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083892, A083899, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A083900.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A086296.P4819654630456101032

`A000010(lt[A006530(n+1), 8]+1)`
-/

namespace A086296.P4819654630456101032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A086296.P4819654630456101032

noncomputable section

/-- A086296: Euler's totient of 7-smooth numbers.

Offset 1, canonical program `A086296.P4819654630456101032`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 566 terms. -/
def A086296 (n : ℕ) : ℤ :=
  A086296.P4819654630456101032.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 566 terms. -/
def A086296.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096010.P4903496547079153273

`A063776(n+1)/2+1`
-/

namespace A096010.P4903496547079153273
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063776 (n + 1) : ℚ) / 2 + 1

end

end A096010.P4903496547079153273

noncomputable section

/-- A096010: Number of different cycles computed with the generalized 3x+1 problem using C=2, B=Cn+m, A=C^m.

Offset 1, canonical program `A096010.P4903496547079153273`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A096010 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A096010.P4903496547079153273.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A096010.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100447.P15009877531804378152

`A063776(Δ[n²])`
-/

namespace A100447.P15009877531804378152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063776 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A100447.P15009877531804378152

noncomputable section

/-- A100447: Bisection of A000031.

Offset 0, canonical program `A100447.P15009877531804378152`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A100447 (n : ℕ) : ℤ :=
  A100447.P15009877531804378152.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A100447.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109511.P175732434807543170

`A000225(n+1)-A085945(n+1)`
-/

namespace A109511.P175732434807543170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) - A085945 (n + 1)

end

end A109511.P175732434807543170

noncomputable section

/-- A109511: Number of subsets of the first n numbers having a common divisor greater than 1.

Offset 1, canonical program `A109511.P175732434807543170`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A085945, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A109511 (n : ℕ) : ℤ :=
  A109511.P175732434807543170.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A085945, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A109511.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A109724.P13324119024672289363

`∑[A109725(n)]-A109725(n)`
-/

namespace A109724.P13324119024672289363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A109725 n

end

end A109724.P13324119024672289363

noncomputable section

/-- A109724: Sum of the first n^2 primes.

Offset 0, canonical program `A109724.P13324119024672289363`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109724 (n : ℕ) : ℤ :=
  A109724.P13324119024672289363.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109724.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115299.P3852664111616169034

`∑{digits}[A073730(n+1), #]`
-/

namespace A115299.P3852664111616169034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073730 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A115299.P3852664111616169034

noncomputable section

/-- A115299: Greatest digit of n + least digit of n. Different from A088133.

Offset 1, canonical program `A115299.P3852664111616169034`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115299 (n : ℕ) : ℤ :=
  (A115299.P3852664111616169034.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115299.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115945.P7684042128696424024

`eq[0, A115944(n)]`
-/

namespace A115945.P7684042128696424024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115944 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A115945.P7684042128696424024

noncomputable section

/-- A115945: Numbers that cannot be written as a sum of distinct factorials.

Offset 1, canonical program `A115945.P7684042128696424024`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9873 terms. -/
def A115945 (n : ℕ) : ℤ :=
  (A115945.P7684042128696424024.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9873 terms. -/
def A115945.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119917.P6613985970363786226

`∑[A038199(n+1)]`
-/

namespace A119917.P6613985970363786226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038199 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119917.P6613985970363786226

noncomputable section

/-- A119917: Number of rationals in [0, 1) consisting just of repeating bits of period at most n.

Offset 1, canonical program `A119917.P6613985970363786226`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A119917 (n : ℕ) : ℤ :=
  A119917.P6613985970363786226.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A119917.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119920.P13618042896974742524

`2^n*A038199(n+1)`
-/

namespace A119920.P13618042896974742524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A038199 (n + 1)

end

end A119920.P13618042896974742524

noncomputable section

/-- A119920: Number of rationals in [0, 1) having exactly n preperiodic bits, then exactly n periodic bits.

Offset 1, canonical program `A119920.P13618042896974742524`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A119920 (n : ℕ) : ℤ :=
  A119920.P13618042896974742524.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A119920.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124478.P5037515413752499409

`ceil(A240568(n+1)/(n+1))`
-/

namespace A124478.P5037515413752499409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A240568 (n + 1) : ℚ) / (n + 1 : ℚ)⌉

end

end A124478.P5037515413752499409

noncomputable section

/-- A124478: a(n) = prime(n) - floor((2/n)*Sum_{i=1..n} prime(i)).

Offset 1, canonical program `A124478.P5037515413752499409`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124478 (n : ℕ) : ℤ :=
  A124478.P5037515413752499409.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124478.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131203.P3578267669090281606

`A001037(2*n+1)/2`
-/

namespace A131203.P3578267669090281606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001037 (2 * n + 1) : ℚ) / 2

end

end A131203.P3578267669090281606

noncomputable section

/-- A131203: Number of cycles of length n under the mapping x -> x^2-2 modulo Fermat prime 2^(2^m)+1, where m is any fixed integer such that n divides 2^m-1.

Offset 0, canonical program `A131203.P3578267669090281606`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001037, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A131203 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A131203.P3578267669090281606.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001037, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A131203.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A132137.P15193229265496179695

`Δ[A095815(a(n-1))]` with `a(0)=0, a(1)=1`
-/

namespace A132137.P15193229265496179695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  A095815 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A132137.P15193229265496179695

noncomputable section

/-- A132137: a(1)=1, a(n)=maximal digit of sum a(1)+...+a(n-1).

Offset 1, canonical program `A132137.P15193229265496179695`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1436 terms. -/
def A132137 (n : ℕ) : ℤ :=
  A132137.P15193229265496179695.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1436 terms. -/
def A132137.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133659.P14094302548948468611

`∩[A034962(n+1), A390613(n+1)]`
-/

namespace A133659.P14094302548948468611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034962 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390613 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133659.P14094302548948468611

noncomputable section

/-- A133659: Primes that are the sum of three consecutive primes as well as the sum of three consecutive composite numbers.

Offset 1, canonical program `A133659.P14094302548948468611`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1521 terms. -/
def A133659 (n : ℕ) : ℤ :=
  (A133659.P14094302548948468611.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1521 terms. -/
def A133659.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133670.P186027561368392954

`∑[A063776(A233583(n+1))/2]`
-/

namespace A133670.P186027561368392954
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063776 (A233583 (n + 1)).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133670.P186027561368392954

noncomputable section

/-- A133670: Partial sums of A000016.

Offset 0, canonical program `A133670.P186027561368392954`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A133670 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A133670.P186027561368392954.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A133670.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134548.P12181077314065941392

`Δ[A095815(a(n-1))+A036453(n+1)]` with `a(0)=0, a(1)=1`
-/

namespace A134548.P12181077314065941392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  A095815 (f1 (n - 1)).toNat + A036453 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134548.P12181077314065941392

noncomputable section

/-- A134548: a(1)=1, a(n) = 2 + maximal digit of Sum_{j=1..n-1} a(j).

Offset 1, canonical program `A134548.P12181077314065941392`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1051 terms. -/
def A134548 (n : ℕ) : ℤ :=
  A134548.P12181077314065941392.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1051 terms. -/
def A134548.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136486.P13738774024279800787

`4*A136484(n)`
-/

namespace A136486.P13738774024279800787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A136484 n

end

end A136486.P13738774024279800787

noncomputable section

/-- A136486: Number of unit square lattice cells enclosed by origin centered circle of diameter 2n+1.

Offset 0, canonical program `A136486.P13738774024279800787`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A136484, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A136486 (n : ℕ) : ℤ :=
  A136486.P13738774024279800787.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A136484, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A136486.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A136515.P2899484087255744926

`2*A136484(n)`
-/

namespace A136515.P2899484087255744926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A136484 n

end

end A136515.P2899484087255744926

noncomputable section

/-- A136515: Number of unit square lattice cells inside half-plane (two adjacent quadrants) of origin centered circle of diameter 2n+1.

Offset 0, canonical program `A136515.P2899484087255744926`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A136484, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A136515 (n : ℕ) : ℤ :=
  A136515.P2899484087255744926.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A136484, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A136515.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A152010.P5083475496821367649

`A007953(A127335(n+1))`
-/

namespace A152010.P5083475496821367649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A127335 (n + 1)).toNat

end

end A152010.P5083475496821367649

noncomputable section

/-- A152010: Sum of digits of A127335(n).

Offset 1, canonical program `A152010.P5083475496821367649`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, A127335, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A152010 (n : ℕ) : ℤ :=
  A152010.P5083475496821367649.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, A127335, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A152010.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A157158.P9173003013204170091

`p?[A072543(n+1)]`
-/

namespace A157158.P9173003013204170091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A157158.P9173003013204170091

noncomputable section

/-- A157158: Primes where the first digit is equal to the largest digit.

Offset 1, canonical program `A157158.P9173003013204170091`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 893 terms. -/
def A157158 (n : ℕ) : ℤ :=
  A157158.P9173003013204170091.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 893 terms. -/
def A157158.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161689.P3754310940555733171

`∩[A151740(n+1), A166039(n+1)]`
-/

namespace A161689.P3754310940555733171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151740 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161689.P3754310940555733171

noncomputable section

/-- A161689: Intersection of A151740 and A151741.

Offset 1, canonical program `A161689.P3754310940555733171`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A161689 (n : ℕ) : ℤ :=
  (A161689.P3754310940555733171.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A161689.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161778.P9817928679836335703

`A163116(A161671(n+1))`
-/

namespace A161778.P9817928679836335703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163116 (A161671 (n + 1)).toNat

end

end A161778.P9817928679836335703

noncomputable section

/-- A161778: The A161671(n)-th partial sum of A161671.

Offset 1, canonical program `A161778.P9817928679836335703`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A161671, A163116, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A161778 (n : ℕ) : ℤ :=
  A161778.P9817928679836335703.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A161671, A163116, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A161778.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A173875.P11093925808872545403

`p?[2*A158526(n+1)+1]`
-/

namespace A173875.P11093925808872545403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A158526 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A173875.P11093925808872545403

noncomputable section

/-- A173875: Primes p of the form a^2-b^2 and p*a-b is also prime (with b=prime and a=b+1).

Offset 1, canonical program `A173875.P11093925808872545403`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 259 terms. -/
def A173875 (n : ℕ) : ℤ :=
  A173875.P11093925808872545403.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 259 terms. -/
def A173875.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A000161.P12733227588245460575

`ceil((A063725(n)+char[(n+1)²]+char[n²])/2)`
-/

namespace A000161.P12733227588245460575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A063725 n + (((if ∃ j, f1 j = n then 1 else 0) + (if ∃ j, f2 j = n then 1 else 0) : ℕ) : ℤ) : ℚ) / 2⌉

end

end A000161.P12733227588245460575

noncomputable section

/-- A000161: Number of partitions of n into 2 squares.

Offset 0, canonical program `A000161.P12733227588245460575`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000161 (n : ℕ) : ℤ :=
  A000161.P12733227588245460575.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000161.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A015641.P988703046572257947

`A015640(n+2)-A000332(n+1)`
-/

namespace A015641.P988703046572257947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015640 (n + 2) - A000332 (n + 1)

end

end A015641.P988703046572257947

noncomputable section

/-- A015641: Number of 5-tuples of different integers from [ 2,n ] with no global factor.

Offset 2, canonical program `A015641.P988703046572257947`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 350 terms. -/
def A015641 (n : ℕ) : ℤ :=
  A015641.P988703046572257947.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 350 terms. -/
def A015641.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025284.P7403956482281687192

`eq[1, ceil(A063725(n)/2)]`
-/

namespace A025284.P7403956482281687192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A063725 n : ℚ) / 2⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025284.P7403956482281687192

noncomputable section

/-- A025284: Numbers that are the sum of 2 nonzero squares in exactly 1 way.

Offset 1, canonical program `A025284.P7403956482281687192`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1724 terms. -/
def A025284 (n : ℕ) : ℤ :=
  (A025284.P7403956482281687192.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1724 terms. -/
def A025284.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025426.P9414248645359162695

`ceil(A063725(n)/2)`
-/

namespace A025426.P9414248645359162695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A063725 n : ℚ) / 2⌉

end

end A025426.P9414248645359162695

noncomputable section

/-- A025426: Number of partitions of n into 2 nonzero squares.

Offset 0, canonical program `A025426.P9414248645359162695`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025426 (n : ℕ) : ℤ :=
  A025426.P9414248645359162695.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025426.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026818.P14528478807317566553

`eq[2, A000005(A073730(n+1))]+1`
-/

namespace A026818.P14528478807317566553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A073730 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A026818.P14528478807317566553

noncomputable section

/-- A026818: Largest digit of n concatenated with smallest digit of n is prime.

Offset 1, canonical program `A026818.P14528478807317566553`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1708 terms. -/
def A026818 (n : ℕ) : ℤ :=
  (A026818.P14528478807317566553.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1708 terms. -/
def A026818.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033715.P6517919621530533375

`A028572(4*n)`
-/

namespace A033715.P6517919621530533375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028572 (4 * n)

end

end A033715.P6517919621530533375

noncomputable section

/-- A033715: Number of integer solutions (x, y) to the equation x^2 + 2y^2 = n.

Offset 0, canonical program `A033715.P6517919621530533375`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A028572, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A033715 (n : ℕ) : ℤ :=
  A033715.P6517919621530533375.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A028572, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A033715.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A035614.P1531182426394583162

`A035612(n+1)-1`
-/

namespace A035614.P1531182426394583162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035612 (n + 1) - 1

end

end A035614.P1531182426394583162

noncomputable section

/-- A035614: Horizontal para-Fibonacci sequence: says which column of Wythoff array (starting column count at 0) contains n+1.

Offset 0, canonical program `A035614.P1531182426394583162`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035614 (n : ℕ) : ℤ :=
  A035614.P1531182426394583162.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035614.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036707.P3603739173683534618

`2*A036711(n)+n+1`
-/

namespace A036707.P3603739173683534618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A036711 n + (n + 1 : ℤ)

end

end A036707.P3603739173683534618

noncomputable section

/-- A036707: a(n)=number of Gaussian integers z=a+bi satisfying |z|<=n+1/2, b>=0.

Offset 0, canonical program `A036707.P3603739173683534618`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8116 terms. -/
def A036707 (n : ℕ) : ℤ :=
  A036707.P3603739173683534618.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8116 terms. -/
def A036707.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036709.P8581218697881049908

`A136484(n)+Δ[n²]`
-/

namespace A036709.P8581218697881049908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136484 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A036709.P8581218697881049908

noncomputable section

/-- A036709: a(n)=number of Gaussian integers z=a+bi satisfying |z|<=n+1/2, a>=0, b>=0.

Offset 0, canonical program `A036709.P8581218697881049908`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8580 terms. -/
def A036709 (n : ℕ) : ℤ :=
  A036709.P8581218697881049908.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8580 terms. -/
def A036709.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037897.P13729740448367622146

`A190592(n)-A290825(n)`
-/

namespace A037897.P13729740448367622146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190592 n - A290825 n

end

end A037897.P13729740448367622146

noncomputable section

/-- A037897: a(n) = (Greatest base 3 digit of n) - (least base 3 digit of n).

Offset 0, canonical program `A037897.P13729740448367622146`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A190592, A290825, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A037897 (n : ℕ) : ℤ :=
  A037897.P13729740448367622146.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A190592, A290825, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A037897.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A040115.P18270072698268688053

`A037904(A000007(n²)+n)`
-/

namespace A040115.P18270072698268688053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037904 (A000007 (n ^ 2) + (n : ℤ)).toNat

end

end A040115.P18270072698268688053

noncomputable section

/-- A040115: Concatenate absolute values of differences between adjacent digits of n.

Offset 0, canonical program `A040115.P18270072698268688053`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A040115 (n : ℕ) : ℤ :=
  A040115.P18270072698268688053.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A040115.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045188.P6201253518571770422

`∩[A023721(n+1), A023734(n+1)]`
-/

namespace A045188.P6201253518571770422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023721 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023734 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045188.P6201253518571770422

noncomputable section

/-- A045188: Numbers whose base-5 representation contains no 0's and exactly one 3.

Offset 1, canonical program `A045188.P6201253518571770422`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2815 terms. -/
def A045188 (n : ℕ) : ℤ :=
  (A045188.P6201253518571770422.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2815 terms. -/
def A045188.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045196.P16747927741256463631

`∩[A023723(n+1), A023734(n+1)]`
-/

namespace A045196.P16747927741256463631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023734 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045196.P16747927741256463631

noncomputable section

/-- A045196: Numbers whose base-5 representation contains exactly two 0's and one 3.

Offset 1, canonical program `A045196.P16747927741256463631`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2341 terms. -/
def A045196 (n : ℕ) : ℤ :=
  (A045196.P16747927741256463631.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2341 terms. -/
def A045196.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045267.P5788742977189700651

`∩[A023730(n+1), A023734(n+1)]`
-/

namespace A045267.P5788742977189700651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023730 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023734 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045267.P5788742977189700651

noncomputable section

/-- A045267: Numbers whose base-5 representation contains exactly one 2 and one 3.

Offset 1, canonical program `A045267.P5788742977189700651`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3921 terms. -/
def A045267 (n : ℕ) : ℤ :=
  (A045267.P5788742977189700651.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3921 terms. -/
def A045267.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045271.P15070719441981263181

`∩[A023731(n+1), A023734(n+1)]`
-/

namespace A045271.P15070719441981263181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023734 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045271.P15070719441981263181

noncomputable section

/-- A045271: Numbers whose base-5 representation contains exactly two 2's and one 3.

Offset 1, canonical program `A045271.P15070719441981263181`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2701 terms. -/
def A045271 (n : ℕ) : ℤ :=
  (A045271.P15070719441981263181.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2701 terms. -/
def A045271.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045297.P179767513394675842

`∩[A023734(n+1), A023738(n+1)]`
-/

namespace A045297.P179767513394675842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023734 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023738 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045297.P179767513394675842

noncomputable section

/-- A045297: Numbers whose base-5 representation contains exactly one 3 and one 4.

Offset 1, canonical program `A045297.P179767513394675842`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4056 terms. -/
def A045297 (n : ℕ) : ℤ :=
  (A045297.P179767513394675842.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4056 terms. -/
def A045297.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045298.P17596791945294144147

`∩[A023734(n+1), A023739(n+1)]`
-/

namespace A045298.P17596791945294144147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023734 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023739 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045298.P17596791945294144147

noncomputable section

/-- A045298: Numbers having one 3 and two 4's in base 5.

Offset 1, canonical program `A045298.P17596791945294144147`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2431 terms. -/
def A045298 (n : ℕ) : ℤ :=
  (A045298.P17596791945294144147.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2431 terms. -/
def A045298.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049448.P1299469161137968042

`A007306(n)+A007305(n)`
-/

namespace A049448.P1299469161137968042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 n + A007305 n

end

end A049448.P1299469161137968042

noncomputable section

/-- A049448: Sum of numerator and denominator of fractions in Farey tree A007305/A007306.

Offset 0, canonical program `A049448.P1299469161137968042`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049448 (n : ℕ) : ℤ :=
  A049448.P1299469161137968042.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049448.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049449.P5536593259919512893

`A007305(n)*A007306(n)`
-/

namespace A049449.P5536593259919512893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007305 n * A007306 n

end

end A049449.P5536593259919512893

noncomputable section

/-- A049449: Product of numerator and denominator of fractions in Farey tree A007305/A007306.

Offset 0, canonical program `A049449.P5536593259919512893`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049449 (n : ℕ) : ℤ :=
  A049449.P5536593259919512893.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049449.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049732.P11638542157924361709

`A028310(n)+ceil(A049744(n)/2)`
-/

namespace A049732.P11638542157924361709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n + ⌈(A049744 n : ℚ) / 2⌉

end

end A049732.P11638542157924361709

noncomputable section

/-- A049732: a(n)=T(n,1), array T as in A049723.

Offset 0, canonical program `A049732.P11638542157924361709`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049732 (n : ℕ) : ℤ :=
  A049732.P11638542157924361709.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049732.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050871.P14178361783424697463

`2*A050872(n)`
-/

namespace A050871.P14178361783424697463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050872 n

end

end A050871.P14178361783424697463

noncomputable section

/-- A050871: Row sums of even numbered rows of array T in A050870 (periodic binary words).

Offset 0, canonical program `A050871.P14178361783424697463`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A050871 (n : ℕ) : ℤ :=
  A050871.P14178361783424697463.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A050871.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053149.P4125189005957149122

`(n+1)*A048798(n+1)`
-/

namespace A053149.P4125189005957149122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A048798 (n + 1)

end

end A053149.P4125189005957149122

noncomputable section

/-- A053149: Smallest cube divisible by n.

Offset 1, canonical program `A053149.P4125189005957149122`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048798, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053149 (n : ℕ) : ℤ :=
  A053149.P4125189005957149122.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048798, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053149.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A054522.P13001746357644342535

`A127093(n+1)-A141846(n+1)`
-/

namespace A054522.P13001746357644342535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 1) - A141846 (n + 1)

end

end A054522.P13001746357644342535

noncomputable section

/-- A054522: Triangle T(n,k): T(n,k) = phi(k) if k divides n, T(n,k)=0 otherwise (n >= 1, 1<=k<=n). T(n,k) = number of elements of order k in cyclic group of order n.

Offset 1, canonical program `A054522.P13001746357644342535`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054522 (n : ℕ) : ℤ :=
  A054522.P13001746357644342535.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054522.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055034.P626743345724303552

`A065033(n)-A219839(n+1)`
-/

namespace A055034.P626743345724303552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n - A219839 (n + 1)

end

end A055034.P626743345724303552

noncomputable section

/-- A055034: a(1) = 1, a(n) = phi(2*n)/2 for n > 1.

Offset 1, canonical program `A055034.P626743345724303552`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055034 (n : ℕ) : ℤ :=
  A055034.P626743345724303552.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055034.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056551.P2444650009454942186

`A048798(n+1)*A050985(n+1)`
-/

namespace A056551.P2444650009454942186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048798 (n + 1) * A050985 (n + 1)

end

end A056551.P2444650009454942186

noncomputable section

/-- A056551: Smallest cube divisible by n divided by largest cube which divides n.

Offset 1, canonical program `A056551.P2444650009454942186`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048798, A050985, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A056551 (n : ℕ) : ℤ :=
  A056551.P2444650009454942186.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048798, A050985, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A056551.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A056628.P2818062882459124441

`A056627(n+1)²`
-/

namespace A056628.P2818062882459124441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056627 (n + 1) ^ 2

end

end A056628.P2818062882459124441

noncomputable section

/-- A056628: a(n) = A056623(n!).

Offset 1, canonical program `A056628.P2818062882459124441`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056627, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056628 (n : ℕ) : ℤ :=
  A056628.P2818062882459124441.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056627, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056628.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A056630.P5612160869139664206

`A055993(n+1)-A034444(A056627(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A056630.P5612160869139664206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055993 (n + 1) - A034444 (A056627 (n + 1)).toNat

end

end A056630.P5612160869139664206

noncomputable section

/-- A056630: a(n) = A055993(n) - A034444(A056627(n)).

Offset 1, canonical program `A056630.P5612160869139664206`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034444, A055993, A056627, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A056630 (n : ℕ) : ℤ :=
  A056630.P5612160869139664206.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034444, A055993, A056627, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A056630.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A056670.P13113877994164587281

`A006530(A056057(n+1))`
-/

namespace A056670.P13113877994164587281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A056057 (n + 1)).toNat

end

end A056670.P13113877994164587281

noncomputable section

/-- A056670: Largest non-unitary prime factor of A001405(n) = binomial(n, floor(n/2)), or 1 if no such prime exists.

Offset 1, canonical program `A056670.P13113877994164587281`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A056057, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A056670 (n : ℕ) : ℤ :=
  A056670.P13113877994164587281.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A056057, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A056670.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A057128.P11179917693389423228

`eq[1, A081320(A002472(n+1))]+1`
-/

namespace A057128.P11179917693389423228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081320 (A002472 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A057128.P11179917693389423228

noncomputable section

/-- A057128: Numbers n such that -3 is a square mod n.

Offset 1, canonical program `A057128.P11179917693389423228`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2386 terms. -/
def A057128 (n : ℕ) : ℤ :=
  (A057128.P11179917693389423228.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2386 terms. -/
def A057128.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057432.P5177693450754276207

`A007305(A038572(n)+1)`
-/

namespace A057432.P5177693450754276207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007305 (A038572 n + 1).toNat

end

end A057432.P5177693450754276207

noncomputable section

/-- A057432: Obtained by reading first the numerator then the denominator of fractions in left-hand half of Stern-Brocot tree (A007305/A007306).

Offset 0, canonical program `A057432.P5177693450754276207`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A057432 (n : ℕ) : ℤ :=
  A057432.P5177693450754276207.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A057432.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A058501.P405273937736052748

`p?[A010051(A057023(n+1))+A000040(n+1)]`
-/

namespace A058501.P405273937736052748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A057023 (n + 1)).toNat + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A058501.P405273937736052748

noncomputable section

/-- A058501: Primes p such that largest odd factor of p-1 is not a prime (i.e., is composite or 1).

Offset 1, canonical program `A058501.P405273937736052748`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8485 terms. -/
def A058501 (n : ℕ) : ℤ :=
  A058501.P405273937736052748.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8485 terms. -/
def A058501.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062198.P1219448793751360641

`∑[eq[2, A318322(n+1)]+1]`
-/

namespace A062198.P1219448793751360641
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318322 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062198.P1219448793751360641

noncomputable section

/-- A062198: Sum of first n semiprimes.

Offset 1, canonical program `A062198.P1219448793751360641`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062198 (n : ℕ) : ℤ :=
  (A062198.P1219448793751360641.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062198.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066694.P293942461781957692

`eq[1, A295308(n+1)]+1`
-/

namespace A066694.P293942461781957692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295308 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A066694.P293942461781957692

noncomputable section

/-- A066694: Numbers k such that phi(sigma(k)) > k.

Offset 1, canonical program `A066694.P293942461781957692`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 804 terms. -/
def A066694 (n : ℕ) : ℤ :=
  (A066694.P293942461781957692.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 804 terms. -/
def A066694.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071017.P7489268746479520871

`∑{d}[n+1, A007427(#)*A071018((n+1)/#-1)]`
-/

namespace A071017.P7489268746479520871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A071018 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A071017.P7489268746479520871

noncomputable section

/-- A071017: Moebius transform of A002487.

Offset 0, canonical program `A071017.P7489268746479520871`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071017 (n : ℕ) : ℤ :=
  A071017.P7489268746479520871.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071017.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071766.P4720922600265952592

`A007305(A233279(n)+1)`
-/

namespace A071766.P4720922600265952592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007305 (A233279 n + 1).toNat

end

end A071766.P4720922600265952592

noncomputable section

/-- A071766: Denominator of the continued fraction expansion whose terms are the first-order differences of exponents in the binary representation of 4n, with the exponents of 2 being listed in descending order.

Offset 0, canonical program `A071766.P4720922600265952592`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9216 terms. -/
def A071766 (n : ℕ) : ℤ :=
  A071766.P4720922600265952592.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9216 terms. -/
def A071766.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071854.P11151984717235714317

`A067434(n+1)-A000720(n+1)`
-/

namespace A071854.P11151984717235714317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067434 (n + 1) - A000720 (n + 1)

end

end A071854.P11151984717235714317

noncomputable section

/-- A071854: a(n) = (number of distinct prime factors in C(2n,n)) - pi(n).

Offset 1, canonical program `A071854.P11151984717235714317`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067434, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A071854 (n : ℕ) : ℤ :=
  A071854.P11151984717235714317.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067434, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A071854.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A072459.P15882184568483572984

`A006530(A005277(n+1))`
-/

namespace A072459.P15882184568483572984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A005277 (n + 1)).toNat

end

end A072459.P15882184568483572984

noncomputable section

/-- A072459: Largest prime divisor of even nontotients.

Offset 1, canonical program `A072459.P15882184568483572984`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005277, A006530, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A072459 (n : ℕ) : ℤ :=
  A072459.P15882184568483572984.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005277, A006530, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A072459.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A079698.P14525829100009091042

`record[A079697(n+1)]`
-/

namespace A079698.P14525829100009091042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079697 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079698.P14525829100009091042

noncomputable section

/-- A079698: Values of the odd part of A005277(n).

Offset 0, canonical program `A079698.P14525829100009091042`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6891 terms. -/
def A079698 (n : ℕ) : ℤ :=
  A079698.P14525829100009091042.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6891 terms. -/
def A079698.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081387.P309949724392534057

`A067434(n+1)-A081386(n+1)`
-/

namespace A081387.P309949724392534057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067434 (n + 1) - A081386 (n + 1)

end

end A081387.P309949724392534057

noncomputable section

/-- A081387: Number of non-unitary prime divisors of central binomial coefficient, C(2n,n) = A000984(n), i.e., number of prime factors in C(2n,n) whose exponent is greater than one.

Offset 1, canonical program `A081387.P309949724392534057`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067434, A081386, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A081387 (n : ℕ) : ℤ :=
  A081387.P309949724392534057.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067434, A081386, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A081387.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A082061.P10175946465592589706

`A006530(A009195(n+1))`
-/

namespace A082061.P10175946465592589706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A009195 (n + 1)).toNat

end

end A082061.P10175946465592589706

noncomputable section

/-- A082061: Greatest common prime divisor of n and phi(n)=A000010(n); a(n)=1 if no common prime divisor exists.

Offset 1, canonical program `A082061.P10175946465592589706`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A009195, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A082061 (n : ℕ) : ℤ :=
  A082061.P10175946465592589706.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A009195, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A082061.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A083913.P9028729068411083889

`A000005(n+1)-A083910(n+1)-A083911(n+1)-A083912(n+1)-A083914(n+1)-A083915(n+1)-A083916(n+1)-A083917(n+1)-A083918(n+1)-A083919(n+1)`
-/

namespace A083913.P9028729068411083889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A083910 (n + 1) - A083911 (n + 1) - A083912 (n + 1) - A083914 (n + 1) - A083915 (n + 1) - A083916 (n + 1) - A083917 (n + 1) - A083918 (n + 1) - A083919 (n + 1)

end

end A083913.P9028729068411083889

noncomputable section

/-- A083913: Number of divisors of n that are congruent to 3 modulo 10.

Offset 1, canonical program `A083913.P9028729068411083889`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083910, A083911, A083912, A083914, A083915, A083916, A083917, A083918, A083919, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A083913 (n : ℕ) : ℤ :=
  A083913.P9028729068411083889.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083910, A083911, A083912, A083914, A083915, A083916, A083917, A083918, A083919, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A083913.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A085358.P10431996975946605734

`A000975(A035612(n+1))`
-/

namespace A085358.P10431996975946605734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 (A035612 (n + 1)).toNat

end

end A085358.P10431996975946605734

noncomputable section

/-- A085358: Runs of zeros in binomial(3k,k)/(2k+1) (mod 2): relates ternary trees (A001764) to the infinite Fibonacci word (A003849).

Offset 0, canonical program `A085358.P10431996975946605734`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085358 (n : ℕ) : ℤ :=
  A085358.P10431996975946605734.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085358.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086131.P10243863715148630400

`∑{p}[A006530(∏{p}[A003415(n+1), #]), #]`
-/

namespace A086131.P10243863715148630400
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∏ p ∈ Nat.primeFactors (f2 n).natAbs, p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A086131.P10243863715148630400

noncomputable section

/-- A086131: Largest prime factor of arithmetic derivative of n if it exists, or a(n)=0 for n=1 and n=prime.

Offset 1, canonical program `A086131.P10243863715148630400`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086131 (n : ℕ) : ℤ :=
  (A086131.P10243863715148630400.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086131.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087321.P1047644682119853361

`lcm(A048798(n+1), A066638(n+1))`
-/

namespace A087321.P1047644682119853361
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A048798 (n + 1)) (A066638 (n + 1))

end

end A087321.P1047644682119853361

noncomputable section

/-- A087321: Smallest multiple of n which is a perfect power (at least a square) of a squarefree number.

Offset 1, canonical program `A087321.P1047644682119853361`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087321 (n : ℕ) : ℤ :=
  (A087321.P1047644682119853361.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087321.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088660.P2669219846437675816

`9-A070940(A220466(n+2))`
-/

namespace A088660.P2669219846437675816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A070940 (A220466 (n + 2)).toNat

end

end A088660.P2669219846437675816

noncomputable section

/-- A088660: A logarithmic scale Sierpinski self-similar sequence.

Offset 3, canonical program `A088660.P2669219846437675816`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 254 terms. -/
def A088660 (n : ℕ) : ℤ :=
  A088660.P2669219846437675816.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 254 terms. -/
def A088660.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089982.P1312020099685533765

`A000217(A012132(n+1))`
-/

namespace A089982.P1312020099685533765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A012132 (n + 1)).toNat

end

end A089982.P1312020099685533765

noncomputable section

/-- A089982: Triangular numbers that can be expressed as the sum of 2 positive triangular numbers.

Offset 1, canonical program `A089982.P1312020099685533765`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A012132, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A089982 (n : ℕ) : ℤ :=
  A089982.P1312020099685533765.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A012132, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A089982.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A096919.P738797991620744238

`A006530(A007304(n+1))`
-/

namespace A096919.P738797991620744238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A007304 (n + 1)).toNat

end

end A096919.P738797991620744238

noncomputable section

/-- A096919: Greatest prime factor of n-th product of 3 distinct primes.

Offset 1, canonical program `A096919.P738797991620744238`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A007304, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A096919 (n : ℕ) : ℤ :=
  A096919.P738797991620744238.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A007304, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A096919.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A096960.P12612714756278171164

`A352051(n+1)+A059841(n)`
-/

namespace A096960.P12612714756278171164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352051 (n + 1) + A059841 n

end

end A096960.P12612714756278171164

noncomputable section

/-- A096960: a(n) = Sum_{0

Offset 1, canonical program `A096960.P12612714756278171164`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A096960 (n : ℕ) : ℤ :=
  A096960.P12612714756278171164.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A096960.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107015.P10636807577461555633

`∑[A003849(n)-A008612(A035612(n+1))]`
-/

namespace A107015.P10636807577461555633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 n - A008612 (A035612 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107015.P10636807577461555633

noncomputable section

/-- A107015: Number of even terms in Zeckendorf representation of n.

Offset 1, canonical program `A107015.P10636807577461555633`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107015 (n : ℕ) : ℤ :=
  A107015.P10636807577461555633.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107015.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123073.P6150319643950598268

`A200221(Δ[A110209(n)])`
-/

namespace A123073.P6150319643950598268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110209 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200221 (f1 (n + 1) - f1 n).toNat

end

end A123073.P6150319643950598268

noncomputable section

/-- A123073: Number of ordered triples of primes (p,q,r) such that pqr = n-th 3-almost prime A014612(n).

Offset 1, canonical program `A123073.P6150319643950598268`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A123073 (n : ℕ) : ℤ :=
  A123073.P6150319643950598268.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A123073.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123707.P12126468004863991091

`(A231821(n+1)-3+2^n-A178472(n+1))/2`
-/

namespace A123707.P12126468004863991091
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231821 (n + 1) - 3 + ((2 ^ n : ℤ) - A178472 (n + 1)) : ℚ) / 2

end

end A123707.P12126468004863991091

noncomputable section

/-- A123707: a(n) = Sum_{k=1..n} A123706(n,k)*2^(k-1).

Offset 1, canonical program `A123707.P12126468004863991091`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A123707 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A123707.P12126468004863991091.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A123707.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124270.P10836381219991528512

`A124268(n+1)-A124269(n+1)`
-/

namespace A124270.P10836381219991528512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124268 (n + 1) - A124269 (n + 1)

end

end A124270.P10836381219991528512

noncomputable section

/-- A124270: a(n) = prime(A014612(n)) - A014612(prime(n)). Commutator [A000040,A014612] at n.

Offset 1, canonical program `A124270.P10836381219991528512`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A124268, A124269, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A124270 (n : ℕ) : ℤ :=
  A124270.P10836381219991528512.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A124268, A124269, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A124270.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A127171.P12679392285096259285

`A006530(A014612(n+2))-A006530(A014612(n+1))`
-/

namespace A127171.P12679392285096259285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A014612 (n + 2)).toNat - A006530 (A014612 (n + 1)).toNat

end

end A127171.P12679392285096259285

noncomputable section

/-- A127171: Difference between largest prime factors of two successive 3-almost primes.

Offset 1, canonical program `A127171.P12679392285096259285`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A014612, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A127171 (n : ℕ) : ℤ :=
  A127171.P12679392285096259285.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A014612, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A127171.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A128616.P5791470407128350833

`(1-A156595(n))*A082451(n+1)`
-/

namespace A128616.P5791470407128350833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A156595 n) * A082451 (n + 1)

end

end A128616.P5791470407128350833

noncomputable section

/-- A128616: Expansion of q * psi(q^3) * psi(q^5) in powers of q where psi() is a Ramanujan theta function.

Offset 1, canonical program `A128616.P5791470407128350833`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128616 (n : ℕ) : ℤ :=
  A128616.P5791470407128350833.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128616.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128617.P2599063269449293282

`A082451(n+1)*A156595(n)`
-/

namespace A128617.P2599063269449293282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082451 (n + 1) * A156595 n

end

end A128617.P2599063269449293282

noncomputable section

/-- A128617: Expansion of q^2 * psi(q) * psi(q^15) in powers of q where psi() is a Ramanujan theta function.

Offset 1, canonical program `A128617.P2599063269449293282`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128617 (n : ℕ) : ℤ :=
  A128617.P2599063269449293282.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128617.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A130235.P11214485265166716893

`∑[A108852(n)-1]`
-/

namespace A130235.P11214485265166716893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108852 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130235.P11214485265166716893

noncomputable section

/-- A130235: Partial sums of the 'lower' Fibonacci Inverse A130233.

Offset 0, canonical program `A130235.P11214485265166716893`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130235 (n : ℕ) : ℤ :=
  A130235.P11214485265166716893.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130235.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130236.P16914573504588275506

`∑[A108852(abs(1-n))]-3`
-/

namespace A130236.P16914573504588275506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108852 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 3

end

end A130236.P16914573504588275506

noncomputable section

/-- A130236: Partial sums of the 'upper' Fibonacci Inverse A130234.

Offset 0, canonical program `A130236.P16914573504588275506`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130236 (n : ℕ) : ℤ :=
  A130236.P16914573504588275506.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130236.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130255.P3543021114128893014

`floor(A108852(n+1)/2)`
-/

namespace A130255.P3543021114128893014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A108852 (n + 1) : ℚ) / 2⌋

end

end A130255.P3543021114128893014

noncomputable section

/-- A130255: Maximal index k of an odd Fibonacci number (A001519) such that A001519(k) = Fibonacci(2k-1) <= n (the 'lower' odd Fibonacci Inverse).

Offset 1, canonical program `A130255.P3543021114128893014`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130255 (n : ℕ) : ℤ :=
  A130255.P3543021114128893014.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130255.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131574.P9398401731055651863

`∩[A024409(n+1), A121387(n+1)]`
-/

namespace A131574.P9398401731055651863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024409 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121387 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A131574.P9398401731055651863

noncomputable section

/-- A131574: Numbers k that are the product of two distinct odd primes and x^2 + y^2 = k has integer solutions.

Offset 1, canonical program `A131574.P9398401731055651863`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7319 terms. -/
def A131574 (n : ℕ) : ℤ :=
  (A131574.P9398401731055651863.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7319 terms. -/
def A131574.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137203.P13219969352286166426

`A108852(n²)`
-/

namespace A137203.P13219969352286166426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108852 (n ^ 2)

end

end A137203.P13219969352286166426

noncomputable section

/-- A137203: Number of Fibonacci numbers less than or equal to n^2.

Offset 0, canonical program `A137203.P13219969352286166426`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A108852, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A137203 (n : ℕ) : ℤ :=
  A137203.P13219969352286166426.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A108852, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A137203.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A139644.P6101316226407434603

`∩[A107152(n+1), A139495(n+1)]`
-/

namespace A139644.P6101316226407434603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139495 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139644.P6101316226407434603

noncomputable section

/-- A139644: Primes of the form x^2 + 105*y^2.

Offset 1, canonical program `A139644.P6101316226407434603`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4974 terms. -/
def A139644 (n : ℕ) : ℤ :=
  (A139644.P6101316226407434603.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4974 terms. -/
def A139644.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140100.P9463033727352148210

`a(n-1)+A276793(n)+1` with `a(0)=1`
-/

namespace A140100.P9463033727352148210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A276793 n + 1)

end

end A140100.P9463033727352148210

noncomputable section

/-- A140100: Start with Y(0)=0, X(1)=1, Y(1)=2. For n > 1, choose least positive integers Y(n) > X(n) such that neither Y(n) nor X(n) appear in {Y(k), 1 <= k < n} or {X(k), 1 <= k < n} and such that Y(n) - X(n) does not appear in {Y(k) - X(k), 1 <= k < n} or {Y(k) + X(k), 1 <= k < n}; sequence gives X(n) (for Y(n) see A140101).

Offset 1, canonical program `A140100.P9463033727352148210`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140100 (n : ℕ) : ℤ :=
  A140100.P9463033727352148210.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140100.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140130.P9803938825414643127

`A082908(A035327(n+1))`
-/

namespace A140130.P9803938825414643127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082908 (A035327 (n + 1)).toNat

end

end A140130.P9803938825414643127

noncomputable section

/-- A140130: a(n) = denominator(c(n)) where c(n) = 1 if n=1, otherwise if n < 3*2^floor(log_2(n)-1) then c(n) = (c(floor(n/2))+c(floor((n+1)/2)))/2 otherwise c(n) = c(n-2^floor(log_2(n)))+1.

Offset 1, canonical program `A140130.P9803938825414643127`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A140130 (n : ℕ) : ℤ :=
  A140130.P9803938825414643127.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A140130.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140215.P7416230048954684977

`A140213(n+1)*A140214(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A140215.P7416230048954684977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140213 (n + 1) * A140214 (n + 1)

end

end A140215.P7416230048954684977

noncomputable section

/-- A140215: A140213(n)*A140214(n).

Offset 1, canonical program `A140215.P7416230048954684977`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A140213, A140214, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A140215 (n : ℕ) : ℤ :=
  A140215.P7416230048954684977.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A140213, A140214, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A140215.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A140267.P8124456129966607887

`A007089(A060373(n))+A007089(A060374(n))`
-/

namespace A140267.P8124456129966607887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A060373 n).toNat + A007089 (A060374 n).toNat

end

end A140267.P8124456129966607887

noncomputable section

/-- A140267: Nonnegative integers in balanced ternary representation (with 2 standing for -1 digit).

Offset 0, canonical program `A140267.P8124456129966607887`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9842 terms. -/
def A140267 (n : ℕ) : ℤ :=
  A140267.P8124456129966607887.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9842 terms. -/
def A140267.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A152061.P18211087173108762366

`2*A178472((2*n)%(n+1)+1)`
-/

namespace A152061.P18211087173108762366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A178472 (2 * n % (n + 1) + 1)

end

end A152061.P18211087173108762366

noncomputable section

/-- A152061: Counts of unique periodic binary strings of length n.

Offset 0, canonical program `A152061.P18211087173108762366`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 666 terms. -/
def A152061 (n : ℕ) : ℤ :=
  A152061.P18211087173108762366.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 666 terms. -/
def A152061.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155113.P12705420447747489867

`record[A000265(A000720(A155058(n+2)))]`
-/

namespace A155113.P12705420447747489867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A000720 (A155058 (n + 2)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155113.P12705420447747489867

noncomputable section

/-- A155113: Odd numbers n with odd largest digit of prime(n).

Offset 1, canonical program `A155113.P12705420447747489867`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3552 terms. -/
def A155113 (n : ℕ) : ℤ :=
  A155113.P12705420447747489867.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3552 terms. -/
def A155113.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155141.P9472894967905439765

`record[A006530(A007913(n+1)+A007913(n+9))]`
-/

namespace A155141.P9472894967905439765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A007913 (n + 1) + A007913 (n + 9)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155141.P9472894967905439765

noncomputable section

/-- A155141: Primes p such that both p-+4 are squarefree.

Offset 1, canonical program `A155141.P9472894967905439765`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2736 terms. -/
def A155141 (n : ℕ) : ℤ :=
  A155141.P9472894967905439765.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2736 terms. -/
def A155141.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A162361.P4203513439730037896

`A006530(A014612(n+1)/A006530(A014612(n+1)))`
-/

namespace A162361.P4203513439730037896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A014612 (n + 1) : ℚ) / (A006530 (A014612 (n + 1)).toNat : ℚ))).toNat

end

end A162361.P4203513439730037896

noncomputable section

/-- A162361: Central prime factor of A014612(n).

Offset 1, canonical program `A162361.P4203513439730037896`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162361 (n : ℕ) : ℤ :=
  A162361.P4203513439730037896.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162361.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166720.P1607650431389668461

`A165342(3*n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A166720.P1607650431389668461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165342 (3 * n)

end

end A166720.P1607650431389668461

noncomputable section

/-- A166720: Trisection A165342(3n).

Offset 0, canonical program `A166720.P1607650431389668461`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165342, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A166720 (n : ℕ) : ℤ :=
  A166720.P1607650431389668461.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165342, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A166720.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A168355.P11356799780484793568

`filter[A163170(n+1), A354926(#)]`
-/

namespace A168355.P11356799780484793568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163170 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354926 (f1 j).toNat = 1) n)

end

end A168355.P11356799780484793568

noncomputable section

/-- A168355: Products of 3 distinct primes whose binary expansion is palindromic.

Offset 1, canonical program `A168355.P11356799780484793568`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 149 terms. -/
def A168355 (n : ℕ) : ℤ :=
  A168355.P11356799780484793568.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 149 terms. -/
def A168355.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A168485.P6840008458640291762

`A165342(3*n)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A168485.P6840008458640291762
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165342 (3 * n) : ℚ) / 3

end

end A168485.P6840008458640291762

noncomputable section

/-- A168485: A165342(3n)/3.

Offset 0, canonical program `A168485.P6840008458640291762`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165342, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A168485 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A168485.P6840008458640291762.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165342, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A168485.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A170824.P11297377801870063513

`∏{p}[n+1, A140213(#)]`
-/

namespace A170824.P11297377801870063513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A140213 p

end

end A170824.P11297377801870063513

noncomputable section

/-- A170824: a(n) = product of distinct primes of form 6k+1 that divide n.

Offset 1, canonical program `A170824.P11297377801870063513`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A170824 (n : ℕ) : ℤ :=
  A170824.P11297377801870063513.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A170824.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A182241.P14117920830445222152

`A161151(2*(n+1))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A182241.P14117920830445222152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161151 (2 * (n + 1)) : ℚ) / 2

end

end A182241.P14117920830445222152

noncomputable section

/-- A182241: a(n) = A161151(2*n)/2.

Offset 1, canonical program `A182241.P14117920830445222152`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A161151, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A182241 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A182241.P14117920830445222152.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A161151, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A182241.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A184997.P5003667817694060681

`A002472((∑[n]-1)%(n+1)+1)`
-/

namespace A184997.P5003667817694060681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002472 (Int.tmod (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) (n + 1 : ℤ) + 1).toNat

end

end A184997.P5003667817694060681

noncomputable section

/-- A184997: Number of distinct remainders that are possible when a safe prime p is divided by n (for p > 2*n+1).

Offset 1, canonical program `A184997.P5003667817694060681`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184997 (n : ℕ) : ℤ :=
  A184997.P5003667817694060681.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184997.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A190597.P16179968402666617356

`A190598(A037477(n))`
-/

namespace A190597.P16179968402666617356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190598 (A037477 n).toNat

end

end A190597.P16179968402666617356

noncomputable section

/-- A190597: Maximal digit in base-8 expansion of n.

Offset 0, canonical program `A190597.P16179968402666617356`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. -/
def A190597 (n : ℕ) : ℤ :=
  A190597.P16179968402666617356.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. -/
def A190597.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193990.P7884612137994625744

`A067434(n+1)-A108954(n+1)`
-/

namespace A193990.P7884612137994625744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067434 (n + 1) - A108954 (n + 1)

end

end A193990.P7884612137994625744

noncomputable section

/-- A193990: Number of distinct prime factors <= n of binomial(2*n,n).

Offset 1, canonical program `A193990.P7884612137994625744`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193990 (n : ℕ) : ℤ :=
  A193990.P7884612137994625744.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193990.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A195212.P2346357563342899304

`lt[A006530(A007913(n+1)), A006530(n+1)]+1`
-/

namespace A195212.P2346357563342899304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A007913 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A195212.P2346357563342899304

noncomputable section

/-- A195212: Numbers n for which the exponent of the largest prime factor of n is even.

Offset 1, canonical program `A195212.P2346357563342899304`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1003 terms. -/
def A195212 (n : ℕ) : ℤ :=
  (A195212.P2346357563342899304.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1003 terms. -/
def A195212.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A000742.P13490306228597101565

`Δ[A015627(n+3)+∑[∑[n]]]`
-/

namespace A000742.P13490306228597101565
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015627 (n + 3) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000742.P13490306228597101565

noncomputable section

/-- A000742: Number of compositions of n into 4 ordered relatively prime parts.

Offset 4, canonical program `A000742.P13490306228597101565`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1017 terms. -/
def A000742 (n : ℕ) : ℤ :=
  A000742.P13490306228597101565.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1017 terms. -/
def A000742.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000743.P6553726784885921065

`Δ[A015640(n+4)]`
-/

namespace A000743.P6553726784885921065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015640 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000743.P6553726784885921065

noncomputable section

/-- A000743: Number of compositions of n into 5 ordered relatively prime parts.

Offset 5, canonical program `A000743.P6553726784885921065`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 358 terms. -/
def A000743 (n : ℕ) : ℤ :=
  A000743.P6553726784885921065.a (n - 5)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 358 terms. -/
def A000743.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003603.P16957953193221149440

`abs(floor((n+1)/ϕ)-floor((n+1)*(1/ϕ+1/(-ϕ)^(A035612(n+1)+1))))`
-/

namespace A003603.P16957953193221149440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊(n + 1 : ℝ) / Real.goldenRatio⌋ - ⌊(n + 1 : ℝ) * (1 / Real.goldenRatio + 1 / (-Real.goldenRatio) ^ (A035612 (n + 1) + 1 : ℤ))⌋|

end

end A003603.P16957953193221149440

noncomputable section

/-- A003603: Fractal sequence obtained from Fibonacci numbers (or Wythoff array).

Offset 1, canonical program `A003603.P16957953193221149440`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003603 (n : ℕ) : ℤ :=
  A003603.P16957953193221149440.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003603.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005574.P826988356271563688

`floor(sqrt(A002496(n+1)))`
-/

namespace A005574.P826988356271563688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A002496 (n + 1))

end

end A005574.P826988356271563688

noncomputable section

/-- A005574: Numbers k such that k^2 + 1 is prime.

Offset 1, canonical program `A005574.P826988356271563688`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005574 (n : ℕ) : ℤ :=
  A005574.P826988356271563688.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005574.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034947.P12901732433088194458

`2-A099545(n+1)`
-/

namespace A034947.P12901732433088194458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A099545 (n + 1)

end

end A034947.P12901732433088194458

noncomputable section

/-- A034947: Jacobi (or Kronecker) symbol (-1/n).

Offset 1, canonical program `A034947.P12901732433088194458`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A099545, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A034947 (n : ℕ) : ℤ :=
  A034947.P12901732433088194458.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A099545, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A034947.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A036541.P333989908532824306

`A000720(n+1)-A034973(n+1)`
-/

namespace A036541.P333989908532824306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) - A034973 (n + 1)

end

end A036541.P333989908532824306

noncomputable section

/-- A036541: Deficit of central binomial coefficients in terms of number of prime factors: a(n) shows how many fewer prime factors the n-th central binomial coefficient has than n!.

Offset 1, canonical program `A036541.P333989908532824306`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036541 (n : ℕ) : ℤ :=
  A036541.P333989908532824306.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036541.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037903.P7439451824534172886

`A037904(A007095(n)+floor(1/(n+1)))`
-/

namespace A037903.P7439451824534172886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037904 (A007095 n + ⌊1 / (n + 1 : ℚ)⌋).toNat

end

end A037903.P7439451824534172886

noncomputable section

/-- A037903: a(n) = (greatest base 9 digit of n) - (least base 9 digit of n).

Offset 0, canonical program `A037903.P7439451824534172886`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6562 terms. -/
def A037903 (n : ℕ) : ℤ :=
  A037903.P7439451824534172886.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6562 terms. -/
def A037903.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039593.P642452871237294568

`2^A034973(n+1)`
-/

namespace A039593.P642452871237294568
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A034973 (n + 1) : ℤ)

end

end A039593.P642452871237294568

noncomputable section

/-- A039593: Number of unitary divisors of central binomial coefficients.

Offset 1, canonical program `A039593.P642452871237294568`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034973, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A039593 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A039593.P642452871237294568.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034973, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A039593.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A045413.P11718784102126598698

`∪[A023247(n+1), A045435(n+1)]`
-/

namespace A045413.P11718784102126598698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045435 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045413.P11718784102126598698

noncomputable section

/-- A045413: Primes congruent to {0, 3, 4} mod 5.

Offset 1, canonical program `A045413.P11718784102126598698`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045413 (n : ℕ) : ℤ :=
  (A045413.P11718784102126598698.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045413.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046317.P10889539092483496834

`filter[A014613(n+1), A353557(#)]`
-/

namespace A046317.P10889539092483496834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353557 (f1 j).toNat = 1) n)

end

end A046317.P10889539092483496834

noncomputable section

/-- A046317: Odd numbers divisible by exactly 4 primes (counted with multiplicity).

Offset 1, canonical program `A046317.P10889539092483496834`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3033 terms. -/
def A046317 (n : ℕ) : ℤ :=
  A046317.P10889539092483496834.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3033 terms. -/
def A046317.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046346.P11573470499410479395

`∪[A036346(n+1), A036345(n+2)]`
-/

namespace A046346.P11573470499410479395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036345 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A046346.P11573470499410479395

noncomputable section

/-- A046346: Composite numbers that are divisible by the sum of their prime factors (counted with multiplicity).

Offset 1, canonical program `A046346.P11573470499410479395`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046346 (n : ℕ) : ℤ :=
  (A046346.P11573470499410479395.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046346.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046347.P17784694146301289836

`A036346(record[(n+1)*A036346(n+1)%2])`
-/

namespace A046347.P17784694146301289836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (A036346 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036346 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A046347.P17784694146301289836

noncomputable section

/-- A046347: Odd composite numbers divisible by the sum of their prime factors (counted with multiplicity).

Offset 1, canonical program `A046347.P17784694146301289836`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4077 terms. -/
def A046347 (n : ℕ) : ℤ :=
  A046347.P17784694146301289836.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4077 terms. -/
def A046347.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050448.P12990945603469115476

`A051001(n+1)-A050455(n+1)`
-/

namespace A050448.P12990945603469115476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051001 (n + 1) - A050455 (n + 1)

end

end A050448.P12990945603469115476

noncomputable section

/-- A050448: a(n) = Sum_{d|n, d==1 (mod 4)} d^4.

Offset 1, canonical program `A050448.P12990945603469115476`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050448 (n : ℕ) : ℤ :=
  A050448.P12990945603469115476.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050448.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050608.P3304430570906467242

`eq[1, gcd(7, A292441(n))]`
-/

namespace A050608.P3304430570906467242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 7 (A292441 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A050608.P3304430570906467242

noncomputable section

/-- A050608: Numbers k such that base 7 expansion matches (0|1|2|3)*((0|1|2)(4|5|6))?(0|1|2|3)*.

Offset 1, canonical program `A050608.P3304430570906467242`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3412 terms. -/
def A050608 (n : ℕ) : ℤ :=
  (A050608.P3304430570906467242.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3412 terms. -/
def A050608.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A060679.P4127723815483162910

`lt[0, A331176(n+1)]+1`
-/

namespace A060679.P4127723815483162910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331176 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A060679.P4127723815483162910

noncomputable section

/-- A060679: Orders of non-cyclic groups.

Offset 1, canonical program `A060679.P4127723815483162910`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060679 (n : ℕ) : ℤ :=
  (A060679.P4127723815483162910.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060679.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062325.P18324812326254617152

`A000720(A002496(n+1))`
-/

namespace A062325.P18324812326254617152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A002496 (n + 1)).toNat

end

end A062325.P18324812326254617152

noncomputable section

/-- A062325: Numbers k for which phi(prime(k)) is a square.

Offset 1, canonical program `A062325.P18324812326254617152`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002496, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062325 (n : ℕ) : ℤ :=
  A062325.P18324812326254617152.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002496, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062325.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A066994.P5597610892535735044

`eq[0, (n+1)%A289412(n+1)]+1`
-/

namespace A066994.P5597610892535735044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A289412 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A066994.P5597610892535735044

noncomputable section

/-- A066994: Numbers k such that phi(k) divides k*sigma(k).

Offset 1, canonical program `A066994.P5597610892535735044`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 752 terms. -/
def A066994 (n : ℕ) : ℤ :=
  (A066994.P5597610892535735044.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 752 terms. -/
def A066994.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070287.P15555425564075004326

`eq[1, char[A009286(n+1)]]`
-/

namespace A070287.P15555425564075004326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009286 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A070287.P15555425564075004326

noncomputable section

/-- A070287: Numbers k such that the equation lcm(sigma(x),phi(x))=k has solutions.

Offset 1, canonical program `A070287.P15555425564075004326`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 155 terms. -/
def A070287 (n : ℕ) : ℤ :=
  (A070287.P15555425564075004326.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 155 terms. -/
def A070287.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070537.P519828097946199931

`record[C(n+1, A340363(n+1)+n)]`
-/

namespace A070537.P519828097946199931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A340363 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070537.P519828097946199931

noncomputable section

/-- A070537: Numbers k such that the k-th cyclotomic polynomial has more terms than the largest prime factor of k.

Offset 1, canonical program `A070537.P519828097946199931`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070537 (n : ℕ) : ℤ :=
  (A070537.P519828097946199931.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070537.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070776.P10943609566453861141

`eq[1, A340363(n+2)]+2`
-/

namespace A070776.P10943609566453861141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340363 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A070776.P10943609566453861141

noncomputable section

/-- A070776: Numbers k such that number of terms in the k-th cyclotomic polynomial is equal to the largest prime factor of k.

Offset 1, canonical program `A070776.P10943609566453861141`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070776 (n : ℕ) : ℤ :=
  (A070776.P10943609566453861141.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070776.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072649.P9617326913925617377

`A108852(n+1)-2`
-/

namespace A072649.P9617326913925617377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108852 (n + 1) - 2

end

end A072649.P9617326913925617377

noncomputable section

/-- A072649: n occurs Fibonacci(n) times (cf. A000045).

Offset 1, canonical program `A072649.P9617326913925617377`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A108852, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A072649 (n : ℕ) : ℤ :=
  A072649.P9617326913925617377.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A108852, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A072649.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A072728.P6270051122874775703

`A071585(eq[0, A334076(n)])`
-/

namespace A072728.P6270051122874775703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334076 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071585 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A072728.P6270051122874775703

noncomputable section

/-- A072728: Numerator of rationals >= 1 whose continued fractions consist only of 1's and 2's, in ascending order by the sum of the continued fraction terms and descending by lowest order continued fraction terms to highest.

Offset 0, canonical program `A072728.P6270051122874775703`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 610 terms. -/
def A072728 (n : ℕ) : ℤ :=
  A072728.P6270051122874775703.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 610 terms. -/
def A072728.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075408.P15345791535842021127

`A002496(n+1)-1`
-/

namespace A075408.P15345791535842021127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002496 (n + 1) - 1

end

end A075408.P15345791535842021127

noncomputable section

/-- A075408: Perfect powers pp such that pp+1 is prime.

Offset 1, canonical program `A075408.P15345791535842021127`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002496, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A075408 (n : ℕ) : ℤ :=
  A075408.P15345791535842021127.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002496, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A075408.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A075677.P6882598793627865394

`A139391(2*n+1)`
-/

namespace A075677.P6882598793627865394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139391 (2 * n + 1)

end

end A075677.P6882598793627865394

noncomputable section

/-- A075677: Reduced Collatz function R applied to the odd integers: a(n) = R(2n-1), where R(k) = (3k+1)/2^r, with r as large as possible.

Offset 1, canonical program `A075677.P6882598793627865394`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A139391, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A075677 (n : ℕ) : ℤ :=
  A075677.P6882598793627865394.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A139391, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A075677.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A079545.P17952290838055275497

`∪[A002496(n+1), A079544(n+1)]`
-/

namespace A079545.P17952290838055275497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002496 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A079545.P17952290838055275497

noncomputable section

/-- A079545: Primes of the form x^2 + y^2 + 1 with x,y >= 0.

Offset 1, canonical program `A079545.P17952290838055275497`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079545 (n : ℕ) : ℤ :=
  (A079545.P17952290838055275497.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079545.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A083347.P586298747348292320

`eq[1, A341625(n)]`
-/

namespace A083347.P586298747348292320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341625 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A083347.P586298747348292320

noncomputable section

/-- A083347: Numbers k such that Sum(e/p: k=Product(p^e)) < 1.

Offset 1, canonical program `A083347.P586298747348292320`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083347 (n : ℕ) : ℤ :=
  (A083347.P586298747348292320.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083347.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083348.P17228542096828798652

`eq[1, A369048(n)]`
-/

namespace A083348.P17228542096828798652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369048 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A083348.P17228542096828798652

noncomputable section

/-- A083348: Numbers k such that r(k) = Sum(e/p: k = Product(p^e)) > 1.

Offset 1, canonical program `A083348.P17228542096828798652`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083348 (n : ℕ) : ℤ :=
  (A083348.P17228542096828798652.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083348.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084921.P9444845645736558906

`A009286(A000040(n+1))`
-/

namespace A084921.P9444845645736558906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009286 (A000040 (n + 1)).toNat

end

end A084921.P9444845645736558906

noncomputable section

/-- A084921: a(n) = lcm(p-1, p+1) where p is the n-th prime.

Offset 1, canonical program `A084921.P9444845645736558906`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009286, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A084921 (n : ℕ) : ℤ :=
  A084921.P9444845645736558906.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009286, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A084921.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A085681.P2453027393435325629

`filter[A225241(n+3), A353670(#)]`
-/

namespace A085681.P2453027393435325629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225241 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353670 (f1 j).toNat = 1) n)

end

end A085681.P2453027393435325629

noncomputable section

/-- A085681: Integers of the form 2^k*p where p is a prime > 2^k.

Offset 1, canonical program `A085681.P2453027393435325629`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3363 terms. -/
def A085681 (n : ℕ) : ℤ :=
  A085681.P2453027393435325629.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3363 terms. -/
def A085681.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086046.P12566534839293457463

`∑[A014613(n+1)]`
-/

namespace A086046.P12566534839293457463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086046.P12566534839293457463

noncomputable section

/-- A086046: Sum of first n 4-almost primes.

Offset 1, canonical program `A086046.P12566534839293457463`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086046 (n : ℕ) : ℤ :=
  A086046.P12566534839293457463.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086046.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086983.P17990529017750356607

`p?[A070915(n+1)-1]`
-/

namespace A086983.P17990529017750356607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070915 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A086983.P17990529017750356607

noncomputable section

/-- A086983: Primes of the form 2^r*p^s - 1, where p is an odd prime.

Offset 1, canonical program `A086983.P17990529017750356607`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 465 terms. -/
def A086983 (n : ℕ) : ℤ :=
  A086983.P17990529017750356607.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 465 terms. -/
def A086983.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A093641.P7151041484961963095

`eq[1, A340371(n+1)]+1`
-/

namespace A093641.P7151041484961963095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340371 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A093641.P7151041484961963095

noncomputable section

/-- A093641: Numbers of form 2^i * prime(j), i>=0, j>0, together with 1.

Offset 1, canonical program `A093641.P7151041484961963095`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A093641 (n : ℕ) : ℤ :=
  (A093641.P7151041484961963095.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A093641.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100959.P16394207133343140520

`∪[A008578(n+1), A033942(n+1)]`
-/

namespace A100959.P16394207133343140520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033942 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A100959.P16394207133343140520

noncomputable section

/-- A100959: Non-semiprimes.

Offset 1, canonical program `A100959.P16394207133343140520`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100959 (n : ℕ) : ℤ :=
  (A100959.P16394207133343140520.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100959.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105441.P5710754477606272407

`lt[A340371(n+1), 1]+1`
-/

namespace A105441.P5710754477606272407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340371 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A105441.P5710754477606272407

noncomputable section

/-- A105441: Numbers with at least two odd prime factors (not necessarily distinct).

Offset 1, canonical program `A105441.P5710754477606272407`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105441 (n : ℕ) : ℤ :=
  (A105441.P5710754477606272407.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105441.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106088.P8246779572440490493

`∩[A023222(n+1), A023225(n+1)]`
-/

namespace A106088.P8246779572440490493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106088.P8246779572440490493

noncomputable section

/-- A106088: Primes p such that 7*p + 6 and 6*p + 7 are primes.

Offset 1, canonical program `A106088.P8246779572440490493`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2138 terms. -/
def A106088 (n : ℕ) : ℤ :=
  (A106088.P8246779572440490493.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2138 terms. -/
def A106088.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106571.P2434766786777673595

`sqrt(A106564(n+1))`
-/

namespace A106571.P2434766786777673595
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A106564 (n + 1) : ℝ)

end

end A106571.P2434766786777673595

noncomputable section

/-- A106571: Indices n of perfect squares n^2 which are not the difference of two primes.

Offset 1, canonical program `A106571.P2434766786777673595`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A106564, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A106571 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A106571.P2434766786777673595.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A106564, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A106571.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A108321.P5991281429611494977

`(n+1)²-A106546(n+1)`
-/

namespace A108321.P5991281429611494977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A106546 (n + 1)

end

end A108321.P5991281429611494977

noncomputable section

/-- A108321: a(n) = n^2 if n^2 is not the difference of two primes; otherwise a(n) = 0.

Offset 0, canonical program `A108321.P5991281429611494977`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108321 (n : ℕ) : ℤ :=
  A108321.P5991281429611494977.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108321.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110227.P17854938781314769759

`record[A082344(A014613(n+4))]`
-/

namespace A110227.P17854938781314769759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082344 (A014613 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A110227.P17854938781314769759

noncomputable section

/-- A110227: 4-almost primes p * q * r * s relatively prime to p + q + r + s.

Offset 1, canonical program `A110227.P17854938781314769759`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5177 terms. -/
def A110227 (n : ℕ) : ℤ :=
  A110227.P17854938781314769759.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5177 terms. -/
def A110227.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111087.P4608048223291234418

`∪[A033942(n+1), A001249(n)]`
-/

namespace A111087.P4608048223291234418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033942 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001249 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A111087.P4608048223291234418

noncomputable section

/-- A111087: Neither primes nor semiprimes.

Offset 1, canonical program `A111087.P4608048223291234418`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111087 (n : ℕ) : ℤ :=
  (A111087.P4608048223291234418.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111087.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114404.P5917876743805946203

`A014613(n+2)-A014613(n+1)`
-/

namespace A114404.P5917876743805946203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 2) - A014613 (n + 1)

end

end A114404.P5917876743805946203

noncomputable section

/-- A114404: 4-almost prime gaps. First differences of A014613.

Offset 1, canonical program `A114404.P5917876743805946203`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014613, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A114404 (n : ℕ) : ℤ :=
  A114404.P5917876743805946203.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014613, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A114404.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A115105.P6138202386834025871

`∩[A070915(n+1), A115063(n+1)]`
-/

namespace A115105.P6138202386834025871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115063 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115105.P6138202386834025871

noncomputable section

/-- A115105: Numbers of the form p^F(i)*q^F(j), where p and q are distinct primes; F(i) and F(j) are Fibonacci numbers.

Offset 1, canonical program `A115105.P6138202386834025871`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5369 terms. -/
def A115105 (n : ℕ) : ℤ :=
  (A115105.P6138202386834025871.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5369 terms. -/
def A115105.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120045.P16719681067314808438

`A014613(10^n)`
-/

namespace A120045.P16719681067314808438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (10 ^ n)

end

end A120045.P16719681067314808438

noncomputable section

/-- A120045: The (10^n)-th 4-almost prime.

Offset 0, canonical program `A120045.P16719681067314808438`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014613, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A120045 (n : ℕ) : ℤ :=
  A120045.P16719681067314808438.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014613, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A120045.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A124282.P3881656301786710147

`A000040(A014613(n+1))`
-/

namespace A124282.P3881656301786710147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A014613 (n + 1)).toNat

end

end A124282.P3881656301786710147

noncomputable section

/-- A124282: Primes indexed by 4-almost primes.

Offset 1, canonical program `A124282.P3881656301786710147`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014613, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A124282 (n : ℕ) : ℤ :=
  A124282.P3881656301786710147.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014613, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A124282.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A124283.P8325638401680128241

`A014613(A000040(n+1))`
-/

namespace A124283.P8325638401680128241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (A000040 (n + 1)).toNat

end

end A124283.P8325638401680128241

noncomputable section

/-- A124283: 4-almost primes indexed by primes.

Offset 1, canonical program `A124283.P8325638401680128241`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014613, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A124283 (n : ℕ) : ℤ :=
  A124283.P8325638401680128241.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014613, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A124283.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A124284.P14693440834866101347

`A000040(A014613(n+1))-A014613(A000040(n+1))`
-/

namespace A124284.P14693440834866101347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A014613 (n + 1)).toNat - A014613 (A000040 (n + 1)).toNat

end

end A124284.P14693440834866101347

noncomputable section

/-- A124284: Prime(4almostprime(n))-4almostprime(prime(n)). Commutator [A000040,A014613] at n.

Offset 1, canonical program `A124284.P14693440834866101347`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014613, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A124284 (n : ℕ) : ℤ :=
  A124284.P14693440834866101347.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014613, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A124284.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A124850.P12264711281521083526

`∩[A023222(n+1), A090614(n+1)]`
-/

namespace A124850.P12264711281521083526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124850.P12264711281521083526

noncomputable section

/-- A124850: Primes p=n/2 such that 7n+3 and 3n+7 are primes.

Offset 1, canonical program `A124850.P12264711281521083526`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 517 terms. -/
def A124850 (n : ℕ) : ℤ :=
  (A124850.P12264711281521083526.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 517 terms. -/
def A124850.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124941.P16218630572969216122

`∩[A014613(n+1)-4, A014613(n+1)]`
-/

namespace A124941.P16218630572969216122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1) - 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124941.P16218630572969216122

noncomputable section

/-- A124941: Numbers k such that k and k+4 are 4-almost primes.

Offset 1, canonical program `A124941.P16218630572969216122`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1570 terms. -/
def A124941 (n : ℕ) : ℤ :=
  (A124941.P16218630572969216122.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1570 terms. -/
def A124941.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127331.P7890648957461590311

`∩[A023222(n+1), A153135(n+1)]`
-/

namespace A127331.P7890648957461590311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127331.P7890648957461590311

noncomputable section

/-- A127331: Primes p such that 6p-7 and 6p+7 are also primes.

Offset 1, canonical program `A127331.P7890648957461590311`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1949 terms. -/
def A127331 (n : ℕ) : ℤ :=
  (A127331.P7890648957461590311.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1949 terms. -/
def A127331.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A140114.P8911502322678573461

`abs(Δ[A072613(A253909(n))])`
-/

namespace A140114.P8911502322678573461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072613 (A253909 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A140114.P8911502322678573461

noncomputable section

/-- A140114: Number of semiprimes strictly between n^2 and (n+1)^2.

Offset 0, canonical program `A140114.P8911502322678573461`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A140114 (n : ℕ) : ℤ :=
  A140114.P8911502322678573461.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A140114.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153150.P14859093954344078196

`A341915(A064707(A153153(n)))`
-/

namespace A153150.P14859093954344078196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341915 (A064707 (A153153 n).toNat).toNat

end

end A153150.P14859093954344078196

noncomputable section

/-- A153150: Self-inverse permutation of natural numbers: A059893-conjugate of A056539.

Offset 0, canonical program `A153150.P14859093954344078196`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A153150 (n : ℕ) : ℤ :=
  A153150.P14859093954344078196.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A153150.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153733.P10755713114946739736

`n-A331739(n+1)`
-/

namespace A153733.P10755713114946739736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A331739 (n + 1)

end

end A153733.P10755713114946739736

noncomputable section

/-- A153733: Remove all trailing 1's in the binary representation of n.

Offset 0, canonical program `A153733.P10755713114946739736`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A331739, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A153733 (n : ℕ) : ℤ :=
  A153733.P10755713114946739736.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A331739, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A153733.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A154437.P11607465258887740319

`A056539(2*A335858(n))/2`
-/

namespace A154437.P11607465258887740319
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056539 (2 * A335858 n).toNat : ℚ) / 2

end

end A154437.P11607465258887740319

noncomputable section

/-- A154437: Permutation of nonnegative integers: A059893-conjugate of A154435.

Offset 0, canonical program `A154437.P11607465258887740319`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4096 terms. -/
def A154437 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A154437.P11607465258887740319.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4096 terms. -/
def A154437.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156226.P12065626002228118702

`A002496(eq[1, A002496(n+1)%3]+1)`
-/

namespace A156226.P12065626002228118702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002496 (n + 1)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002496 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A156226.P12065626002228118702

noncomputable section

/-- A156226: Primes of the form 9*n^2 + 1.

Offset 1, canonical program `A156226.P12065626002228118702`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3395 terms. -/
def A156226 (n : ℕ) : ℤ :=
  A156226.P12065626002228118702.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3395 terms. -/
def A156226.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160595.P6850697665178590478

`A247074(n+1)*A318829(n+1)`
-/

namespace A160595.P6850697665178590478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247074 (n + 1) * A318829 (n + 1)

end

end A160595.P6850697665178590478

noncomputable section

/-- A160595: Numerator of resilience R(n) = phi(n)/(n-1), with a(1) = 1 by convention.

Offset 1, canonical program `A160595.P6850697665178590478`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A247074, A318829, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A160595 (n : ℕ) : ℤ :=
  A160595.P6850697665178590478.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A247074, A318829, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A160595.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163588.P13679431484210221452

`or(A000035(n), A002496(A028310(n)))`
-/

namespace A163588.P13679431484210221452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 n) (A002496 (A028310 n).toNat)

end

end A163588.P13679431484210221452

noncomputable section

/-- A163588: Primes which are within 1 of a square number.

Offset 1, canonical program `A163588.P13679431484210221452`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163588 (n : ℕ) : ℤ :=
  A163588.P13679431484210221452.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163588.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163755.P822583815578675357

`A057335(A341915(n))`
-/

namespace A163755.P822583815578675357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 (A341915 n).toNat

end

end A163755.P822583815578675357

noncomputable section

/-- A163755: a(0)=1. For n>=1, write n in binary. Let b(n,m) be the length of the m-th run of 0's or 1's, reading right to left. Then a(n) = product{m=1 to M} p(m)^b(n,m), where p(m) is the m-th prime, and M is the number of runs of 0's and 1's in binary n.

Offset 0, canonical program `A163755.P822583815578675357`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A341915, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163755 (n : ℕ) : ℤ :=
  A163755.P822583815578675357.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A341915, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163755.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A165560.P13564864469092298929

`1-A358680(n)`
-/

namespace A165560.P13564864469092298929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A358680 n

end

end A165560.P13564864469092298929

noncomputable section

/-- A165560: The arithmetic derivative of n, modulo 2.

Offset 0, canonical program `A165560.P13564864469092298929`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A358680, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A165560 (n : ℕ) : ℤ :=
  A165560.P13564864469092298929.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A358680, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A165560.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A166718.P1751264215358538003

`∪[A014613(n+1), A037144(n+1)]`
-/

namespace A166718.P1751264215358538003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A166718.P1751264215358538003

noncomputable section

/-- A166718: Numbers with at most 4 prime factors (counted with multiplicity).

Offset 1, canonical program `A166718.P1751264215358538003`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166718 (n : ℕ) : ℤ :=
  (A166718.P1751264215358538003.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166718.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171435.P13410132754094429905

`gcd(A113646(n+1), A299149(n+1))`
-/

namespace A171435.P13410132754094429905
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A113646 (n + 1)) (A299149 (n + 1))

end

end A171435.P13410132754094429905

noncomputable section

/-- A171435: Product of odd prime factors < n, with multiplicity.

Offset 1, canonical program `A171435.P13410132754094429905`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171435 (n : ℕ) : ℤ :=
  (A171435.P13410132754094429905.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171435.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A172522.P7824207335733574885

`∑[A049094(n+1)]`
-/

namespace A172522.P7824207335733574885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172522.P7824207335733574885

noncomputable section

/-- A172522: Partial sums of A049094.

Offset 1, canonical program `A172522.P7824207335733574885`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 295 terms. -/
def A172522 (n : ℕ) : ℤ :=
  A172522.P7824207335733574885.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 295 terms. -/
def A172522.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189759.P603312892037158243

`filter[A007304(n+1), A341995(#)]`
-/

namespace A189759.P603312892037158243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341995 (f1 j).toNat = 1) n)

end

end A189759.P603312892037158243

noncomputable section

/-- A189759: Numbers pqr such that pq + pr + qr is prime, where p, q, and r are primes.

Offset 1, canonical program `A189759.P603312892037158243`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A189759 (n : ℕ) : ℤ :=
  A189759.P603312892037158243.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A189759.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189936.P5035974815014821206

`∩[A076763(n+1), A216918(n+1)]`
-/

namespace A189936.P5035974815014821206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216918 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189936.P5035974815014821206

noncomputable section

/-- A189936: Odd numbers in A076763.

Offset 1, canonical program `A189936.P5035974815014821206`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1156 terms. -/
def A189936 (n : ℕ) : ℤ :=
  (A189936.P5035974815014821206.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1156 terms. -/
def A189936.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A193558.P5296547298766818004

`A121326(n+1)-A002496(n+1)`
-/

namespace A193558.P5296547298766818004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121326 (n + 1) - A002496 (n + 1)

end

end A193558.P5296547298766818004

noncomputable section

/-- A193558: Differences between consecutive primes of the form k^2+1.

Offset 1, canonical program `A193558.P5296547298766818004`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193558 (n : ℕ) : ℤ :=
  A193558.P5296547298766818004.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193558.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A002618.P11219262123574684380

`A009195(n+1)*A009262(n+1)`
-/

namespace A002618.P11219262123574684380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009195 (n + 1) * A009262 (n + 1)

end

end A002618.P11219262123574684380

noncomputable section

/-- A002618: a(n) = n*phi(n).

Offset 1, canonical program `A002618.P11219262123574684380`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009195, A009262, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A002618 (n : ℕ) : ℤ :=
  A002618.P11219262123574684380.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009195, A009262, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A002618.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A022760.P12074805106371372305

`A153218(n+1)+A153134(n+1)`
-/

namespace A022760.P12074805106371372305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153218 (n + 1) + A153134 (n + 1)

end

end A022760.P12074805106371372305

noncomputable section

/-- A022760: (n-th 6k+1 prime plus n-th 6k+5 prime)/6.

Offset 1, canonical program `A022760.P12074805106371372305`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022760 (n : ℕ) : ℤ :=
  A022760.P12074805106371372305.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022760.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034936.P1115765045630556781

`2*A153218(n+1)+1`
-/

namespace A034936.P1115765045630556781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A153218 (n + 1) + 1

end

end A034936.P1115765045630556781

noncomputable section

/-- A034936: Numbers k such that 3*k + 4 is prime.

Offset 1, canonical program `A034936.P1115765045630556781`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034936 (n : ℕ) : ℤ :=
  A034936.P1115765045630556781.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034936.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050462.P11134913657141062416

`A050471(n+1)+A050466(n+1)`
-/

namespace A050462.P11134913657141062416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050471 (n + 1) + A050466 (n + 1)

end

end A050462.P11134913657141062416

noncomputable section

/-- A050462: a(n) = Sum_{d|n, n/d=1 mod 4} d^3.

Offset 1, canonical program `A050462.P11134913657141062416`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050466, A050471, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A050462 (n : ℕ) : ℤ :=
  A050462.P11134913657141062416.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050466, A050471, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A050462.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A067722.P13571453614909956213

`A193800(A004277(n))%A016885(n)`
-/

namespace A067722.P13571453614909956213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193800 (A004277 n).toNat) (A016885 n)

end

end A067722.P13571453614909956213

noncomputable section

/-- A067722: Least positive integer k such that n*(n + k) is a perfect square.

Offset 0, canonical program `A067722.P13571453614909956213`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 501 terms. -/
def A067722 (n : ℕ) : ℤ :=
  A067722.P13571453614909956213.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 501 terms. -/
def A067722.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068993.P18255477048502972126

`filter[A332269(n+1), A353519(#)]`
-/

namespace A068993.P18255477048502972126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353519 (f1 j).toNat = 1) n)

end

end A068993.P18255477048502972126

noncomputable section

/-- A068993: Numbers k such that A062799(k) = 4.

Offset 1, canonical program `A068993.P18255477048502972126`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9989 terms. -/
def A068993 (n : ℕ) : ℤ :=
  A068993.P18255477048502972126.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9989 terms. -/
def A068993.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069546.P4827855718774494868

`∑{d}[n+1, A065764(#)*A358346((n+1)/#)]`
-/

namespace A069546.P4827855718774494868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A065764 d * A358346 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069546.P4827855718774494868

noncomputable section

/-- A069546: a(n) = Sum_{d|n} sigma(n*d).

Offset 1, canonical program `A069546.P4827855718774494868`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069546 (n : ℕ) : ℤ :=
  A069546.P4827855718774494868.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069546.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072000.P3706059858088101648

`A072613(n+1)+A056811(n+1)`
-/

namespace A072000.P3706059858088101648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072613 (n + 1) + A056811 (n + 1)

end

end A072000.P3706059858088101648

noncomputable section

/-- A072000: Number of semiprimes (A001358) <= n.

Offset 1, canonical program `A072000.P3706059858088101648`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072613, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A072000 (n : ℕ) : ℤ :=
  A072000.P3706059858088101648.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072613, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A072000.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A074847.P10505165968805150031

`A000203(A053165(n+1))*A300909(n+1)`
-/

namespace A074847.P10505165968805150031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A053165 (n + 1)).toNat * A300909 (n + 1)

end

end A074847.P10505165968805150031

noncomputable section

/-- A074847: Sum of 4-infinitary divisors of n: if n=Product p(i)^r(i) and d=Product p(i)^s(i), each s(i) has a digit a<=b in its 4-ary expansion everywhere that the corresponding r(i) has a digit b, then d is a 4-infinitary-divisor of n.

Offset 1, canonical program `A074847.P10505165968805150031`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074847 (n : ℕ) : ℤ :=
  A074847.P10505165968805150031.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074847.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089439.P9144807234089263602

`p?[A153218(n+1)-1]`
-/

namespace A089439.P9144807234089263602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153218 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089439.P9144807234089263602

noncomputable section

/-- A089439: 6p+13 and p are primes.

Offset 1, canonical program `A089439.P9144807234089263602`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1057 terms. -/
def A089439 (n : ℕ) : ℤ :=
  A089439.P9144807234089263602.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1057 terms. -/
def A089439.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143202.P5912992865618144092

`∩[A089632(n+1), A256617(n+1)]`
-/

namespace A143202.P5912992865618144092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089632 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A143202.P5912992865618144092

noncomputable section

/-- A143202: Numbers having exactly two distinct prime factors p, q with q = p+2.

Offset 1, canonical program `A143202.P5912992865618144092`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 250 terms. -/
def A143202 (n : ℕ) : ℤ :=
  (A143202.P5912992865618144092.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 250 terms. -/
def A143202.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153196.P3857920893069032471

`∩[A059325(n+1), A153218(n+1)]`
-/

namespace A153196.P3857920893069032471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153196.P3857920893069032471

noncomputable section

/-- A153196: Numbers k such that 6*k+5 and 6*k+7 are twin primes.

Offset 1, canonical program `A153196.P3857920893069032471`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A153196 (n : ℕ) : ℤ :=
  (A153196.P3857920893069032471.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A153196.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A165276.P8359485460943273478

`A007895(n+1)-A165277(n+1)`
-/

namespace A165276.P8359485460943273478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (n + 1) - A165277 (n + 1)

end

end A165276.P8359485460943273478

noncomputable section

/-- A165276: Number of even-indexed Fibonacci numbers in the Zeckendorf representation of n.

Offset 1, canonical program `A165276.P8359485460943273478`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A165276 (n : ℕ) : ℤ :=
  A165276.P8359485460943273478.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A165276.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A008835.P15108577995653560625

`(n+1)/A053165(n+1)`
-/

namespace A008835.P15108577995653560625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A053165 (n + 1) : ℚ)

end

end A008835.P15108577995653560625

noncomputable section

/-- A008835: Largest 4th power dividing n.

Offset 1, canonical program `A008835.P15108577995653560625`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053165, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A008835 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A008835.P15108577995653560625.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053165, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A008835.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A143822.P15171175394952669616

`∩[A181570(n+1), A225856(n+1)]`
-/

namespace A143822.P15171175394952669616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181570 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A143822.P15171175394952669616

noncomputable section

/-- A143822: Primes p such that sigma_0((p*p + 1)/2) = 4.

Offset 1, canonical program `A143822.P15171175394952669616`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1613 terms. -/
def A143822 (n : ℕ) : ℤ :=
  (A143822.P15171175394952669616.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1613 terms. -/
def A143822.provenance : SequenceMachineLib.Provenance := .conjectured

