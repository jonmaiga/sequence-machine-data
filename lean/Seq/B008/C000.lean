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
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
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
import Seq.B007.C000
import Seq.B007.C001

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A010995.P9596412038744605423

`∑[A010994(n)]`
-/

namespace A010995.P9596412038744605423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010994 (n + 41)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010995.P9596412038744605423

noncomputable section

/-- A010995: Binomial coefficient C(n,42).

Offset 42, canonical program `A010995.P9596412038744605423`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3949 terms. -/
def A010995 (n : ℕ) : ℤ :=
  A010995.P9596412038744605423.a (n - 42)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3949 terms. -/
def A010995.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029371.P15358491422474167899

`A029238(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029371.P15358491422474167899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029238 n - a (n - 2)

end

end A029371.P15358491422474167899

noncomputable section

/-- A029371: Expansion of 1/((1-x^4)*(1-x^8)*(1-x^9)*(1-x^12)).

Offset 0, canonical program `A029371.P15358491422474167899`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029371 (n : ℕ) : ℤ :=
  A029371.P15358491422474167899.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029371.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029424.P3660127937913149376

`A029355(n)-a(n-4)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=0`
-/

namespace A029424.P3660127937913149376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 0, 0] fun n a =>
  A029355 n - a (n - 4)

end

end A029424.P3660127937913149376

noncomputable section

/-- A029424: Expansion of 1/((1-x^6)(1-x^8)(1-x^9)(1-x^11)).

Offset 0, canonical program `A029424.P3660127937913149376`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029424 (n : ℕ) : ℤ :=
  A029424.P3660127937913149376.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029424.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A038997.P11352540964168427061

`∑{d}[n+1, #*A038996(#)]`
-/

namespace A038997.P11352540964168427061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A038996 d

end

end A038997.P11352540964168427061

noncomputable section

/-- A038997: Number of sublattices of index n in generic 10-dimensional lattice.

Offset 1, canonical program `A038997.P11352540964168427061`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038997 (n : ℕ) : ℤ :=
  A038997.P11352540964168427061.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038997.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049771.P15252291048546155040

`A049763(n+1)+A048156(n+1)`
-/

namespace A049771.P15252291048546155040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049763 (n + 1) + A048156 (n + 1)

end

end A049771.P15252291048546155040

noncomputable section

/-- A049771: Triangular array T read by rows: T(n,k) = (k^4 mod n) + (n^4 mod k).

Offset 1, canonical program `A049771.P15252291048546155040`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049771 (n : ℕ) : ℤ :=
  A049771.P15252291048546155040.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049771.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A064692.P5168258694329805100

`∑{digits}[n, A029352(#)]`
-/

namespace A064692.P5168258694329805100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A029352 x).sum

end

end A064692.P5168258694329805100

noncomputable section

/-- A064692: Total number of holes in decimal expansion of the number n, assuming 4 has 1 hole.

Offset 0, canonical program `A064692.P5168258694329805100`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064692 (n : ℕ) : ℤ :=
  A064692.P5168258694329805100.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064692.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A096037.P14782831491992471023

`A095871(n+1)+A004736(n+1)`
-/

namespace A096037.P14782831491992471023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095871 (n + 1) + A004736 (n + 1)

end

end A096037.P14782831491992471023

noncomputable section

/-- A096037: Triangle T(n,m) = (3*n+3*m-2)*(n+1-m)/2 read by rows.

Offset 1, canonical program `A096037.P14782831491992471023`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A096037 (n : ℕ) : ℤ :=
  A096037.P14782831491992471023.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A096037.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A104634.P15686132702936156286

`A104633(n+1)+2*A000292(A025581(n))`
-/

namespace A104634.P15686132702936156286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104633 (n + 1) + 2 * A000292 (A025581 n).toNat

end

end A104634.P15686132702936156286

noncomputable section

/-- A104634: Triangle T(n,k) = (k-1-n)*(k-2-n)*(k+2*n)/6, 1<=k<=n.

Offset 1, canonical program `A104634.P15686132702936156286`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104634 (n : ℕ) : ℤ :=
  A104634.P15686132702936156286.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104634.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A181666.P3561373156482237499

`record[A115216(n)]`
-/

namespace A181666.P3561373156482237499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115216 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181666.P3561373156482237499

noncomputable section

/-- A181666: Numbers whose odd part is of the form (4^k-1)/3.

Offset 1, canonical program `A181666.P3561373156482237499`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5041 terms. -/
def A181666 (n : ℕ) : ℤ :=
  A181666.P3561373156482237499.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5041 terms. -/
def A181666.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A193974.P14269232743332111222

`A131783(n+1)+1`
-/

namespace A193974.P14269232743332111222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131783 (n + 1) + 1

end

end A193974.P14269232743332111222

noncomputable section

/-- A193974: Mirror of the triangle A193973.

Offset 0, canonical program `A193974.P14269232743332111222`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193974 (n : ℕ) : ℤ :=
  A193974.P14269232743332111222.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193974.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A205838.P10030448835299135618

`A002260(A205556(n+1))`
-/

namespace A205838.P10030448835299135618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A205556 (n + 1)).toNat

end

end A205838.P10030448835299135618

noncomputable section

/-- A205838: The least number j such that 2 divides s(k)-s(j), where k(n)=A205720(n).

Offset 1, canonical program `A205838.P10030448835299135618`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6275 terms. -/
def A205838 (n : ℕ) : ℤ :=
  A205838.P10030448835299135618.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6275 terms. -/
def A205838.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003136.P5015395237831385942

`eq[1, A353816(n)]`
-/

namespace A003136.P5015395237831385942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353816 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A003136.P5015395237831385942

noncomputable section

/-- A003136: Loeschian numbers: numbers of the form x^2 + xy + y^2; norms of vectors in A2 lattice.

Offset 1, canonical program `A003136.P5015395237831385942`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003136 (n : ℕ) : ℤ :=
  (A003136.P5015395237831385942.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003136.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004311.P7792844642208275633

`2*A172067(n)-A172066(n)`
-/

namespace A004311.P7792844642208275633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A172067 n - A172066 n

end

end A004311.P7792844642208275633

noncomputable section

/-- A004311: Binomial coefficient C(2n,n-5).

Offset 5, canonical program `A004311.P7792844642208275633`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A004311 (n : ℕ) : ℤ :=
  A004311.P7792844642208275633.a (n - 5)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A004311.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A024456.P4117989325305379135

`floor(A024449(n+1)/A024447(n+4))`
-/

namespace A024456.P4117989325305379135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024449 (n + 1) : ℚ) / (A024447 (n + 4) : ℚ)⌋

end

end A024456.P4117989325305379135

noncomputable section

/-- A024456: [ (4th elementary symmetric function of P(n))/(2nd elementary symmetric function of P(n)) ], where P(n) = {first n+3 primes}.

Offset 1, canonical program `A024456.P4117989325305379135`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 567 terms. -/
def A024456 (n : ℕ) : ℤ :=
  A024456.P4117989325305379135.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 567 terms. -/
def A024456.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024457.P3627810274368005093

`floor(A024449(n+1)/A024448(n+2))`
-/

namespace A024457.P3627810274368005093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024449 (n + 1) : ℚ) / (A024448 (n + 2) : ℚ)⌋

end

end A024457.P3627810274368005093

noncomputable section

/-- A024457: [ (4th elementary symmetric function of P(n))/(3rd elementary symmetric function of P(n)) ], where P(n) = {first n+3 primes}.

Offset 1, canonical program `A024457.P3627810274368005093`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 553 terms. -/
def A024457 (n : ℕ) : ℤ :=
  A024457.P3627810274368005093.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 553 terms. -/
def A024457.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024524.P1283342088011010465

`∑[A008578(n+4)*A024523(n+3)]`
-/

namespace A024524.P1283342088011010465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 4) * A024523 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024524.P1283342088011010465

noncomputable section

/-- A024524: 4th elementary symmetric function of {1, p(1), p(2), ..., p(n-1)}, where p(0) = 1.

Offset 4, canonical program `A024524.P1283342088011010465`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 534 terms. -/
def A024524 (n : ℕ) : ℤ :=
  A024524.P1283342088011010465.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 534 terms. -/
def A024524.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A028266.P10744337187639313587

`A028263(eq[2, gcd(2, A028263(n))])`
-/

namespace A028266.P10744337187639313587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A028263 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028263 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A028266.P10744337187639313587

noncomputable section

/-- A028266: Even elements in 3-Pascal triangle A028262 (by row).

Offset 0, canonical program `A028266.P10744337187639313587`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8527 terms. -/
def A028266 (n : ℕ) : ℤ :=
  A028266.P10744337187639313587.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8527 terms. -/
def A028266.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028276.P15109551320821074576

`A028263(n)+A007318(n)`
-/

namespace A028276.P15109551320821074576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028263 n + A007318 n

end

end A028276.P15109551320821074576

noncomputable section

/-- A028276: Elements in 4-Pascal triangle A028275 (by row) that are not 1.

Offset 0, canonical program `A028276.P15109551320821074576`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A028276 (n : ℕ) : ℤ :=
  A028276.P15109551320821074576.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A028276.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029028.P12826529296820235701

`∑[A025824(n)]`
-/

namespace A029028.P12826529296820235701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025824 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029028.P12826529296820235701

noncomputable section

/-- A029028: Expansion of 1/((1-x)(1-x^2)(1-x^9)(1-x^11)).

Offset 0, canonical program `A029028.P12826529296820235701`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029028 (n : ℕ) : ℤ :=
  A029028.P12826529296820235701.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029028.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029185.P671418008566287190

`A029077(n)-a(n-1)` with `a(0)=1`
-/

namespace A029185.P671418008566287190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029077 n - a (n - 1)

end

end A029185.P671418008566287190

noncomputable section

/-- A029185: Expansion of 1/((1-x^2)*(1-x^4)*(1-x^7)*(1-x^12)).

Offset 0, canonical program `A029185.P671418008566287190`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029185 (n : ℕ) : ℤ :=
  A029185.P671418008566287190.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029185.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029226.P12300120044546400790

`A029117(n)-a(n-1)` with `a(0)=1`
-/

namespace A029226.P12300120044546400790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029117 n - a (n - 1)

end

end A029226.P12300120044546400790

noncomputable section

/-- A029226: Expansion of 1/((1-x^2)*(1-x^7)*(1-x^8)*(1-x^9)).

Offset 0, canonical program `A029226.P12300120044546400790`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029226 (n : ℕ) : ℤ :=
  A029226.P12300120044546400790.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029226.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029230.P447352754514735135

`A029121(n)-a(n-1)` with `a(0)=1`
-/

namespace A029230.P447352754514735135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029121 n - a (n - 1)

end

end A029230.P447352754514735135

noncomputable section

/-- A029230: Expansion of 1/((1-x^2)*(1-x^7)*(1-x^9)*(1-x^10)).

Offset 0, canonical program `A029230.P447352754514735135`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029230 (n : ℕ) : ℤ :=
  A029230.P447352754514735135.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029230.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029231.P839251406571888672

`A029182(n)+A029209(n)-A029176(n)`
-/

namespace A029231.P839251406571888672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029182 n + (A029209 n - A029176 n)

end

end A029231.P839251406571888672

noncomputable section

/-- A029231: Expansion of 1/((1-x^2)*(1-x^7)*(1-x^9)*(1-x^11)).

Offset 0, canonical program `A029231.P839251406571888672`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029231 (n : ℕ) : ℤ :=
  A029231.P839251406571888672.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029231.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029232.P16177588645430596473

`A029123(n)-a(n-1)` with `a(0)=1`
-/

namespace A029232.P16177588645430596473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029123 n - a (n - 1)

end

end A029232.P16177588645430596473

noncomputable section

/-- A029232: Expansion of 1/((1-x^2)*(1-x^7)*(1-x^9)*(1-x^12)).

Offset 0, canonical program `A029232.P16177588645430596473`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029232 (n : ℕ) : ℤ :=
  A029232.P16177588645430596473.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029232.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029333.P17196548368232780078

`A029200(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029333.P17196548368232780078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029200 n - a (n - 2)

end

end A029333.P17196548368232780078

noncomputable section

/-- A029333: Expansion of 1/((1-x^4)*(1-x^5)*(1-x^7)*(1-x^9)).

Offset 0, canonical program `A029333.P17196548368232780078`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029333 (n : ℕ) : ℤ :=
  A029333.P17196548368232780078.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029333.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029348.P2288613914950587248

`A029215(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029348.P2288613914950587248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029215 n - a (n - 2)

end

end A029348.P2288613914950587248

noncomputable section

/-- A029348: Expansion of 1/((1-x^4)*(1-x^6)*(1-x^7)*(1-x^9)).

Offset 0, canonical program `A029348.P2288613914950587248`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029348 (n : ℕ) : ℤ :=
  A029348.P2288613914950587248.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029348.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029351.P15082155288003523051

`A029261(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029351.P15082155288003523051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A029261 n - a (n - 3)

end

end A029351.P15082155288003523051

noncomputable section

/-- A029351: Expansion of 1/((1-x^4)*(1-x^6)*(1-x^7)*(1-x^12)).

Offset 0, canonical program `A029351.P15082155288003523051`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029351 (n : ℕ) : ℤ :=
  A029351.P15082155288003523051.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029351.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029413.P9052862419176915359

`A029306(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029413.P9052862419176915359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A029306 n - a (n - 3)

end

end A029413.P9052862419176915359

noncomputable section

/-- A029413: Expansion of 1/((1-x^6)*(1-x^7)*(1-x^8)*(1-x^9)).

Offset 0, canonical program `A029413.P9052862419176915359`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029413 (n : ℕ) : ℤ :=
  A029413.P9052862419176915359.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029413.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029417.P3771744636440757540

`A029310(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029417.P3771744636440757540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A029310 n - a (n - 3)

end

end A029417.P3771744636440757540

noncomputable section

/-- A029417: Expansion of 1/((1-x^6)(1-x^7)(1-x^9)(1-x^10)).

Offset 0, canonical program `A029417.P3771744636440757540`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029417 (n : ℕ) : ℤ :=
  A029417.P3771744636440757540.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029417.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029419.P717126810226042508

`A029312(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029419.P717126810226042508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A029312 n - a (n - 3)

end

end A029419.P717126810226042508

noncomputable section

/-- A029419: Expansion of 1/((1-x^6)(1-x^7)(1-x^9)(1-x^12)).

Offset 0, canonical program `A029419.P717126810226042508`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029419 (n : ℕ) : ℤ :=
  A029419.P717126810226042508.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029419.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036238.P9635143634491131780

`A002378(A092543(n+1))%A028263(A057944(n))`
-/

namespace A036238.P9635143634491131780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002378 (A092543 (n + 1)).toNat) (A028263 (A057944 n).toNat)

end

end A036238.P9635143634491131780

noncomputable section

/-- A036238: Triangle of numbers a(r,j) = j*(j+1) mod r+2, r>=1, j=1..r.

Offset 1, canonical program `A036238.P9635143634491131780`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036238 (n : ℕ) : ℤ :=
  A036238.P9635143634491131780.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036238.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A042940.P5946304399982424661

`A038846(n+1)-A045724(n+1)`
-/

namespace A042940.P5946304399982424661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038846 (n + 1) - A045724 (n + 1)

end

end A042940.P5946304399982424661

noncomputable section

/-- A042940: Convolution of Catalan numbers A000108(n+1), n >= 0, with A038846.

Offset 0, canonical program `A042940.P5946304399982424661`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 156 terms. -/
def A042940 (n : ℕ) : ℤ :=
  A042940.P5946304399982424661.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 156 terms. -/
def A042940.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A042985.P49255986044683829

`A038846(n)+A038846(n)-A045724(n)`
-/

namespace A042985.P49255986044683829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038846 n + (A038846 n - A045724 n)

end

end A042985.P49255986044683829

noncomputable section

/-- A042985: Convolution of A000108 (Catalan numbers) with A038846.

Offset 0, canonical program `A042985.P49255986044683829`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 157 terms. -/
def A042985 (n : ℕ) : ℤ :=
  A042985.P49255986044683829.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 157 terms. -/
def A042985.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A056691.P4901059937054800505

`∑{d}[n+1, A054521(A000217(n)+#+1)]`
-/

namespace A056691.P4901059937054800505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A054521 (A000217 n + (d : ℤ) + 1).toNat

end

end A056691.P4901059937054800505

noncomputable section

/-- A056691: Number of divisors d of n with gcd(d+1, n) = 1.

Offset 1, canonical program `A056691.P4901059937054800505`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A056691 (n : ℕ) : ℤ :=
  A056691.P4901059937054800505.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A056691.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A057028.P8117438138446753169

`A056023(n+1)+A092543(n+1)-A209279(n+1)`
-/

namespace A057028.P8117438138446753169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056023 (n + 1) + (A092543 (n + 1) - A209279 (n + 1))

end

end A057028.P8117438138446753169

noncomputable section

/-- A057028: Triangle T read by rows: row n consists of the numbers C(n,2)+1 to C(n+1,2); numbers in odd-numbered places form a decreasing sequence and the others an increasing sequence.

Offset 1, canonical program `A057028.P8117438138446753169`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057028 (n : ℕ) : ℤ :=
  A057028.P8117438138446753169.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057028.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A063037.P15912607101318036246

`A003796(lt[A003726(n+1)-A003796(n+1), 1]+1)`
-/

namespace A063037.P15912607101318036246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003726 (n + 1) - A003796 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003796 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A063037.P15912607101318036246

noncomputable section

/-- A063037: Numbers without 3 consecutive equal binary digits.

Offset 1, canonical program `A063037.P15912607101318036246`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2350 terms. -/
def A063037 (n : ℕ) : ℤ :=
  A063037.P15912607101318036246.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2350 terms. -/
def A063037.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A076645.P4693110428907207431

`A033999(A294317(n))*A210530(n+1)`
-/

namespace A076645.P4693110428907207431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A294317 n).toNat * A210530 (n + 1)

end

end A076645.P4693110428907207431

noncomputable section

/-- A076645: Irregular triangle read by rows of ways to write 0 as 1 +- 2 +- 3 +- 4 +- ... +- k for some k, where signs alternate except that there is one instance of two consecutive positive terms.

Offset 1, canonical program `A076645.P4693110428907207431`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076645 (n : ℕ) : ℤ :=
  A076645.P4693110428907207431.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076645.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078401.P5559632936550946514

`A054521(n+1)+a(n-1)%A002260(n+1)` with `a(0)=1`
-/

namespace A078401.P5559632936550946514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A054521 (n + 1) + Int.tmod (a (n - 1)) (A002260 (n + 1))

end

end A078401.P5559632936550946514

noncomputable section

/-- A078401: Triangle read by rows: T(n,k) = number of numbers <= k that are coprime to n, 1 <= k <= n.

Offset 1, canonical program `A078401.P5559632936550946514`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078401 (n : ℕ) : ℤ :=
  A078401.P5559632936550946514.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078401.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080251.P16627620130656438930

`A003991(ceil(A004201(n+1)/2))`
-/

namespace A080251.P16627620130656438930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 ⌈(A004201 (n + 1) : ℚ) / 2⌉.toNat

end

end A080251.P16627620130656438930

noncomputable section

/-- A080251: Paired decomposition of tetrahedral numbers A000292 arranged as number triangle.

Offset 0, canonical program `A080251.P16627620130656438930`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080251 (n : ℕ) : ℤ :=
  A080251.P16627620130656438930.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080251.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A088307.P12779661996335787613

`A054521(n+1)*A070216(n+1)`
-/

namespace A088307.P12779661996335787613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054521 (n + 1) * A070216 (n + 1)

end

end A088307.P12779661996335787613

noncomputable section

/-- A088307: Triangle, read by rows, T(n,k) = n^2 + k^2 if gcd(n,k)=1, otherwise 0.

Offset 1, canonical program `A088307.P12779661996335787613`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088307 (n : ℕ) : ℤ :=
  A088307.P12779661996335787613.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088307.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A095279.P10356149151849314659

`∑[A095276(n+1)]`
-/

namespace A095279.P10356149151849314659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095276 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095279.P10356149151849314659

noncomputable section

/-- A095279: Partial sums of A095276.

Offset 1, canonical program `A095279.P10356149151849314659`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095279 (n : ℕ) : ℤ :=
  A095279.P10356149151849314659.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095279.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095800.P8184852849266296313

`A002260(n+1)*A209279(n+1)`
-/

namespace A095800.P8184852849266296313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A209279 (n + 1)

end

end A095800.P8184852849266296313

noncomputable section

/-- A095800: Triangle T(n,k) = abs( k *( (2*n+1)*(-1)^(n+k)+2*k-1) /4 ) read by rows, 1<=k<=n.

Offset 1, canonical program `A095800.P8184852849266296313`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095800 (n : ℕ) : ℤ :=
  A095800.P8184852849266296313.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095800.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A095888.P10650338120548630372

`A077385(A004201(n+1))`
-/

namespace A095888.P10650338120548630372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077385 (A004201 (n + 1)).toNat

end

end A095888.P10650338120548630372

noncomputable section

/-- A095888: Triangle read by rows: T(n,k) = n^(n-k), n>=1, 1<=k<=n.

Offset 1, canonical program `A095888.P10650338120548630372`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1653 terms. -/
def A095888 (n : ℕ) : ℤ :=
  A095888.P10650338120548630372.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1653 terms. -/
def A095888.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A107224.P12496773883750467258

`lt[A107015(n+1), A107016(n+1)]+1`
-/

namespace A107224.P12496773883750467258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107015 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107016 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A107224.P12496773883750467258

noncomputable section

/-- A107224: Numbers having in their Zeckendorf representation more odd than even terms.

Offset 1, canonical program `A107224.P12496773883750467258`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7963 terms. -/
def A107224 (n : ℕ) : ℤ :=
  (A107224.P12496773883750467258.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7963 terms. -/
def A107224.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107226.P6003069831219659432

`eq[A107015(n+1), A107016(n+1)]+1`
-/

namespace A107226.P6003069831219659432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107015 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107016 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A107226.P6003069831219659432

noncomputable section

/-- A107226: Numbers having in their Zeckendorf representation as many odd as even terms.

Offset 1, canonical program `A107226.P6003069831219659432`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1049 terms. -/
def A107226 (n : ℕ) : ℤ :=
  (A107226.P6003069831219659432.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1049 terms. -/
def A107226.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A114252.P11532948527994749802

`A002694(n+2)*A030054(n+4)`
-/

namespace A114252.P11532948527994749802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002694 (n + 2) * A030054 (n + 4)

end

end A114252.P11532948527994749802

noncomputable section

/-- A114252: a(n) = C(4+2*n,4+n)*C(9+2*n,0+n).

Offset 0, canonical program `A114252.P11532948527994749802`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002694, A030054, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A114252 (n : ℕ) : ℤ :=
  A114252.P11532948527994749802.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002694, A030054, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A114252.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A117198.P2765245029174201453

`A329678(A059026(n+1))`
-/

namespace A117198.P2765245029174201453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329678 (A059026 (n + 1)).toNat

end

end A117198.P2765245029174201453

noncomputable section

/-- A117198: Generalized Riordan array (1,x)+(x,x^2)+(x^2,x^3).

Offset 0, canonical program `A117198.P2765245029174201453`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117198 (n : ℕ) : ℤ :=
  A117198.P2765245029174201453.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117198.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A121741.P7108714844468851530

`∑[A001281(Δ[A088915(n+1)])]`
-/

namespace A121741.P7108714844468851530
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088915 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121741.P7108714844468851530

noncomputable section

/-- A121741: Dimensions of the irreducible representations of the simple Lie algebra of type A2 (equivalently, the group SL3) over the complex numbers, listed in increasing order.

Offset 1, canonical program `A121741.P7108714844468851530`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 999 terms. -/
def A121741 (n : ℕ) : ℤ :=
  A121741.P7108714844468851530.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 999 terms. -/
def A121741.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121998.P10241062648816022235

`A002260(eq[0, A054521(n+1)]+1)`
-/

namespace A121998.P10241062648816022235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054521 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A121998.P10241062648816022235

noncomputable section

/-- A121998: Table, n-th row gives numbers between 1 and n that have a common factor with n.

Offset 2, canonical program `A121998.P10241062648816022235`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3915 terms. -/
def A121998 (n : ℕ) : ℤ :=
  A121998.P10241062648816022235.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3915 terms. -/
def A121998.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A125232.P7385240608015978380

`2*A125165(n)-A104712(n+2)`
-/

namespace A125232.P7385240608015978380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A125165 n - A104712 (n + 2)

end

end A125232.P7385240608015978380

noncomputable section

/-- A125232: Triangle T(n,k) read by rows: the (n-k)-th term of the k-fold iterated partial sum of the pentagonal numbers.

Offset 1, canonical program `A125232.P7385240608015978380`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125232 (n : ℕ) : ℤ :=
  A125232.P7385240608015978380.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125232.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125233.P3882684822699850619

`2*A125165(n)-A135278(n)`
-/

namespace A125233.P3882684822699850619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A125165 n - A135278 n

end

end A125233.P3882684822699850619

noncomputable section

/-- A125233: Triangle T(n,k) read by rows, the (n-k)-th term of the k times repeated partial sum of the hexagonal numbers, 0 <= k < n, 0 < n.

Offset 0, canonical program `A125233.P3882684822699850619`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125233 (n : ℕ) : ℤ :=
  A125233.P3882684822699850619.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125233.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127169.P17750561973413488397

`A034718(A054531(n+1))*A051731(n+1)`
-/

namespace A127169.P17750561973413488397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034718 (A054531 (n + 1)).toNat * A051731 (n + 1)

end

end A127169.P17750561973413488397

noncomputable section

/-- A127169: Triangle read by rows: cube of A126988.

Offset 1, canonical program `A127169.P17750561973413488397`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127169 (n : ℕ) : ℤ :=
  A127169.P17750561973413488397.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127169.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127185.P15535594181796026610

`∑{e}[A051537(n+1), #]`
-/

namespace A127185.P15535594181796026610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051537 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A127185.P15535594181796026610

noncomputable section

/-- A127185: Triangle of distances between n>=1 and n>=m>=1 measured by the number of non-common prime factors.

Offset 1, canonical program `A127185.P15535594181796026610`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127185 (n : ℕ) : ℤ :=
  (A127185.P15535594181796026610.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127185.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A127336.P17802364800562295121`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A127335, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A127336 (n : ℕ) : ℤ :=
  A127336.P17802364800562295121.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A127335, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A127336.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A127368.P5347369318367987090

`A054521(n+1)*A128227(n)`
-/

namespace A127368.P5347369318367987090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054521 (n + 1) * A128227 n

end

end A127368.P5347369318367987090

noncomputable section

/-- A127368: Relative prime triangle, read by rows.

Offset 1, canonical program `A127368.P5347369318367987090`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127368 (n : ℕ) : ℤ :=
  A127368.P5347369318367987090.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127368.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127449.P14956762782820329988

`A054521(n+1)*A054531(n+1)`
-/

namespace A127449.P14956762782820329988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054521 (n + 1) * A054531 (n + 1)

end

end A127449.P14956762782820329988

noncomputable section

/-- A127449: Triangle T(n,k) = n if gcd(n,k)=1, =0 otherwise.

Offset 1, canonical program `A127449.P14956762782820329988`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127449 (n : ℕ) : ℤ :=
  A127449.P14956762782820329988.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127449.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A128590.P16993943773611964593

`(A003057(n+2)-A209279(n+1))*A209279(n+1)`
-/

namespace A128590.P16993943773611964593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003057 (n + 2) - A209279 (n + 1)) * A209279 (n + 1)

end

end A128590.P16993943773611964593

noncomputable section

/-- A128590: Triangle read by rows, matrix product A128179 * A000012.

Offset 1, canonical program `A128590.P16993943773611964593`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128590 (n : ℕ) : ℤ :=
  A128590.P16993943773611964593.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128590.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129234.P10543029796257728655

`(A054531(n+1)+A002262(n))*A051731(n+1)`
-/

namespace A129234.P10543029796257728655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A054531 (n + 1) + A002262 n) * A051731 (n + 1)

end

end A129234.P10543029796257728655

noncomputable section

/-- A129234: Triangle read by rows: T(n,k) = n/k + k - 1 if n mod k = 0; otherwise T(n,k)=0 (1 <= k <= n).

Offset 1, canonical program `A129234.P10543029796257728655`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129234 (n : ℕ) : ℤ :=
  A129234.P10543029796257728655.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129234.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A130209.P2278813470092535691

`A023531(n)*A051194(n+1)`
-/

namespace A130209.P2278813470092535691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A051194 (n + 1)

end

end A130209.P2278813470092535691

noncomputable section

/-- A130209: Diagonalized matrix of d(n), A000005, number of divisors of n.

Offset 1, canonical program `A130209.P2278813470092535691`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130209 (n : ℕ) : ℤ :=
  A130209.P2278813470092535691.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130209.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A137409.P1497138613230208861`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A137409 (n : ℕ) : ℤ :=
  (A137409.P1497138613230208861.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
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

/-! ## A140874.P6691662635771918061

`A104712(n+2)-(A209518(n)+A028327(n))`
-/

namespace A140874.P6691662635771918061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104712 (n + 2) - (A209518 n + A028327 n)

end

end A140874.P6691662635771918061

noncomputable section

/-- A140874: Triangle T(n,k) = binomial(n,k+2)-2*binomial(n,k+1)-binomial(n,k) read by rows, 0<=k<=n-2, n>=2.

Offset 2, canonical program `A140874.P6691662635771918061`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140874 (n : ℕ) : ℤ :=
  A140874.P6691662635771918061.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140874.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A142971.P11295584291541300663

`-A051731(n+1)*A061397(A054531(n+1))`
-/

namespace A142971.P11295584291541300663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A051731 (n + 1) * A061397 (A054531 (n + 1)).toNat)

end

end A142971.P11295584291541300663

noncomputable section

/-- A142971: Triangle read by rows: A061397 with negative signs interleaved with (k-1) zeros.

Offset 1, canonical program `A142971.P11295584291541300663`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. -/
def A142971 (n : ℕ) : ℤ :=
  A142971.P11295584291541300663.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. -/
def A142971.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A152010.P5083475496821367649`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A127335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A152010 (n : ℕ) : ℤ :=
  A152010.P5083475496821367649.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A127335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A152010.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A154777.P4882271636205647765

`eq[1, char[A338432(n+1)]]`
-/

namespace A154777.P4882271636205647765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338432 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A154777.P4882271636205647765

noncomputable section

/-- A154777: Numbers of the form x^2 + 2*y^2 with positive integers x and y.

Offset 1, canonical program `A154777.P4882271636205647765`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3070 terms. -/
def A154777 (n : ℕ) : ℤ :=
  (A154777.P4882271636205647765.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3070 terms. -/
def A154777.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A155939.P15331834315915861086

`eq[0, A096500(A269044(n))]`
-/

namespace A155939.P15331834315915861086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096500 (A269044 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A155939.P15331834315915861086

noncomputable section

/-- A155939: Numbers k such that 13*k + 8 is not a prime.

Offset 1, canonical program `A155939.P15331834315915861086`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A155939 (n : ℕ) : ℤ :=
  (A155939.P15331834315915861086.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A155939.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A158946.P11062065186975747176

`A209279(A066182(n+1)-A003056(n))`
-/

namespace A158946.P11062065186975747176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209279 (A066182 (n + 1) - A003056 n).toNat

end

end A158946.P11062065186975747176

noncomputable section

/-- A158946: Triangle read by rows, A000012(signed) * A145677 * A000012.

Offset 1, canonical program `A158946.P11062065186975747176`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158946 (n : ℕ) : ℤ :=
  A158946.P11062065186975747176.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158946.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A164295.P6843823552470505705

`A054521(n+1)+A051731(n+1)`
-/

namespace A164295.P6843823552470505705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054521 (n + 1) + A051731 (n + 1)

end

end A164295.P6843823552470505705

noncomputable section

/-- A164295: Triangle T(n,k) read by rows: sum of the triangles A054521 and A051731.

Offset 1, canonical program `A164295.P6843823552470505705`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A164295 (n : ℕ) : ℤ :=
  A164295.P6843823552470505705.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A164295.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A167192.P15421347857005560229

`A054531(n+1)-A164306(n+1)`
-/

namespace A167192.P15421347857005560229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (n + 1) - A164306 (n + 1)

end

end A167192.P15421347857005560229

noncomputable section

/-- A167192: Triangle read by rows: T(n,k) = (n-k)/gcd(n,k), 1 <= k <= n.

Offset 1, canonical program `A167192.P15421347857005560229`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167192 (n : ℕ) : ℤ :=
  A167192.P15421347857005560229.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167192.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A168475.P426283500225182061

`p?[A168472(n+7)-A168472(n+4)]`
-/

namespace A168475.P426283500225182061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168472 (n + 7) - A168472 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A168475.P426283500225182061

noncomputable section

/-- A168475: Primes of the form: sum of 3 consecutive products of two distinct primes.

Offset 1, canonical program `A168475.P426283500225182061`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 904 terms. -/
def A168475 (n : ℕ) : ℤ :=
  A168475.P426283500225182061.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 904 terms. -/
def A168475.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A188399.P12920571066288009354

`A188322(n+4)-5`
-/

namespace A188399.P12920571066288009354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188322 (n + 4) - 5

end

end A188399.P12920571066288009354

noncomputable section

/-- A188399: Positions of 0 in A188398; complement of A188265.

Offset 1, canonical program `A188399.P12920571066288009354`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A188399 (n : ℕ) : ℤ :=
  A188399.P12920571066288009354.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A188399.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A194121.P4983122932321246475

`A194118(n)+A014410(n+2)`
-/

namespace A194121.P4983122932321246475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194118 n + A014410 (n + 2)

end

end A194121.P4983122932321246475

noncomputable section

/-- A194121: Triangular array: T(n,k)=C(n+2,k)+C(n+2,k+1)+C(n+2,k+2), 0<=k<=n.

Offset 0, canonical program `A194121.P4983122932321246475`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194121 (n : ℕ) : ℤ :=
  A194121.P4983122932321246475.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194121.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A204980.P133552277968696332

`A001281(A204906(n+1)+A204898(n+1))`
-/

namespace A204980.P133552277968696332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A204906 (n + 1) + A204898 (n + 1)).toNat

end

end A204980.P133552277968696332

noncomputable section

/-- A204980: Ordered differences of distinct averages of two consecutive odd primes.

Offset 1, canonical program `A204980.P133552277968696332`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204980 (n : ℕ) : ℤ :=
  A204980.P133552277968696332.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204980.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A008495.P17411499091848740106

`∑[A008494(n)+A001287(n)]-A008494(n)`
-/

namespace A008495.P17411499091848740106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008494 n + A001287 (n + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A008494 n

end

end A008495.P17411499091848740106

noncomputable section

/-- A008495: Expansion of (1-x^13) / (1-x)^13.

Offset 0, canonical program `A008495.P17411499091848740106`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008495 (n : ℕ) : ℤ :=
  A008495.P17411499091848740106.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008495.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A025707.P4187545652726333253

`∑[A000196(∑[A184732(n+1)])]`
-/

namespace A025707.P4187545652726333253
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184732 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025707.P4187545652726333253

noncomputable section

/-- A025707: Index of 5^n within the sequence of the numbers of the form 5^i*6^j.

Offset 0, canonical program `A025707.P4187545652726333253`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A025707 (n : ℕ) : ℤ :=
  A025707.P4187545652726333253.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A025707.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025792.P9769894626943963731

`A025824(abs(1-n))+A025824(n)`
-/

namespace A025792.P9769894626943963731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025824 |1 - (n : ℤ)|.toNat + A025824 n

end

end A025792.P9769894626943963731

noncomputable section

/-- A025792: Expansion of 1/((1-x)*(1-x^9)*(1-x^11)).

Offset 0, canonical program `A025792.P9769894626943963731`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025792 (n : ℕ) : ℤ :=
  A025792.P9769894626943963731.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025792.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026086.P5314015387268716224

`Δ[A026070(n+3)]`
-/

namespace A026086.P5314015387268716224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026070 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026086.P5314015387268716224

noncomputable section

/-- A026086: Number of (s(0), s(1), ..., s(n)) such that s(0) = 0, |s(i) - s(i-1)| = 1 for i = 1,2,3; |s(i) - s(i-1)| <= 1 for i >= 4, s(n) = 3; also a(n) = T(n,n-3), where T is the array defined in A026082.

Offset 4, canonical program `A026086.P5314015387268716224`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A026086 (n : ℕ) : ℤ :=
  A026086.P5314015387268716224.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A026086.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026124.P5705506064951519193

`Δ[A026123(n+2)-A026107(n+2)]`
-/

namespace A026124.P5705506064951519193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026123 (n + 2) - A026107 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026124.P5705506064951519193

noncomputable section

/-- A026124: a(n) = number of (s(0),s(1),...,s(n)) such that every s(i) is a nonnegative integer, s(0) = 1, s(n) = 3, |s(1) - s(0)| = 1, |s(i) - s(i-1)| <= 1 for i >= 2. Also a(n) = T(n,n-2), where T is the array in A026120.

Offset 2, canonical program `A026124.P5705506064951519193`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A026124 (n : ℕ) : ℤ :=
  A026124.P5705506064951519193.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A026124.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026325.P12326969144217981572

`2*A026134(n+1)-A005322(n+2)`
-/

namespace A026325.P12326969144217981572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026134 (n + 1) - A005322 (n + 2)

end

end A026325.P12326969144217981572

noncomputable section

/-- A026325: Number of paths in the plane x >= 0 and y >= -2, from (0,0) to (n,0), and consisting of steps U = (1,1), D = (1,-1) and H = (1,0).

Offset 0, canonical program `A026325.P12326969144217981572`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. -/
def A026325 (n : ℕ) : ℤ :=
  A026325.P12326969144217981572.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. -/
def A026325.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A027260.P16526017121427228600

`A026070(2*(n+3))`
-/

namespace A027260.P16526017121427228600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026070 (2 * (n + 3))

end

end A027260.P16526017121427228600

noncomputable section

/-- A027260: a(n) = Sum_{k=0..2n-3} T(n,k) * T(n,k+3), with T given by A025177.

Offset 3, canonical program `A027260.P16526017121427228600`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A027260 (n : ℕ) : ℤ :=
  A027260.P16526017121427228600.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A027260.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A029084.P1492728196900736452

`A029031(n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A029084.P1492728196900736452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A029031 n - a (n - 2)

end

end A029084.P1492728196900736452

noncomputable section

/-- A029084: Expansion of 1/((1-x)(1-x^4)(1-x^11)(1-x^12)).

Offset 0, canonical program `A029084.P1492728196900736452`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029084 (n : ℕ) : ℤ :=
  A029084.P1492728196900736452.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029084.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029218.P10369731130158592802

`A029160(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A029218.P10369731130158592802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  A029160 n - a (n - 3)

end

end A029218.P10369731130158592802

noncomputable section

/-- A029218: Expansion of 1/((1-x^2)*(1-x^6)*(1-x^7)*(1-x^12)).

Offset 0, canonical program `A029218.P10369731130158592802`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029218 (n : ℕ) : ℤ :=
  A029218.P10369731130158592802.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029218.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029280.P16538344237071872195

`A029261(n)+A029291(n)-A029271(n)`
-/

namespace A029280.P16538344237071872195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029261 n + (A029291 n - A029271 n)

end

end A029280.P16538344237071872195

noncomputable section

/-- A029280: Expansion of 1/((1-x^3)*(1-x^5)*(1-x^7)*(1-x^11)).

Offset 0, canonical program `A029280.P16538344237071872195`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029280 (n : ℕ) : ℤ :=
  A029280.P16538344237071872195.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029280.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029337.P15838410275073056490

`A029078(n)+A029393(n)-A029092(n)`
-/

namespace A029337.P15838410275073056490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029078 n + (A029393 n - A029092 n)

end

end A029337.P15838410275073056490

noncomputable section

/-- A029337: Expansion of 1/((1-x^4)*(1-x^5)*(1-x^8)*(1-x^9)).

Offset 0, canonical program `A029337.P15838410275073056490`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029337 (n : ℕ) : ℤ :=
  A029337.P15838410275073056490.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029337.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029383.P10874910556214980538

`A029195(n)+A029393(n)-A029199(n)`
-/

namespace A029383.P10874910556214980538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029195 n + (A029393 n - A029199 n)

end

end A029383.P10874910556214980538

noncomputable section

/-- A029383: Expansion of 1/((1-x^5)*(1-x^6)*(1-x^8)*(1-x^9)).

Offset 0, canonical program `A029383.P10874910556214980538`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029383 (n : ℕ) : ℤ :=
  A029383.P10874910556214980538.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029383.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A057811.P15232790486680947768

`a(n-1)+A096500(a(n-1))+1` with `a(0)=1`
-/

namespace A057811.P15232790486680947768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A096500 (a (n - 1)).toNat + 1)

end

end A057811.P15232790486680947768

noncomputable section

/-- A057811: Numbers k such that pi(k) is even.

Offset 1, canonical program `A057811.P15232790486680947768`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057811 (n : ℕ) : ℤ :=
  A057811.P15232790486680947768.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057811.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057812.P4262350410008531703

`a(n-1)+A096500(a(n-1))+1` with `a(0)=2`
-/

namespace A057812.P4262350410008531703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (A096500 (a (n - 1)).toNat + 1)

end

end A057812.P4262350410008531703

noncomputable section

/-- A057812: Numbers k such that pi(k) is odd.

Offset 1, canonical program `A057812.P4262350410008531703`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057812 (n : ℕ) : ℤ :=
  A057812.P4262350410008531703.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057812.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A061560.P7270422985362392314

`record[A171435(A049643(n+1))]`
-/

namespace A061560.P7270422985362392314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (A049643 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061560.P7270422985362392314

noncomputable section

/-- A061560: Lengths of Farey-series (A005728) which are not primes.

Offset 1, canonical program `A061560.P7270422985362392314`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 440 terms. -/
def A061560 (n : ℕ) : ℤ :=
  A061560.P7270422985362392314.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 440 terms. -/
def A061560.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A078119.P14462458390261916496

`∑{d}[n+1, #]-Δ[A049643(n+2)]`
-/

namespace A078119.P14462458390261916496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049643 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - (f2 (n + 1) - f2 n)

end

end A078119.P14462458390261916496

noncomputable section

/-- A078119: a(n) = sigma(n) - phi(n+2), where sigma = sum of divisors (A000203) and phi = Euler totient function (A000010).

Offset 1, canonical program `A078119.P14462458390261916496`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A078119 (n : ℕ) : ℤ :=
  A078119.P14462458390261916496.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A078119.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080305.P4391190327060872613

`n*C(2, A347093(n+1))+1`
-/

namespace A080305.P4391190327060872613
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.choose 2 (A347093 (n + 1)).toNat + 1

end

end A080305.P4391190327060872613

noncomputable section

/-- A080305: Denominator of n^mu(n), where mu is the Moebius function (A008683).

Offset 1, canonical program `A080305.P4391190327060872613`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080305 (n : ℕ) : ℤ :=
  (A080305.P4391190327060872613.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080305.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A092404.P8382563867178038273

`record[A049643(A052938(n))]-A049643(n)`
-/

namespace A092404.P8382563867178038273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049643 (A052938 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A049643 n

end

end A092404.P8382563867178038273

noncomputable section

/-- A092404: a(n) = phi(n) + phi(n+1).

Offset 1, canonical program `A092404.P8382563867178038273`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A092404 (n : ℕ) : ℤ :=
  A092404.P8382563867178038273.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A092404.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A104523.P6149555644268847556

`eq[2*A010056(n), A010056(A343647(n))]`
-/

namespace A104523.P6149555644268847556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A010056 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010056 (A343647 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A104523.P6149555644268847556

noncomputable section

/-- A104523: Numbers that are neither Fibonacci nor Lucas numbers.

Offset 1, canonical program `A104523.P6149555644268847556`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104523 (n : ℕ) : ℤ :=
  (A104523.P6149555644268847556.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104523.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A115267.P1462664793311631896

`p?[A046389(n+1)-2]`
-/

namespace A115267.P1462664793311631896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046389 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A115267.P1462664793311631896

noncomputable section

/-- A115267: Primes of the form p*q*r-2, where p, q and r are distinct primes.

Offset 1, canonical program `A115267.P1462664793311631896`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A115267 (n : ℕ) : ℤ :=
  A115267.P1462664793311631896.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A115267.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A124725.P7594293503964547841

`A028326(n)-A131085(n)`
-/

namespace A124725.P7594293503964547841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - A131085 n

end

end A124725.P7594293503964547841

noncomputable section

/-- A124725: Triangle read by rows: T(n,k) = binomial(n,k) + binomial(n,k+2) (0 <= k <= n).

Offset 0, canonical program `A124725.P7594293503964547841`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124725 (n : ℕ) : ℤ :=
  A124725.P7594293503964547841.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124725.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A127705.P9735207919828446703

`Δ[A049643(n)]-A162512(n+1)%2`
-/

namespace A127705.P9735207919828446703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049643 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - Int.tmod (A162512 (n + 1)) 2

end

end A127705.P9735207919828446703

noncomputable section

/-- A127705: a(n) = mu(n) + Sum_{k|n, k>1} (k+1)*mu(n/k), where mu = A008683.

Offset 1, canonical program `A127705.P9735207919828446703`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A127705 (n : ℕ) : ℤ :=
  A127705.P9735207919828446703.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A127705.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A130734.P17083660106069136315

`A083920(n)+A003056(A118759(n))`
-/

namespace A130734.P17083660106069136315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083920 n + A003056 (A118759 n).toNat

end

end A130734.P17083660106069136315

noncomputable section

/-- A130734: List of numbers of cents you can have in US coins without having change for a dollar.

Offset 1, canonical program `A130734.P17083660106069136315`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A130734 (n : ℕ) : ℤ :=
  A130734.P17083660106069136315.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A130734.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A138182.P6958188219424873978

`A139764(A000040(n+1))`
-/

namespace A138182.P6958188219424873978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139764 (A000040 (n + 1)).toNat

end

end A138182.P6958188219424873978

noncomputable section

/-- A138182: Smallest summand in the Zeckendorf representation of the n-th prime.

Offset 1, canonical program `A138182.P6958188219424873978`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A138182 (n : ℕ) : ℤ :=
  A138182.P6958188219424873978.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A138182.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A140699.P12327101926967723336

`A014963(A010766(n+1))*A054524(n+1)`
-/

namespace A140699.P12327101926967723336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A010766 (n + 1)).toNat * A054524 (n + 1)

end

end A140699.P12327101926967723336

noncomputable section

/-- A140699: Triangle read by rows: T(n,k) = moebius(k)*A014963(n/k) if k divides n, T(n,k) = 0 otherwise.

Offset 1, canonical program `A140699.P12327101926967723336`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A140699 (n : ℕ) : ℤ :=
  A140699.P12327101926967723336.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A140699.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A153275.P3519607136667469352

`(A053178(n+1)-1)/10`
-/

namespace A153275.P3519607136667469352
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053178 (n + 1) - 1 : ℚ) / 10

end

end A153275.P3519607136667469352

noncomputable section

/-- A153275: Numbers n such that 10*n+1 is not prime.

Offset 1, canonical program `A153275.P3519607136667469352`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053178, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A153275 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A153275.P3519607136667469352.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053178, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A153275.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A157347.P14782022362732044519

`∩[A046389(n+1), A350704(n+1)]`
-/

namespace A157347.P14782022362732044519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046389 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350704 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157347.P14782022362732044519

noncomputable section

/-- A157347: Products of 3 distinct non-Sophie Germain primes.

Offset 1, canonical program `A157347.P14782022362732044519`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1049 terms. -/
def A157347 (n : ℕ) : ℤ :=
  (A157347.P14782022362732044519.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1049 terms. -/
def A157347.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A165725.P4009676030302240321

`A132740(A038502(n+1))`
-/

namespace A165725.P4009676030302240321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132740 (A038502 (n + 1)).toNat

end

end A165725.P4009676030302240321

noncomputable section

/-- A165725: Largest divisor of n coprime to 30. I.e., a(n) = max { k | gcd(n, k) = k and gcd(k, 30) = 1 }.

Offset 1, canonical program `A165725.P4009676030302240321`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A165725 (n : ℕ) : ℤ :=
  A165725.P4009676030302240321.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A165725.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A169937.P9982676280992684185

`A001263(A000124(n+12)+12)`
-/

namespace A169937.P9982676280992684185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (A000124 (n + 12) + 12).toNat

end

end A169937.P9982676280992684185

noncomputable section

/-- A169937: a(n) = binomial(m+n-1,n)^2 - binomial(m+n,n+1)*binomial(m+n-2,n-1) with m = 14.

Offset 0, canonical program `A169937.P9982676280992684185`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A169937 (n : ℕ) : ℤ :=
  A169937.P9982676280992684185.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A169937.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A172054.P10035823565765016099

`A121765(n+1)-A121763(n+1)`
-/

namespace A172054.P10035823565765016099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121765 (n + 1) - A121763 (n + 1)

end

end A172054.P10035823565765016099

noncomputable section

/-- A172054: n-th number k such that 6*k-1 is composite while 6*k+1 is prime minus n-th number m such that 6*m-1 is prime while 6*m+1 is composite.

Offset 1, canonical program `A172054.P10035823565765016099`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A121763, A121765, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A172054 (n : ℕ) : ℤ :=
  A172054.P10035823565765016099.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A121763, A121765, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A172054.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A172055.P1149678872916383177

`A121765(n+1)+A121763(n+1)`
-/

namespace A172055.P1149678872916383177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121765 (n + 1) + A121763 (n + 1)

end

end A172055.P1149678872916383177

noncomputable section

/-- A172055: n-th number k such that 6*k-1 is composite while 6*k+1 is prime plus n-th number m such that 6*m-1 is prime while 6*m+1 is composite.

Offset 1, canonical program `A172055.P1149678872916383177`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A121763, A121765, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A172055 (n : ℕ) : ℤ :=
  A172055.P1149678872916383177.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A121763, A121765, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A172055.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A187151.P13703592292862614707

`A186648(n)+A000984(n)`
-/

namespace A187151.P13703592292862614707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186648 n + A000984 n

end

end A187151.P13703592292862614707

noncomputable section

/-- A187151: Number of walks of length n starting at origin and ending in first quadrant on a square lattice.

Offset 0, canonical program `A187151.P13703592292862614707`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A187151 (n : ℕ) : ℤ :=
  A187151.P13703592292862614707.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A187151.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188003.P15185431841001096043

`A063468(n+2)+3+n`
-/

namespace A188003.P15185431841001096043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063468 (n + 2) + 3 + (n : ℤ)

end

end A188003.P15185431841001096043

noncomputable section

/-- A188003: Number of nondecreasing arrangements of 3 numbers x(i) in -(n+1)..(n+1) with the sum of sign(x(i))*x(i)^2 zero.

Offset 1, canonical program `A188003.P15185431841001096043`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A188003 (n : ℕ) : ℤ :=
  A188003.P15185431841001096043.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A188003.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190199.P13571509793014364535

`comp[A190200(n+1)-1]+1`
-/

namespace A190199.P13571509793014364535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190200 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A190199.P13571509793014364535

noncomputable section

/-- A190199: Positions of 0 in A190198; complement of A190200.

Offset 1, canonical program `A190199.P13571509793014364535`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190199 (n : ℕ) : ℤ :=
  (A190199.P13571509793014364535.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190199.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191329.P14559015055408526172

`A085002(n+1)+A171587(n)`
-/

namespace A191329.P14559015055408526172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085002 (n + 1) + A171587 n

end

end A191329.P14559015055408526172

noncomputable section

/-- A191329: (Lower Wythoff sequence mod 2)+(Upper Wythoff sequence mod 2).

Offset 1, canonical program `A191329.P14559015055408526172`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A085002, A171587, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A191329 (n : ℕ) : ℤ :=
  A191329.P14559015055408526172.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A085002, A171587, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A191329.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A193453.P5569674071105816491

`∏{e}[A053575(n+1), #+1]`
-/

namespace A193453.P5569674071105816491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053575 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A193453.P5569674071105816491

noncomputable section

/-- A193453: Number of odd divisors of phi(n).

Offset 1, canonical program `A193453.P5569674071105816491`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193453 (n : ℕ) : ℤ :=
  (A193453.P5569674071105816491.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193453.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A001392.P16410395510823087273

`∑[A026015(n+3)]`
-/

namespace A001392.P16410395510823087273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026015 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001392.P16410395510823087273

noncomputable section

/-- A001392: a(n) = 9*binomial(2n,n-4)/(n+5).

Offset 4, canonical program `A001392.P16410395510823087273`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A001392 (n : ℕ) : ℤ :=
  A001392.P16410395510823087273.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A001392.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007160.P12294667680061226514

`A086810(A052905(n+3))`
-/

namespace A007160.P12294667680061226514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086810 (A052905 (n + 3)).toNat

end

end A007160.P12294667680061226514

noncomputable section

/-- A007160: Number of diagonal dissections of a convex (n+6)-gon into n regions.

Offset 1, canonical program `A007160.P12294667680061226514`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. -/
def A007160 (n : ℕ) : ℤ :=
  A007160.P12294667680061226514.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. -/
def A007160.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A014818.P18315329398595653602

`∑[∑[A016789(n)]]-A014813(n+1)`
-/

namespace A014818.P18315329398595653602
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A014813 (n + 1)

end

end A014818.P18315329398595653602

noncomputable section

/-- A014818: a(n) is the sum over all floor(k^3/n), k=0 to n inclusive.

Offset 1, canonical program `A014818.P18315329398595653602`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014818 (n : ℕ) : ℤ :=
  A014818.P18315329398595653602.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014818.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A025181.P6813046550114564119

`∑[A026070(n+3)]`
-/

namespace A025181.P6813046550114564119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026070 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025181.P6813046550114564119

noncomputable section

/-- A025181: a(n) = number of (s(0), s(1), ..., s(n)) such that s(i) is an integer, s(0) = 0, |s(1)| = 1, |s(i) - s(i-1)| <= 1 for i >= 2, s(n) = 3. Also a(n) = T(n,n-3), where T is the array defined in A025177.

Offset 3, canonical program `A025181.P6813046550114564119`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A025181 (n : ℕ) : ℤ :=
  A025181.P6813046550114564119.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A025181.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025584.P1747553391340850671

`A156828(n+1)%(A001248(n+1)-A008837(n+1)-A049643(n))`
-/

namespace A025584.P1747553391340850671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A156828 (n + 1)) (A001248 (n + 1) - A008837 (n + 1) - A049643 n)

end

end A025584.P1747553391340850671

noncomputable section

/-- A025584: Primes p such that p-2 is not a prime.

Offset 1, canonical program `A025584.P1747553391340850671`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025584 (n : ℕ) : ℤ :=
  A025584.P1747553391340850671.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025584.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027611.P15639940923571817069

`lcm(n+1, A002805(n+1))/(n+1)`
-/

namespace A027611.P15639940923571817069
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A002805 (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A027611.P15639940923571817069

noncomputable section

/-- A027611: Denominator of n * n-th harmonic number.

Offset 1, canonical program `A027611.P15639940923571817069`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A027611 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A027611.P15639940923571817069.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A027611.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027612.P6155522806255221843

`A081530(n+1)/gcd(A003418(n), A081530(n+1))`
-/

namespace A027612.P6155522806255221843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081530 (n + 1) : ℚ) / (Int.gcd (A003418 n) (A081530 (n + 1)) : ℚ)

end

end A027612.P6155522806255221843

noncomputable section

/-- A027612: Numerator of 1/n + 2/(n-1) + 3/(n-2) + ... + (n-1)/2 + n.

Offset 1, canonical program `A027612.P6155522806255221843`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 228 terms. -/
def A027612 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A027612.P6155522806255221843.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 228 terms. -/
def A027612.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A029053.P7146044379385213165

`A025788(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A029053.P7146044379385213165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A025788 n + a (n - 3)

end

end A029053.P7146044379385213165

noncomputable section

/-- A029053: Expansion of 1/((1-x)(1-x^3)(1-x^7)(1-x^12)).

Offset 0, canonical program `A029053.P7146044379385213165`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029053 (n : ℕ) : ℤ :=
  A029053.P7146044379385213165.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029053.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033277.P1526956955922487427

`A086810(A155212(n)+13)`
-/

namespace A033277.P1526956955922487427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086810 (A155212 n + 13).toNat

end

end A033277.P1526956955922487427

noncomputable section

/-- A033277: Number of diagonal dissections of an n-gon into 5 regions.

Offset 6, canonical program `A033277.P1526956955922487427`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 134 terms. -/
def A033277 (n : ℕ) : ℤ :=
  A033277.P1526956955922487427.a (n - 6)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 134 terms. -/
def A033277.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033278.P7441303834248095580

`A086810(A167614(n+4)+3)`
-/

namespace A033278.P7441303834248095580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086810 (A167614 (n + 4) + 3).toNat

end

end A033278.P7441303834248095580

noncomputable section

/-- A033278: Number of diagonal dissections of an n-gon into 6 regions.

Offset 7, canonical program `A033278.P7441303834248095580`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A033278 (n : ℕ) : ℤ :=
  A033278.P7441303834248095580.a (n - 7)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A033278.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033279.P7650083318119210662

`A086810(A166136(n+5)+1)`
-/

namespace A033279.P7650083318119210662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086810 (A166136 (n + 5) + 1).toNat

end

end A033279.P7650083318119210662

noncomputable section

/-- A033279: Number of diagonal dissections of an n-gon into 7 regions.

Offset 8, canonical program `A033279.P7650083318119210662`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. -/
def A033279 (n : ℕ) : ℤ :=
  A033279.P7650083318119210662.a (n - 8)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. -/
def A033279.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033280.P16106475466147934862

`A086810(A055999(n+4))`
-/

namespace A033280.P16106475466147934862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086810 (A055999 (n + 4)).toNat

end

end A033280.P16106475466147934862

noncomputable section

/-- A033280: Number of diagonal dissections of a convex (n+8)-gon into n+1 regions.

Offset 0, canonical program `A033280.P16106475466147934862`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. -/
def A033280 (n : ℕ) : ℤ :=
  A033280.P16106475466147934862.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. -/
def A033280.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A033619.P10616584594608695412

`∪[A118759(A010784(n+1)), A110751(n+1)]`
-/

namespace A033619.P10616584594608695412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A010784 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110751 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A033619.P10616584594608695412

noncomputable section

/-- A033619: Undulating numbers (of form abababab... in base 10).

Offset 1, canonical program `A033619.P10616584594608695412`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A033619 (n : ℕ) : ℤ :=
  (A033619.P10616584594608695412.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A033619.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A043576.P2250830333475736653

`∩[A043741(n+1), A043747(n+1)]`
-/

namespace A043576.P2250830333475736653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043741 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043747 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043576.P2250830333475736653

noncomputable section

/-- A043576: Numbers whose base-2 representation has exactly 9 runs.

Offset 1, canonical program `A043576.P2250830333475736653`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9892 terms. -/
def A043576 (n : ℕ) : ℤ :=
  (A043576.P2250830333475736653.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9892 terms. -/
def A043576.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A049633.P8943239964190066196

`A049643(n+1)+A049643(n)`
-/

namespace A049633.P8943239964190066196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049643 (n + 1) + A049643 n

end

end A049633.P8943239964190066196

noncomputable section

/-- A049633: a(n) = T(n,n+1), array T as in A049627.

Offset 0, canonical program `A049633.P8943239964190066196`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2816 terms. -/
def A049633 (n : ℕ) : ℤ :=
  A049633.P8943239964190066196.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2816 terms. -/
def A049633.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049634.P8228112400628920281

`A092249(n+2)+A049643(n)`
-/

namespace A049634.P8228112400628920281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092249 (n + 2) + A049643 n

end

end A049634.P8228112400628920281

noncomputable section

/-- A049634: a(n) = T(n,n+2), array T as in A049627.

Offset 0, canonical program `A049634.P8228112400628920281`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2897 terms. -/
def A049634 (n : ℕ) : ℤ :=
  A049634.P8228112400628920281.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2897 terms. -/
def A049634.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A053167.P16403547677195952861

`A053166(n+1)^4`
-/

namespace A053167.P16403547677195952861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053166 (n + 1) ^ 4

end

end A053167.P16403547677195952861

noncomputable section

/-- A053167: Smallest 4th power divisible by n.

Offset 1, canonical program `A053167.P16403547677195952861`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053167 (n : ℕ) : ℤ :=
  A053167.P16403547677195952861.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053167.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054661.P5258497401606663667

`2*A054664(n+1)-A054660(n+1)`
-/

namespace A054661.P5258497401606663667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054664 (n + 1) - A054660 (n + 1)

end

end A054661.P5258497401606663667

noncomputable section

/-- A054661: Number of monic irreducible polynomials over GF(4) with zero trace.

Offset 1, canonical program `A054661.P5258497401606663667`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A054661 (n : ℕ) : ℤ :=
  A054661.P5258497401606663667.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A054661.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055980.P11010028541122949967

`floor(A001008(n+1)/A002805(n+1))`
-/

namespace A055980.P11010028541122949967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001008 (n + 1) : ℚ) / (A002805 (n + 1) : ℚ)⌋

end

end A055980.P11010028541122949967

noncomputable section

/-- A055980: a(n) = floor(Sum_{i=1..n} 1/i).

Offset 1, canonical program `A055980.P11010028541122949967`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001008, A002805, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A055980 (n : ℕ) : ℤ :=
  A055980.P11010028541122949967.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001008, A002805, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A055980.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A056283.P12975955271875151804

`∑{d}[n+1, A056288(#)]`
-/

namespace A056283.P12975955271875151804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056288 d

end

end A056283.P12975955271875151804

noncomputable section

/-- A056283: Number of n-bead necklaces with exactly three different colored beads.

Offset 1, canonical program `A056283.P12975955271875151804`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. -/
def A056283 (n : ℕ) : ℤ :=
  A056283.P12975955271875151804.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. -/
def A056283.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A058500.P11694654120924108376

`∩[A067466(n+1), A074781(n+1)]`
-/

namespace A058500.P11694654120924108376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074781 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058500.P11694654120924108376

noncomputable section

/-- A058500: Primes of the form p*2^k + 1, where p is an odd prime and k > 0.

Offset 1, canonical program `A058500.P11694654120924108376`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9916 terms. -/
def A058500 (n : ℕ) : ℤ :=
  (A058500.P11694654120924108376.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9916 terms. -/
def A058500.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060505.P7264886622246051911

`floor(A000799(n+1)/(n+1))`
-/

namespace A060505.P7264886622246051911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000799 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A060505.P7264886622246051911

noncomputable section

/-- A060505: a(n) = floor(2^n/(n^2)).

Offset 1, canonical program `A060505.P7264886622246051911`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A060505 (n : ℕ) : ℤ :=
  A060505.P7264886622246051911.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A060505.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061771.P15852509562719419888

`A000040(lt[A100375(n+1), 2]+1)`
-/

namespace A061771.P15852509562719419888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100375 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A061771.P15852509562719419888

noncomputable section

/-- A061771: Primes p(k) such that p(k+1) - p(k) = 2^m for some m (smaller of a pair of consecutive primes which differ by a power of 2).

Offset 1, canonical program `A061771.P15852509562719419888`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3724 terms. -/
def A061771 (n : ℕ) : ℤ :=
  A061771.P15852509562719419888.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3724 terms. -/
def A061771.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064167.P14975930253514547645

`A001008(n+1)*A002805(n+1)`
-/

namespace A064167.P14975930253514547645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001008 (n + 1) * A002805 (n + 1)

end

end A064167.P14975930253514547645

noncomputable section

/-- A064167: Product of numerator and denominator of the n-th harmonic number, 1 + 1/2 + 1/3 +...+ 1/n.

Offset 1, canonical program `A064167.P14975930253514547645`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A064167 (n : ℕ) : ℤ :=
  A064167.P14975930253514547645.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A064167.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064168.P14856509466120462602

`A002805(n+1)+A001008(n+1)`
-/

namespace A064168.P14856509466120462602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002805 (n + 1) + A001008 (n + 1)

end

end A064168.P14856509466120462602

noncomputable section

/-- A064168: Sum of numerator and denominator in n-th harmonic number, 1 + 1/2 + 1/3 +...+ 1/n.

Offset 1, canonical program `A064168.P14856509466120462602`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A064168 (n : ℕ) : ℤ :=
  A064168.P14856509466120462602.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A064168.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064169.P16990074960060079416

`A001008(n+1)-A002805(n+1)`
-/

namespace A064169.P16990074960060079416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001008 (n + 1) - A002805 (n + 1)

end

end A064169.P16990074960060079416

noncomputable section

/-- A064169: Numerator - denominator in n-th harmonic number, 1 + 1/2 + 1/3 + ... + 1/n.

Offset 1, canonical program `A064169.P16990074960060079416`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001008, A002805, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A064169 (n : ℕ) : ℤ :=
  A064169.P16990074960060079416.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001008, A002805, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A064169.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A070755.P6719190543050349578

`record[A361671(n+1)]`
-/

namespace A070755.P6719190543050349578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361671 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070755.P6719190543050349578

noncomputable section

/-- A070755: Squarefree tetrahedral numbers.

Offset 1, canonical program `A070755.P6719190543050349578`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2519 terms. -/
def A070755 (n : ℕ) : ℤ :=
  A070755.P6719190543050349578.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2519 terms. -/
def A070755.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A078948.P9940267771399150041

`∩[A078848(n+1), A079292(n+1)]`
-/

namespace A078948.P9940267771399150041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078948.P9940267771399150041

noncomputable section

/-- A078948: Primes p such that the differences between the 5 consecutive primes starting with p are (2,6,4,2).

Offset 1, canonical program `A078948.P9940267771399150041`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 851 terms. -/
def A078948 (n : ℕ) : ℤ :=
  (A078948.P9940267771399150041.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 851 terms. -/
def A078948.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082509.P14196802049557851940

`A001223(lt[1, A100375(n+1)]+1)`
-/

namespace A082509.P14196802049557851940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100375 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A082509.P14196802049557851940

noncomputable section

/-- A082509: Differences between consecutive primes that are not powers of 2 in order of their appearance. Differences which are powers of 2 are omitted from A001223.

Offset 1, canonical program `A082509.P14196802049557851940`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6276 terms. -/
def A082509 (n : ℕ) : ℤ :=
  A082509.P14196802049557851940.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6276 terms. -/
def A082509.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A086592.P9537863791654607074

`A020650(n+1)+A020651(n+1)`
-/

namespace A086592.P9537863791654607074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020650 (n + 1) + A020651 (n + 1)

end

end A086592.P9537863791654607074

noncomputable section

/-- A086592: Denominators in left-hand half of Kepler's tree of fractions.

Offset 1, canonical program `A086592.P9537863791654607074`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020650, A020651, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A086592 (n : ℕ) : ℤ :=
  A086592.P9537863791654607074.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020650, A020651, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A086592.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A088116.P1923574354677651035

`A171765(n)+A118759(A054899(n)*A217657(n))`
-/

namespace A088116.P1923574354677651035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171765 n + A118759 (A054899 n * A217657 n).toNat

end

end A088116.P1923574354677651035

noncomputable section

/-- A088116: Let n = abc..., where a, b, c, are digits of n. a(n) = a*bc...+b*ac...+c*ab...+..., i.e., a(n) = sum, over all the digits, of the product (number obtained by deleting a digit multiplied by the deleted digit).

Offset 0, canonical program `A088116.P1923574354677651035`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A088116 (n : ℕ) : ℤ :=
  A088116.P1923574354677651035.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A088116.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088117.P85729162113141528

`A118759(A054899(n)*A217657(n))`
-/

namespace A088117.P85729162113141528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A054899 n * A217657 n).toNat

end

end A088117.P85729162113141528

noncomputable section

/-- A088117: Let the decimal expansion of n be abcd...; then a(n) = (a*bcd... + b*acd... + c*abd... + d*abc... + ...) + (ab*cd... + bc*ad... + cd*ab... + ...) + ... . That is, a(n) = sum over all the digit strings of the product (number obtained by deleting a digit string) * (deleted digit string).

Offset 0, canonical program `A088117.P85729162113141528`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A088117 (n : ℕ) : ℤ :=
  A088117.P85729162113141528.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A088117.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A093818.P17790798542643971304

`gcd(∑[1/(n+1)]*A002805(n+1), A027457(n+1))`
-/

namespace A093818.P17790798542643971304
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((∑ j ∈ Finset.range (n + 1), f1 j) * (A002805 (n + 1) : ℚ))) (A027457 (n + 1))

end

end A093818.P17790798542643971304

noncomputable section

/-- A093818: a(n) = gcd(A001008(n), n!).

Offset 1, canonical program `A093818.P17790798542643971304`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A093818 (n : ℕ) : ℤ :=
  (A093818.P17790798542643971304.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A093818.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096143.P14316011638880613569

`ceil(A001008(n+1)/A002805(n+1))`
-/

namespace A096143.P14316011638880613569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001008 (n + 1) : ℚ) / (A002805 (n + 1) : ℚ)⌉

end

end A096143.P14316011638880613569

noncomputable section

/-- A096143: a(n) = ceiling(Sum_{i=1..n} 1/i).

Offset 1, canonical program `A096143.P14316011638880613569`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001008, A002805, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A096143 (n : ℕ) : ℤ :=
  A096143.P14316011638880613569.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001008, A002805, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A096143.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A104174.P256506782751078123

`A001008(n+1)%A002805(n+1)`
-/

namespace A104174.P256506782751078123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001008 (n + 1)) (A002805 (n + 1))

end

end A104174.P256506782751078123

noncomputable section

/-- A104174: Numerator of the fractional part of a harmonic number.

Offset 1, canonical program `A104174.P256506782751078123`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A104174 (n : ℕ) : ℤ :=
  A104174.P256506782751078123.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A104174.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109712.P3131232263419373530

`A384056(n+1)+A384056(n+1)-A047994(n+1)`
-/

namespace A109712.P3131232263419373530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384056 (n + 1) + (A384056 (n + 1) - A047994 (n + 1))

end

end A109712.P3131232263419373530

noncomputable section

/-- A109712: UnitarySigmaUnitaryPhi(n) or USUP(n).

Offset 1, canonical program `A109712.P3131232263419373530`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109712 (n : ℕ) : ℤ :=
  A109712.P3131232263419373530.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109712.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A112813.P6439457678955944330

`eq[3, A110566(n+1)]+1`
-/

namespace A112813.P6439457678955944330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110566 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A112813.P6439457678955944330

noncomputable section

/-- A112813: Numbers k such that lcm(1,2,3,...,k)/3 equals the denominator of the k-th harmonic number H(k).

Offset 1, canonical program `A112813.P6439457678955944330`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 588 terms. -/
def A112813 (n : ℕ) : ℤ :=
  (A112813.P6439457678955944330.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 588 terms. -/
def A112813.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112816.P6858448339143821751

`eq[9, A110566(n+1)]+1`
-/

namespace A112816.P6858448339143821751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110566 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A112816.P6858448339143821751

noncomputable section

/-- A112816: Numbers k such that lcm(1,2,3,...,k)/9 equals the denominator of the k-th harmonic number H(k).

Offset 1, canonical program `A112816.P6858448339143821751`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 446 terms. -/
def A112816 (n : ℕ) : ℤ :=
  (A112816.P6858448339143821751.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 446 terms. -/
def A112816.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112817.P8263414269983312733

`eq[11, A110566(A028310(n))]`
-/

namespace A112817.P8263414269983312733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110566 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A112817.P8263414269983312733

noncomputable section

/-- A112817: Numbers k such that lcm(1,2,3,...,k)/11 equals the denominator of the k-th harmonic number H(k).

Offset 1, canonical program `A112817.P8263414269983312733`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 614 terms. -/
def A112817 (n : ℕ) : ℤ :=
  (A112817.P8263414269983312733.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 614 terms. -/
def A112817.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A114699.P8287388229855982445

`A000799(n+1)-A064355(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A114699.P8287388229855982445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000799 (n + 1) - A064355 (n + 1)

end

end A114699.P8287388229855982445

noncomputable section

/-- A114699: A000799(n) - A064355(n).

Offset 0, canonical program `A114699.P8287388229855982445`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000799, A064355, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A114699 (n : ℕ) : ℤ :=
  A114699.P8287388229855982445.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000799, A064355, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A114699.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A120111.P13519720952501436584

`char[∑[n-1]]-A140579(n+2)`
-/

namespace A120111.P13519720952501436584
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A140579 (n + 2)

end

end A120111.P13519720952501436584

noncomputable section

/-- A120111: Bi-diagonal inverse matrix of A120108.

Offset 0, canonical program `A120111.P13519720952501436584`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A120111 (n : ℕ) : ℤ :=
  A120111.P13519720952501436584.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A120111.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A124934.P10210965125734739564

`∪[A125217(n+1), A125218(n+1)]`
-/

namespace A124934.P10210965125734739564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A124934.P10210965125734739564

noncomputable section

/-- A124934: Numbers of the form 4mn - m - n, where m, n are positive integers.

Offset 1, canonical program `A124934.P10210965125734739564`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124934 (n : ℕ) : ℤ :=
  (A124934.P10210965125734739564.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124934.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A127642.P17608281806916205260

`A055775(n+1)-A053638(n+1)`
-/

namespace A127642.P17608281806916205260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055775 (n + 1) - A053638 (n + 1)

end

end A127642.P17608281806916205260

noncomputable section

/-- A127642: Floor(n^n/n!) - ceiling(2^n/n).

Offset 1, canonical program `A127642.P17608281806916205260`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 233 terms. -/
def A127642 (n : ℕ) : ℤ :=
  A127642.P17608281806916205260.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 233 terms. -/
def A127642.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128438.P1091758002824177893

`floor(A002944(n+1)/A110566(n+1))`
-/

namespace A128438.P1091758002824177893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002944 (n + 1) : ℚ) / (A110566 (n + 1) : ℚ)⌋

end

end A128438.P1091758002824177893

noncomputable section

/-- A128438: a(n) = floor((denominator of H(n))/n), where H(n) = Sum_{k=1..n} 1/k, the n-th harmonic number.

Offset 1, canonical program `A128438.P1091758002824177893`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. -/
def A128438 (n : ℕ) : ℤ :=
  A128438.P1091758002824177893.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. -/
def A128438.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132739.P2744757510597666871

`A006519(n+1)*A132740(n+1)`
-/

namespace A132739.P2744757510597666871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1) * A132740 (n + 1)

end

end A132739.P2744757510597666871

noncomputable section

/-- A132739: Largest divisor of n not divisible by 5.

Offset 1, canonical program `A132739.P2744757510597666871`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132739 (n : ℕ) : ℤ :=
  A132739.P2744757510597666871.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132739.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A138741.P8597569601291723982

`(-1)^n*A116604(n)`
-/

namespace A138741.P8597569601291723982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A116604 n

end

end A138741.P8597569601291723982

noncomputable section

/-- A138741: Expansion of q^(-1/2) * eta(q)^3 * eta(q^4) * eta(q^12) / (eta(q^2)^2 * eta(q^3)) in powers of q (unsigned).

Offset 0, canonical program `A138741.P8597569601291723982`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A116604, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138741 (n : ℕ) : ℤ :=
  A138741.P8597569601291723982.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A116604, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138741.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A139890.P459811890116219402

`∪[A139994(n+1), A139995(n+1)]`
-/

namespace A139890.P459811890116219402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139995 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A139890.P459811890116219402

noncomputable section

/-- A139890: Primes of the form 6x^2+35y^2.

Offset 1, canonical program `A139890.P459811890116219402`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139890 (n : ℕ) : ℤ :=
  (A139890.P459811890116219402.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139890.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A145610.P553506621032330798

`A002805(2*(n+1))`
-/

namespace A145610.P553506621032330798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002805 (2 * (n + 1))

end

end A145610.P553506621032330798

noncomputable section

/-- A145610: Denominator of the polynomial A_l(x) = Sum_{d=1..l-1} x^(l-d)/d for index l=2n+1 evaluated at x=1.

Offset 1, canonical program `A145610.P553506621032330798`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A145610 (n : ℕ) : ℤ :=
  A145610.P553506621032330798.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A145610.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A156688.P7951219158016480922

`A085058(n)*A275367(n+1)`
-/

namespace A156688.P7951219158016480922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085058 n * A275367 (n + 1)

end

end A156688.P7951219158016480922

noncomputable section

/-- A156688: The total number of distinct Pythagorean triples with an area numerically equal to n times their perimeters.

Offset 1, canonical program `A156688.P7951219158016480922`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156688 (n : ℕ) : ℤ :=
  A156688.P7951219158016480922.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156688.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A193347.P15363500856293231746

`A010553(n+1)-A193348(n+1)`
-/

namespace A193347.P15363500856293231746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010553 (n + 1) - A193348 (n + 1)

end

end A193347.P15363500856293231746

noncomputable section

/-- A193347: Number of even divisors of tau(n).

Offset 1, canonical program `A193347.P15363500856293231746`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010553, A193348, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A193347 (n : ℕ) : ℤ :=
  A193347.P15363500856293231746.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010553, A193348, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A193347.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A193758.P16879839616454654453

`ceil(ratio[A002805(n+1)])*A001008(n+1)`
-/

namespace A193758.P16879839616454654453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002805 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉ * A001008 (n + 1)

end

end A193758.P16879839616454654453

noncomputable section

/-- A193758: Denominator of H(n)/H(n-1), where H(n) is the n-th harmonic number = Sum_{k=1..n} 1/k.

Offset 2, canonical program `A193758.P16879839616454654453`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 231 terms. -/
def A193758 (n : ℕ) : ℤ :=
  A193758.P16879839616454654453.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 231 terms. -/
def A193758.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000116.P1543949268755805293

`A056295(A004277(n))+1`
-/

namespace A000116.P1543949268755805293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056295 (A004277 n).toNat + 1

end

end A000116.P1543949268755805293

noncomputable section

/-- A000116: Number of even sequences with period 2n (bisection of A000013).

Offset 0, canonical program `A000116.P1543949268755805293`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A000116 (n : ℕ) : ℤ :=
  A000116.P1543949268755805293.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A000116.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000190.P2108716071587575808

`(n+1)/A053166(n+1)`
-/

namespace A000190.P2108716071587575808
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A053166 (n + 1) : ℚ)

end

end A000190.P2108716071587575808

noncomputable section

/-- A000190: Number of solutions to x^4 == 0 (mod n).

Offset 1, canonical program `A000190.P2108716071587575808`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000190 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A000190.P2108716071587575808.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000190.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A022297.P13831019223360445474

`A057428(n)+A013947(n+1)`
-/

namespace A022297.P13831019223360445474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A013947 (n + 1)

end

end A022297.P13831019223360445474

noncomputable section

/-- A022297: Index of n-th 1 in A006928.

Offset 1, canonical program `A022297.P13831019223360445474`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022297 (n : ℕ) : ℤ :=
  A022297.P13831019223360445474.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022297.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023503.P6892616046621392006

`A006530(A005097(n+1)+A000007(n))`
-/

namespace A023503.P6892616046621392006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A005097 (n + 1) + A000007 n).toNat

end

end A023503.P6892616046621392006

noncomputable section

/-- A023503: Greatest prime divisor of prime(n) - 1.

Offset 2, canonical program `A023503.P6892616046621392006`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023503 (n : ℕ) : ℤ :=
  A023503.P6892616046621392006.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023503.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023509.P10669319578865677512

`A006530(A077066(n+1))`
-/

namespace A023509.P10669319578865677512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A077066 (n + 1)).toNat

end

end A023509.P10669319578865677512

noncomputable section

/-- A023509: Greatest prime divisor of prime(n) + 1.

Offset 1, canonical program `A023509.P10669319578865677512`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9597 terms. -/
def A023509 (n : ℕ) : ℤ :=
  A023509.P10669319578865677512.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9597 terms. -/
def A023509.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A023576.P7935691990157790967`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9592 terms. -/
def A023576 (n : ℕ) : ℤ :=
  A023576.P7935691990157790967.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9592 terms. -/
def A023576.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A023583.P4687228853221385482`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5133 terms. -/
def A023583 (n : ℕ) : ℤ :=
  A023583.P4687228853221385482.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5133 terms. -/
def A023583.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A023590.P10993388026348196137`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5133 terms. -/
def A023590 (n : ℕ) : ℤ :=
  A023590.P10993388026348196137.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5133 terms. -/
def A023590.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A026119.P15036635504786690639

`A056295(Δ[n²])+1`
-/

namespace A026119.P15036635504786690639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056295 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A026119.P15036635504786690639

noncomputable section

/-- A026119: Bisection of A000016 (also of A000013).

Offset 0, canonical program `A026119.P15036635504786690639`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A026119 (n : ℕ) : ℤ :=
  A026119.P15036635504786690639.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A026119.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A042996.P442946035617412042

`record[A057815(n+1)]`
-/

namespace A042996.P442946035617412042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057815 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A042996.P442946035617412042

noncomputable section

/-- A042996: Numbers k such that binomial(k, floor(k/2)) is divisible by k.

Offset 1, canonical program `A042996.P442946035617412042`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5492 terms. -/
def A042996 (n : ℕ) : ℤ :=
  A042996.P442946035617412042.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5492 terms. -/
def A042996.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A046028.P11058733999179458115

`A006530(A084936(n+1))`
-/

namespace A046028.P11058733999179458115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A084936 (n + 1)).toNat

end

end A046028.P11058733999179458115

noncomputable section

/-- A046028: Largest multiple prime factor of the n-th nonsquarefree number (A013929).

Offset 1, canonical program `A046028.P11058733999179458115`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046028 (n : ℕ) : ℤ :=
  A046028.P11058733999179458115.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046028.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A052369.P8703933357502213163

`p?[A006530(n+2)%(n+1)]`
-/

namespace A052369.P8703933357502213163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (n + 2)) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A052369.P8703933357502213163

noncomputable section

/-- A052369: Largest prime factor of n, where n runs through composite numbers.

Offset 1, canonical program `A052369.P8703933357502213163`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A052369 (n : ℕ) : ℤ :=
  A052369.P8703933357502213163.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A052369.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A062347.P10586268289605082187

`A066909(A000040(n+1))`
-/

namespace A062347.P10586268289605082187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066909 (A000040 (n + 1)).toNat

end

end A062347.P10586268289605082187

noncomputable section

/-- A062347: a(n) = (product of first n primes) modulo prime(n+1).

Offset 0, canonical program `A062347.P10586268289605082187`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A062347 (n : ℕ) : ℤ :=
  A062347.P10586268289605082187.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A062347.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A068113.P2867666152825364727

`gcd(A005809(n), A073838(2*n+1))`
-/

namespace A068113.P2867666152825364727
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005809 n) (A073838 (2 * n + 1))

end

end A068113.P2867666152825364727

noncomputable section

/-- A068113: Numerator of coefficient of (-x^2)^n in F(x)*F(-x) where F(x) = Sum_{k>=0} x^k/(k!)^3.

Offset 0, canonical program `A068113.P2867666152825364727`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A068113 (n : ℕ) : ℤ :=
  (A068113.P2867666152825364727.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A068113.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068211.P17793626594637165157

`A006530(A080400(n+3))`
-/

namespace A068211.P17793626594637165157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A080400 (n + 3)).toNat

end

end A068211.P17793626594637165157

noncomputable section

/-- A068211: Largest prime factor of Euler totient function phi(n).

Offset 3, canonical program `A068211.P17793626594637165157`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068211 (n : ℕ) : ℤ :=
  A068211.P17793626594637165157.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068211.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A069483.P11750628952779400045

`A006530(A124434(n+1))`
-/

namespace A069483.P11750628952779400045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A124434 (n + 1)).toNat

end

end A069483.P11750628952779400045

noncomputable section

/-- A069483: Largest prime factor of prime(n+1)^2 - prime(n)^2.

Offset 1, canonical program `A069483.P11750628952779400045`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 573 terms. -/
def A069483 (n : ℕ) : ℤ :=
  A069483.P11750628952779400045.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 573 terms. -/
def A069483.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A070777.P5690187332421515260

`A006530(2*(n+1))-1`
-/

namespace A070777.P5690187332421515260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * (n + 1)) - 1

end

end A070777.P5690187332421515260

noncomputable section

/-- A070777: a(1) = 1; a(n) = (largest prime factor of n) - 1.

Offset 1, canonical program `A070777.P5690187332421515260`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070777 (n : ℕ) : ℤ :=
  A070777.P5690187332421515260.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070777.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A071166.P15350550808672654705

`2-A006530(∑{d}[n+2, #])+n`
-/

namespace A071166.P15350550808672654705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A006530 (∑ d ∈ Nat.divisors (f1 n), d) + (n : ℤ)

end

end A071166.P15350550808672654705

noncomputable section

/-- A071166: a(n) = n - A006530(A000203(n)), difference between n and largest prime factor of the sum of its divisors.

Offset 2, canonical program `A071166.P15350550808672654705`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071166 (n : ℕ) : ℤ :=
  A071166.P15350550808672654705.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071166.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A071188.P12659862287234049526

`A006530(∏{e}[n+1, #+1])`
-/

namespace A071188.P12659862287234049526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))

end

end A071188.P12659862287234049526

noncomputable section

/-- A071188: Largest prime factor of number of divisors of n; a(1)=1.

Offset 1, canonical program `A071188.P12659862287234049526`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071188 (n : ℕ) : ℤ :=
  A071188.P12659862287234049526.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071188.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071190.P6270769644249240654

`A006530(∑{d}[n+1, #])`
-/

namespace A071190.P6270769644249240654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A071190.P6270769644249240654

noncomputable section

/-- A071190: Greatest prime factor of sum of divisors of n, for n >= 2; a(1) = 1.

Offset 1, canonical program `A071190.P6270769644249240654`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071190 (n : ℕ) : ℤ :=
  A071190.P6270769644249240654.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071190.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071216.P7701405667919946545

`A006530(A001043(n+1)/A046698(n+1))`
-/

namespace A071216.P7701405667919946545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A001043 (n + 1) : ℚ) / (A046698 (n + 1) : ℚ))).toNat

end

end A071216.P7701405667919946545

noncomputable section

/-- A071216: a(n) is the largest prime factor of prime(n) + prime(n+1).

Offset 1, canonical program `A071216.P7701405667919946545`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9592 terms. -/
def A071216 (n : ℕ) : ℤ :=
  A071216.P7701405667919946545.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9592 terms. -/
def A071216.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A073482.P3442386469960361362

`A006530(A005117(n+1))`
-/

namespace A073482.P3442386469960361362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A005117 (n + 1)).toNat

end

end A073482.P3442386469960361362

noncomputable section

/-- A073482: Largest prime factor of the n-th squarefree number.

Offset 1, canonical program `A073482.P3442386469960361362`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073482 (n : ℕ) : ℤ :=
  A073482.P3442386469960361362.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073482.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A074273.P3483261039541089389

`A013947(2*(n+1))`
-/

namespace A074273.P3483261039541089389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013947 (2 * (n + 1))

end

end A074273.P3483261039541089389

noncomputable section

/-- A074273: Positions in the Kolakoski sequence (A000002) where there are an even number of 1's and the current term is 1.

Offset 1, canonical program `A074273.P3483261039541089389`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A074273 (n : ℕ) : ℤ :=
  A074273.P3483261039541089389.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A074273.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A074593.P13854002765739044957`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074593 (n : ℕ) : ℤ :=
  A074593.P13854002765739044957.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074593.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A076557.P4223836483156507630

`A006530(∑[A135732(n+1)])`
-/

namespace A076557.P4223836483156507630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135732 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A076557.P4223836483156507630

noncomputable section

/-- A076557: Greatest prime divisor of (n-th prime - n).

Offset 3, canonical program `A076557.P4223836483156507630`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076557 (n : ℕ) : ℤ :=
  A076557.P4223836483156507630.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076557.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A076569.P15001747056432370356

`A006530(2*n+7)`
-/

namespace A076569.P15001747056432370356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * n + 7)

end

end A076569.P15001747056432370356

noncomputable section

/-- A076569: Greatest prime divisor of 6n+15 (sum of six successive integers).

Offset 1, canonical program `A076569.P15001747056432370356`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076569 (n : ℕ) : ℤ :=
  A076569.P15001747056432370356.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076569.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076570.P2147127425394780592

`p?[A006530(∑[p?[n%3+n]])]`
-/

namespace A076570.P2147127425394780592
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A076570.P2147127425394780592

noncomputable section

/-- A076570: Greatest prime divisor of sum of first n primes.

Offset 1, canonical program `A076570.P2147127425394780592`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 190 terms. -/
def A076570 (n : ℕ) : ℤ :=
  A076570.P2147127425394780592.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 190 terms. -/
def A076570.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A078312.P2025583470213715530

`A006530((n+1)*∏{p}[n+1, #]+1)`
-/

namespace A078312.P2025583470213715530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p) + 1)

end

end A078312.P2025583470213715530

noncomputable section

/-- A078312: Greatest prime factor of n*rad(n)+1, where rad = A007947 (squarefree kernel).

Offset 1, canonical program `A078312.P2025583470213715530`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 316 terms. -/
def A078312 (n : ℕ) : ℤ :=
  A078312.P2025583470213715530.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 316 terms. -/
def A078312.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A078472.P1843882505558230573

`∑[A035282(n+1)]`
-/

namespace A078472.P1843882505558230573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035282 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078472.P1843882505558230573

noncomputable section

/-- A078472: Partial sums of A035282.

Offset 1, canonical program `A078472.P1843882505558230573`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078472 (n : ℕ) : ℤ :=
  A078472.P1843882505558230573.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078472.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A078551.P8415241903468806818

`A006530(A080399(n+2))`
-/

namespace A078551.P8415241903468806818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A080399 (n + 2)).toNat

end

end A078551.P8415241903468806818

noncomputable section

/-- A078551: Largest prime dividing sigma(2,n).

Offset 2, canonical program `A078551.P8415241903468806818`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 282 terms. -/
def A078551 (n : ℕ) : ℤ :=
  A078551.P8415241903468806818.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 282 terms. -/
def A078551.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A078649.P18369770188371927822

`comp[A013947(n+1)-1]+1+n`
-/

namespace A078649.P18369770188371927822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013947 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1 + n

end

end A078649.P18369770188371927822

noncomputable section

/-- A078649: Numbers n such that A000002(n)=A000002(n+1) where A000002 is the Kolakoski sequence.

Offset 1, canonical program `A078649.P18369770188371927822`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078649 (n : ℕ) : ℤ :=
  (A078649.P18369770188371927822.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078649.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079084.P3073361984096844683

`A006530(lcm(2, A079079(n+1))/2)`
-/

namespace A079084.P3073361984096844683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((Int.lcm 2 (A079079 (n + 1)) : ℚ) / 2)).toNat

end

end A079084.P3073361984096844683

noncomputable section

/-- A079084: Greatest prime factor of (prime(n)+1)*(prime(n+1)+1)/4.

Offset 1, canonical program `A079084.P3073361984096844683`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A079084 (n : ℕ) : ℤ :=
  A079084.P3073361984096844683.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A079084.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A080213.P4118106251419514332`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 273 terms. -/
def A080213 (n : ℕ) : ℤ :=
  (A080213.P4118106251419514332.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 273 terms. -/
def A080213.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A081063.P5329277844171493338

`∑[C(2, A006530(n+1)-A014963(n+1))]`
-/

namespace A081063.P5329277844171493338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A006530 (n + 1) - A014963 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081063.P5329277844171493338

noncomputable section

/-- A081063: Number of numbers <= n that are 3-smooth or prime powers.

Offset 1, canonical program `A081063.P5329277844171493338`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081063 (n : ℕ) : ℤ :=
  (A081063.P5329277844171493338.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081063.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 2, canonical program `A081412.P7707128000905813888`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081412 (n : ℕ) : ℤ :=
  A081412.P7707128000905813888.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081412.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A081887.P3401142838611076180

`eq[A010051(n+1), A110566(n+1)]`
-/

namespace A081887.P3401142838611076180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110566 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A081887.P3401142838611076180

noncomputable section

/-- A081887: Numbers k such that lcm(1..k) equals the denominator of the sum of the first k harmonic numbers.

Offset 1, canonical program `A081887.P3401142838611076180`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 148 terms. -/
def A081887 (n : ℕ) : ℤ :=
  (A081887.P3401142838611076180.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 148 terms. -/
def A081887.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A082061.P10175946465592589706`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082061 (n : ℕ) : ℤ :=
  A082061.P10175946465592589706.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082061.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A082063.P5940156682614703344

`A006530(gcd(n+1, ∑{d}[n+1, #²]))`
-/

namespace A082063.P5940156682614703344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.gcd (n + 1) (∑ d ∈ Nat.divisors (f1 n), d ^ 2))

end

end A082063.P5940156682614703344

noncomputable section

/-- A082063: Greatest common prime divisor of n and sigma_2(n) = A001157(n), or 1 if the two are relatively prime.

Offset 1, canonical program `A082063.P5940156682614703344`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082063 (n : ℕ) : ℤ :=
  A082063.P5940156682614703344.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082063.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A082064.P2877609420070187158`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082064 (n : ℕ) : ℤ :=
  A082064.P2877609420070187158.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082064.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A082066.P17745168815098447101`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082066 (n : ℕ) : ℤ :=
  A082066.P17745168815098447101.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082066.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A083346.P12627612333518549643

`(n+1)/A085731(n+1)`
-/

namespace A083346.P12627612333518549643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A085731 (n + 1) : ℚ)

end

end A083346.P12627612333518549643

noncomputable section

/-- A083346: Denominator of r(n) = Sum(e/p: n=Product(p^e)).

Offset 1, canonical program `A083346.P12627612333518549643`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083346 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A083346.P12627612333518549643.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083346.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A087273.P7061938232423023450

`A006530(A001748(n+1)+1)`
-/

namespace A087273.P7061938232423023450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A001748 (n + 1) + 1).toNat

end

end A087273.P7061938232423023450

noncomputable section

/-- A087273: Largest prime factor of 3*prime(n) + 1.

Offset 1, canonical program `A087273.P7061938232423023450`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3569 terms. -/
def A087273 (n : ℕ) : ℤ :=
  A087273.P7061938232423023450.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3569 terms. -/
def A087273.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A088659.P2780909969039753100

`(n+2)*(A006530(n+2)-1)`
-/

namespace A088659.P2780909969039753100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (A006530 (n + 2) - 1)

end

end A088659.P2780909969039753100

noncomputable section

/-- A088659: a(n) = n*(p-1) where p is the largest prime factor of n.

Offset 2, canonical program `A088659.P2780909969039753100`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088659 (n : ℕ) : ℤ :=
  A088659.P2780909969039753100.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088659.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A095673.P8478990668185912303

`p?[A075540(n+1)-4]`
-/

namespace A095673.P8478990668185912303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075540 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095673.P8478990668185912303

noncomputable section

/-- A095673: Primes p = p_(n+1) such that p_n + p_(n+2) = 2*p_(n+1) + 12.

Offset 1, canonical program `A095673.P8478990668185912303`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 827 terms. -/
def A095673 (n : ℕ) : ℤ :=
  A095673.P8478990668185912303.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 827 terms. -/
def A095673.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A098464.P17154748706034331019

`eq[1, A110566(n+1)]+1`
-/

namespace A098464.P17154748706034331019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110566 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A098464.P17154748706034331019

noncomputable section

/-- A098464: Numbers k such that lcm(1,2,3,...,k) equals the denominator of the k-th harmonic number H(k).

Offset 1, canonical program `A098464.P17154748706034331019`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2641 terms. -/
def A098464 (n : ℕ) : ℤ :=
  (A098464.P17154748706034331019.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2641 terms. -/
def A098464.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A100428.P16186461630446330392

`A332875(n+1)-A100429(n+1)`
-/

namespace A100428.P16186461630446330392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332875 (n + 1) - A100429 (n + 1)

end

end A100428.P16186461630446330392

noncomputable section

/-- A100428: Bisection of Kolakoski sequence A000002.

Offset 1, canonical program `A100428.P16186461630446330392`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100428 (n : ℕ) : ℤ :=
  A100428.P16186461630446330392.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100428.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101271.P143729997817666203

`A023023(n+6)-A023022(n+6)`
-/

namespace A101271.P143729997817666203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023023 (n + 6) - A023022 (n + 6)

end

end A101271.P143729997817666203

noncomputable section

/-- A101271: Number of partitions of n into 3 distinct and relatively prime parts.

Offset 6, canonical program `A101271.P143729997817666203`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9995 terms. -/
def A101271 (n : ℕ) : ℤ :=
  A101271.P143729997817666203.a (n - 6)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9995 terms. -/
def A101271.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A107397.P6709541121827441078

`∑[2*(A107917(n+1)-A047819(n+1))]`
-/

namespace A107397.P6709541121827441078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A107917 (n + 1) - A047819 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107397.P6709541121827441078

noncomputable section

/-- A107397: a(n) = binomial(n+6, 6) * binomial(n+8, 6).

Offset 0, canonical program `A107397.P6709541121827441078`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A107397 (n : ℕ) : ℤ :=
  A107397.P6709541121827441078.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A107397.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A115001.P7202434355261804190

`∑[ceil(A023023(n+4)/2)]`
-/

namespace A115001.P7202434355261804190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A023023 (n + 4) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115001.P7202434355261804190

noncomputable section

/-- A115001: a(n) = Sum_{k=1..n} J_2(k)/24.

Offset 4, canonical program `A115001.P7202434355261804190`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A115001 (n : ℕ) : ℤ :=
  A115001.P7202434355261804190.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A115001.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A115074.P4145856416073480298`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115074 (n : ℕ) : ℤ :=
  A115074.P4145856416073480298.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115074.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A122037.P14771729018691792230`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A122037 (n : ℕ) : ℤ :=
  A122037.P14771729018691792230.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A122037.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A122444.P13311351632682091971

`A006530(A085155(n+1))`
-/

namespace A122444.P13311351632682091971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A085155 (n + 1)).toNat

end

end A122444.P13311351632682091971

noncomputable section

/-- A122444: Greatest prime factor of powers of semiprimes.

Offset 1, canonical program `A122444.P13311351632682091971`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122444 (n : ℕ) : ℤ :=
  A122444.P13311351632682091971.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122444.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A130092.P15831687442320950699

`lt[2, A006530(A328830(n+1))]+1`
-/

namespace A130092.P15831687442320950699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A328830 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A130092.P15831687442320950699

noncomputable section

/-- A130092: Numbers with at least two factors having in their canonical prime factorization equal exponents.

Offset 1, canonical program `A130092.P15831687442320950699`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130092 (n : ℕ) : ℤ :=
  (A130092.P15831687442320950699.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130092.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130445.P7579084859812681452

`comp[A130446(n+1)-1]+1`
-/

namespace A130445.P7579084859812681452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130446 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A130445.P7579084859812681452

noncomputable section

/-- A130445: Integers in the range [1, 425] not expressible as a difference of the unique optimal Golomb ruler of order 24. See A130444.

Offset 1, canonical program `A130445.P7579084859812681452`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 149 terms. -/
def A130445 (n : ℕ) : ℤ :=
  (A130445.P7579084859812681452.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 149 terms. -/
def A130445.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A157676.P11432069983648412574

`eq[1, A309892(A007954(n)+n)]`
-/

namespace A157676.P11432069983648412574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309892 (A007954 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A157676.P11432069983648412574

noncomputable section

/-- A157676: Numbers n such that n + (product of digits of n) is prime.

Offset 1, canonical program `A157676.P11432069983648412574`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 874 terms. -/
def A157676 (n : ℕ) : ℤ :=
  (A157676.P11432069983648412574.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 874 terms. -/
def A157676.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A157938.P15643455061115454303

`∩[A073492(n+1), A157937(n+1)]`
-/

namespace A157938.P15643455061115454303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157938.P15643455061115454303

noncomputable section

/-- A157938: Numbers n divisible by the least prime >= sqrt(n) but not by the largest prime <= sqrt(n).

Offset 1, canonical program `A157938.P15643455061115454303`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 155 terms. -/
def A157938 (n : ℕ) : ℤ :=
  (A157938.P15643455061115454303.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 155 terms. -/
def A157938.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A171462.P7937815489892072259

`n-floor(n/A006530(n+1))`
-/

namespace A171462.P7937815489892072259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ⌊(n : ℚ) / (A006530 (n + 1) : ℚ)⌋

end

end A171462.P7937815489892072259

noncomputable section

/-- A171462: Number of hands a bartender needs to have in order to win at the blind bartender's problem with n glasses in a cycle.

Offset 1, canonical program `A171462.P7937815489892072259`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171462 (n : ℕ) : ℤ :=
  A171462.P7937815489892072259.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171462.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A189036.P5079595649764338634

`A086130(n+1)/A085731(n+1)`
-/

namespace A189036.P5079595649764338634
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086130 (n + 1) : ℚ) / (A085731 (n + 1) : ℚ)

end

end A189036.P5079595649764338634

noncomputable section

/-- A189036: a(n)= lcm(n,n')/gcd(n,n'), where n' is the arithmetic derivative of n.

Offset 1, canonical program `A189036.P5079595649764338634`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A085731, A086130, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A189036 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A189036.P5079595649764338634.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A085731, A086130, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A189036.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A190116.P18352050044583738239

`A085731(n+1)*A086130(n+1)`
-/

namespace A190116.P18352050044583738239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085731 (n + 1) * A086130 (n + 1)

end

end A190116.P18352050044583738239

noncomputable section

/-- A190116: a(n) = n*n', where n' is the arithmetic derivative (A003415) of n.

Offset 1, canonical program `A190116.P18352050044583738239`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A085731, A086130, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A190116 (n : ℕ) : ℤ :=
  A190116.P18352050044583738239.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A085731, A086130, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A190116.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A036150.P8677610942371788311

`A000079(n)%A245743(n²%(n+1)+1)`
-/

namespace A036150.P8677610942371788311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 n) (A245743 (n ^ 2 % (n + 1) + 1))

end

end A036150.P8677610942371788311

noncomputable section

/-- A036150: a(n) = 2^n mod 163.

Offset 0, canonical program `A036150.P8677610942371788311`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A036150 (n : ℕ) : ℤ :=
  A036150.P8677610942371788311.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A036150.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A072000.P3706059858088101648`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056811, A072613, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A072000 (n : ℕ) : ℤ :=
  A072000.P3706059858088101648.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056811, A072613, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A072000.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A003969.P3425583708313804198

`∑{d}[n+1, A003959(#)]`
-/

namespace A003969.P3425583708313804198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003959 d

end

end A003969.P3425583708313804198

noncomputable section

/-- A003969: Inverse Möbius transform of A003959.

Offset 1, canonical program `A003969.P3425583708313804198`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003969 (n : ℕ) : ℤ :=
  A003969.P3425583708313804198.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003969.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A024454.P5542157248181529919

`floor(A024449(n+1)/A007504(n+4))`
-/

namespace A024454.P5542157248181529919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024449 (n + 1) : ℚ) / (A007504 (n + 4) : ℚ)⌋

end

end A024454.P5542157248181529919

noncomputable section

/-- A024454: [ (4th elementary symmetric function of P(n))/(first elementary symmetric function of P(n)) ], where P(n) = {first n+3 primes}.

Offset 1, canonical program `A024454.P5542157248181529919`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 546 terms. -/
def A024454 (n : ℕ) : ℤ :=
  A024454.P5542157248181529919.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 546 terms. -/
def A024454.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A064478.P2659223635145609347

`A003959(n*a(val(n+1, n)))` with `a(0)=1, a(1)=2`
-/

namespace A064478.P2659223635145609347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A003959 ((n : ℤ) * a (SequenceMachineLib.valuation (n + 1) n)).toNat

end

end A064478.P2659223635145609347

noncomputable section

/-- A064478: If n = Product p(k)^e(k) then a(n) = Product (p(k)+1)^e(k), a(0) = 1, a(1)=2.

Offset 0, canonical program `A064478.P2659223635145609347`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064478 (n : ℕ) : ℤ :=
  A064478.P2659223635145609347.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064478.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064479.P7313638048207926307

`comp[A003959(n+1)-3]+3`
-/

namespace A064479.P7313638048207926307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (n + 1) - 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 3

end

end A064479.P7313638048207926307

noncomputable section

/-- A064479: Complement of A064478.

Offset 0, canonical program `A064479.P7313638048207926307`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064479 (n : ℕ) : ℤ :=
  (A064479.P7313638048207926307.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064479.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065887.P4570226576753041376

`sqrt(A065886(n))`
-/

namespace A065887.P4570226576753041376
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A065886 n : ℝ)

end

end A065887.P4570226576753041376

noncomputable section

/-- A065887: Smallest number whose square is divisible by n!.

Offset 0, canonical program `A065887.P4570226576753041376`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065886, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065887 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A065887.P4570226576753041376.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065886, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065887.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A085986.P3066413001146269465

`A006881(n+1)²`
-/

namespace A085986.P3066413001146269465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1) ^ 2

end

end A085986.P3066413001146269465

noncomputable section

/-- A085986: Squares of the squarefree semiprimes (p^2*q^2).

Offset 1, canonical program `A085986.P3066413001146269465`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006881, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A085986 (n : ℕ) : ℤ :=
  A085986.P3066413001146269465.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006881, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A085986.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A094179.P8224842387198527838

`filter[A004614(n+1), A066829(#)]`
-/

namespace A094179.P8224842387198527838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A094179.P8224842387198527838

noncomputable section

/-- A094179: Numbers congruent to 3 mod 4 which are divisible only by primes congruent to 3 mod 4.

Offset 1, canonical program `A094179.P8224842387198527838`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5474 terms. -/
def A094179 (n : ℕ) : ℤ :=
  A094179.P8224842387198527838.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5474 terms. -/
def A094179.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100481.P2565337434757464985

`A006530(n+A000720(n+1)+1)`
-/

namespace A100481.P2565337434757464985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((n : ℤ) + A000720 (n + 1) + 1).toNat

end

end A100481.P2565337434757464985

noncomputable section

/-- A100481: Greatest prime factor in A095117(n).

Offset 1, canonical program `A100481.P2565337434757464985`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A006530, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A100481 (n : ℕ) : ℤ :=
  A100481.P2565337434757464985.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A006530, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A100481.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A126865.P18394640040114108110

`gcd(lcm(2, A003959(n+1)), A125131(n+1))`
-/

namespace A126865.P18394640040114108110
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.lcm 2 (A003959 (n + 1)) : ℤ) (A125131 (n + 1))

end

end A126865.P18394640040114108110

noncomputable section

/-- A126865: a(n) = gcd(Product_{p|n} (p+1)^b(p,n), Product_{p|n} (p-1)^b(p,n)), where the products are over the distinct primes, p, that divide n and p^b(p,n) is the highest power of p dividing n.

Offset 1, canonical program `A126865.P18394640040114108110`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A126865 (n : ℕ) : ℤ :=
  (A126865.P18394640040114108110.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A126865.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A136192.P16759247333533058441`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 757 terms. -/
def A136192 (n : ℕ) : ℤ :=
  (A136192.P16759247333533058441.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 757 terms. -/
def A136192.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137243.P6717013021254346252

`4*A018805(n+1)+4`
-/

namespace A137243.P6717013021254346252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A018805 (n + 1) + 4

end

end A137243.P6717013021254346252

noncomputable section

/-- A137243: Number of coprime pairs (a,b) with -n <= a,b <= n.

Offset 1, canonical program `A137243.P6717013021254346252`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018805, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A137243 (n : ℕ) : ℤ :=
  A137243.P6717013021254346252.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018805, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A137243.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A162142.P17462580010541351734

`A006881(n+1)^3`
-/

namespace A162142.P17462580010541351734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1) ^ 3

end

end A162142.P17462580010541351734

noncomputable section

/-- A162142: Numbers that are the cube of a product of two distinct primes (p^3*q^3).

Offset 1, canonical program `A162142.P17462580010541351734`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006881, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A162142 (n : ℕ) : ℤ :=
  A162142.P17462580010541351734.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006881, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A162142.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A166237.P15849570190296042025

`A006881(n+2)-A006881(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A166237.P15849570190296042025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 2) - A006881 (n + 1)

end

end A166237.P15849570190296042025

noncomputable section

/-- A166237: Differences between consecutive products of two distinct primes: a(n) = A006881(n+1) - A006881(n).

Offset 1, canonical program `A166237.P15849570190296042025`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006881, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A166237 (n : ℕ) : ℤ :=
  A166237.P15849570190296042025.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006881, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A166237.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A167349.P4063625469855848635

`A003959(n+1)²`
-/

namespace A167349.P4063625469855848635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (n + 1) ^ 2

end

end A167349.P4063625469855848635

noncomputable section

/-- A167349: Totally multiplicative sequence with a(p) = (p+1)^2 = p^2+2p+1 for prime p.

Offset 1, canonical program `A167349.P4063625469855848635`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A167349 (n : ℕ) : ℤ :=
  A167349.P4063625469855848635.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A167349.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A167350.P7668436297064043008

`A003959(n+1)*A166586(n+1)`
-/

namespace A167350.P7668436297064043008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (n + 1) * A166586 (n + 1)

end

end A167350.P7668436297064043008

noncomputable section

/-- A167350: Totally multiplicative sequence with a(p) = (p+1)*(p-2) = p^2-p-2 for prime p.

Offset 1, canonical program `A167350.P7668436297064043008`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, A166586, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167350 (n : ℕ) : ℤ :=
  A167350.P7668436297064043008.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, A166586, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167350.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A167352.P11746959549573865569

`A003959(n+1)*A166589(n+1)`
-/

namespace A167352.P11746959549573865569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (n + 1) * A166589 (n + 1)

end

end A167352.P11746959549573865569

noncomputable section

/-- A167352: Totally multiplicative sequence with a(p) = (p+1)*(p-3) = p^2-2p-3 for prime p.

Offset 1, canonical program `A167352.P11746959549573865569`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, A166589, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167352 (n : ℕ) : ℤ :=
  A167352.P11746959549573865569.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, A166589, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167352.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A176035.P8435292185708419900

`A053186(A006881(n+1))`
-/

namespace A176035.P8435292185708419900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (A006881 (n + 1)).toNat

end

end A176035.P8435292185708419900

noncomputable section

/-- A176035: Difference between product of two distinct primes and previous perfect square.

Offset 1, canonical program `A176035.P8435292185708419900`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006881, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A176035 (n : ℕ) : ℤ :=
  A176035.P8435292185708419900.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006881, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A176035.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A182800.P2627050066186583486

`A000720(A006881(n+1))+n+1`
-/

namespace A182800.P2627050066186583486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A006881 (n + 1)).toNat + (n + 1 : ℤ)

end

end A182800.P2627050066186583486

noncomputable section

/-- A182800: Positions of composites in A167171.

Offset 1, canonical program `A182800.P2627050066186583486`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182800 (n : ℕ) : ℤ :=
  A182800.P2627050066186583486.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182800.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A000016.P4834367987804555054

`A096010(A000007(n)+n)-1`
-/

namespace A000016.P4834367987804555054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096010 (A000007 n + (n : ℤ)).toNat - 1

end

end A000016.P4834367987804555054

noncomputable section

/-- A000016: a(n) is the number of distinct (infinite) output sequences from binary n-stage shift register which feeds back the complement of the last stage.

Offset 0, canonical program `A000016.P4834367987804555054`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. -/
def A000016 (n : ℕ) : ℤ :=
  A000016.P4834367987804555054.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. -/
def A000016.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A004627.P17803393918126401768

`record[gcd(A170818(n+1), A331671(n+1))]`
-/

namespace A004627.P17803393918126401768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A170818 (n + 1)) (A331671 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004627.P17803393918126401768

noncomputable section

/-- A004627: Divisible only by primes congruent to 5 mod 8.

Offset 1, canonical program `A004627.P17803393918126401768`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 519 terms. -/
def A004627 (n : ℕ) : ℤ :=
  (A004627.P17803393918126401768.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 519 terms. -/
def A004627.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008834.P17208951749117866926

`A053150(n+1)^3`
-/

namespace A008834.P17208951749117866926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053150 (n + 1) ^ 3

end

end A008834.P17208951749117866926

noncomputable section

/-- A008834: Largest cube dividing n.

Offset 1, canonical program `A008834.P17208951749117866926`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053150, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A008834 (n : ℕ) : ℤ :=
  A008834.P17208951749117866926.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053150, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A008834.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A013917.P12119760213157266530

`A013918(n+1)-A007504(A013916(n+1)-1)`
-/

namespace A013917.P12119760213157266530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013918 (n + 1) - A007504 (A013916 (n + 1) - 1).toNat

end

end A013917.P12119760213157266530

noncomputable section

/-- A013917: a(n) is prime and sum of all primes <= a(n) is prime.

Offset 1, canonical program `A013917.P12119760213157266530`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4444 terms. -/
def A013917 (n : ℕ) : ℤ :=
  A013917.P12119760213157266530.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4444 terms. -/
def A013917.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A015051.P6935532118389859597

`A019554(A015049(n+1))`
-/

namespace A015051.P6935532118389859597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (A015049 (n + 1)).toNat

end

end A015051.P6935532118389859597

noncomputable section

/-- A015051: Let m = A013929(n); then a(n) = smallest k such that m divides k^4.

Offset 1, canonical program `A015051.P6935532118389859597`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7840 terms. -/
def A015051 (n : ℕ) : ℤ :=
  A015051.P6935532118389859597.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7840 terms. -/
def A015051.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025474.P18098072962577053002

`∑{e}[A000961(n+1), #]`
-/

namespace A025474.P18098072962577053002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A025474.P18098072962577053002

noncomputable section

/-- A025474: Exponent of the n-th prime power A000961(n).

Offset 1, canonical program `A025474.P18098072962577053002`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025474 (n : ℕ) : ℤ :=
  (A025474.P18098072962577053002.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025474.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A031218.P11079871404618641815

`A000961(A065515(n+1))`
-/

namespace A031218.P11079871404618641815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (A065515 (n + 1)).toNat

end

end A031218.P11079871404618641815

noncomputable section

/-- A031218: Largest prime power <= n.

Offset 1, canonical program `A031218.P11079871404618641815`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A031218 (n : ℕ) : ℤ :=
  A031218.P11079871404618641815.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A031218.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A051293.P18428815694891853297

`∑[A082550(n+1)]`
-/

namespace A051293.P18428815694891853297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082550 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051293.P18428815694891853297

noncomputable section

/-- A051293: Number of nonempty subsets of {1,2,3,...,n} whose elements have an integer average.

Offset 1, canonical program `A051293.P18428815694891853297`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 339 terms. -/
def A051293 (n : ℕ) : ℤ :=
  A051293.P18428815694891853297.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 339 terms. -/
def A051293.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051451.P7656855382918326739

`A003418(A000961(n+1))`
-/

namespace A051451.P7656855382918326739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (A000961 (n + 1)).toNat

end

end A051451.P7656855382918326739

noncomputable section

/-- A051451: a(n) = lcm{ 1,2,...,x } where x is the n-th prime power (A000961).

Offset 1, canonical program `A051451.P7656855382918326739`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A051451 (n : ℕ) : ℤ :=
  A051451.P7656855382918326739.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A051451.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A056795.P13290597638607916354

`A056793(A000961(n+1))`
-/

namespace A056795.P13290597638607916354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056793 (A000961 (n + 1)).toNat

end

end A056795.P13290597638607916354

noncomputable section

/-- A056795: Number of divisors of k as k runs through sequence of distinct values of LCM(1,..,n).

Offset 1, canonical program `A056795.P13290597638607916354`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 351 terms. -/
def A056795 (n : ℕ) : ℤ :=
  A056795.P13290597638607916354.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 351 terms. -/
def A056795.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056798.P6426982090887198732

`A000961(n+1)²`
-/

namespace A056798.P6426982090887198732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1) ^ 2

end

end A056798.P6426982090887198732

noncomputable section

/-- A056798: Prime powers with even nonnegative exponents.

Offset 1, canonical program `A056798.P6426982090887198732`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056798 (n : ℕ) : ℤ :=
  A056798.P6426982090887198732.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056798.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A057820.P915405789854175386

`A000961(n+2)-A000961(n+1)`
-/

namespace A057820.P915405789854175386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 2) - A000961 (n + 1)

end

end A057820.P915405789854175386

noncomputable section

/-- A057820: First differences of sequence of consecutive prime powers (A000961).

Offset 1, canonical program `A057820.P915405789854175386`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A057820 (n : ℕ) : ℤ :=
  A057820.P915405789854175386.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A057820.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A060328.P1743588355171179082

`A167610(n+3)`
-/

namespace A060328.P1743588355171179082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167610 (n + 3)

end

end A060328.P1743588355171179082

noncomputable section

/-- A060328: Primes which are the sum of three consecutive composite numbers.

Offset 1, canonical program `A060328.P1743588355171179082`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A060328 (n : ℕ) : ℤ :=
  A060328.P1743588355171179082.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A060328.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060477.P12484986106392669418

`or(C(n, a(n-1)), A059966(n+1))` with `a(0)=3`
-/

namespace A060477.P12484986106392669418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  Int.lor (Nat.choose n (a (n - 1)).toNat : ℤ) (A059966 (n + 1))

end

end A060477.P12484986106392669418

noncomputable section

/-- A060477: Number of orbits of length n in map whose periodic points are A000051.

Offset 1, canonical program `A060477.P12484986106392669418`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A060477 (n : ℕ) : ℤ :=
  A060477.P12484986106392669418.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A060477.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061774.P2339286912223203709

`(A000961(n+1)-1)!`
-/

namespace A061774.P2339286912223203709
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A000961 (n + 1) - 1).toNat

end

end A061774.P2339286912223203709

noncomputable section

/-- A061774: (m-1)!, as m runs through the prime powers >= 1.

Offset 1, canonical program `A061774.P2339286912223203709`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A061774 (n : ℕ) : ℤ :=
  (A061774.P2339286912223203709.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A061774.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A065153.P9728212256497454356

`eq[0, A065152(n+1)]+1`
-/

namespace A065153.P9728212256497454356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065152 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A065153.P9728212256497454356

noncomputable section

/-- A065153: Numbers for which the cototient of the totient is equal to the totient of the cototient.

Offset 1, canonical program `A065153.P9728212256497454356`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 286 terms. -/
def A065153 (n : ℕ) : ℤ :=
  (A065153.P9728212256497454356.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 286 terms. -/
def A065153.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065154.P12619907100534345672

`lt[A065152(n+1), 0]+1`
-/

namespace A065154.P12619907100534345672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065152 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A065154.P12619907100534345672

noncomputable section

/-- A065154: Numbers for which the cototient of the totient is strictly less than the totient of the cototient.

Offset 1, canonical program `A065154.P12619907100534345672`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1553 terms. -/
def A065154 (n : ℕ) : ℤ :=
  (A065154.P12619907100534345672.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1553 terms. -/
def A065154.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065155.P2388054126612955149

`lt[0, A065152(n+1)]+1`
-/

namespace A065155.P2388054126612955149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065152 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A065155.P2388054126612955149

noncomputable section

/-- A065155: Numbers whose cototient of totient is strictly greater than totient of cototient.

Offset 1, canonical program `A065155.P2388054126612955149`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8161 terms. -/
def A065155 (n : ℕ) : ℤ :=
  (A065155.P2388054126612955149.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8161 terms. -/
def A065155.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065514.P8687628977882783365

`A000961(A027883(n+1))`
-/

namespace A065514.P8687628977882783365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (A027883 (n + 1)).toNat

end

end A065514.P8687628977882783365

noncomputable section

/-- A065514: Largest power of a prime < prime(n).

Offset 1, canonical program `A065514.P8687628977882783365`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9891 terms. -/
def A065514 (n : ℕ) : ℤ :=
  A065514.P8687628977882783365.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9891 terms. -/
def A065514.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A072436.P7287158936470340465

`A006519(n+1)*A170818(n+1)`
-/

namespace A072436.P7287158936470340465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1) * A170818 (n + 1)

end

end A072436.P7287158936470340465

noncomputable section

/-- A072436: Remove prime factors of form 4*k+3.

Offset 1, canonical program `A072436.P7287158936470340465`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072436 (n : ℕ) : ℤ :=
  A072436.P7287158936470340465.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072436.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075157.P13529888082519648211

`A286468(A004760(n+2))-1`
-/

namespace A075157.P13529888082519648211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286468 (A004760 (n + 2)).toNat - 1

end

end A075157.P13529888082519648211

noncomputable section

/-- A075157: Run lengths in the binary expansion of n gives the vector of exponents in prime factorization of a(n)+1, with the least significant run corresponding to the exponent of the least prime, 2; with one subtracted from each run length, except for the most significant run of 1's.

Offset 0, canonical program `A075157.P13529888082519648211`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A075157 (n : ℕ) : ℤ :=
  A075157.P13529888082519648211.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A075157.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A083913.P9028729068411083889`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A083910, A083911, A083912, A083914, A083915, A083916, A083917, A083918, A083919, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A083913 (n : ℕ) : ℤ :=
  A083913.P9028729068411083889.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A083910, A083911, A083912, A083914, A083915, A083916, A083917, A083918, A083919, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A083913.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A084227.P1142344251697710946

`∪[A006881(n+1), A345381(n+1)]`
-/

namespace A084227.P1142344251697710946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345381 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A084227.P1142344251697710946

noncomputable section

/-- A084227: Numbers of the form p*q^k with distinct primes p and q, k>0.

Offset 1, canonical program `A084227.P1142344251697710946`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A084227 (n : ℕ) : ℤ :=
  (A084227.P1142344251697710946.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A084227.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085357.P3258697467278337073

`A008966(A005940(1+n))`
-/

namespace A085357.P3258697467278337073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A005940 (1 + n)).toNat

end

end A085357.P3258697467278337073

noncomputable section

/-- A085357: Common residues of binomial(3n,n)/(2n+1) modulo 2: relates ternary trees (A001764) to the infinite Fibonacci word (A003849).

Offset 0, canonical program `A085357.P3258697467278337073`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A008966, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A085357 (n : ℕ) : ℤ :=
  A085357.P3258697467278337073.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A008966, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A085357.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A085405.P9788753788236568854

`A323239(A005940(1+n))`
-/

namespace A085405.P9788753788236568854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323239 (A005940 (1 + n)).toNat

end

end A085405.P9788753788236568854

noncomputable section

/-- A085405: Common residues of binomial(3n+2,n+1)/(3n+2) modulo 2.

Offset 0, canonical program `A085405.P9788753788236568854`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A323239, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A085405 (n : ℕ) : ℤ :=
  A085405.P9788753788236568854.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A323239, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A085405.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A085730.P7262382919816925402

`A000010(A000961(n+1))`
-/

namespace A085730.P7262382919816925402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000961 (n + 1)).toNat

end

end A085730.P7262382919816925402

noncomputable section

/-- A085730: Euler's totient function applied to the sequence of prime powers.

Offset 1, canonical program `A085730.P7262382919816925402`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9701 terms. -/
def A085730 (n : ℕ) : ℤ :=
  A085730.P7262382919816925402.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9701 terms. -/
def A085730.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A087808.P16247753325195176989

`A048675(A005940(n+1))`
-/

namespace A087808.P16247753325195176989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A005940 (n + 1)).toNat

end

end A087808.P16247753325195176989

noncomputable section

/-- A087808: a(0) = 0; a(2n) = 2a(n), a(2n+1) = a(n) + 1.

Offset 0, canonical program `A087808.P16247753325195176989`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A048675, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A087808 (n : ℕ) : ℤ :=
  A087808.P16247753325195176989.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A048675, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A087808.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A092463.P6311751269246005259

`A000961(∑[n+1])`
-/

namespace A092463.P6311751269246005259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A092463.P6311751269246005259

noncomputable section

/-- A092463: Greatest number in the n-th successive group of natural numbers containing exactly n prime powers.

Offset 1, canonical program `A092463.P6311751269246005259`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A092463 (n : ℕ) : ℤ :=
  A092463.P6311751269246005259.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A092463.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106737.P18148642187660912627

`A000005(A005940(1+n))`
-/

namespace A106737.P18148642187660912627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A005940 (1 + n)).toNat

end

end A106737.P18148642187660912627

noncomputable section

/-- A106737: a(n) = Sum_{k=0..n} ({binomial(n+k,n-k)*binomial(n,k)} mod 2).

Offset 0, canonical program `A106737.P18148642187660912627`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A005940, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A106737 (n : ℕ) : ℤ :=
  A106737.P18148642187660912627.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A005940, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A106737.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A109853.P12908094918149047788

`A238526(A004277(n))+A006530(A060594(n+1))`
-/

namespace A109853.P12908094918149047788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238526 (A004277 n).toNat + A006530 (A060594 (n + 1)).toNat

end

end A109853.P12908094918149047788

noncomputable section

/-- A109853: a(n) = A109852(2^n).

Offset 0, canonical program `A109853.P12908094918149047788`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A109853 (n : ℕ) : ℤ :=
  A109853.P12908094918149047788.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A109853.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A136277.P14697179378172432189

`A181591(A005940(1+n))`
-/

namespace A136277.P14697179378172432189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181591 (A005940 (1 + n)).toNat

end

end A136277.P14697179378172432189

noncomputable section

/-- A136277: From the binary representation of n: binomial(number of ones, number of blocks of contiguous ones).

Offset 0, canonical program `A136277.P14697179378172432189`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A181591, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A136277 (n : ℕ) : ℤ :=
  A136277.P14697179378172432189.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A181591, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A136277.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A138929.P2871587686834618281

`2*A000961(n+1)`
-/

namespace A138929.P2871587686834618281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000961 (n + 1)

end

end A138929.P2871587686834618281

noncomputable section

/-- A138929: Twice the prime powers A000961.

Offset 1, canonical program `A138929.P2871587686834618281`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138929 (n : ℕ) : ℤ :=
  A138929.P2871587686834618281.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138929.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A143235.P8249432583352221017

`A000005(A051173(n+1))*A051194(n+1)`
-/

namespace A143235.P8249432583352221017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A051173 (n + 1)).toNat * A051194 (n + 1)

end

end A143235.P8249432583352221017

noncomputable section

/-- A143235: Triangle read by rows: T(n,k) = tau(n)*tau(k), the product of the number of divisors.

Offset 1, canonical program `A143235.P8249432583352221017`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143235 (n : ℕ) : ℤ :=
  A143235.P8249432583352221017.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143235.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153013.P308518646020889939

`A005940(1+a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A153013.P308518646020889939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A005940 (1 + a (n - 1)).toNat

end

end A153013.P308518646020889939

noncomputable section

/-- A153013: Starting with input 0, find the binary value of the input. Then interpret resulting string of 1's and 0's as prime-based numbers, as follows: 0's are separators, uninterrupted strings of 1's are interpreted from right to left as exponents of the prime numbers. Output is returned as input for the next number in sequence.

Offset 0, canonical program `A153013.P308518646020889939`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A153013 (n : ℕ) : ℤ :=
  A153013.P308518646020889939.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A153013.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A156898.P15997122313686612473

`A067535(A000961(n+1))`
-/

namespace A156898.P15997122313686612473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067535 (A000961 (n + 1)).toNat

end

end A156898.P15997122313686612473

noncomputable section

/-- A156898: a(n) = the smallest squarefree integer >= the n-th prime power.

Offset 1, canonical program `A156898.P15997122313686612473`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1281 terms. -/
def A156898 (n : ℕ) : ℤ :=
  A156898.P15997122313686612473.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1281 terms. -/
def A156898.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A161882.P9047361608683957407

`A297382(A170818(n+2))+A297382(n+2)`
-/

namespace A161882.P9047361608683957407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297382 (A170818 (n + 2)).toNat + A297382 (n + 2)

end

end A161882.P9047361608683957407

noncomputable section

/-- A161882: Smallest k such that n^2 = a_1^2 + ... + a_k^2 and all a_i are positive integers less than n.

Offset 2, canonical program `A161882.P9047361608683957407`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 699 terms. -/
def A161882 (n : ℕ) : ℤ :=
  A161882.P9047361608683957407.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 699 terms. -/
def A161882.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167181.P7167596632618904553

`filter[A004614(n+1), A008966(#)]`
-/

namespace A167181.P7167596632618904553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A167181.P7167596632618904553

noncomputable section

/-- A167181: Squarefree numbers such that all prime factors are == 3 mod 4.

Offset 1, canonical program `A167181.P7167596632618904553`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8294 terms. -/
def A167181 (n : ℕ) : ℤ :=
  A167181.P7167596632618904553.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8294 terms. -/
def A167181.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167344.P17306748435152124065

`A003958(n+1)*A003959(n+1)`
-/

namespace A167344.P17306748435152124065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (n + 1) * A003959 (n + 1)

end

end A167344.P17306748435152124065

noncomputable section

/-- A167344: Totally multiplicative sequence with a(p) = (p-1)*(p+1) = p^2-1 for prime p.

Offset 1, canonical program `A167344.P17306748435152124065`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, A003959, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167344 (n : ℕ) : ℤ :=
  A167344.P17306748435152124065.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, A003959, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167344.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A167351.P2583603583113237971

`A003959(n+1)*A166590(n+1)`
-/

namespace A167351.P2583603583113237971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (n + 1) * A166590 (n + 1)

end

end A167351.P2583603583113237971

noncomputable section

/-- A167351: Totally multiplicative sequence with a(p) = (p+1)*(p+2) = p^2+3p+2 for prime p.

Offset 1, canonical program `A167351.P2583603583113237971`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, A166590, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167351 (n : ℕ) : ℤ :=
  A167351.P2583603583113237971.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, A166590, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167351.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A168065.P9643825533377042537

`(A003959(n+1)+A003958(n+1))/2`
-/

namespace A168065.P9643825533377042537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) + A003958 (n + 1) : ℚ) / 2

end

end A168065.P9643825533377042537

noncomputable section

/-- A168065: If n = Product p(k)^e(k) then a(n) = (Product (p(k)+1)^e(k) + Product (p(k)-1)^e(k))/2, a(1) = 1.

Offset 1, canonical program `A168065.P9643825533377042537`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, A003959, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A168065 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A168065.P9643825533377042537.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, A003959, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A168065.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A168066.P11839968661184011680

`(A003959(n+1)-A003958(n+1))/2`
-/

namespace A168066.P11839968661184011680
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) - A003958 (n + 1) : ℚ) / 2

end

end A168066.P11839968661184011680

noncomputable section

/-- A168066: If n = Product p(k)^e(k) then a(n) = (Product (p(k)+1)^e(k) - Product (p(k)-1)^e(k))/2, a(1) = 0.

Offset 1, canonical program `A168066.P11839968661184011680`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, A003959, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A168066 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A168066.P11839968661184011680.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, A003959, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A168066.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A181062.P6529548857799504333

`A000961(n+1)-1`
-/

namespace A181062.P6529548857799504333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1) - 1

end

end A181062.P6529548857799504333

noncomputable section

/-- A181062: Prime powers minus 1.

Offset 1, canonical program `A181062.P6529548857799504333`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A181062 (n : ℕ) : ℤ :=
  A181062.P6529548857799504333.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A181062.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A184830.P16798279248287820796

`(A000961(n+1)-Δ[A000961(n+1)])%A002061(n)`
-/

namespace A184830.P16798279248287820796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000961 (n + 1) - (f1 (n + 1) - f1 n)) (A002061 n)

end

end A184830.P16798279248287820796

noncomputable section

/-- A184830: a(n) = largest k such that A000961(n+1) = A000961(n) + (A000961(n) mod k), or 0 if no such k exists.

Offset 1, canonical program `A184830.P16798279248287820796`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9790 terms. -/
def A184830 (n : ℕ) : ℤ :=
  A184830.P16798279248287820796.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9790 terms. -/
def A184830.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A192015.P4229160100283672966

`A003415(A000961(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A192015.P4229160100283672966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A000961 (n + 1)).toNat

end

end A192015.P4229160100283672966

noncomputable section

/-- A192015: Arithmetic derivative of prime powers: a(n) = A003415(A000961(n)).

Offset 1, canonical program `A192015.P4229160100283672966`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000961, A003415, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A192015 (n : ℕ) : ℤ :=
  A192015.P4229160100283672966.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000961, A003415, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A192015.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A192016.P16767294491399354515

`A068346(A000961(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A192016.P16767294491399354515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068346 (A000961 (n + 1)).toNat

end

end A192016.P16767294491399354515

noncomputable section

/-- A192016: Second arithmetic derivative of prime powers: a(n) = A068346(A000961(n)).

Offset 1, canonical program `A192016.P16767294491399354515`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000961, A068346, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A192016 (n : ℕ) : ℤ :=
  A192016.P16767294491399354515.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000961, A068346, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A192016.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A000031.P16543801865445953573

`∑{d}[n, A059966(#)]+1`
-/

namespace A000031.P16543801865445953573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A059966 d + 1

end

end A000031.P16543801865445953573

noncomputable section

/-- A000031: Number of n-bead necklaces with 2 colors when turning over is not allowed; also number of output sequences from a simple n-stage cycling shift register; also number of binary irreducible polynomials whose degree divides n.

Offset 0, canonical program `A000031.P16543801865445953573`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A000031 (n : ℕ) : ℤ :=
  A000031.P16543801865445953573.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A000031.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A003800.P15621903815965783773

`(A059238(n+1)+A329119(n+1)²)*A246655(n+1)²`
-/

namespace A003800.P15621903815965783773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A059238 (n + 1) + A329119 (n + 1) ^ 2) * A246655 (n + 1) ^ 2

end

end A003800.P15621903815965783773

noncomputable section

/-- A003800: Order of universal Chevalley group A_2 (q), q = prime power.

Offset 1, canonical program `A003800.P15621903815965783773`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003800 (n : ℕ) : ℤ :=
  A003800.P15621903815965783773.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003800.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005238.P2704022991964426185

`∪[A075039(n+1), A171666(n+1)]`
-/

namespace A005238.P2704022991964426185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171666 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A005238.P2704022991964426185

noncomputable section

/-- A005238: Numbers k such that k, k+1 and k+2 have the same number of divisors.

Offset 1, canonical program `A005238.P2704022991964426185`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005238 (n : ℕ) : ℤ :=
  (A005238.P2704022991964426185.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005238.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A037074.P14204517585574046059

`A014574(n+1)²-1`
-/

namespace A037074.P14204517585574046059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1) ^ 2 - 1

end

end A037074.P14204517585574046059

noncomputable section

/-- A037074: Numbers that are the product of a pair of twin primes.

Offset 1, canonical program `A037074.P14204517585574046059`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014574, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A037074 (n : ℕ) : ℤ :=
  A037074.P14204517585574046059.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014574, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A037074.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A040040.P16619200629137818045

`A014574(n+1)/2`
-/

namespace A040040.P16619200629137818045
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014574 (n + 1) : ℚ) / 2

end

end A040040.P16619200629137818045

noncomputable section

/-- A040040: Average of twin prime pairs (A014574), divided by 2. Equivalently, 2*a(n)-1 and 2*a(n)+1 are primes.

Offset 1, canonical program `A040040.P16619200629137818045`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014574, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A040040 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A040040.P16619200629137818045.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014574, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A040040.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A054526.P10074911723705506468

`A349137(A174028(n))`
-/

namespace A054526.P10074911723705506468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349137 (A174028 n).toNat

end

end A054526.P10074911723705506468

noncomputable section

/-- A054526: Triangle T(n,k): T(n,k) = phi(k) (n >= 1, 1 <= k <= n).

Offset 1, canonical program `A054526.P10074911723705506468`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054526 (n : ℕ) : ℤ :=
  A054526.P10074911723705506468.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054526.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054735.P17392456198016609014

`2*A014574(n+1)`
-/

namespace A054735.P17392456198016609014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014574 (n + 1)

end

end A054735.P17392456198016609014

noncomputable section

/-- A054735: Sums of twin prime pairs.

Offset 1, canonical program `A054735.P17392456198016609014`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014574, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A054735 (n : ℕ) : ℤ :=
  A054735.P17392456198016609014.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014574, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A054735.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A057473.P10214485168046116986

`A151800(A151800(A057470(n+1)))`
-/

namespace A057473.P10214485168046116986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A151800 (A057470 (n + 1)).toNat).toNat

end

end A057473.P10214485168046116986

noncomputable section

/-- A057473: Let prime(i) = i-th prime, let twin(n) = (P,Q) be n-th pair of twin primes; sequence gives prime(Q).

Offset 1, canonical program `A057473.P10214485168046116986`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057470, A151800, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A057473 (n : ℕ) : ℤ :=
  A057473.P10214485168046116986.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057470, A151800, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A057473.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A063533.P4439980953914597874

`2*(A014574(n+1)²+1)`
-/

namespace A063533.P4439980953914597874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A014574 (n + 1) ^ 2 + 1)

end

end A063533.P4439980953914597874

noncomputable section

/-- A063533: Hypotenuses of special Pythagorean triples constructed from twin primes as follows: {u, w}={p,p+2}; side a=2p(p+2), side b=(p+2)^2-p^2 and the terms of sequence are values of c=a(n)=p^2+(p+2)^2=phi(a/2)+1+sigma(a/2)+1.

Offset 1, canonical program `A063533.P4439980953914597874`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014574, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A063533 (n : ℕ) : ℤ :=
  A063533.P4439980953914597874.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014574, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A063533.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A067829.P11035517801110487741

`A014574(A028310(n))-A153881(n+1)`
-/

namespace A067829.P11035517801110487741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (A028310 n).toNat - A153881 (n + 1)

end

end A067829.P11035517801110487741

noncomputable section

/-- A067829: Primes p such that sigma(p-2) < p.

Offset 1, canonical program `A067829.P11035517801110487741`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067829 (n : ℕ) : ℤ :=
  A067829.P11035517801110487741.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067829.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A073123.P1647007499742414830

`A072677(n+1)-1`
-/

namespace A073123.P1647007499742414830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072677 (n + 1) - 1

end

end A073123.P1647007499742414830

noncomputable section

/-- A073123: a(n) is the largest number such that pi(a(n)) = prime(n).

Offset 1, canonical program `A073123.P1647007499742414830`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073123 (n : ℕ) : ℤ :=
  A073123.P1647007499742414830.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073123.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073124.P4841457181950181251

`A072677(n+1)-A006450(n+1)`
-/

namespace A073124.P4841457181950181251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072677 (n + 1) - A006450 (n + 1)

end

end A073124.P4841457181950181251

noncomputable section

/-- A073124: a(n) = prime(1+prime(n)) - prime(prime(n)).

Offset 1, canonical program `A073124.P4841457181950181251`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006450, A072677, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A073124 (n : ℕ) : ℤ :=
  A073124.P4841457181950181251.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006450, A072677, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A073124.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A075369.P17454409901209698204

`A014574(n+1)²`
-/

namespace A075369.P17454409901209698204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1) ^ 2

end

end A075369.P17454409901209698204

noncomputable section

/-- A075369: Square associated with twin primes (p,p+2): p(p+2) + 1. Square of the average of twin primes.

Offset 1, canonical program `A075369.P17454409901209698204`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014574, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A075369 (n : ℕ) : ℤ :=
  A075369.P17454409901209698204.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014574, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A075369.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A076242.P9726685083958255532`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076242 (n : ℕ) : ℤ :=
  A076242.P9726685083958255532.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076242.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A077768.P12280336567790467056

`A211340(n+2)-(A211340(n+1)+A046080(n+2))`
-/

namespace A077768.P12280336567790467056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211340 (n + 2) - (A211340 (n + 1) + A046080 (n + 2))

end

end A077768.P12280336567790467056

noncomputable section

/-- A077768: Number of times that the sum of two squares is an integer between n^2 and (n+1)^2; multiple representations are counted multiply.

Offset 1, canonical program `A077768.P12280336567790467056`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9989 terms. -/
def A077768 (n : ℕ) : ℤ :=
  A077768.P12280336567790467056.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9989 terms. -/
def A077768.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078503.P2127838197446641013

`C(A349137(A026741(2*n+3)), A200905(n+1)/3)`
-/

namespace A078503.P2127838197446641013
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A349137 (A026741 (2 * n + 3)).toNat).toNat (SequenceMachineLib.roundAway ((A200905 (n + 1) : ℚ) / 3)).toNat

end

end A078503.P2127838197446641013

noncomputable section

/-- A078503: a(n) = binomial(phi(n+1),phi(n)).

Offset 1, canonical program `A078503.P2127838197446641013`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 291 terms. -/
def A078503 (n : ℕ) : ℤ :=
  (A078503.P2127838197446641013.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 291 terms. -/
def A078503.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078571.P14131178776857058075

`∑{e}[A014574(n+1), #]`
-/

namespace A078571.P14131178776857058075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A078571.P14131178776857058075

noncomputable section

/-- A078571: Total number of prime factors of the average of n-th twin prime pair.

Offset 1, canonical program `A078571.P14131178776857058075`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8169 terms. -/
def A078571 (n : ℕ) : ℤ :=
  (A078571.P14131178776857058075.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8169 terms. -/
def A078571.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078574.P14526319129485008782

`∏{e}[A014574(n+1), #+1]`
-/

namespace A078574.P14526319129485008782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A078574.P14526319129485008782

noncomputable section

/-- A078574: Number of divisors of the average of n-th twin prime pair.

Offset 1, canonical program `A078574.P14526319129485008782`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8169 terms. -/
def A078574 (n : ℕ) : ℤ :=
  (A078574.P14526319129485008782.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8169 terms. -/
def A078574.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078575.P1592237202108889481

`∑{d}[A014574(n+1), #]`
-/

namespace A078575.P1592237202108889481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A078575.P1592237202108889481

noncomputable section

/-- A078575: Sum of divisors of the average of n-th twin prime pair.

Offset 1, canonical program `A078575.P1592237202108889481`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8169 terms. -/
def A078575 (n : ℕ) : ℤ :=
  (A078575.P1592237202108889481.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8169 terms. -/
def A078575.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078576.P14982012827478207231

`∑{p}[A014574(n+1), #]`
-/

namespace A078576.P14982012827478207231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A078576.P14982012827478207231

noncomputable section

/-- A078576: Sum of distinct prime factors of the average of n-th twin prime pair.

Offset 1, canonical program `A078576.P14982012827478207231`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8169 terms. -/
def A078576 (n : ℕ) : ℤ :=
  (A078576.P14982012827478207231.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8169 terms. -/
def A078576.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078579.P11091032663916410536

`∏{p}[A014574(n+1), #]`
-/

namespace A078579.P11091032663916410536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A078579.P11091032663916410536

noncomputable section

/-- A078579: Squarefree kernel of the average of n-th twin prime pair.

Offset 1, canonical program `A078579.P11091032663916410536`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8169 terms. -/
def A078579 (n : ℕ) : ℤ :=
  (A078579.P11091032663916410536.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8169 terms. -/
def A078579.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078581.P15978629172773451273

`A003415(A014574(n+1))`
-/

namespace A078581.P15978629172773451273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A014574 (n + 1)).toNat

end

end A078581.P15978629172773451273

noncomputable section

/-- A078581: Arithmetic derivative of the average of n-th twin prime pair.

Offset 1, canonical program `A078581.P15978629172773451273`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A014574, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A078581 (n : ℕ) : ℤ :=
  A078581.P15978629172773451273.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A014574, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A078581.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A088175.P18306801926919079175

`A014574(n+1)-(A084290(n+1)+1)`
-/

namespace A088175.P18306801926919079175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1) - (A084290 (n + 1) + 1)

end

end A088175.P18306801926919079175

noncomputable section

/-- A088175: Primes such that the next two primes are a twin prime pair.

Offset 1, canonical program `A088175.P18306801926919079175`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088175 (n : ℕ) : ℤ :=
  A088175.P18306801926919079175.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088175.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088985.P11937650626503658584

`A072677(A029707(n+1))`
-/

namespace A088985.P11937650626503658584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072677 (A029707 (n + 1)).toNat

end

end A088985.P11937650626503658584

noncomputable section

/-- A088985: Numbers of the form prime(prime(n)+1), with n satisfying prime(n)+2 = prime(n+1).

Offset 1, canonical program `A088985.P11937650626503658584`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A088985 (n : ℕ) : ℤ :=
  A088985.P11937650626503658584.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A088985.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092771.P2642806200389724919

`A092769(n+1)-1`
-/

namespace A092771.P2642806200389724919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092769 (n + 1) - 1

end

end A092771.P2642806200389724919

noncomputable section

/-- A092771: Prime(prime(n))^2-1.

Offset 1, canonical program `A092771.P2642806200389724919`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092771 (n : ℕ) : ℤ :=
  A092771.P2642806200389724919.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092771.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092773.P5808287520077253958

`ceil(A092769(n+1)/2)`
-/

namespace A092773.P5808287520077253958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A092769 (n + 1) : ℚ) / 2⌉

end

end A092773.P5808287520077253958

noncomputable section

/-- A092773: (Prime(prime(n))^2+1)/2.

Offset 1, canonical program `A092773.P5808287520077253958`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092773 (n : ℕ) : ℤ :=
  A092773.P5808287520077253958.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092773.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A096281.P9870488552655544131

`A014574(A008619(n+1))+A014574(A008619(n))`
-/

namespace A096281.P9870488552655544131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (A008619 (n + 1)).toNat + A014574 (A008619 n).toNat

end

end A096281.P9870488552655544131

noncomputable section

/-- A096281: Sums of successive twin primes of order 1.

Offset 1, canonical program `A096281.P9870488552655544131`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A096281 (n : ℕ) : ℤ :=
  A096281.P9870488552655544131.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A096281.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A096919.P738797991620744238`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A096919 (n : ℕ) : ℤ :=
  A096919.P738797991620744238.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A096919.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A097973.P7662642282859607044

`A014574(n+1)^3-1`
-/

namespace A097973.P7662642282859607044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1) ^ 3 - 1

end

end A097973.P7662642282859607044

noncomputable section

/-- A097973: Least m>p such that p|m, p+1|m+1 and p+2|m+2, for twin prime pairs (p, p+2), p in A001359.

Offset 1, canonical program `A097973.P7662642282859607044`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097973 (n : ℕ) : ℤ :=
  A097973.P7662642282859607044.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097973.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098042.P4605575753571514886

`p?[A006450(n+1)-A001057(A073131(n+1))]`
-/

namespace A098042.P4605575753571514886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1) - A001057 (A073131 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098042.P4605575753571514886

noncomputable section

/-- A098042: Primes of the form (prime(prime(k)) + prime(prime(k+1)))/2.

Offset 1, canonical program `A098042.P4605575753571514886`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 379 terms. -/
def A098042 (n : ℕ) : ℤ :=
  A098042.P4605575753571514886.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 379 terms. -/
def A098042.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098043.P367051223371950583

`p?[A001281(A073131(n+1))]`
-/

namespace A098043.P367051223371950583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A073131 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098043.P367051223371950583

noncomputable section

/-- A098043: Primes of the form (prime(prime(k+1)) - prime(prime(k)))/2.

Offset 1, canonical program `A098043.P367051223371950583`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1687 terms. -/
def A098043 (n : ℕ) : ℤ :=
  A098043.P367051223371950583.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1687 terms. -/
def A098043.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A129782.P7810012710438629702

`A096479(n+1)+2`
-/

namespace A129782.P7810012710438629702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096479 (n + 1) + 2

end

end A129782.P7810012710438629702

noncomputable section

/-- A129782: The upper twin prime whose lower member has a prime index.

Offset 1, canonical program `A129782.P7810012710438629702`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A129782 (n : ℕ) : ℤ :=
  A129782.P7810012710438629702.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A129782.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A141437.P18245047897130633086

`comp[A141436(n+1)-1]+1`
-/

namespace A141437.P18245047897130633086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141436 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A141437.P18245047897130633086

noncomputable section

/-- A141437: Complement of A141436.

Offset 1, canonical program `A141437.P18245047897130633086`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141437 (n : ℕ) : ℤ :=
  (A141437.P18245047897130633086.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141437.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160651.P14045430326735677047

`A147810(Δ[n²])`
-/

namespace A160651.P14045430326735677047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147810 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A160651.P14045430326735677047

noncomputable section

/-- A160651: a(n) is the number of triangular nonnegative integers that are each equal to n(n+1)/2 - m(m+1)/2, for some m's where 0 <= m <= n.

Offset 0, canonical program `A160651.P14045430326735677047`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A160651 (n : ℕ) : ℤ :=
  A160651.P14045430326735677047.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A160651.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166008.P17506385708183436631

`A000120(A014574(n+1))`
-/

namespace A166008.P17506385708183436631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A014574 (n + 1)).toNat

end

end A166008.P17506385708183436631

noncomputable section

/-- A166008: Number of ones in the binary representation of the average of twin prime pairs.

Offset 1, canonical program `A166008.P17506385708183436631`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014574, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A166008 (n : ℕ) : ℤ :=
  A166008.P17506385708183436631.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014574, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A166008.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A205649.P8452228514460162335

`val(A014574(n+1), 2)`
-/

namespace A205649.P8452228514460162335
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A014574 (n + 1)).toNat 2

end

end A205649.P8452228514460162335

noncomputable section

/-- A205649: Hamming distance between twin primes.

Offset 1, canonical program `A205649.P8452228514460162335`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A205649 (n : ℕ) : ℤ :=
  (A205649.P8452228514460162335.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A205649.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A002822.P1649574763564528316

`A014574(n+2)/6`
-/

namespace A002822.P1649574763564528316
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014574 (n + 2) : ℚ) / 6

end

end A002822.P1649574763564528316

noncomputable section

/-- A002822: Numbers m such that 6m-1, 6m+1 are twin primes.

Offset 1, canonical program `A002822.P1649574763564528316`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014574, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A002822 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A002822.P1649574763564528316.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014574, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A002822.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A060839.P16883216215693058205

`A000265(A319100(n+1))`
-/

namespace A060839.P16883216215693058205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A319100 (n + 1)).toNat

end

end A060839.P16883216215693058205

noncomputable section

/-- A060839: Number of solutions to x^3 == 1 (mod n).

Offset 1, canonical program `A060839.P16883216215693058205`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060839 (n : ℕ) : ℤ :=
  A060839.P16883216215693058205.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060839.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073256.P8110500405186088033

`2*A062948(n+1)`
-/

namespace A073256.P8110500405186088033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A062948 (n + 1)

end

end A073256.P8110500405186088033

noncomputable section

/-- A073256: a(n) = phi(n-th composite number).

Offset 1, canonical program `A073256.P8110500405186088033`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073256 (n : ℕ) : ℤ :=
  A073256.P8110500405186088033.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073256.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073725.P8229638889903388732

`A065896(A062948(n+1))`
-/

namespace A073725.P8229638889903388732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065896 (A062948 (n + 1)).toNat

end

end A073725.P8229638889903388732

noncomputable section

/-- A073725: a(n)-th composite number = phi(n-th composite number); a(1)=a(2)=0.

Offset 1, canonical program `A073725.P8229638889903388732`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073725 (n : ℕ) : ℤ :=
  A073725.P8229638889903388732.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073725.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A100566.P12013916385963006797

`(A217622(n+2)+A006450(n+2))/2`
-/

namespace A100566.P12013916385963006797
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217622 (n + 2) + A006450 (n + 2) : ℚ) / 2

end

end A100566.P12013916385963006797

noncomputable section

/-- A100566: 2*a(n) = prime(prime(n)) + prime(prime(2n)).

Offset 2, canonical program `A100566.P12013916385963006797`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A100566 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A100566.P12013916385963006797.a (n - 2))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A100566.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A141138.P26682240259945506

`A175247(n+1)-1`
-/

namespace A141138.P26682240259945506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175247 (n + 1) - 1

end

end A141138.P26682240259945506

noncomputable section

/-- A141138: a(n) = prime(A028815(n) - 1) - 1.

Offset 0, canonical program `A141138.P26682240259945506`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141138 (n : ℕ) : ℤ :=
  A141138.P26682240259945506.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141138.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154405.P12804035702119283874

`A079273(A155133(n+1)+1)`
-/

namespace A154405.P12804035702119283874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079273 (A155133 (n + 1) + 1).toNat

end

end A154405.P12804035702119283874

noncomputable section

/-- A154405: Primes of the form 20n^2+8n+1.

Offset 1, canonical program `A154405.P12804035702119283874`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1026 terms. -/
def A154405 (n : ℕ) : ℤ :=
  A154405.P12804035702119283874.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1026 terms. -/
def A154405.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A175785.P6519600176006389600

`eq[16, A319100(A008574(n))]`
-/

namespace A175785.P6519600176006389600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319100 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A175785.P6519600176006389600

noncomputable section

/-- A175785: Numbers n such that the number of distinct prime divisors of n does not divide phi(n).

Offset 1, canonical program `A175785.P6519600176006389600`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A175785 (n : ℕ) : ℤ :=
  (A175785.P6519600176006389600.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A175785.provenance : SequenceMachineLib.Provenance := .conjectured

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

