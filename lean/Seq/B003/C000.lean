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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
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
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A001285.P11616636227895161122

`1+A010060(n)`
-/

namespace A001285.P11616636227895161122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A010060 n

end

end A001285.P11616636227895161122

noncomputable section

/-- A001285: Thue-Morse sequence: let A_k denote the first 2^k terms; then A_0 = 1 and for k >= 0, A_{k+1} = A_k B_k, where B_k is obtained from A_k by interchanging 1's and 2's.

Offset 0, canonical program `A001285.P11616636227895161122`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001285 (n : ℕ) : ℤ :=
  A001285.P11616636227895161122.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001285.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A001557.P6866617434651115240

`A001556(n)+A011557(n)`
-/

namespace A001557.P6866617434651115240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001556 n + A011557 n

end

end A001557.P6866617434651115240

noncomputable section

/-- A001557: a(n) = 1^n + 2^n + ... + 10^n.

Offset 0, canonical program `A001557.P6866617434651115240`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001557 (n : ℕ) : ℤ :=
  A001557.P6866617434651115240.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001557.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A001714.P5361614214990878834

`A001713(n)+(n+6)*a(n-1)` with `a(0)=1`
-/

namespace A001714.P5361614214990878834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001713 n + (n + 6 : ℤ) * a (n - 1)

end

end A001714.P5361614214990878834

noncomputable section

/-- A001714: Generalized Stirling numbers, [n+7,7]_3.

Offset 0, canonical program `A001714.P5361614214990878834`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001714 (n : ℕ) : ℤ :=
  A001714.P5361614214990878834.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001714.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A001790.P1262090449372590155

`A000984(n)/A001316(n)`
-/

namespace A001790.P1262090449372590155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000984 n : ℚ) / (A001316 n : ℚ)

end

end A001790.P1262090449372590155

noncomputable section

/-- A001790: Numerators in expansion of 1/sqrt(1-x).

Offset 0, canonical program `A001790.P1262090449372590155`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001790 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A001790.P1262090449372590155.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001790.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A001969.P9139304774861292784

`2*(n+1)-2+A010060(n)`
-/

namespace A001969.P9139304774861292784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - 2 + A010060 n

end

end A001969.P9139304774861292784

noncomputable section

/-- A001969: Evil numbers: nonnegative integers with an even number of 1's in their binary expansion.

Offset 1, canonical program `A001969.P9139304774861292784`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001969 (n : ℕ) : ℤ :=
  A001969.P9139304774861292784.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001969.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A008889.P2877282476747895501

`A008888(n+1)`
-/

namespace A008889.P2877282476747895501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008888 (n + 1)

end

end A008889.P2877282476747895501

noncomputable section

/-- A008889: Aliquot sequence starting at 150.

Offset 0, canonical program `A008889.P2877282476747895501`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A008889 (n : ℕ) : ℤ :=
  A008889.P2877282476747895501.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A008889.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A010059.P6338678923093357896

`1-A010060(n)`
-/

namespace A010059.P6338678923093357896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A010060 n

end

end A010059.P6338678923093357896

noncomputable section

/-- A010059: Another version of the Thue-Morse sequence: let A_k denote the first 2^k terms; then A_0 = 1 and for k >= 0, A_{k+1} = A_k B_k, where B_k is obtained from A_k by interchanging 0's and 1's.

Offset 0, canonical program `A010059.P6338678923093357896`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A010059 (n : ℕ) : ℤ :=
  A010059.P6338678923093357896.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A010059.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A014719.P3871794258725070210

`A014410(n+2)²`
-/

namespace A014719.P3871794258725070210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014410 (n + 2) ^ 2

end

end A014719.P3871794258725070210

noncomputable section

/-- A014719: Squares of elements in Pascal triangle (by row) that are not 1.

Offset 2, canonical program `A014719.P3871794258725070210`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014719 (n : ℕ) : ℤ :=
  A014719.P3871794258725070210.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014719.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A026029.P1005494940722334040

`A026012(n)+A000588(n)`
-/

namespace A026029.P1005494940722334040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026012 n + A000588 n

end

end A026029.P1005494940722334040

noncomputable section

/-- A026029: Number of (s(0), s(1), ..., s(2n)) such that s(i) is a nonnegative integer and |s(i) - s(i-1)| = 1 for i = 1,2,...,n, s(0) = 3, s(2n) = 3. Also T(2n,n), where T is defined in A026022.

Offset 0, canonical program `A026029.P1005494940722334040`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A026029 (n : ℕ) : ℤ :=
  A026029.P1005494940722334040.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A026029.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A035039.P702556951674997886

`A000079(n)-A008859(n)`
-/

namespace A035039.P702556951674997886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A008859 n

end

end A035039.P702556951674997886

noncomputable section

/-- A035039: a(n) = 2^n - C(n,0) - C(n,1) - ... - C(n,6).

Offset 0, canonical program `A035039.P702556951674997886`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A035039 (n : ℕ) : ℤ :=
  A035039.P702556951674997886.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A035039.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A036264.P7593126480384688485

`A036263(n+2)-A036263(n+1)`
-/

namespace A036264.P7593126480384688485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036263 (n + 2) - A036263 (n + 1)

end

end A036264.P7593126480384688485

noncomputable section

/-- A036264: Third differences of primes.

Offset 1, canonical program `A036264.P7593126480384688485`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036264 (n : ℕ) : ℤ :=
  A036264.P7593126480384688485.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036264.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A037834.P503404166685068881

`A005811(n+1)-1`
-/

namespace A037834.P503404166685068881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (n + 1) - 1

end

end A037834.P503404166685068881

noncomputable section

/-- A037834: a(n) = Sum_{i=1..m} |d(i) - d(i-1)|, where Sum_{i=0..m} d(i)*2^i is the base-2 representation of n.

Offset 1, canonical program `A037834.P503404166685068881`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037834 (n : ℕ) : ℤ :=
  A037834.P503404166685068881.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037834.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A037861.P603769739827553154

`A023416(n)-A000120(n)`
-/

namespace A037861.P603769739827553154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n - A000120 n

end

end A037861.P603769739827553154

noncomputable section

/-- A037861: (Number of 0's) - (number of 1's) in the base-2 representation of n.

Offset 0, canonical program `A037861.P603769739827553154`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037861 (n : ℕ) : ℤ :=
  A037861.P603769739827553154.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037861.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A038573.P5952807231814584452

`A001316(n)-1`
-/

namespace A038573.P5952807231814584452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n - 1

end

end A038573.P5952807231814584452

noncomputable section

/-- A038573: a(n) = 2^A000120(n) - 1.

Offset 0, canonical program `A038573.P5952807231814584452`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038573 (n : ℕ) : ℤ :=
  A038573.P5952807231814584452.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038573.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A038813.P1626043926961271755

`A038812(10*(n+1))`
-/

namespace A038813.P1626043926961271755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038812 (10 * (n + 1))

end

end A038813.P1626043926961271755

noncomputable section

/-- A038813: Number of primes less than 10000n.

Offset 1, canonical program `A038813.P1626043926961271755`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038813 (n : ℕ) : ℤ :=
  A038813.P1626043926961271755.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038813.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048896.P6461019053085857547

`2^A048881(n)`
-/

namespace A048896.P6461019053085857547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A048881 n : ℤ)

end

end A048896.P6461019053085857547

noncomputable section

/-- A048896: a(n) = 2^(A000120(n+1) - 1), n >= 0.

Offset 0, canonical program `A048896.P6461019053085857547`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048896 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A048896.P6461019053085857547.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048896.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A049203.P5712237589666905805

`A000040(A049090(n+1))`
-/

namespace A049203.P5712237589666905805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A049090 (n + 1)).toNat

end

end A049203.P5712237589666905805

noncomputable section

/-- A049203: Primes for which A049076(p) >= 5.

Offset 1, canonical program `A049203.P5712237589666905805`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049203 (n : ℕ) : ℤ :=
  A049203.P5712237589666905805.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049203.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053143.P2973590149006615306

`A019554(n+1)²`
-/

namespace A053143.P2973590149006615306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (n + 1) ^ 2

end

end A053143.P2973590149006615306

noncomputable section

/-- A053143: Smallest square divisible by n.

Offset 1, canonical program `A053143.P2973590149006615306`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053143 (n : ℕ) : ℤ :=
  A053143.P2973590149006615306.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053143.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A055071.P16321007213921378376

`A008833((n+1)!)`
-/

namespace A055071.P16321007213921378376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (Nat.factorial (n + 1))

end

end A055071.P16321007213921378376

noncomputable section

/-- A055071: Largest square dividing n!.

Offset 1, canonical program `A055071.P16321007213921378376`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A055071 (n : ℕ) : ℤ :=
  A055071.P16321007213921378376.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A055071.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A055229.P14192550897555320768

`gcd(A008833(n+1), A007913(n+1))`
-/

namespace A055229.P14192550897555320768
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008833 (n + 1)) (A007913 (n + 1))

end

end A055229.P14192550897555320768

noncomputable section

/-- A055229: Greatest common divisor of largest square dividing n and squarefree part of n.

Offset 1, canonical program `A055229.P14192550897555320768`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A055229 (n : ℕ) : ℤ :=
  (A055229.P14192550897555320768.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A055229.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A056057.P2194597549001614042

`A008833(A001405(n+1))`
-/

namespace A056057.P2194597549001614042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (A001405 (n + 1)).toNat

end

end A056057.P2194597549001614042

noncomputable section

/-- A056057: The largest square which divides n-th central binomial coefficient.

Offset 1, canonical program `A056057.P2194597549001614042`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056057 (n : ℕ) : ℤ :=
  A056057.P2194597549001614042.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056057.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A056060.P13324673825026971929

`A055231(A001405(n+1))`
-/

namespace A056060.P13324673825026971929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (A001405 (n + 1)).toNat

end

end A056060.P13324673825026971929

noncomputable section

/-- A056060: The powerfree part of the central binomial coefficients.

Offset 1, canonical program `A056060.P13324673825026971929`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056060 (n : ℕ) : ℤ :=
  A056060.P13324673825026971929.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056060.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A056567.P16017620500270924614

`76*a(n-1)+a(n-2)+(-1)^n*A056565(n)` with `a(0)=1, a(1)=55`
-/

namespace A056567.P16017620500270924614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 55] fun n a =>
  76 * a (n - 1) + a (n - 2) + (-1) ^ n * A056565 n

end

end A056567.P16017620500270924614

noncomputable section

/-- A056567: Fibonomial coefficients.

Offset 0, canonical program `A056567.P16017620500270924614`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056567 (n : ℕ) : ℤ :=
  A056567.P16017620500270924614.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056567.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A056568.P4071559317002319837

`123*a(n-1)-a(n-2)+(-1)^n*A056566(n)` with `a(0)=1, a(1)=89`
-/

namespace A056568.P4071559317002319837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 89] fun n a =>
  123 * a (n - 1) - a (n - 2) + (-1) ^ n * A056566 n

end

end A056568.P4071559317002319837

noncomputable section

/-- A056568: Fibonomial coefficients.

Offset 0, canonical program `A056568.P4071559317002319837`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056568 (n : ℕ) : ℤ :=
  A056568.P4071559317002319837.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056568.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A057528.P16000590645068387962

`a(n-1)*A057527(n)` with `a(0)=1`
-/

namespace A057528.P16000590645068387962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A057527 n

end

end A057528.P16000590645068387962

noncomputable section

/-- A057528: 5th level factorials: product of first n 4th level factorials.

Offset 0, canonical program `A057528.P16000590645068387962`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057528 (n : ℕ) : ℤ :=
  A057528.P16000590645068387962.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057528.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A057850.P11135145847204226969

`A049090(A049090(n+1))`
-/

namespace A057850.P11135145847204226969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049090 (A049090 (n + 1)).toNat

end

end A057850.P11135145847204226969

noncomputable section

/-- A057850: Primes p whose order of primeness A078442(p) is at least 8.

Offset 1, canonical program `A057850.P11135145847204226969`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057850 (n : ℕ) : ℤ :=
  A057850.P11135145847204226969.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057850.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A057858.P5036399590073208024

`A002110(n)-A057857(n)`
-/

namespace A057858.P5036399590073208024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n - A057857 n

end

end A057858.P5036399590073208024

noncomputable section

/-- A057858: Number of residue classes modulo n-th primorial number which contain only composite numbers.

Offset 0, canonical program `A057858.P5036399590073208024`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057858 (n : ℕ) : ℤ :=
  A057858.P5036399590073208024.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057858.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A059016.P3331646903593192012

`A023416(A000045(n))`
-/

namespace A059016.P3331646903593192012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A000045 n).toNat

end

end A059016.P3331646903593192012

noncomputable section

/-- A059016: Number of 0's in binary expansion of Fibonacci(n).

Offset 0, canonical program `A059016.P3331646903593192012`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059016 (n : ℕ) : ℤ :=
  A059016.P3331646903593192012.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059016.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A059479.P16928363870094844603

`A008833(n+1)*(n+1)²`
-/

namespace A059479.P16928363870094844603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (n + 1) * ((n + 1) ^ 2 : ℤ)

end

end A059479.P16928363870094844603

noncomputable section

/-- A059479: Number of 3 X 3 matrices with elements from {0,...,n-1} such that the middle element of each of the eight lines of three (rows, columns and diagonals) is the square (mod n) of the difference of the end elements.

Offset 1, canonical program `A059479.P16928363870094844603`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059479 (n : ℕ) : ℤ :=
  A059479.P16928363870094844603.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059479.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A060632.P4006644986864804916

`A001316(floor(n/2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A060632.P4006644986864804916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 ⌊(n : ℚ) / 2⌋.toNat

end

end A060632.P4006644986864804916

noncomputable section

/-- A060632: a(n) = 2^wt(floor(n/2)) (i.e., 2^A000120(floor(n/2)), or A001316(floor(n/2))).

Offset 0, canonical program `A060632.P4006644986864804916`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060632 (n : ℕ) : ℤ :=
  A060632.P4006644986864804916.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060632.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A060800.P2009094709202359605

`A036690(n+1)+1`
-/

namespace A060800.P2009094709202359605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036690 (n + 1) + 1

end

end A060800.P2009094709202359605

noncomputable section

/-- A060800: a(n) = p^2 + p + 1 where p runs through the primes.

Offset 1, canonical program `A060800.P2009094709202359605`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060800 (n : ℕ) : ℤ :=
  A060800.P2009094709202359605.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060800.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A061320.P9216718962236497877

`A061318(n)+A061319(n)²`
-/

namespace A061320.P9216718962236497877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061318 n + A061319 n ^ 2

end

end A061320.P9216718962236497877

noncomputable section

/-- A061320: Column 4 of A061314.

Offset 0, canonical program `A061320.P9216718962236497877`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061320 (n : ℕ) : ℤ :=
  A061320.P9216718962236497877.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061320.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A061548.P13837351600793897947

`A001448(n)/A001316(n)`
-/

namespace A061548.P13837351600793897947
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001448 n : ℚ) / (A001316 n : ℚ)

end

end A061548.P13837351600793897947

noncomputable section

/-- A061548: Numerator of probability that there is no error when average of n numbers is computed, assuming errors of +1, -1 are possible and they each occur with p = 1/4.

Offset 0, canonical program `A061548.P13837351600793897947`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061548 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A061548.P13837351600793897947.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061548.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A061549.P10960663828498957261

`16^n/A001316(n)`
-/

namespace A061549.P10960663828498957261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (16 ^ n : ℚ) / (A001316 n : ℚ)

end

end A061549.P10960663828498957261

noncomputable section

/-- A061549: Denominator of probability that there is no error when average of n numbers is computed, assuming errors of +1, -1 are possible and they each occur with p=1/4.

Offset 0, canonical program `A061549.P10960663828498957261`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061549 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A061549.P10960663828498957261.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061549.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065891.P1397768470395087824

`A065855(2^(n+2))`
-/

namespace A065891.P1397768470395087824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065855 (2 ^ (n + 2))

end

end A065891.P1397768470395087824

noncomputable section

/-- A065891: The a(n)-th composite number is 2^n.

Offset 2, canonical program `A065891.P1397768470395087824`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065891 (n : ℕ) : ℤ :=
  A065891.P1397768470395087824.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065891.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065896.P6289324140051326496

`A065855(2*(n+1))`
-/

namespace A065896.P6289324140051326496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065855 (2 * (n + 1))

end

end A065896.P6289324140051326496

noncomputable section

/-- A065896: Number of composites <= 2*n.

Offset 1, canonical program `A065896.P6289324140051326496`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065896 (n : ℕ) : ℤ :=
  A065896.P6289324140051326496.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065896.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A066104.P13868707387582401079

`2*A065423(n+2)`
-/

namespace A066104.P13868707387582401079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A065423 (n + 2)

end

end A066104.P13868707387582401079

noncomputable section

/-- A066104: a(2n) = 2n, a(2n+1) = 4(n+1).

Offset 0, canonical program `A066104.P13868707387582401079`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066104 (n : ℕ) : ℤ :=
  A066104.P13868707387582401079.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066104.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A000188.P7486858720566838181

`sqrt(A008833(n+1))`
-/

namespace A000188.P7486858720566838181
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008833 (n + 1) : ℝ)

end

end A000188.P7486858720566838181

noncomputable section

/-- A000188: (1) Number of solutions to x^2 == 0 (mod n). (2) Also square root of largest square dividing n. (3) Also max_{ d divides n } gcd(d, n/d).

Offset 1, canonical program `A000188.P7486858720566838181`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000188 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A000188.P7486858720566838181.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000188.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A002889.P5912892682402209234

`2*a(n-1)-a(n-3)+A002941(n+1)+A002941(n)` with `a(0)=1, a(1)=10, a(2)=56`
-/

namespace A002889.P5912892682402209234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 10, 56] fun n a =>
  2 * a (n - 1) - a (n - 3) + A002941 (n + 1) + A002941 n

end

end A002889.P5912892682402209234

noncomputable section

/-- A002889: Arrays of dumbbells.

Offset 1, canonical program `A002889.P5912892682402209234`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002889 (n : ℕ) : ℤ :=
  A002889.P5912892682402209234.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002889.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A007014.P11143855519005822718

`A000040(A000849(n+1))`
-/

namespace A007014.P11143855519005822718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000849 (n + 1)).toNat

end

end A007014.P11143855519005822718

noncomputable section

/-- A007014: Largest prime <= Product prime(k).

Offset 1, canonical program `A007014.P11143855519005822718`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007014 (n : ℕ) : ℤ :=
  A007014.P11143855519005822718.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007014.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A008507.P5510179153814837351

`A067076(n+1)-n`
-/

namespace A008507.P5510179153814837351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (n + 1) - (n : ℤ)

end

end A008507.P5510179153814837351

noncomputable section

/-- A008507: Number of odd composite numbers less than n-th odd prime.

Offset 1, canonical program `A008507.P5510179153814837351`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A008507 (n : ℕ) : ℤ :=
  A008507.P5510179153814837351.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A008507.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A011264.P11087742381931658999

`A356191(n+1)/A007913(n+1)`
-/

namespace A011264.P11087742381931658999
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356191 (n + 1) : ℚ) / (A007913 (n + 1) : ℚ)

end

end A011264.P11087742381931658999

noncomputable section

/-- A011264: In the prime factorization of n, increment even powers and decrement odd powers (multiplicative).

Offset 1, canonical program `A011264.P11087742381931658999`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A011264 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A011264.P11087742381931658999.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A011264.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A013606.P5531938547174120995

`A000302(n+1)-A104089(n+1)`
-/

namespace A013606.P5531938547174120995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 (n + 1) - A104089 (n + 1)

end

end A013606.P5531938547174120995

noncomputable section

/-- A013606: a(n) = 4^n - prevprime(4^n).

Offset 1, canonical program `A013606.P5531938547174120995`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A013606 (n : ℕ) : ℤ :=
  A013606.P5531938547174120995.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A013606.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A014302.P15333125040278370706

`A000040(n+3)*A005097(n+1)`
-/

namespace A014302.P15333125040278370706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 3) * A005097 (n + 1)

end

end A014302.P15333125040278370706

noncomputable section

/-- A014302: a(n) = prime(n)*(prime(n-1)-1)/2.

Offset 3, canonical program `A014302.P15333125040278370706`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014302 (n : ℕ) : ℤ :=
  A014302.P15333125040278370706.a (n - 3)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014302.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A014303.P12243143900441004356

`A000040(n+1)*A005097(n+1)`
-/

namespace A014303.P12243143900441004356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A005097 (n + 1)

end

end A014303.P12243143900441004356

noncomputable section

/-- A014303: a(n) = prime(n)*(prime(n+1)-1)/2.

Offset 1, canonical program `A014303.P12243143900441004356`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014303 (n : ℕ) : ℤ :=
  A014303.P12243143900441004356.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014303.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A014701.P12214863752987612616

`A056792(n+1)-1`
-/

namespace A014701.P12214863752987612616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056792 (n + 1) - 1

end

end A014701.P12214863752987612616

noncomputable section

/-- A014701: Number of multiplications to compute n-th power by the Chandah-sutra method.

Offset 1, canonical program `A014701.P12214863752987612616`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014701 (n : ℕ) : ℤ :=
  A014701.P12214863752987612616.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014701.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020942.P5836413996573018086

`A136496(n+1)-1`
-/

namespace A020942.P5836413996573018086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136496 (n + 1) - 1

end

end A020942.P5836413996573018086

noncomputable section

/-- A020942: First column of 3rd-order Zeckendorf array A136189.

Offset 1, canonical program `A020942.P5836413996573018086`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020942 (n : ℕ) : ℤ :=
  A020942.P5836413996573018086.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020942.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022094.P5430606946720260700

`A007504(A000040(n+1))`
-/

namespace A022094.P5430606946720260700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A000040 (n + 1)).toNat

end

end A022094.P5430606946720260700

noncomputable section

/-- A022094: Sum of first prime(n) primes.

Offset 1, canonical program `A022094.P5430606946720260700`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022094 (n : ℕ) : ℤ :=
  A022094.P5430606946720260700.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022094.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A024447.P10375712064982123198

`(A007504(n+1)²-A024450(n+1))/2`
-/

namespace A024447.P10375712064982123198
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007504 (n + 1) ^ 2 - A024450 (n + 1) : ℚ) / 2

end

end A024447.P10375712064982123198

noncomputable section

/-- A024447: Sum of the products of the primes taken 2 at a time from the first n primes.

Offset 1, canonical program `A024447.P10375712064982123198`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A024447 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A024447.P10375712064982123198.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A024447.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A025480.P15873863116418380882

`((n+1)/A006519(n+1)-1)/2`
-/

namespace A025480.P15873863116418380882
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) / (A006519 (n + 1) : ℚ) - 1) / 2

end

end A025480.P15873863116418380882

noncomputable section

/-- A025480: a(2n) = n, a(2n+1) = a(n).

Offset 0, canonical program `A025480.P15873863116418380882`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A025480 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A025480.P15873863116418380882.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A025480.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A032924.P18310276245285467851

`A107680(n+1)+A107681(n+1)`
-/

namespace A032924.P18310276245285467851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107680 (n + 1) + A107681 (n + 1)

end

end A032924.P18310276245285467851

noncomputable section

/-- A032924: Numbers whose ternary expansion contains no 0.

Offset 1, canonical program `A032924.P18310276245285467851`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A032924 (n : ℕ) : ℤ :=
  A032924.P18310276245285467851.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A032924.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A033879.P11735613842914743111

`-A033880(n+1)`
-/

namespace A033879.P11735613842914743111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A033880 (n + 1)

end

end A033879.P11735613842914743111

noncomputable section

/-- A033879: Deficiency of n, or 2n - (sum of divisors of n).

Offset 1, canonical program `A033879.P11735613842914743111`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033879 (n : ℕ) : ℤ :=
  A033879.P11735613842914743111.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033879.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A034958.P4957141392143406726

`A007504(A007504(n+1))-A007504(A007504(n))`
-/

namespace A034958.P4957141392143406726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A007504 (n + 1)).toNat - A007504 (A007504 n).toNat

end

end A034958.P4957141392143406726

noncomputable section

/-- A034958: Divide primes into groups with prime(n) elements and add together.

Offset 1, canonical program `A034958.P4957141392143406726`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034958 (n : ℕ) : ℤ :=
  A034958.P4957141392143406726.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034958.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A036295.P14687617779542184873

`A000295(n+1)/A006519(n+2)`
-/

namespace A036295.P14687617779542184873
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000295 (n + 1) : ℚ) / (A006519 (n + 2) : ℚ)

end

end A036295.P14687617779542184873

noncomputable section

/-- A036295: Numerator of Sum_{i=1..n} i/2^i.

Offset 0, canonical program `A036295.P14687617779542184873`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036295 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A036295.P14687617779542184873.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036295.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A038110.P461440204907353454

`A005867(n)/A058250(n)`
-/

namespace A038110.P461440204907353454
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005867 n : ℚ) / (A058250 n : ℚ)

end

end A038110.P461440204907353454

noncomputable section

/-- A038110: Numerator of frequency of integers with smallest divisor prime(n).

Offset 1, canonical program `A038110.P461440204907353454`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038110 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A038110.P461440204907353454.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038110.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A038111.P13609288034708732001

`A000040(n+1)*A060753(n+1)`
-/

namespace A038111.P13609288034708732001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A060753 (n + 1)

end

end A038111.P13609288034708732001

noncomputable section

/-- A038111: Denominator of density of integers with smallest prime factor prime(n).

Offset 1, canonical program `A038111.P13609288034708732001`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038111 (n : ℕ) : ℤ :=
  A038111.P13609288034708732001.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038111.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A039982.P14190462007985872855

`A091090(n+1)%2`
-/

namespace A039982.P14190462007985872855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091090 (n + 1)) 2

end

end A039982.P14190462007985872855

noncomputable section

/-- A039982: Let phi denote the morphism 0 -> 11, 1 -> 10. This sequence is the limit S(oo) where S(0) = 1; S(n+1) = 1.phi(S(n)).

Offset 0, canonical program `A039982.P14190462007985872855`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A039982 (n : ℕ) : ℤ :=
  A039982.P14190462007985872855.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A039982.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048862.P7793812674722745711

`A000849(n)-n`
-/

namespace A048862.P7793812674722745711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000849 n - (n : ℤ)

end

end A048862.P7793812674722745711

noncomputable section

/-- A048862: Number of primes in the reduced residue system of n-th primorial number (=A002110(n)).

Offset 0, canonical program `A048862.P7793812674722745711`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048862 (n : ℕ) : ℤ :=
  A048862.P7793812674722745711.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048862.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048863.P16974686868926745534

`A005867(n)-A000849(n)+n`
-/

namespace A048863.P16974686868926745534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005867 n - A000849 n + (n : ℤ)

end

end A048863.P16974686868926745534

noncomputable section

/-- A048863: Number of nonprimes (1 and composites) in the reduced residue system of n-th primorial number (A002110).

Offset 0, canonical program `A048863.P16974686868926745534`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048863 (n : ℕ) : ℤ :=
  A048863.P16974686868926745534.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048863.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053115.P17177388115893748889

`A034908(n+2)/10`
-/

namespace A053115.P17177388115893748889
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034908 (n + 2) : ℚ) / 10

end

end A053115.P17177388115893748889

noncomputable section

/-- A053115: a(n) = ((8*n+10)(!^8))/20, related to A034908 ((8*n+2)(!^8) octo- or 8-factorials).

Offset 0, canonical program `A053115.P17177388115893748889`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053115 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A053115.P17177388115893748889.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053115.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053683.P15420794164900351699

`A000040(n+1)²-A000879(n+1)`
-/

namespace A053683.P15420794164900351699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2 - A000879 (n + 1)

end

end A053683.P15420794164900351699

noncomputable section

/-- A053683: Number of nonprimes <= prime(n)^2.

Offset 1, canonical program `A053683.P15420794164900351699`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053683 (n : ℕ) : ℤ :=
  A053683.P15420794164900351699.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053683.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A054270.P1038476005510522765

`A000040(A000879(n+1))`
-/

namespace A054270.P1038476005510522765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000879 (n + 1)).toNat

end

end A054270.P1038476005510522765

noncomputable section

/-- A054270: Largest prime below prime(n)^2 (A001248).

Offset 1, canonical program `A054270.P1038476005510522765`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A054270 (n : ℕ) : ℤ :=
  A054270.P1038476005510522765.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A054270.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A054972.P9428946340247362724

`A007504(n+1)*A002110(n+1)`
-/

namespace A054972.P9428946340247362724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1) * A002110 (n + 1)

end

end A054972.P9428946340247362724

noncomputable section

/-- A054972: Product of (sum of first n primes) and (product of first n primes).

Offset 1, canonical program `A054972.P9428946340247362724`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A054972 (n : ℕ) : ℤ :=
  A054972.P9428946340247362724.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A054972.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A056609.P7907893811472579024

`A034386(n+1)/A056606(n+1)`
-/

namespace A056609.P7907893811472579024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034386 (n + 1) : ℚ) / (A056606 (n + 1) : ℚ)

end

end A056609.P7907893811472579024

noncomputable section

/-- A056609: a(n) = rad(n!)/rad(A001142(n)) where rad(n) is the squarefree kernel of n, A007947(n).

Offset 1, canonical program `A056609.P7907893811472579024`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056609 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A056609.P7907893811472579024.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056609.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A058384.P14718833059081358407

`A006519(A006093(n+1))`
-/

namespace A058384.P14718833059081358407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A006093 (n + 1)).toNat

end

end A058384.P14718833059081358407

noncomputable section

/-- A058384: Largest power of 2 which is a divisor of p(n)-1, where p(n) = n-th prime.

Offset 1, canonical program `A058384.P14718833059081358407`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A058384 (n : ℕ) : ℤ :=
  A058384.P14718833059081358407.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A058384.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A059159.P5461267207590208954

`4*A006519(n+1)`
-/

namespace A059159.P5461267207590208954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A006519 (n + 1)

end

end A059159.P5461267207590208954

noncomputable section

/-- A059159: A hierarchical sequence (W'2{2}*c) - see A059126.

Offset 1, canonical program `A059159.P5461267207590208954`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059159 (n : ℕ) : ℤ :=
  A059159.P5461267207590208954.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059159.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A059161.P11618394600926942160

`12*A006519(n+1)`
-/

namespace A059161.P11618394600926942160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A006519 (n + 1)

end

end A059161.P11618394600926942160

noncomputable section

/-- A059161: A hierarchical sequence (W'2{3}*c - see A059126).

Offset 0, canonical program `A059161.P11618394600926942160`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059161 (n : ℕ) : ℤ :=
  A059161.P11618394600926942160.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059161.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A059164.P8258123959311374398

`16*A006519(n+1)`
-/

namespace A059164.P8258123959311374398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A006519 (n + 1)

end

end A059164.P8258123959311374398

noncomputable section

/-- A059164: A hierarchical sequence (W'3{2,2}*cc - see A059126).

Offset 0, canonical program `A059164.P8258123959311374398`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059164 (n : ℕ) : ℤ :=
  A059164.P8258123959311374398.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059164.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A059268.P15217573790077737885

`A018900(n+1)-A140513(n)`
-/

namespace A059268.P15217573790077737885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018900 (n + 1) - A140513 n

end

end A059268.P15217573790077737885

noncomputable section

/-- A059268: Concatenate subsequences [2^0, 2^1, ..., 2^n] for n = 0, 1, 2, ...

Offset 0, canonical program `A059268.P15217573790077737885`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059268 (n : ℕ) : ℤ :=
  A059268.P15217573790077737885.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059268.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A059991.P15103997828559681085

`2^(n+1-A006519(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A059991.P15103997828559681085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n + 1 : ℤ) - A006519 (n + 1) : ℤ)

end

end A059991.P15103997828559681085

noncomputable section

/-- A059991: a(n) = 2^(n-2^ord_2(n)) (or 2^(n-A006519(n))).

Offset 1, canonical program `A059991.P15103997828559681085`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059991 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A059991.P15103997828559681085.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059991.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A060620.P18002916357615302440

`floor(A007504(n+1)/(n+1))`
-/

namespace A060620.P18002916357615302440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007504 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A060620.P18002916357615302440

noncomputable section

/-- A060620: Average of the first n primes rounded down.

Offset 1, canonical program `A060620.P18002916357615302440`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060620 (n : ℕ) : ℤ :=
  A060620.P18002916357615302440.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060620.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A060865.P5933490346264711898

`A006519(A000045(n+1))`
-/

namespace A060865.P5933490346264711898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A000045 (n + 1)).toNat

end

end A060865.P5933490346264711898

noncomputable section

/-- A060865: a(n) is the exact power of 2 that divides the n-th Fibonacci number (A000045).

Offset 1, canonical program `A060865.P5933490346264711898`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060865 (n : ℕ) : ℤ :=
  A060865.P5933490346264711898.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060865.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A060939.P1241768612471461444

`A007504(n+1)+n+1`
-/

namespace A060939.P1241768612471461444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1) + (n + 1 : ℤ)

end

end A060939.P1241768612471461444

noncomputable section

/-- A060939: a(n) = (Sum of the first n primes) + n.

Offset 1, canonical program `A060939.P1241768612471461444`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060939 (n : ℕ) : ℤ :=
  A060939.P1241768612471461444.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060939.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A061002.P3672038578860956447

`A120285(n+3)/A001248(n+3)`
-/

namespace A061002.P3672038578860956447
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120285 (n + 3) : ℚ) / (A001248 (n + 3) : ℚ)

end

end A061002.P3672038578860956447

noncomputable section

/-- A061002: As p runs through the primes >= 5, sequence gives { numerator of Sum_{k=1..p-1} 1/k } / p^2.

Offset 3, canonical program `A061002.P3672038578860956447`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061002 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A061002.P3672038578860956447.a (n - 3))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061002.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A061066.P10749500264969965576

`A000217(A005097(n+1))`
-/

namespace A061066.P10749500264969965576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A005097 (n + 1)).toNat

end

end A061066.P10749500264969965576

noncomputable section

/-- A061066: a(n) = (prime(n)^2 - 1)/8.

Offset 2, canonical program `A061066.P10749500264969965576`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061066 (n : ℕ) : ℤ :=
  A061066.P10749500264969965576.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061066.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A061568.P18203611541489259856

`A000720(A007504(n+1))`
-/

namespace A061568.P18203611541489259856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A007504 (n + 1)).toNat

end

end A061568.P18203611541489259856

noncomputable section

/-- A061568: Number of primes <= sum of first n primes.

Offset 1, canonical program `A061568.P18203611541489259856`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061568 (n : ℕ) : ℤ :=
  A061568.P18203611541489259856.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061568.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A062022.P79191704217042567

`(n+1)*A024450(n+1)-A007504(n+1)²`
-/

namespace A062022.P79191704217042567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A024450 (n + 1) - A007504 (n + 1) ^ 2

end

end A062022.P79191704217042567

noncomputable section

/-- A062022: a(n) = Sum_{k=1..n} Sum_{j=1..k} (prime(k) - prime(j))^2.

Offset 1, canonical program `A062022.P79191704217042567`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062022 (n : ℕ) : ℤ :=
  A062022.P79191704217042567.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062022.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065331.P8774004989157438008

`A006519(n+1)*A038500(n+1)`
-/

namespace A065331.P8774004989157438008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1) * A038500 (n + 1)

end

end A065331.P8774004989157438008

noncomputable section

/-- A065331: Largest 3-smooth divisor of n.

Offset 1, canonical program `A065331.P8774004989157438008`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065331 (n : ℕ) : ℤ :=
  A065331.P8774004989157438008.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065331.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065595.P17601801696022809177

`A007504(n+1)²-A024450(n+1)`
-/

namespace A065595.P17601801696022809177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1) ^ 2 - A024450 (n + 1)

end

end A065595.P17601801696022809177

noncomputable section

/-- A065595: a(n) = (sum of first n primes)^2 - sum of squares of first n primes.

Offset 1, canonical program `A065595.P17601801696022809177`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065595 (n : ℕ) : ℤ :=
  A065595.P17601801696022809177.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065595.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065762.P7191930492121283132

`A007504(n+1)²+A024450(n+1)`
-/

namespace A065762.P7191930492121283132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1) ^ 2 + A024450 (n + 1)

end

end A065762.P7191930492121283132

noncomputable section

/-- A065762: a(n) = (sum of first n primes)^2 + sum of (squares of first n primes).

Offset 1, canonical program `A065762.P7191930492121283132`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065762 (n : ℕ) : ℤ :=
  A065762.P7191930492121283132.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065762.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065898.P762598013105165563

`A002110(n+1)-A000849(n+1)-1`
-/

namespace A065898.P762598013105165563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (n + 1) - A000849 (n + 1) - 1

end

end A065898.P762598013105165563

noncomputable section

/-- A065898: Which composite number is the product of first n primes (the n-th primorial number)?: a(n) = k such that A002808(k) = A002110(n), or 0 if A002110(n) is not composite.

Offset 1, canonical program `A065898.P762598013105165563`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065898 (n : ℕ) : ℤ :=
  A065898.P762598013105165563.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065898.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A066264.P8435436926716988282

`n+1+A005867(n+1)-A000849(n+1)-1`
-/

namespace A066264.P8435436926716988282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A005867 (n + 1) - A000849 (n + 1) - 1

end

end A066264.P8435436926716988282

noncomputable section

/-- A066264: Number of composites < primorial(p) with all prime factors > p.

Offset 1, canonical program `A066264.P8435436926716988282`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066264 (n : ℕ) : ℤ :=
  A066264.P8435436926716988282.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066264.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A067111.P10972520331582121734

`floor(A002110(n+1)/A007504(n+1))`
-/

namespace A067111.P10972520331582121734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002110 (n + 1) : ℚ) / (A007504 (n + 1) : ℚ)⌋

end

end A067111.P10972520331582121734

noncomputable section

/-- A067111: Floor[ Product of first n primes / Sum of first n primes].

Offset 1, canonical program `A067111.P10972520331582121734`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067111 (n : ℕ) : ℤ :=
  A067111.P10972520331582121734.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067111.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A068503.P5489899540009911754

`3^A099584(n+1)`
-/

namespace A068503.P5489899540009911754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A099584 (n + 1) : ℤ)

end

end A068503.P5489899540009911754

noncomputable section

/-- A068503: Highest power of 3 dividing prime(n)-1.

Offset 1, canonical program `A068503.P5489899540009911754`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068503 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A068503.P5489899540009911754.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068503.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A068553.P14660080325200991820

`A048619(2*(n+1)-1)`
-/

namespace A068553.P14660080325200991820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048619 (2 * (n + 1) - 1)

end

end A068553.P14660080325200991820

noncomputable section

/-- A068553: a(n) = lcm(1,2,...,2*n) / (n*binomial(2*n, n)).

Offset 1, canonical program `A068553.P14660080325200991820`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068553 (n : ℕ) : ℤ :=
  A068553.P14660080325200991820.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068553.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A000989.P3200241698253008454

`A007949(n+1)+A067397(n)`
-/

namespace A000989.P3200241698253008454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (n + 1) + A067397 n

end

end A000989.P3200241698253008454

noncomputable section

/-- A000989: 3-adic valuation of binomial(2*n, n): largest k such that 3^k divides binomial(2*n, n).

Offset 0, canonical program `A000989.P3200241698253008454`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000989 (n : ℕ) : ℤ :=
  A000989.P3200241698253008454.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000989.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A001511.P17146462531039486101

`log2(A006519(n+1))+1`
-/

namespace A001511.P17146462531039486101
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A006519 (n + 1) : ℝ) + 1

end

end A001511.P17146462531039486101

noncomputable section

/-- A001511: The ruler function: exponent of the highest power of 2 dividing 2n. Equivalently, the 2-adic valuation of 2n.

Offset 1, canonical program `A001511.P17146462531039486101`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A001511.anchor (n : ℕ) (hn : 1 ≤ n) : A001511 n = (padicValNat 2 n + 1 : ℕ)` in `Proof.A001.A001511`. -/
def A001511 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A001511.P17146462531039486101.a (n - 1))

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A001511.anchor (n : ℕ) (hn : 1 ≤ n) : A001511 n = (padicValNat 2 n + 1 : ℕ)` in `Proof.A001.A001511`. -/
def A001511.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A002129.P14132575705783117531

`A000593(n+1)-A146076(n+1)`
-/

namespace A002129.P14132575705783117531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1) - A146076 (n + 1)

end

end A002129.P14132575705783117531

noncomputable section

/-- A002129: Generalized sum of divisors function: excess of sum of odd divisors of n over sum of even divisors of n.

Offset 1, canonical program `A002129.P14132575705783117531`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002129 (n : ℕ) : ℤ :=
  A002129.P14132575705783117531.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002129.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A003071.P4419298609567822883

`a(n-1)+A006519(n)+A000120(n)-1` with `a(0)=0`
-/

namespace A003071.P4419298609567822883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A006519 n + A000120 n - 1

end

end A003071.P4419298609567822883

noncomputable section

/-- A003071: Sorting numbers: maximal number of comparisons for sorting n elements by list merging.

Offset 1, canonical program `A003071.P4419298609567822883`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A003071 (n : ℕ) : ℤ :=
  A003071.P4419298609567822883.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A003071.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A011787.P10772697605245278222

`A065128(n+1)/2`
-/

namespace A011787.P10772697605245278222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065128 (n + 1) : ℚ) / 2

end

end A011787.P10772697605245278222

noncomputable section

/-- A011787: Number of n X n matrices over Z_4 whose determinant is 1.

Offset 1, canonical program `A011787.P10772697605245278222`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A011787 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A011787.P10772697605245278222.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A011787.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A019550.P18383690293496929747

`(n+1)*(10^(1+A004216(2*(n+1)))+2)`
-/

namespace A019550.P18383690293496929747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((10 : ℚ) ^ (1 + A004216 (2 * (n + 1)) : ℤ) + 2)

end

end A019550.P18383690293496929747

noncomputable section

/-- A019550: a(n) is the concatenation of n and 2n.

Offset 1, canonical program `A019550.P18383690293496929747`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019550 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A019550.P18383690293496929747.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019550.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020338.P4106658568687796505

`(n+1)*10^(A004216(n+1)+1)+n+1`
-/

namespace A020338.P4106658568687796505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (10 : ℚ) ^ (A004216 (n + 1) + 1 : ℤ) + (n + 1 : ℚ)

end

end A020338.P4106658568687796505

noncomputable section

/-- A020338: Doublets: base-10 representation is the juxtaposition of two identical strings.

Offset 1, canonical program `A020338.P4106658568687796505`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020338 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A020338.P4106658568687796505.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020338.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A037862.P1436881661592222965

`A081604(n+1)-2*A081603(n+1)`
-/

namespace A037862.P1436881661592222965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 (n + 1) - 2 * A081603 (n + 1)

end

end A037862.P1436881661592222965

noncomputable section

/-- A037862: a(n)=(number of digits <=1)-(number of digits >1) in base 3 representation of n.

Offset 1, canonical program `A037862.P1436881661592222965`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037862 (n : ℕ) : ℤ :=
  A037862.P1436881661592222965.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037862.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A038192.P7022833363305945768

`12*A089893(n)+3`
-/

namespace A038192.P7022833363305945768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A089893 n + 3

end

end A038192.P7022833363305945768

noncomputable section

/-- A038192: Bisection of A001317.

Offset 0, canonical program `A038192.P7022833363305945768`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038192 (n : ℕ) : ℤ :=
  A038192.P7022833363305945768.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038192.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A045532.P6946035463198391959

`(n+1)*10^(A004216(A000040(n+1))+1)+A000040(n+1)`
-/

namespace A045532.P6946035463198391959
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (10 : ℚ) ^ (A004216 (A000040 (n + 1)).toNat + 1 : ℤ) + (A000040 (n + 1) : ℚ)

end

end A045532.P6946035463198391959

noncomputable section

/-- A045532: Concatenate n with n-th prime.

Offset 1, canonical program `A045532.P6946035463198391959`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A045532 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A045532.P6946035463198391959.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A045532.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048967.P3595347913858362397

`A000120(A219843(n))`
-/

namespace A048967.P3595347913858362397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A219843 n).toNat

end

end A048967.P3595347913858362397

noncomputable section

/-- A048967: Number of even entries in row n of Pascal's triangle (A007318).

Offset 0, canonical program `A048967.P3595347913858362397`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048967 (n : ℕ) : ℤ :=
  A048967.P3595347913858362397.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048967.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A001302.P14737467050433742912

`A001300(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A001302.P14737467050433742912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A001300 n + a (n - 2)

end

end A001302.P14737467050433742912

noncomputable section

/-- A001302: Number of ways of making change for n cents using coins of 1, 2, 5, 10, 25, 50 cents.

Offset 0, canonical program `A001302.P14737467050433742912`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3668 terms. -/
def A001302 (n : ℕ) : ℤ :=
  A001302.P14737467050433742912.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3668 terms. -/
def A001302.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001343.P6388193166079406196

`A001300(A004526(n))*A079998(n)`
-/

namespace A001343.P6388193166079406196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001300 (A004526 n).toNat * A079998 n

end

end A001343.P6388193166079406196

noncomputable section

/-- A001343: Number of (unordered) ways of making change for n cents using coins of 5, 10, 20, 50, 100 cents.

Offset 0, canonical program `A001343.P6388193166079406196`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4545 terms. -/
def A001343 (n : ℕ) : ℤ :=
  A001343.P6388193166079406196.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4545 terms. -/
def A001343.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001354.P4891785923179629132

`A054888(n)+2*A001906(n)`
-/

namespace A001354.P4891785923179629132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054888 n + 2 * A001906 n

end

end A001354.P4891785923179629132

noncomputable section

/-- A001354: Coordination sequence for hyperbolic tessellation 3^7 (from triangle group (2,3,7)).

Offset 0, canonical program `A001354.P4891785923179629132`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A001354 (n : ℕ) : ℤ :=
  A001354.P4891785923179629132.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A001354.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001465.P11263082568877116543

`A000085(n)-A000704(n)`
-/

namespace A001465.P11263082568877116543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 n - A000704 n

end

end A001465.P11263082568877116543

noncomputable section

/-- A001465: Number of degree-n odd permutations of order 2.

Offset 0, canonical program `A001465.P11263082568877116543`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000704, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A001465 (n : ℕ) : ℤ :=
  A001465.P11263082568877116543.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000704, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A001465.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A001926.P6115818722661566997

`∑[∑[A002941(n+1)]]`
-/

namespace A001926.P6115818722661566997
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002941 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001926.P6115818722661566997

noncomputable section

/-- A001926: G.f.: (1+x)^2/[(1-x)^4(1-x-x^2)^3].

Offset 0, canonical program `A001926.P6115818722661566997`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 447 terms. -/
def A001926 (n : ℕ) : ℤ :=
  A001926.P6115818722661566997.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 447 terms. -/
def A001926.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004221.P6867410002021583751

`A004218(n+1)+A004219(n+1)-A004216(n+1)`
-/

namespace A004221.P6867410002021583751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (n + 1) + (A004219 (n + 1) - A004216 (n + 1))

end

end A004221.P6867410002021583751

noncomputable section

/-- A004221: a(n) = ceiling(10*log_10(n)).

Offset 1, canonical program `A004221.P6867410002021583751`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004221 (n : ℕ) : ℤ :=
  A004221.P6867410002021583751.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004221.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004595.P5051314179271727689

`A004593(2*n+3)+2*A004593(2*(n+1))`
-/

namespace A004595.P5051314179271727689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004593 (2 * n + 3) + 2 * A004593 (2 * (n + 1))

end

end A004595.P5051314179271727689

noncomputable section

/-- A004595: Expansion of e in base 4.

Offset 1, canonical program `A004595.P5051314179271727689`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A004595 (n : ℕ) : ℤ :=
  A004595.P5051314179271727689.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A004595.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004712.P15787517412151601825

`eq[1, A004593(n+3)]`
-/

namespace A004712.P15787517412151601825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004593 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004712.P15787517412151601825

noncomputable section

/-- A004712: Positions of ones in binary expansion of e-2.

Offset 1, canonical program `A004712.P15787517412151601825`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5020 terms. -/
def A004712 (n : ℕ) : ℤ :=
  (A004712.P15787517412151601825.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5020 terms. -/
def A004712.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004741.P8751127324978194226

`A053615(n)+A004739(n+1)`
-/

namespace A004741.P8751127324978194226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 n + A004739 (n + 1)

end

end A004741.P8751127324978194226

noncomputable section

/-- A004741: Concatenation of sequences (1,3,..,2n-1,2n,2n-2,..,2) for n >= 1.

Offset 1, canonical program `A004741.P8751127324978194226`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004741 (n : ℕ) : ℤ :=
  A004741.P8751127324978194226.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004741.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005182.P15554511706419880685

`A057428(xor(1, n))+A005181(n)`
-/

namespace A005182.P15554511706419880685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (Nat.xor 1 n) + A005181 n

end

end A005182.P15554511706419880685

noncomputable section

/-- A005182: a(n) = floor(e^((n-1)/2)).

Offset 0, canonical program `A005182.P15554511706419880685`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 462 terms. -/
def A005182 (n : ℕ) : ℤ :=
  A005182.P15554511706419880685.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 462 terms. -/
def A005182.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005730.P9332930387800122468

`A245477(n)*A334085(n+1)`
-/

namespace A005730.P9332930387800122468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245477 n * A334085 (n + 1)

end

end A005730.P9332930387800122468

noncomputable section

/-- A005730: Related to n-th powers of polynomials: factors complementary to A005731.

Offset 1, canonical program `A005730.P9332930387800122468`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005730 (n : ℕ) : ℤ :=
  A005730.P9332930387800122468.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005730.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006859.P302366829295062184

`A006333(n+1)/2`
-/

namespace A006859.P302366829295062184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006333 (n + 1) : ℚ) / 2

end

end A006859.P302366829295062184

noncomputable section

/-- A006859: From paths in the plane.

Offset 0, canonical program `A006859.P302366829295062184`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A006859 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A006859.P302366829295062184.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A006859.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007064.P15353569760162023814

`ceil(A001966(n)/2)`
-/

namespace A007064.P15353569760162023814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001966 n : ℚ) / 2⌉

end

end A007064.P15353569760162023814

noncomputable section

/-- A007064: Numbers not of form "nearest integer to n*tau", tau = (1+sqrt(5))/2.

Offset 1, canonical program `A007064.P15353569760162023814`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007064 (n : ℕ) : ℤ :=
  A007064.P15353569760162023814.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007064.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007406.P9044966727249400815

`∑[(1/(n+1))²]*A007407(n+1)`
-/

namespace A007406.P9044966727249400815
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 / (n + 1 : ℚ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A007407 (n + 1) : ℚ)

end

end A007406.P9044966727249400815

noncomputable section

/-- A007406: Wolstenholme numbers: numerator of Sum_{k=1..n} 1/k^2.

Offset 1, canonical program `A007406.P9044966727249400815`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A007406 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A007406.P9044966727249400815.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A007406.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007430.P555181855500848548

`∑{d}[n+1, A007429(#)]`
-/

namespace A007430.P555181855500848548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007429 d

end

end A007430.P555181855500848548

noncomputable section

/-- A007430: Inverse Moebius transform applied thrice to natural numbers.

Offset 1, canonical program `A007430.P555181855500848548`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007430 (n : ℕ) : ℤ :=
  A007430.P555181855500848548.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007430.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007920.P3719263903022372137

`A007918(n)-n`
-/

namespace A007920.P3719263903022372137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 n - (n : ℤ)

end

end A007920.P3719263903022372137

noncomputable section

/-- A007920: Smallest number k such that n + k is prime.

Offset 0, canonical program `A007920.P3719263903022372137`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007920 (n : ℕ) : ℤ :=
  A007920.P3719263903022372137.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007920.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008334.P14133309879781043819

`∑{e}[A077063(n+1), #]`
-/

namespace A008334.P14133309879781043819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077063 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A008334.P14133309879781043819

noncomputable section

/-- A008334: Number of distinct primes dividing p-1, where p = n-th prime.

Offset 1, canonical program `A008334.P14133309879781043819`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008334 (n : ℕ) : ℤ :=
  (A008334.P14133309879781043819.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008334.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008415.P5760122249089442523

`A008414(n)+A008414(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A008415.P5760122249089442523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008414 n + A008414 (n - 1) + a (n - 1)

end

end A008415.P5760122249089442523

noncomputable section

/-- A008415: Coordination sequence for 7-dimensional cubic lattice.

Offset 0, canonical program `A008415.P5760122249089442523`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008414, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A008415 (n : ℕ) : ℤ :=
  A008415.P5760122249089442523.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008414, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A008415.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A008860.P18332775515594479900

`A008859(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A008860.P18332775515594479900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008859 (n - 1) + a (n - 1)

end

end A008860.P18332775515594479900

noncomputable section

/-- A008860: a(n) = Sum_{k=0..7} binomial(n,k).

Offset 0, canonical program `A008860.P18332775515594479900`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008860 (n : ℕ) : ℤ :=
  A008860.P18332775515594479900.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008860.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008955.P3963352532862981248

`A269944(A099375(n)+1+n)`
-/

namespace A008955.P3963352532862981248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269944 (A099375 n + 1 + (n : ℤ)).toNat

end

end A008955.P3963352532862981248

noncomputable section

/-- A008955: Triangle of central factorial numbers |t(2n,2n-2k)| read by rows.

Offset 0, canonical program `A008955.P3963352532862981248`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 903 terms. -/
def A008955 (n : ℕ) : ℤ :=
  A008955.P3963352532862981248.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 903 terms. -/
def A008955.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008969.P18435323758028635306

`A112492(A099375(n)+1+n)`
-/

namespace A008969.P18435323758028635306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112492 (A099375 n + 1 + (n : ℤ)).toNat

end

end A008969.P18435323758028635306

noncomputable section

/-- A008969: Triangle read by rows of differences of reciprocals of unity.

Offset 1, canonical program `A008969.P18435323758028635306`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 253 terms. -/
def A008969 (n : ℕ) : ℤ :=
  A008969.P18435323758028635306.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 253 terms. -/
def A008969.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A010063.P7006521606686204256

`A230641(a(n-1))` with `a(0)=1`
-/

namespace A010063.P7006521606686204256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A230641 (a (n - 1)).toNat

end

end A010063.P7006521606686204256

noncomputable section

/-- A010063: a(n+1) = a(n) + sum of digits in base 3 representation of a(n), with a(0) = 1.

Offset 0, canonical program `A010063.P7006521606686204256`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1274 terms. -/
def A010063 (n : ℕ) : ℤ :=
  A010063.P7006521606686204256.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1274 terms. -/
def A010063.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A010065.P1949019084322697027

`A230631(a(n-1))` with `a(0)=1`
-/

namespace A010065.P1949019084322697027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A230631 (a (n - 1)).toNat

end

end A010065.P1949019084322697027

noncomputable section

/-- A010065: a(n+1) = a(n) + sum of digits in base 4 representation of a(n), with a(0) = 1.

Offset 0, canonical program `A010065.P1949019084322697027`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1147 terms. -/
def A010065 (n : ℕ) : ℤ :=
  A010065.P1949019084322697027.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1147 terms. -/
def A010065.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A010066.P7325660255468530179

`A230865(a(n-1))` with `a(0)=1`
-/

namespace A010066.P7325660255468530179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A230865 (a (n - 1)).toNat

end

end A010066.P7325660255468530179

noncomputable section

/-- A010066: a(n+1) = a(n) + sum of digits in base 5 representation of a(n).

Offset 0, canonical program `A010066.P7325660255468530179`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 970 terms. -/
def A010066 (n : ℕ) : ℤ :=
  A010066.P7325660255468530179.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 970 terms. -/
def A010066.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A013620.P18211303655879049424

`A007318(n)*A036561(n)`
-/

namespace A013620.P18211303655879049424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A036561 n

end

end A013620.P18211303655879049424

noncomputable section

/-- A013620: Triangle of coefficients in expansion of (2+3x)^n.

Offset 0, canonical program `A013620.P18211303655879049424`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A013620 (n : ℕ) : ℤ :=
  A013620.P18211303655879049424.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A013620.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A013622.P17777939334217247743

`A007318(n)*A120027(n)`
-/

namespace A013622.P17777939334217247743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A120027 n

end

end A013622.P17777939334217247743

noncomputable section

/-- A013622: Triangle of coefficients in expansion of (3+5x)^n.

Offset 0, canonical program `A013622.P17777939334217247743`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6397 terms. -/
def A013622 (n : ℕ) : ℤ :=
  A013622.P17777939334217247743.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6397 terms. -/
def A013622.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A013633.P247593154449879367

`A007918(n+4)-A007917(n+2)`
-/

namespace A013633.P247593154449879367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (n + 4) - A007917 (n + 2)

end

end A013633.P247593154449879367

noncomputable section

/-- A013633: nextprime(n) - prevprime(n).

Offset 3, canonical program `A013633.P247593154449879367`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007918, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A013633 (n : ℕ) : ℤ :=
  A013633.P247593154449879367.a (n - 3)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007918, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A013633.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A014063.P15730385007772296176

`A014045(round(2*n/3))`
-/

namespace A014063.P15730385007772296176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014045 (SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3))).toNat

end

end A014063.P15730385007772296176

noncomputable section

/-- A014063: Inverse of 54th cyclotomic polynomial.

Offset 0, canonical program `A014063.P15730385007772296176`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014063 (n : ℕ) : ℤ :=
  A014063.P15730385007772296176.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014063.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014175.P16273743748470831240

`∑[A014173(n)]`
-/

namespace A014175.P16273743748470831240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014173 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014175.P16273743748470831240

noncomputable section

/-- A014175: Apply partial sum operator 4 times to Stern's sequence.

Offset 0, canonical program `A014175.P16273743748470831240`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A014175 (n : ℕ) : ℤ :=
  A014175.P16273743748470831240.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A014175.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014721.P14394062809074516665

`A014413(n+1)²`
-/

namespace A014721.P14394062809074516665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014413 (n + 1) ^ 2

end

end A014721.P14394062809074516665

noncomputable section

/-- A014721: Squares of elements to left of the central element in Pascal triangle (by row).

Offset 1, canonical program `A014721.P14394062809074516665`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014413, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014721 (n : ℕ) : ℤ :=
  A014721.P14394062809074516665.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014413, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014721.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A014735.P2878794583540412204

`A014461(n+1)²`
-/

namespace A014735.P2878794583540412204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014461 (n + 1) ^ 2

end

end A014735.P2878794583540412204

noncomputable section

/-- A014735: Squares of odd numbers in triangle of Eulerian numbers that are not 1.

Offset 1, canonical program `A014735.P2878794583540412204`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014461, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014735 (n : ℕ) : ℤ :=
  A014735.P2878794583540412204.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014461, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014735.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A014749.P4666569862553936166

`A014468(n+1)²`
-/

namespace A014749.P4666569862553936166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014468 (n + 1) ^ 2

end

end A014749.P4666569862553936166

noncomputable section

/-- A014749: Squares of numbers in array formed from elements to the right of middle of rows of triangle of Eulerian numbers that are not 1.

Offset 1, canonical program `A014749.P4666569862553936166`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014468, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014749 (n : ℕ) : ℤ :=
  A014749.P4666569862553936166.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014468, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014749.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A019300.P12876685790779178674

`A010060(n)+2*a(n-1)` with `a(0)=0`
-/

namespace A019300.P12876685790779178674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A010060 n + 2 * a (n - 1)

end

end A019300.P12876685790779178674

noncomputable section

/-- A019300: First n elements of Thue-Morse sequence A010060 read as a binary number.

Offset 0, canonical program `A019300.P12876685790779178674`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A019300 (n : ℕ) : ℤ :=
  A019300.P12876685790779178674.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A019300.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A019561.P14281502706415574798

`A008413(2*n)`
-/

namespace A019561.P14281502706415574798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008413 (2 * n)

end

end A019561.P14281502706415574798

noncomputable section

/-- A019561: Coordination sequence for C_5 lattice.

Offset 0, canonical program `A019561.P14281502706415574798`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008413, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A019561 (n : ℕ) : ℤ :=
  A019561.P14281502706415574798.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008413, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A019561.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A019562.P12290986405228145388

`A008414(2*n)`
-/

namespace A019562.P12290986405228145388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008414 (2 * n)

end

end A019562.P12290986405228145388

noncomputable section

/-- A019562: Coordination sequence for C_6 lattice.

Offset 0, canonical program `A019562.P12290986405228145388`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008414, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A019562 (n : ℕ) : ℤ :=
  A019562.P12290986405228145388.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008414, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A019562.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A020938.P7358569268824993959

`A000720(Δ[8*A007504(n)])`
-/

namespace A020938.P7358569268824993959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (n + 1) - f1 n).toNat

end

end A020938.P7358569268824993959

noncomputable section

/-- A020938: Greatest k such that (k-th prime) < (8 times n-th prime).

Offset 1, canonical program `A020938.P7358569268824993959`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1492 terms. -/
def A020938 (n : ℕ) : ℤ :=
  A020938.P7358569268824993959.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1492 terms. -/
def A020938.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020939.P15965853669222690897

`A000720(Δ[9*A007504(n)])`
-/

namespace A020939.P15965853669222690897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (n + 1) - f1 n).toNat

end

end A020939.P15965853669222690897

noncomputable section

/-- A020939: Greatest k such that (k-th prime) < (9 times n-th prime).

Offset 1, canonical program `A020939.P15965853669222690897`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1345 terms. -/
def A020939 (n : ℕ) : ℤ :=
  A020939.P15965853669222690897.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1345 terms. -/
def A020939.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020951.P2561957398097553159

`A002487(A053646(n+1)+A000007(n))`
-/

namespace A020951.P2561957398097553159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A053646 (n + 1) + A000007 n).toNat

end

end A020951.P2561957398097553159

noncomputable section

/-- A020951: a(2n+1)=a(n), a(2n)=a(n)+a(n-1).

Offset 0, canonical program `A020951.P2561957398097553159`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020951 (n : ℕ) : ℤ :=
  A020951.P2561957398097553159.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020951.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022155.P5220891945683012309

`eq[1, A010060(and(n, 2*n))]`
-/

namespace A022155.P5220891945683012309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (Nat.land n (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A022155.P5220891945683012309

noncomputable section

/-- A022155: Values of n at which Golay-Rudin-Shapiro sequence A020985 is negative.

Offset 1, canonical program `A022155.P5220891945683012309`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022155 (n : ℕ) : ℤ :=
  (A022155.P5220891945683012309.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022155.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022418.P17547468247049899946

`A374359(n+1)+A022416(n)`
-/

namespace A022418.P17547468247049899946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374359 (n + 1) + A022416 n

end

end A022418.P17547468247049899946

noncomputable section

/-- A022418: Kim-sums: "Kimberling sums" K_n + K_7.

Offset 0, canonical program `A022418.P17547468247049899946`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022418 (n : ℕ) : ℤ :=
  A022418.P17547468247049899946.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022418.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022800.P2504383713306654643

`A020695(n)+A020695(n)-A014242(n+1)`
-/

namespace A022800.P2504383713306654643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n + (A020695 n - A014242 (n + 1))

end

end A022800.P2504383713306654643

noncomputable section

/-- A022800: a(n) = F(n+2) + c(n) where F(k) is k-th Fibonacci number and c(n) is n-th number that is 1 or is a non-Fibonacci number.

Offset 1, canonical program `A022800.P2504383713306654643`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A022800 (n : ℕ) : ℤ :=
  A022800.P2504383713306654643.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A022800.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022809.P14696953660419613344

`A020701(n)+A020701(n)-A014251(n+1)`
-/

namespace A022809.P14696953660419613344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020701 n + (A020701 n - A014251 (n + 1))

end

end A022809.P14696953660419613344

noncomputable section

/-- A022809: a(n) = F(n+3) + c(n) where F(k) is k-th Fibonacci number and c(n) is n-th number that is 1 or 2 or is not a Fibonacci number.

Offset 1, canonical program `A022809.P14696953660419613344`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. -/
def A022809 (n : ℕ) : ℤ :=
  A022809.P14696953660419613344.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. -/
def A022809.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023202.P11096894219968463901

`p?[A015915(n+1)]`
-/

namespace A023202.P11096894219968463901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015915 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023202.P11096894219968463901

noncomputable section

/-- A023202: Primes p such that p + 8 is also prime.

Offset 1, canonical program `A023202.P11096894219968463901`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8242 terms. -/
def A023202 (n : ℕ) : ℤ :=
  A023202.P11096894219968463901.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8242 terms. -/
def A023202.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023207.P14272775065074491551

`p?[A067076(n+1)-3]`
-/

namespace A023207.P14272775065074491551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (n + 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023207.P14272775065074491551

noncomputable section

/-- A023207: Numbers m such that m and 2*m + 9 both prime.

Offset 1, canonical program `A023207.P14272775065074491551`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1381 terms. -/
def A023207 (n : ℕ) : ℤ :=
  A023207.P14272775065074491551.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1381 terms. -/
def A023207.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023497.P14393320893270749846

`A023496(n)+Δ[A001911(n)]`
-/

namespace A023497.P14393320893270749846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023496 n + (f1 (n + 1) - f1 n)

end

end A023497.P14393320893270749846

noncomputable section

/-- A023497: a(n) = b(n) + d(n), where b(n) = (n-th Lucas number > 3) and d(n) = (n-th number that is 1 or is not a Lucas number).

Offset 0, canonical program `A023497.P14393320893270749846`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 476 terms. -/
def A023497 (n : ℕ) : ℤ :=
  A023497.P14393320893270749846.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 476 terms. -/
def A023497.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023502.P3083904464572208669

`A023501(n)+A000045(n)`
-/

namespace A023502.P3083904464572208669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023501 n + A000045 n

end

end A023502.P3083904464572208669

noncomputable section

/-- A023502: a(n) = b(n) + d(n), where b(n) = (n-th Fibonacci number > 2 ) and d(n) = (n-th number that is 1, 2, or 3, or is not a Lucas number).

Offset 0, canonical program `A023502.P3083904464572208669`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. -/
def A023502 (n : ℕ) : ℤ :=
  A023502.P3083904464572208669.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. -/
def A023502.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023547.P12137966802095583641

`∑[n+2]-A023546(n+1)`
-/

namespace A023547.P12137966802095583641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A023546 (n + 1)

end

end A023547.P12137966802095583641

noncomputable section

/-- A023547: Convolution of natural numbers >= 2 and A023532.

Offset 1, canonical program `A023547.P12137966802095583641`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023547 (n : ℕ) : ℤ :=
  A023547.P12137966802095583641.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023547.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023601.P4165196643065523488

`(n+1)²-A023562(n+1)`
-/

namespace A023601.P4165196643065523488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A023562 (n + 1)

end

end A023601.P4165196643065523488

noncomputable section

/-- A023601: Convolution of A023532 and odd numbers.

Offset 1, canonical program `A023601.P4165196643065523488`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023601 (n : ℕ) : ℤ :=
  A023601.P4165196643065523488.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023601.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023654.P2765289348436436072

`A023612(n+1)-A001950(n+2)`
-/

namespace A023654.P2765289348436436072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023612 (n + 1) - A001950 (n + 2)

end

end A023654.P2765289348436436072

noncomputable section

/-- A023654: Convolution of (F(2), F(3), F(4), ...) and A001950.

Offset 1, canonical program `A023654.P2765289348436436072`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. -/
def A023654 (n : ℕ) : ℤ :=
  A023654.P2765289348436436072.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. -/
def A023654.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023659.P17041428698161868738

`A023658(n+1)+∑[(n+1)²]`
-/

namespace A023659.P17041428698161868738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023658 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A023659.P17041428698161868738

noncomputable section

/-- A023659: Convolution of odd numbers and A001950.

Offset 1, canonical program `A023659.P17041428698161868738`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023659 (n : ℕ) : ℤ :=
  A023659.P17041428698161868738.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023659.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023661.P11872832273071429119

`(n+1)²-A023660(n+1)`
-/

namespace A023661.P11872832273071429119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A023660 (n + 1)

end

end A023661.P11872832273071429119

noncomputable section

/-- A023661: Convolution of odd numbers and A014306.

Offset 1, canonical program `A023661.P11872832273071429119`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023661 (n : ℕ) : ℤ :=
  A023661.P11872832273071429119.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023661.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023864.P1322139053120086111

`A023860(n+3)-A129361(n+2)`
-/

namespace A023864.P1322139053120086111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023860 (n + 3) - A129361 (n + 2)

end

end A023864.P1322139053120086111

noncomputable section

/-- A023864: a(n) = 1*t(n) + 2*t(n-1) + ... + k*t(n+1-k), where k=floor((n+1)/2) and t = (F(2), F(3), F(4), ...), F(n) = Fibonacci(n).

Offset 1, canonical program `A023864.P1322139053120086111`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A023864 (n : ℕ) : ℤ :=
  A023864.P1322139053120086111.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A023864.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024309.P18160775639560700928

`A129361(n)+A023860(n+1)`
-/

namespace A024309.P18160775639560700928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129361 n + A023860 (n + 1)

end

end A024309.P18160775639560700928

noncomputable section

/-- A024309: a(n) = s(1)*t(n) + s(2)*t(n-1) + ... + s(k)*t(n+1-k), where k = floor((n+1)/2), s = (natural numbers >= 2), t = (Fibonacci numbers).

Offset 1, canonical program `A024309.P18160775639560700928`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 475 terms. -/
def A024309 (n : ℕ) : ℤ :=
  A024309.P18160775639560700928.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 475 terms. -/
def A024309.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024570.P17001101844212374106

`∑[A024569(n+1)]`
-/

namespace A024570.P17001101844212374106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024569 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024570.P17001101844212374106

noncomputable section

/-- A024570: a(n) = Sum_{k=1..n} [ 1/{k*r} ] where r = (1 + sqrt(5))/2 and {x} := x - [ x ].

Offset 1, canonical program `A024570.P17001101844212374106`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024570 (n : ℕ) : ℤ :=
  A024570.P17001101844212374106.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024570.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024591.P8048384923733651491

`A024458(n+3)-A000045(n+3)`
-/

namespace A024591.P8048384923733651491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024458 (n + 3) - A000045 (n + 3)

end

end A024591.P8048384923733651491

noncomputable section

/-- A024591: a(n) = s(1)s(n) + s(2)s(n-1) + ... + s(k)s(n+1-k), where k = [ (n+1)/2 ], s = (F(2), F(3), ...).

Offset 1, canonical program `A024591.P8048384923733651491`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 467 terms. -/
def A024591 (n : ℕ) : ℤ :=
  A024591.P8048384923733651491.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 467 terms. -/
def A024591.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024678.P7047042052226671607

`A024675(n+1)-(n+2)`
-/

namespace A024678.P7047042052226671607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1) - (n + 2 : ℤ)

end

end A024678.P7047042052226671607

noncomputable section

/-- A024678: a(n) is the position of (prime(n+1) + prime(n+2))/2 in the ordered nonprimes.

Offset 1, canonical program `A024678.P7047042052226671607`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024678 (n : ℕ) : ℤ :=
  A024678.P7047042052226671607.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024678.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024706.P297945440486149003

`eq[3, gcd(3, A024702(n+3))]+3`
-/

namespace A024706.P297945440486149003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A024702 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 3

end

end A024706.P297945440486149003

noncomputable section

/-- A024706: Positions of multiples of 3 in A024702.

Offset 1, canonical program `A024706.P297945440486149003`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A024706 (n : ℕ) : ℤ :=
  (A024706.P297945440486149003.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A024706.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024711.P16972264116986831310

`A024702(n+3)%2`
-/

namespace A024711.P16972264116986831310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024702 (n + 3)) 2

end

end A024711.P16972264116986831310

noncomputable section

/-- A024711: a(n) = residue mod 2 of n-th term of A024702.

Offset 3, canonical program `A024711.P16972264116986831310`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024711 (n : ℕ) : ℤ :=
  A024711.P16972264116986831310.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024711.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024712.P13920250056796469756

`(A024700(n+1)/2)%3`
-/

namespace A024712.P13920250056796469756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A024700 (n + 1) : ℚ) / 2)) 3

end

end A024712.P13920250056796469756

noncomputable section

/-- A024712: a(n) = residue mod 3 of n-th term of A024702.

Offset 3, canonical program `A024712.P13920250056796469756`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024712 (n : ℕ) : ℤ :=
  A024712.P13920250056796469756.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024712.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024713.P1693480862469099154

`(A024700(n+1)/8)%5`
-/

namespace A024713.P1693480862469099154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A024700 (n + 1) : ℚ) / 8)) 5

end

end A024713.P1693480862469099154

noncomputable section

/-- A024713: a(n) = residue mod 5 of n-th term of A024702.

Offset 3, canonical program `A024713.P1693480862469099154`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024713 (n : ℕ) : ℤ :=
  A024713.P1693480862469099154.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024713.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024714.P6602538012905876606

`A024700(n+1)%7`
-/

namespace A024714.P6602538012905876606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024700 (n + 1)) 7

end

end A024714.P6602538012905876606

noncomputable section

/-- A024714: a(n) = residue mod 7 of n-th term of A024702.

Offset 3, canonical program `A024714.P6602538012905876606`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024714 (n : ℕ) : ℤ :=
  A024714.P6602538012905876606.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024714.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024715.P948663604118300273

`A024702(n+3)%11`
-/

namespace A024715.P948663604118300273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024702 (n + 3)) 11

end

end A024715.P948663604118300273

noncomputable section

/-- A024715: a(n) = residue mod 11 of n-th term of A024702.

Offset 3, canonical program `A024715.P948663604118300273`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024715 (n : ℕ) : ℤ :=
  A024715.P948663604118300273.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024715.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024869.P18052300217753289267

`2*A024306(n+1)-A024305(n+1)`
-/

namespace A024869.P18052300217753289267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024306 (n + 1) - A024305 (n + 1)

end

end A024869.P18052300217753289267

noncomputable section

/-- A024869: a(n) = s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n-k+1), where k = floor( n/2 ), s = natural numbers >= 2, t = natural numbers >= 3.

Offset 2, canonical program `A024869.P18052300217753289267`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024869 (n : ℕ) : ℤ :=
  A024869.P18052300217753289267.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024869.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024872.P6809425359056890803

`A023860(n+3)-A020695(n)`
-/

namespace A024872.P6809425359056890803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023860 (n + 3) - A020695 n

end

end A024872.P6809425359056890803

noncomputable section

/-- A024872: a(n) = s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n-k+1), where k = [ n/2 ], s = (natural numbers >= 2), t = (Fibonacci numbers).

Offset 2, canonical program `A024872.P6809425359056890803`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A024872 (n : ℕ) : ℤ :=
  A024872.P6809425359056890803.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A024872.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025078.P9952779972674218111

`A001629(n+3)-A024458(n+2)`
-/

namespace A025078.P9952779972674218111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001629 (n + 3) - A024458 (n + 2)

end

end A025078.P9952779972674218111

noncomputable section

/-- A025078: a(n) = s(1)s(n) + s(2)s(n-1) + ... + s(k)s(n-k+1), where k = [ n/2 ] and s = (Fibonacci numbers).

Offset 1, canonical program `A025078.P9952779972674218111`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 467 terms. -/
def A025078 (n : ℕ) : ℤ :=
  A025078.P9952779972674218111.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 467 terms. -/
def A025078.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025089.P5435601216984553650

`A004799(n+1)-A024469(n+1)`
-/

namespace A025089.P5435601216984553650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004799 (n + 1) - A024469 (n + 1)

end

end A025089.P5435601216984553650

noncomputable section

/-- A025089: a(n) = s(1)*s(n) + s(2)*s(n-1) + ... + s(k)*s(n-k+1), where k = [n/2], s = (Lucas numbers).

Offset 1, canonical program `A025089.P5435601216984553650`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 464 terms. -/
def A025089 (n : ℕ) : ℤ :=
  A025089.P5435601216984553650.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 464 terms. -/
def A025089.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025106.P14413199365891504528

`A024463(n+3)-(2*n+5)`
-/

namespace A025106.P14413199365891504528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024463 (n + 3) - (2 * n + 5 : ℤ)

end

end A025106.P14413199365891504528

noncomputable section

/-- A025106: a(n) = s(1)*t(n) + s(2)*t(n-1) + ... + s(k)*t(n-k+1), where k = [ n/2 ], s = (F(2), F(3), F(4), ...), t = (odd natural numbers).

Offset 1, canonical program `A025106.P14413199365891504528`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 924 terms. -/
def A025106 (n : ℕ) : ℤ :=
  A025106.P14413199365891504528.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 924 terms. -/
def A025106.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025505.P1645131615138266658

`record[2*A022303(n+1)+n]`
-/

namespace A025505.P1645131615138266658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022303 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025505.P1645131615138266658

noncomputable section

/-- A025505: Index of n-th 2 in A006928.

Offset 1, canonical program `A025505.P1645131615138266658`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025505 (n : ℕ) : ℤ :=
  A025505.P1645131615138266658.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025505.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025516.P3323921667527838167

`lt[1, A022303(n+1)]+1`
-/

namespace A025516.P3323921667527838167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022303 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A025516.P3323921667527838167

noncomputable section

/-- A025516: Index of n-th 2 in A022303.

Offset 1, canonical program `A025516.P3323921667527838167`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025516 (n : ℕ) : ℤ :=
  (A025516.P3323921667527838167.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025516.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025577.P12205511382632223493

`∑[A025565(n+1)]`
-/

namespace A025577.P12205511382632223493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025565 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025577.P12205511382632223493

noncomputable section

/-- A025577: Expansion of (x/(1-x))*sqrt((1+x)/(1-3*x)).

Offset 1, canonical program `A025577.P12205511382632223493`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A025577 (n : ℕ) : ℤ :=
  A025577.P12205511382632223493.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A025577.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025710.P12530225791585977841

`∑[A011262(A011262(floor(n/γ-n)+1))]`
-/

namespace A025710.P12530225791585977841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011262 (A011262 (⌊(n : ℝ) / Real.eulerMascheroniConstant - (n : ℝ)⌋ + 1).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025710.P12530225791585977841

noncomputable section

/-- A025710: Index of 5^n within the sequence of the numbers of the form 5^i*9^j.

Offset 0, canonical program `A025710.P12530225791585977841`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 137 terms. -/
def A025710 (n : ℕ) : ℤ :=
  A025710.P12530225791585977841.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 137 terms. -/
def A025710.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026018.P10843162579093165201

`A026014(n+3)-A026017(n+3)`
-/

namespace A026018.P10843162579093165201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026014 (n + 3) - A026017 (n + 3)

end

end A026018.P10843162579093165201

noncomputable section

/-- A026018: a(n) = number of (s(0), s(1), ..., s(2*n-1)) such that s(i) is a nonnegative integer and |s(i) - s(i-1)| = 1 for i = 1,2,...,n, s(0) = 2, s(2*n-1) = 7. Also a(n) = T(2*n-1,n-3), where T is the array defined in A026009.

Offset 3, canonical program `A026018.P10843162579093165201`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A026018 (n : ℕ) : ℤ :=
  A026018.P10843162579093165201.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A026018.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026027.P8038761387081336440

`A026014(n+2)-A000588(n+2)`
-/

namespace A026027.P8038761387081336440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026014 (n + 2) - A000588 (n + 2)

end

end A026027.P8038761387081336440

noncomputable section

/-- A026027: a(n) = number of (s(0), s(1), ..., s(2*n-1)) such that s(i) is a nonnegative integer and |s(i) - s(i-1)| = 1 for i = 1,2,...,n, s(0) = 3, s(2*n-1) = 6. Also a(n) = T(2*n-1,n-2), where T is defined in A026022.

Offset 2, canonical program `A026027.P8038761387081336440`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A026027 (n : ℕ) : ℤ :=
  A026027.P8038761387081336440.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A026027.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026069.P1783520596391731527

`Δ[A025180(n+2)]`
-/

namespace A026069.P1783520596391731527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025180 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026069.P1783520596391731527

noncomputable section

/-- A026069: a(n) = number of (s(0), s(1), ..., s(n)) such that every s(i) is an integer, s(0) = 0, |s(i) - s(i-1)| = 1 for i = 1,2; |s(i) - s(i-1)| <= 1 for i >= 3, s(n) = 2. Also a(n) = T(n,n-2), where T is the array defined in A024996.

Offset 3, canonical program `A026069.P1783520596391731527`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A026069 (n : ℕ) : ℤ :=
  A026069.P1783520596391731527.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A026069.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026079.P17764146189388257009

`A024998(n+1)+a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A026079.P17764146189388257009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A024998 (n + 1) + a (n - 1)

end

end A026079.P17764146189388257009

noncomputable section

/-- A026079: a(n) = Sum_{k = 1..n} T(k,k-1), where T is the array defined in A024996.

Offset 1, canonical program `A026079.P17764146189388257009`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A026079 (n : ℕ) : ℤ :=
  A026079.P17764146189388257009.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A026079.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026083.P13921223689653325237

`2*A024998(n+3)`
-/

namespace A026083.P13921223689653325237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024998 (n + 3)

end

end A026083.P13921223689653325237

noncomputable section

/-- A026083: a(n) = number of (s(0), s(1), ..., s(n)) such that every s(i) is an integer, s(0) = 0 = s(n), |s(i) - s(i-1)| = 1 for i = 1,2,3; |s(i) - s(i-1)| <= 1 for i >= 4. Also a(n) = T(n,n), where T is the array defined in A026082.

Offset 4, canonical program `A026083.P13921223689653325237`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A026083 (n : ℕ) : ℤ :=
  A026083.P13921223689653325237.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A026083.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026084.P6011791853143651677

`Δ[A024998(n+3)]`
-/

namespace A026084.P6011791853143651677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024998 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026084.P6011791853143651677

noncomputable section

/-- A026084: a(n) = number of (s(0), s(1), ..., s(n)) such that every s(i) is an integer, s(0) = 0, |s(i) - s(i-1)| = 1 for i = 1,2,3; |s(i) - s(i-1)| <= 1 for i >= 4, s(n) = 1. Also a(n) = T(n,n-1), where T is the array defined in A026082.

Offset 4, canonical program `A026084.P6011791853143651677`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A026084 (n : ℕ) : ℤ :=
  A026084.P6011791853143651677.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A026084.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026095.P2665066973868391948

`A024998(n+1)-A115634(A001223(n+1))`
-/

namespace A026095.P2665066973868391948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024998 (n + 1) - A115634 (A001223 (n + 1)).toNat

end

end A026095.P2665066973868391948

noncomputable section

/-- A026095: a(n) = Sum{T(k,k-1)}, k = 1,2,...,n, where T is the array defined in A026082.

Offset 1, canonical program `A026095.P2665066973868391948`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A026095 (n : ℕ) : ℤ :=
  A026095.P2665066973868391948.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A026095.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026134.P2296897511124696960

`A026122(n+2)-A002026(n+1)`
-/

namespace A026134.P2296897511124696960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026122 (n + 2) - A002026 (n + 1)

end

end A026134.P2296897511124696960

noncomputable section

/-- A026134: a(n) = Sum_{k=1..n} T(k, k-1), where T is the array in A026120.

Offset 1, canonical program `A026134.P2296897511124696960`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. -/
def A026134 (n : ℕ) : ℤ :=
  A026134.P2296897511124696960.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. -/
def A026134.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026271.P8479868262339602608

`A019445(n+1)+∑[n-1]`
-/

namespace A026271.P8479868262339602608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019445 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026271.P8479868262339602608

noncomputable section

/-- A026271: a(n) = sum of the numbers between the two n's in A026242.

Offset 1, canonical program `A026271.P8479868262339602608`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026271 (n : ℕ) : ℤ :=
  A026271.P8479868262339602608.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026271.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026344.P5306302893136981966

`ceil(3*A026343(n+1)/2)`
-/

namespace A026344.P5306302893136981966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 * A026343 (n + 1) : ℚ) / 2⌉

end

end A026344.P5306302893136981966

noncomputable section

/-- A026344: a(n) = greatest k such that s(k) = n, where s = A026342.

Offset 1, canonical program `A026344.P5306302893136981966`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026344 (n : ℕ) : ℤ :=
  A026344.P5306302893136981966.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026344.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026430.P14890685957938381463

`floor((A000069(n+1)+n)/2)`
-/

namespace A026430.P14890685957938381463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000069 (n + 1) + (n : ℤ) : ℚ) / 2⌋

end

end A026430.P14890685957938381463

noncomputable section

/-- A026430: a(n) is the sum of first n terms of A001285 (Thue-Morse sequence).

Offset 0, canonical program `A026430.P14890685957938381463`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026430 (n : ℕ) : ℤ :=
  A026430.P14890685957938381463.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026430.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026491.P12269982715676672745

`A001468(A022290(n))+2*n`
-/

namespace A026491.P12269982715676672745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 (A022290 n).toNat + (2 * n : ℤ)

end

end A026491.P12269982715676672745

noncomputable section

/-- A026491: a(n) = least k > a(n-1) such that A001285(k-1) = A001285(n-1) for n >= 1.

Offset 0, canonical program `A026491.P12269982715676672745`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026491 (n : ℕ) : ℤ :=
  A026491.P12269982715676672745.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026491.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026612.P4528122590339004242

`2-A026609(n+1)`
-/

namespace A026612.P4528122590339004242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A026609 (n + 1)

end

end A026612.P4528122590339004242

noncomputable section

/-- A026612: a(n) = number of 1's between n-th 3 and (n+1)st 3 in A026600.

Offset 1, canonical program `A026612.P4528122590339004242`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026612 (n : ℕ) : ℤ :=
  A026612.P4528122590339004242.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026612.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027166.P16041641435082422667

`∑[A027164(n)]`
-/

namespace A027166.P16041641435082422667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027164 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027166.P16041641435082422667

noncomputable section

/-- A027166: a(n) = Sum_{0<=j<=i<=n} A027157(i, j).

Offset 0, canonical program `A027166.P16041641435082422667`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 246 terms. -/
def A027166 (n : ℕ) : ℤ :=
  A027166.P16041641435082422667.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 246 terms. -/
def A027166.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027258.P7041651527099632817

`A024998(2*(n+1))`
-/

namespace A027258.P7041651527099632817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024998 (2 * (n + 1))

end

end A027258.P7041651527099632817

noncomputable section

/-- A027258: a(n) = Sum_{k=0..2n-1} T(n,k) * T(n,k+1), with T given by A025177.

Offset 1, canonical program `A027258.P7041651527099632817`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A027258 (n : ℕ) : ℤ :=
  A027258.P7041651527099632817.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A027258.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A027615.P4354181638066238725

`A000120(A005351(n))`
-/

namespace A027615.P4354181638066238725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A005351 n).toNat

end

end A027615.P4354181638066238725

noncomputable section

/-- A027615: Number of 1's when n is written in base -2.

Offset 0, canonical program `A027615.P4354181638066238725`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005351, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A027615 (n : ℕ) : ℤ :=
  A027615.P4354181638066238725.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005351, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A027615.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A027698.P6769785550994187236

`eq[1, A200246(n+1)]+1`
-/

namespace A027698.P6769785550994187236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200246 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A027698.P6769785550994187236

noncomputable section

/-- A027698: Numbers k such that the k-th prime has an odd number of 1's in its binary expansion.

Offset 1, canonical program `A027698.P6769785550994187236`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5316 terms. -/
def A027698 (n : ℕ) : ℤ :=
  (A027698.P6769785550994187236.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5316 terms. -/
def A027698.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027931.P1336290053932205075

`A027930(n+3)+a(n-1)` with `a(0)=1`
-/

namespace A027931.P1336290053932205075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A027930 (n + 3) + a (n - 1)

end

end A027931.P1336290053932205075

noncomputable section

/-- A027931: T(n, 2n-8), T given by A027926.

Offset 4, canonical program `A027931.P1336290053932205075`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027931 (n : ℕ) : ℤ :=
  A027931.P1336290053932205075.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027931.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027970.P1629718102284868813

`A027969(n+3)+a(n-1)` with `a(0)=1`
-/

namespace A027970.P1629718102284868813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A027969 (n + 3) + a (n - 1)

end

end A027970.P1629718102284868813

noncomputable section

/-- A027970: a(n) = T(n, 2*n-8), T given by A027960.

Offset 4, canonical program `A027970.P1629718102284868813`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027970 (n : ℕ) : ℤ :=
  A027970.P1629718102284868813.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027970.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028330.P6625420377303343371

`2*A014413(n+1)`
-/

namespace A028330.P6625420377303343371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014413 (n + 1)

end

end A028330.P6625420377303343371

noncomputable section

/-- A028330: Elements to the right of the central elements of the even-Pascal triangle A028326.

Offset 0, canonical program `A028330.P6625420377303343371`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014413, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A028330 (n : ℕ) : ℤ :=
  A028330.P6625420377303343371.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014413, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A028330.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A029225.P16486130044195142611

`A029116(n)-a(n-1)` with `a(0)=1`
-/

namespace A029225.P16486130044195142611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029116 n - a (n - 1)

end

end A029225.P16486130044195142611

noncomputable section

/-- A029225: Expansion of 1/((1-x^2)*(1-x^6)*(1-x^11)*(1-x^12)).

Offset 0, canonical program `A029225.P16486130044195142611`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029225 (n : ℕ) : ℤ :=
  A029225.P16486130044195142611.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029225.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029238.P16766028808299643663

`A029129(n)-a(n-1)` with `a(0)=1`
-/

namespace A029238.P16766028808299643663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029129 n - a (n - 1)

end

end A029238.P16766028808299643663

noncomputable section

/-- A029238: Expansion of 1/((1-x^2)*(1-x^8)*(1-x^9)*(1-x^12)).

Offset 0, canonical program `A029238.P16766028808299643663`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029238 (n : ℕ) : ℤ :=
  A029238.P16766028808299643663.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029238.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029242.P11992213160082313165

`A029133(n)-a(n-1)` with `a(0)=1`
-/

namespace A029242.P11992213160082313165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029133 n - a (n - 1)

end

end A029242.P11992213160082313165

noncomputable section

/-- A029242: Expansion of 1/((1-x^2)*(1-x^9)*(1-x^10)*(1-x^12)).

Offset 0, canonical program `A029242.P11992213160082313165`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029242 (n : ℕ) : ℤ :=
  A029242.P11992213160082313165.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029242.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A029370.P7798369650479054994

`A029237(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029370.P7798369650479054994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029237 n - a (n - 2)

end

end A029370.P7798369650479054994

noncomputable section

/-- A029370: Expansion of 1/((1-x^4)*(1-x^8)*(1-x^9)*(1-x^11)).

Offset 0, canonical program `A029370.P7798369650479054994`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029370 (n : ℕ) : ℤ :=
  A029370.P7798369650479054994.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029370.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029425.P9386777479452355456

`A029318(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029425.P9386777479452355456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A029318 n - a (n - 3)

end

end A029425.P9386777479452355456

noncomputable section

/-- A029425: Expansion of 1/((1-x^6)(1-x^8)(1-x^9)(1-x^12)).

Offset 0, canonical program `A029425.P9386777479452355456`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029425 (n : ℕ) : ℤ :=
  A029425.P9386777479452355456.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029425.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029429.P6125197273790252985

`A029323(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029429.P6125197273790252985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A029323 n - a (n - 3)

end

end A029429.P6125197273790252985

noncomputable section

/-- A029429: Expansion of 1/((1-x^6)(1-x^9)(1-x^10)(1-x^12)).

Offset 0, canonical program `A029429.P6125197273790252985`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029429 (n : ℕ) : ℤ :=
  A029429.P6125197273790252985.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029429.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029430.P1090642862795637503

`A029114(n)+A029389(n)-A029102(n)`
-/

namespace A029430.P1090642862795637503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029114 n + (A029389 n - A029102 n)

end

end A029430.P1090642862795637503

noncomputable section

/-- A029430: Expansion of 1/((1-x^6)(1-x^9)(1-x^11)(1-x^12)).

Offset 0, canonical program `A029430.P1090642862795637503`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029430 (n : ℕ) : ℤ :=
  A029430.P1090642862795637503.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029430.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029440.P14008336459079568971

`A029114(n)+A029398(n)-A029102(n)`
-/

namespace A029440.P14008336459079568971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029114 n + (A029398 n - A029102 n)

end

end A029440.P14008336459079568971

noncomputable section

/-- A029440: Expansion of 1/((1-x^7)(1-x^9)(1-x^11)(1-x^12)).

Offset 0, canonical program `A029440.P14008336459079568971`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029440 (n : ℕ) : ℤ :=
  A029440.P14008336459079568971.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029440.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029655.P14912270738703485013

`A325191(n)+A007318(n)`
-/

namespace A029655.P14912270738703485013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325191 n + A007318 n

end

end A029655.P14912270738703485013

noncomputable section

/-- A029655: Numbers in the (2,1)-Pascal triangle A029653 that are different from 2.

Offset 0, canonical program `A029655.P14912270738703485013`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029655 (n : ℕ) : ℤ :=
  A029655.P14912270738703485013.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029655.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029884.P4429559380778062282

`Δ[A010060(n+1)-A010060(n)]`
-/

namespace A029884.P4429559380778062282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (n + 1) - A010060 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A029884.P4429559380778062282

noncomputable section

/-- A029884: Second differences of Thue-Morse sequence A001285.

Offset 0, canonical program `A029884.P4429559380778062282`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029884 (n : ℕ) : ℤ :=
  A029884.P4429559380778062282.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029884.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A030130.P14159575509811306268

`xor(A010054(n), A081118(n+1))`
-/

namespace A030130.P14159575509811306268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010054 n) (A081118 (n + 1))

end

end A030130.P14159575509811306268

noncomputable section

/-- A030130: Binary expansion contains a single 0.

Offset 1, canonical program `A030130.P14159575509811306268`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A030130 (n : ℕ) : ℤ :=
  A030130.P14159575509811306268.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A030130.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A030237.P12249412304419150663

`gcd(A009766(A007401(n+1)), A010816(n))`
-/

namespace A030237.P12249412304419150663
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A009766 (A007401 (n + 1)).toNat) (A010816 n)

end

end A030237.P12249412304419150663

noncomputable section

/-- A030237: Catalan's triangle with right border removed (n > 0, 0 <= k < n).

Offset 1, canonical program `A030237.P12249412304419150663`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9860 terms. -/
def A030237 (n : ℕ) : ℤ :=
  (A030237.P12249412304419150663.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9860 terms. -/
def A030237.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A031444.P3616120243307179198

`eq[4, floor(n/A001316(n)²)+3]`
-/

namespace A031444.P3616120243307179198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (A001316 n ^ 2 : ℚ)⌋ + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031444.P3616120243307179198

noncomputable section

/-- A031444: Numbers whose base-2 representation has one more 0 than 1's.

Offset 1, canonical program `A031444.P3616120243307179198`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4081 terms. -/
def A031444 (n : ℕ) : ℤ :=
  (A031444.P3616120243307179198.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4081 terms. -/
def A031444.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A031453.P14508670588110786033

`eq[A081603(n)+1, A077267(A028310(n))]`
-/

namespace A031453.P14508670588110786033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031453.P14508670588110786033

noncomputable section

/-- A031453: Numbers whose base-3 representation has one more 0 than 2's.

Offset 1, canonical program `A031453.P14508670588110786033`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1594 terms. -/
def A031453 (n : ℕ) : ℤ :=
  (A031453.P14508670588110786033.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1594 terms. -/
def A031453.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A032607.P17286791914416164224

`(n+1)*(10^(1+A004216(n+3))+1)+2`
-/

namespace A032607.P17286791914416164224
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((10 : ℚ) ^ (1 + A004216 (n + 3) : ℤ) + 1) + 2

end

end A032607.P17286791914416164224

noncomputable section

/-- A032607: Concatenation of n and n + 2 or {n,n+2}.

Offset 1, canonical program `A032607.P17286791914416164224`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A032607 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A032607.P17286791914416164224.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A032607.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A032608.P16231339068134095402

`(n+1)*(10^(1+A004216(n+4))+1)+3`
-/

namespace A032608.P16231339068134095402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((10 : ℚ) ^ (1 + A004216 (n + 4) : ℤ) + 1) + 3

end

end A032608.P16231339068134095402

noncomputable section

/-- A032608: Concatenation of n and n + 3.

Offset 1, canonical program `A032608.P16231339068134095402`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A032608 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A032608.P16231339068134095402.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A032608.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A032609.P13806505801294787442

`(n+1)*(10^(1+A004216(n+5))+1)+4`
-/

namespace A032609.P13806505801294787442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((10 : ℚ) ^ (1 + A004216 (n + 5) : ℤ) + 1) + 4

end

end A032609.P13806505801294787442

noncomputable section

/-- A032609: Concatenation of n and n + 4 or {n,n+4}.

Offset 1, canonical program `A032609.P13806505801294787442`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9996 terms. -/
def A032609 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A032609.P13806505801294787442.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9996 terms. -/
def A032609.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A032610.P15973300244235464454

`A084855(∑[n+6]+10)`
-/

namespace A032610.P15973300244235464454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084855 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A032610.P15973300244235464454

noncomputable section

/-- A032610: Concatenation of n and n + 5 or {n,n+5}.

Offset 1, canonical program `A032610.P15973300244235464454`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A032610 (n : ℕ) : ℤ :=
  A032610.P15973300244235464454.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A032610.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A032611.P14395661447578244973

`A084855(A055999(n+4))`
-/

namespace A032611.P14395661447578244973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084855 (A055999 (n + 4)).toNat

end

end A032611.P14395661447578244973

noncomputable section

/-- A032611: Concatenation of n and n + 6 or {n,n+6}.

Offset 1, canonical program `A032611.P14395661447578244973`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 134 terms. -/
def A032611 (n : ℕ) : ℤ :=
  A032611.P14395661447578244973.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 134 terms. -/
def A032611.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A032612.P9628233881918790487

`A084855(A155212(n+4)+1)`
-/

namespace A032612.P9628233881918790487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084855 (A155212 (n + 4) + 1).toNat

end

end A032612.P9628233881918790487

noncomputable section

/-- A032612: Concatenation of n and n+7.

Offset 1, canonical program `A032612.P9628233881918790487`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A032612 (n : ℕ) : ℤ :=
  A032612.P9628233881918790487.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A032612.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A032613.P4379369226880167036

`A084855(A000217(n+9)-8)`
-/

namespace A032613.P4379369226880167036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084855 (A000217 (n + 9) - 8).toNat

end

end A032613.P4379369226880167036

noncomputable section

/-- A032613: Concatenation of n and n + 8 or {n,n+8}.

Offset 1, canonical program `A032613.P4379369226880167036`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. -/
def A032613 (n : ℕ) : ℤ :=
  A032613.P4379369226880167036.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. -/
def A032613.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A032614.P5120848621844794646

`A084855(A155212(n+6)-1)`
-/

namespace A032614.P5120848621844794646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084855 (A155212 (n + 6) - 1).toNat

end

end A032614.P5120848621844794646

noncomputable section

/-- A032614: Concatenation of n and n + 9 or {n,n+9}.

Offset 1, canonical program `A032614.P5120848621844794646`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. -/
def A032614 (n : ℕ) : ℤ :=
  A032614.P5120848621844794646.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. -/
def A032614.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A032795.P3387722789288988087

`A032794(n+1)/A032793(n+1)`
-/

namespace A032795.P3387722789288988087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032794 (n + 1) : ℚ) / (A032793 (n + 1) : ℚ)

end

end A032795.P3387722789288988087

noncomputable section

/-- A032795: Positive numbers k such that (k+1)*(k+2)*(k+3)*(k+4)/(k+(k+1)+(k+2)+(k+3)+(k+4)) is an integer.

Offset 1, canonical program `A032795.P3387722789288988087`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A032794, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A032795 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A032795.P3387722789288988087.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A032794, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A032795.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A032952.P14319785002090626155

`A026013(n+1)-A099376(n)`
-/

namespace A032952.P14319785002090626155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026013 (n + 1) - A099376 n

end

end A032952.P14319785002090626155

noncomputable section

/-- A032952: Expansion of (1+x*C^4)*C^2, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

Offset 0, canonical program `A032952.P14319785002090626155`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A032952 (n : ℕ) : ℤ :=
  A032952.P14319785002090626155.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A032952.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033161.P7450569827711651060

`A140081(n)+A033160(n+1)`
-/

namespace A033161.P7450569827711651060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140081 n + A033160 (n + 1)

end

end A033161.P7450569827711651060

noncomputable section

/-- A033161: Begins with (2, 5); avoids 3-term arithmetic progressions.

Offset 1, canonical program `A033161.P7450569827711651060`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033161 (n : ℕ) : ℤ :=
  A033161.P7450569827711651060.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033161.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033163.P3512797110537312179

`A033160(n+1)+1`
-/

namespace A033163.P3512797110537312179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033160 (n + 1) + 1

end

end A033163.P3512797110537312179

noncomputable section

/-- A033163: Begins with (3, 5) and avoids 3-term arithmetic progressions.

Offset 1, canonical program `A033163.P3512797110537312179`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033163 (n : ℕ) : ℤ :=
  A033163.P3512797110537312179.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033163.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033761.P11731263425258369509

`A027414(8*n+3)`
-/

namespace A033761.P11731263425258369509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027414 (8 * n + 3)

end

end A033761.P11731263425258369509

noncomputable section

/-- A033761: Product t2(q^d); d | 2, where t2 = theta2(q)/(2*q^(1/4)).

Offset 0, canonical program `A033761.P11731263425258369509`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A027414, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A033761 (n : ℕ) : ℤ :=
  A033761.P11731263425258369509.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A027414, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A033761.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A033882.P18084102587079416063

`A033880(A023196(n+1))`
-/

namespace A033882.P18084102587079416063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033880 (A023196 (n + 1)).toNat

end

end A033882.P18084102587079416063

noncomputable section

/-- A033882: Abundancy of the abundant or perfect numbers: m = sigma(k)-2k for n such that m >= 0.

Offset 1, canonical program `A033882.P18084102587079416063`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023196, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A033882 (n : ℕ) : ℤ :=
  A033882.P18084102587079416063.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023196, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A033882.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A034102.P5014734774195026149

`A034097(n+1)-floor(sqrt(A034097(n+1)))`
-/

namespace A034102.P5014734774195026149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034097 (n + 1) - Int.sqrt (A034097 (n + 1))

end

end A034102.P5014734774195026149

noncomputable section

/-- A034102: Fractional part of square root of a(n) starts with digit 6.

Offset 1, canonical program `A034102.P5014734774195026149`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034102 (n : ℕ) : ℤ :=
  A034102.P5014734774195026149.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034102.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034761.P7021873278512007717

`∑{d}[n+1, #*A007429((n+1)/#)]`
-/

namespace A034761.P7021873278512007717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A007429 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034761.P7021873278512007717

noncomputable section

/-- A034761: Dirichlet convolution of sigma(n) with itself.

Offset 1, canonical program `A034761.P7021873278512007717`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034761 (n : ℕ) : ℤ :=
  A034761.P7021873278512007717.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034761.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034877.P11761815301413299691

`A034852(lt[0, A034852(n)])`
-/

namespace A034877.P11761815301413299691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034852 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034852 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A034877.P11761815301413299691

noncomputable section

/-- A034877: Rows of (Pascal's triangle - Losanitsch's triangle) (n >= 0, k >= 0).

Offset 0, canonical program `A034877.P11761815301413299691`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034877 (n : ℕ) : ℤ :=
  A034877.P11761815301413299691.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034877.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034962.P16335635607556510049

`p?[A007504(n+3)-A007504(n)]`
-/

namespace A034962.P16335635607556510049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 3) - A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A034962.P16335635607556510049

noncomputable section

/-- A034962: Primes that are the sum of three consecutive primes.

Offset 1, canonical program `A034962.P16335635607556510049`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6149 terms. -/
def A034962 (n : ℕ) : ℤ :=
  A034962.P16335635607556510049.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6149 terms. -/
def A034962.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034963.P11708242366348853171

`A034961(n+2)+A000040(n+1)`
-/

namespace A034963.P11708242366348853171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (n + 2) + A000040 (n + 1)

end

end A034963.P11708242366348853171

noncomputable section

/-- A034963: Sums of four consecutive primes.

Offset 1, canonical program `A034963.P11708242366348853171`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A034963 (n : ℕ) : ℤ :=
  A034963.P11708242366348853171.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A034963.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034965.P10618063056112596285

`p?[A034964(n+1)]`
-/

namespace A034965.P10618063056112596285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034964 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A034965.P10618063056112596285

noncomputable section

/-- A034965: Primes that are sum of five consecutive primes.

Offset 1, canonical program `A034965.P10618063056112596285`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2030 terms. -/
def A034965 (n : ℕ) : ℤ :=
  A034965.P10618063056112596285.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2030 terms. -/
def A034965.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035103.P1324719609663575418

`A035100(n+1)-A014499(n+1)`
-/

namespace A035103.P1324719609663575418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035100 (n + 1) - A014499 (n + 1)

end

end A035103.P1324719609663575418

noncomputable section

/-- A035103: Number of 0's in binary representation of n-th prime.

Offset 1, canonical program `A035103.P1324719609663575418`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035100, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A035103 (n : ℕ) : ℤ :=
  A035103.P1324719609663575418.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035100, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A035103.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A035605.P8746881321390343686

`∑[2*A035604(n)]-A035604(n)`
-/

namespace A035605.P8746881321390343686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A035604 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A035604 n

end

end A035605.P8746881321390343686

noncomputable section

/-- A035605: Number of points of L1 norm 11 in cubic lattice Z^n.

Offset 0, canonical program `A035605.P8746881321390343686`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035605 (n : ℕ) : ℤ :=
  A035605.P8746881321390343686.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035605.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035715.P10092483258359964657

`∑[2*A035714(n)]-A035714(n)`
-/

namespace A035715.P10092483258359964657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A035714 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A035714 n

end

end A035715.P10092483258359964657

noncomputable section

/-- A035715: Coordination sequence for 20-dimensional cubic lattice.

Offset 0, canonical program `A035715.P10092483258359964657`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035715 (n : ℕ) : ℤ :=
  A035715.P10092483258359964657.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035715.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035717.P10519821207590744476

`∑[2*A035716(n)]-A035716(n)`
-/

namespace A035717.P10519821207590744476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A035716 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A035716 n

end

end A035717.P10519821207590744476

noncomputable section

/-- A035717: Coordination sequence for 22-dimensional cubic lattice.

Offset 0, canonical program `A035717.P10519821207590744476`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035717 (n : ℕ) : ℤ :=
  A035717.P10519821207590744476.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035717.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035756.P17779012192531417427

`A035714(2*n)`
-/

namespace A035756.P17779012192531417427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035714 (2 * n)

end

end A035756.P17779012192531417427

noncomputable section

/-- A035756: Coordination sequence for C_19 lattice.

Offset 0, canonical program `A035756.P17779012192531417427`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A035756 (n : ℕ) : ℤ :=
  A035756.P17779012192531417427.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A035756.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035758.P918832399889674702

`A035716(2*n)`
-/

namespace A035758.P918832399889674702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035716 (2 * n)

end

end A035758.P918832399889674702

noncomputable section

/-- A035758: Coordination sequence for C_21 lattice.

Offset 0, canonical program `A035758.P918832399889674702`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A035758 (n : ℕ) : ℤ :=
  A035758.P918832399889674702.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A035758.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035764.P1934732260014623711

`A035722(2*n)`
-/

namespace A035764.P1934732260014623711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035722 (2 * n)

end

end A035764.P1934732260014623711

noncomputable section

/-- A035764: Coordination sequence for C_27 lattice.

Offset 0, canonical program `A035764.P1934732260014623711`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A035764 (n : ℕ) : ℤ :=
  A035764.P1934732260014623711.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A035764.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035767.P14336921547845258511

`A035725(2*n)`
-/

namespace A035767.P14336921547845258511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035725 (2 * n)

end

end A035767.P14336921547845258511

noncomputable section

/-- A035767: Coordination sequence for C_30 lattice.

Offset 0, canonical program `A035767.P14336921547845258511`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A035767 (n : ℕ) : ℤ :=
  A035767.P14336921547845258511.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A035767.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035772.P15203243405529877436

`A035730(2*n)`
-/

namespace A035772.P15203243405529877436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035730 (2 * n)

end

end A035772.P15203243405529877436

noncomputable section

/-- A035772: Coordination sequence for C_35 lattice.

Offset 0, canonical program `A035772.P15203243405529877436`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2896 terms. -/
def A035772 (n : ℕ) : ℤ :=
  A035772.P15203243405529877436.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2896 terms. -/
def A035772.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035778.P17076281089256357332

`A035736(2*n)`
-/

namespace A035778.P17076281089256357332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035736 (2 * n)

end

end A035778.P17076281089256357332

noncomputable section

/-- A035778: Coordination sequence for C_41 lattice.

Offset 0, canonical program `A035778.P17076281089256357332`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1226 terms. -/
def A035778 (n : ℕ) : ℤ :=
  A035778.P17076281089256357332.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1226 terms. -/
def A035778.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036272.P13640507030568503975

`abs(Δ[abs(A036263(n+1))])`
-/

namespace A036272.P13640507030568503975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A036263 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A036272.P13640507030568503975

noncomputable section

/-- A036272: Absolute values of differences of absolute values of second differences of primes.

Offset 0, canonical program `A036272.P13640507030568503975`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036272 (n : ℕ) : ℤ :=
  A036272.P13640507030568503975.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036272.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036586.P6008186881590982081

`A036584(n)-1`
-/

namespace A036586.P6008186881590982081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036584 n - 1

end

end A036586.P6008186881590982081

noncomputable section

/-- A036586: Ternary Thue-Morse sequence: closed under a->abc, b->ac, c->b.

Offset 0, canonical program `A036586.P6008186881590982081`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036586 (n : ℕ) : ℤ :=
  A036586.P6008186881590982081.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036586.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037628.P14679779907453231846

`A037600(n+1)+A033143(n+1)`
-/

namespace A037628.P14679779907453231846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037600 (n + 1) + A033143 (n + 1)

end

end A037628.P14679779907453231846

noncomputable section

/-- A037628: Base 7 digits are, in order, the first n terms of the periodic sequence with initial period 2,3,0.

Offset 1, canonical program `A037628.P14679779907453231846`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A037628 (n : ℕ) : ℤ :=
  A037628.P14679779907453231846.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A037628.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037870.P14091972107261335065

`∑{e}[A001316(floor((n+1)/A001316(n+1))), #]`
-/

namespace A037870.P14091972107261335065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 ⌊(n + 1 : ℚ) / (A001316 (n + 1) : ℚ)⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A037870.P14091972107261335065

noncomputable section

/-- A037870: a(n) = (1/2)*Sum{|d(i)-e(i)|}, where Sum{d(i)*2^i} is base 2 representation of n and e(i) are digits d(i) in nonincreasing order, for i=0,1,...,m.

Offset 1, canonical program `A037870.P14091972107261335065`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037870 (n : ℕ) : ℤ :=
  (A037870.P14091972107261335065.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037870.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037879.P7162535617736776379

`A023416(floor((n+1)/2^A023416(n+1)))`
-/

namespace A037879.P7162535617736776379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 ⌊(n + 1 : ℚ) / (2 : ℚ) ^ (A023416 (n + 1) : ℤ)⌋.toNat

end

end A037879.P7162535617736776379

noncomputable section

/-- A037879: a(n) = (1/2)*Sum{|d(i)-e(i)|} where Sum{d(i)*2^i} is the base-2 representation of n and {e(i)} are digits {d(i)} in nondecreasing order.

Offset 1, canonical program `A037879.P7162535617736776379`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037879 (n : ℕ) : ℤ :=
  A037879.P7162535617736776379.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037879.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037957.P523599438952609535

`A001405(n)-A026021(n)`
-/

namespace A037957.P523599438952609535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n - A026021 n

end

end A037957.P523599438952609535

noncomputable section

/-- A037957: a(n) = binomial(n, floor((n-6)/2)).

Offset 0, canonical program `A037957.P523599438952609535`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A037957 (n : ℕ) : ℤ :=
  A037957.P523599438952609535.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A037957.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038212.P16599495353890336006

`A013609(n)*A036561(n)`
-/

namespace A038212.P16599495353890336006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 n * A036561 n

end

end A038212.P16599495353890336006

noncomputable section

/-- A038212: Triangle whose (i,j)-th entry is binomial(i,j)*2^(i-j)*6^j.

Offset 0, canonical program `A038212.P16599495353890336006`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6410 terms. -/
def A038212 (n : ℕ) : ℤ :=
  A038212.P16599495353890336006.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6410 terms. -/
def A038212.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038215.P9598806509330154798

`A013610(n)*A036561(n)`
-/

namespace A038215.P9598806509330154798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013610 n * A036561 n

end

end A038215.P9598806509330154798

noncomputable section

/-- A038215: Triangle whose (i,j)-th entry is binomial(i,j)*2^(i-j)*9^j.

Offset 0, canonical program `A038215.P9598806509330154798`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4832 terms. -/
def A038215 (n : ℕ) : ℤ :=
  A038215.P9598806509330154798.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4832 terms. -/
def A038215.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A038233.P11336662556546498361

`A036561(n)*A038207(n)`
-/

namespace A038233.P11336662556546498361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n * A038207 n

end

end A038233.P11336662556546498361

noncomputable section

/-- A038233: Triangle whose (i,j)-th entry is binomial(i,j)*4^(i-j)*3^j.

Offset 0, canonical program `A038233.P11336662556546498361`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7306 terms. -/
def A038233 (n : ℕ) : ℤ :=
  A038233.P11336662556546498361.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7306 terms. -/
def A038233.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A038257.P13466949147217766730

`A027465(n)*A036561(n)`
-/

namespace A038257.P13466949147217766730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027465 n * A036561 n

end

end A038257.P13466949147217766730

noncomputable section

/-- A038257: Triangle whose (i,j)-th entry is binomial(i,j)*6^(i-j)*3^j.

Offset 0, canonical program `A038257.P13466949147217766730`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5704 terms. -/
def A038257 (n : ℕ) : ℤ :=
  A038257.P13466949147217766730.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5704 terms. -/
def A038257.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038263.P7438079468923778165

`A036561(n)*A038221(n)`
-/

namespace A038263.P7438079468923778165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n * A038221 n

end

end A038263.P7438079468923778165

noncomputable section

/-- A038263: Triangle whose (i,j)-th entry is binomial(i,j)*6^(i-j)*9^j.

Offset 0, canonical program `A038263.P7438079468923778165`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3790 terms. -/
def A038263 (n : ℕ) : ℤ :=
  A038263.P7438079468923778165.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3790 terms. -/
def A038263.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A038295.P4887945260608104514

`A027465(n)*A120027(n)`
-/

namespace A038295.P4887945260608104514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027465 n * A120027 n

end

end A038295.P4887945260608104514

noncomputable section

/-- A038295: Triangle whose (i,j)-th entry is binomial(i,j)*9^(i-j)*5^j.

Offset 0, canonical program `A038295.P4887945260608104514`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4028 terms. -/
def A038295 (n : ℕ) : ℤ :=
  A038295.P4887945260608104514.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4028 terms. -/
def A038295.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A038388.P12225938423161256159

`sqrt((n+1)*A038387(n+1))`
-/

namespace A038388.P12225938423161256159
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((n + 1 : ℤ) * A038387 (n + 1) : ℝ)

end

end A038388.P12225938423161256159

noncomputable section

/-- A038388: Let f(n) be the smallest number such that the arithmetic mean (A) and geometric mean (G) of n and f(n) are both integers; sequence gives G values.

Offset 1, canonical program `A038388.P12225938423161256159`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038388 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A038388.P12225938423161256159.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038388.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038389.P11327127064887863338

`round((A038387(n+1)+n)/2)`
-/

namespace A038389.P11327127064887863338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A038387 (n + 1) + (n : ℤ) : ℚ) / 2)

end

end A038389.P11327127064887863338

noncomputable section

/-- A038389: Let f(n) be the smallest number such that the arithmetic mean (A) and geometric mean (G) of n and f(n) are both integers; sequence gives A values.

Offset 1, canonical program `A038389.P11327127064887863338`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038389 (n : ℕ) : ℤ :=
  A038389.P11327127064887863338.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038389.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038610.P10588143395137606958

`A002944(n+1)/A133910(n+1)`
-/

namespace A038610.P10588143395137606958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002944 (n + 1) : ℚ) / (A133910 (n + 1) : ℚ)

end

end A038610.P10588143395137606958

noncomputable section

/-- A038610: Least common multiple of integers less than and prime to n.

Offset 1, canonical program `A038610.P10588143395137606958`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. -/
def A038610 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A038610.P10588143395137606958.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. -/
def A038610.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038734.P8844479592814247932

`∑[∑[A038733(n+4)]]`
-/

namespace A038734.P8844479592814247932
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038733 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038734.P8844479592814247932

noncomputable section

/-- A038734: T(n,n-5), array T as in A038730.

Offset 5, canonical program `A038734.P8844479592814247932`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 235 terms. -/
def A038734 (n : ℕ) : ℤ :=
  A038734.P8844479592814247932.a (n - 5)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 235 terms. -/
def A038734.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038741.P6419063686036010405

`∑[A038733(n+4)]`
-/

namespace A038741.P6419063686036010405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038733 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038741.P6419063686036010405

noncomputable section

/-- A038741: T(n,n-4), array T as in A038738.

Offset 4, canonical program `A038741.P6419063686036010405`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 236 terms. -/
def A038741 (n : ℕ) : ℤ :=
  A038741.P6419063686036010405.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 236 terms. -/
def A038741.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038823.P17116008269528267976

`Δ[A038812(A028310(n))%A017286(n)]`
-/

namespace A038823.P17116008269528267976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038812 (A028310 n).toNat) (A017286 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038823.P17116008269528267976

noncomputable section

/-- A038823: Number of primes between n*1000 and (n+1)*1000.

Offset 0, canonical program `A038823.P17116008269528267976`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038823 (n : ℕ) : ℤ :=
  A038823.P17116008269528267976.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038823.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039973.P9709266713566998332

`A025581(2-Δ[Δ[A316829(n)]])`
-/

namespace A039973.P9709266713566998332
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316829 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (2 - (f1 (n + 1) - f1 n)).toNat

end

end A039973.P9709266713566998332

noncomputable section

/-- A039973: An example of a d-perfect sequence: a(2*n) = 0, a(2*n-1) = A039965(n).

Offset 1, canonical program `A039973.P9709266713566998332`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A039973 (n : ℕ) : ℤ :=
  A039973.P9709266713566998332.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A039973.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A041542.P4991133602929681577

`gcd(2, n)*A041126(n)`
-/

namespace A041542.P4991133602929681577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A041126 n

end

end A041542.P4991133602929681577

noncomputable section

/-- A041542: Numerators of continued fraction convergents to sqrt(288).

Offset 0, canonical program `A041542.P4991133602929681577`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. -/
def A041542 (n : ℕ) : ℤ :=
  A041542.P4991133602929681577.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. -/
def A041542.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043569.P15388862397033280106

`1+A081118(n+1)`
-/

namespace A043569.P15388862397033280106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A081118 (n + 1)

end

end A043569.P15388862397033280106

noncomputable section

/-- A043569: Numbers whose base-2 representation has exactly 2 runs.

Offset 1, canonical program `A043569.P15388862397033280106`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A043569 (n : ℕ) : ℤ :=
  A043569.P15388862397033280106.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A043569.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043734.P2081533944662856459

`record[A005408(n)*A010892(A005811(n))]`
-/

namespace A043734.P2081533944662856459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n * A010892 (A005811 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043734.P2081533944662856459

noncomputable section

/-- A043734: Numbers whose number of runs in the base-2 representation is congruent to 1 mod 6.

Offset 1, canonical program `A043734.P2081533944662856459`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4149 terms. -/
def A043734 (n : ℕ) : ℤ :=
  A043734.P2081533944662856459.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4149 terms. -/
def A043734.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043735.P6936913590569914898

`2*eq[1, A128834(A005811(n))]`
-/

namespace A043735.P6936913590569914898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 (A005811 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043735.P6936913590569914898

noncomputable section

/-- A043735: Numbers whose number of runs in the base-2 representation is congruent to 2 mod 6.

Offset 1, canonical program `A043735.P6936913590569914898`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3900 terms. -/
def A043735 (n : ℕ) : ℤ :=
  (A043735.P6936913590569914898.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3900 terms. -/
def A043735.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A044057.P8945552730682165796

`A017221(eq[A062756(n), A065363(n)])`
-/

namespace A044057.P8945552730682165796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017221 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A044057.P8945552730682165796

noncomputable section

/-- A044057: Numbers n such that string 1,2 occurs in the base 3 representation of n but not of n-1.

Offset 1, canonical program `A044057.P8945552730682165796`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4181 terms. -/
def A044057 (n : ℕ) : ℤ :=
  A044057.P8945552730682165796.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4181 terms. -/
def A044057.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A044971.P13740791806707555514

`∩[A023692(n+1), A043321(n+1)]`
-/

namespace A044971.P13740791806707555514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023692 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043321 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044971.P13740791806707555514

noncomputable section

/-- A044971: Numbers whose base-3 representation contains exactly one 0 and one 1.

Offset 1, canonical program `A044971.P13740791806707555514`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 286 terms. -/
def A044971 (n : ℕ) : ℤ :=
  (A044971.P13740791806707555514.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 286 terms. -/
def A044971.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A044972.P2534562059640087062

`∩[A023693(n+1), A043321(n+1)]`
-/

namespace A044972.P2534562059640087062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043321 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044972.P2534562059640087062

noncomputable section

/-- A044972: Numbers whose base-3 representation contains exactly one 0 and two 1's.

Offset 1, canonical program `A044972.P2534562059640087062`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 702 terms. -/
def A044972 (n : ℕ) : ℤ :=
  (A044972.P2534562059640087062.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 702 terms. -/
def A044972.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A044973.P4922914150493767431

`∩[A023694(n+1), A043321(n+1)]`
-/

namespace A044973.P4922914150493767431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043321 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044973.P4922914150493767431

noncomputable section

/-- A044973: Numbers whose base-3 representation contains exactly one 0 and three 1's.

Offset 1, canonical program `A044973.P4922914150493767431`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1134 terms. -/
def A044973 (n : ℕ) : ℤ :=
  (A044973.P4922914150493767431.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1134 terms. -/
def A044973.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A044976.P14451359059032507611

`∩[A023692(n+1), A043322(n+1)]`
-/

namespace A044976.P14451359059032507611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023692 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043322 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044976.P14451359059032507611

noncomputable section

/-- A044976: Numbers whose base-3 representation contains exactly two 0's and one 1.

Offset 1, canonical program `A044976.P14451359059032507611`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 483 terms. -/
def A044976 (n : ℕ) : ℤ :=
  (A044976.P14451359059032507611.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 483 terms. -/
def A044976.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A044978.P17659103742301629516

`∩[A023694(n+1), A043322(n+1)]`
-/

namespace A044978.P17659103742301629516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043322 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044978.P17659103742301629516

noncomputable section

/-- A044978: Numbers whose base-3 representation contains exactly two 0's and three 1's.

Offset 1, canonical program `A044978.P17659103742301629516`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2262 terms. -/
def A044978 (n : ℕ) : ℤ :=
  (A044978.P17659103742301629516.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2262 terms. -/
def A044978.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A044981.P18195031240722580958

`∩[A023692(n+1), A043323(n+1)]`
-/

namespace A044981.P18195031240722580958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023692 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043323 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044981.P18195031240722580958

noncomputable section

/-- A044981: Numbers whose base-3 representation contains exactly three 0's and one 1.

Offset 1, canonical program `A044981.P18195031240722580958`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 681 terms. -/
def A044981 (n : ℕ) : ℤ :=
  (A044981.P18195031240722580958.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 681 terms. -/
def A044981.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A044982.P1663044987886424646

`∩[A023693(n+1), A043323(n+1)]`
-/

namespace A044982.P1663044987886424646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043323 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044982.P1663044987886424646

noncomputable section

/-- A044982: Numbers whose base-3 representation contains exactly three 0's and two 1's.

Offset 1, canonical program `A044982.P1663044987886424646`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1720 terms. -/
def A044982 (n : ℕ) : ℤ :=
  (A044982.P1663044987886424646.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1720 terms. -/
def A044982.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A044986.P11188818628558561952

`∩[A023692(n+1), A043324(n+1)]`
-/

namespace A044986.P11188818628558561952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023692 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043324 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044986.P11188818628558561952

noncomputable section

/-- A044986: Numbers whose base-3 representation contains exactly four 0's and one 1.

Offset 1, canonical program `A044986.P11188818628558561952`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1046 terms. -/
def A044986 (n : ℕ) : ℤ :=
  (A044986.P11188818628558561952.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1046 terms. -/
def A044986.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A044987.P8628495577670064236

`∩[A023693(n+1), A043324(n+1)]`
-/

namespace A044987.P8628495577670064236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043324 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044987.P8628495577670064236

noncomputable section

/-- A044987: Numbers whose base-3 representation contains exactly four 0's and two 1's.

Offset 1, canonical program `A044987.P8628495577670064236`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2472 terms. -/
def A044987 (n : ℕ) : ℤ :=
  (A044987.P8628495577670064236.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2472 terms. -/
def A044987.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A044988.P12725054443842438556

`∩[A023694(n+1), A043324(n+1)]`
-/

namespace A044988.P12725054443842438556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043324 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044988.P12725054443842438556

noncomputable section

/-- A044988: Numbers whose base-3 representation contains exactly four 0's and three 1's.

Offset 1, canonical program `A044988.P12725054443842438556`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2115 terms. -/
def A044988 (n : ℕ) : ℤ :=
  (A044988.P12725054443842438556.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2115 terms. -/
def A044988.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A044995.P10989468949285261213

`∩[A023699(n+1), A043321(n+1)]`
-/

namespace A044995.P10989468949285261213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023699 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043321 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044995.P10989468949285261213

noncomputable section

/-- A044995: Numbers whose base-3 representation contains exactly one 0 and one 2.

Offset 1, canonical program `A044995.P10989468949285261213`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 359 terms. -/
def A044995 (n : ℕ) : ℤ :=
  (A044995.P10989468949285261213.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 359 terms. -/
def A044995.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A044996.P6775798620776590104

`∩[A031457(n+1), A043321(n+1)]`
-/

namespace A044996.P6775798620776590104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043321 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044996.P6775798620776590104

noncomputable section

/-- A044996: Numbers whose base-3 representation contains exactly one 0 and two 2's.

Offset 1, canonical program `A044996.P6775798620776590104`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 870 terms. -/
def A044996 (n : ℕ) : ℤ :=
  (A044996.P6775798620776590104.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 870 terms. -/
def A044996.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A044997.P14877715571537468302

`∩[A031458(n+1), A043321(n+1)]`
-/

namespace A044997.P14877715571537468302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031458 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043321 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044997.P14877715571537468302

noncomputable section

/-- A044997: Numbers whose base-3 representation contains exactly one 0 and three 2's.

Offset 1, canonical program `A044997.P14877715571537468302`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1778 terms. -/
def A044997 (n : ℕ) : ℤ :=
  (A044997.P14877715571537468302.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1778 terms. -/
def A044997.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A044998.P17317914427546594640

`∩[A031459(n+1), A043321(n+1)]`
-/

namespace A044998.P17317914427546594640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031459 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043321 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044998.P17317914427546594640

noncomputable section

/-- A044998: Numbers whose base-3 representation contains exactly one 0 and four 2's.

Offset 1, canonical program `A044998.P17317914427546594640`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2537 terms. -/
def A044998 (n : ℕ) : ℤ :=
  (A044998.P17317914427546594640.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2537 terms. -/
def A044998.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A044999.P16986693355859831075

`A044975(n+1)/2`
-/

namespace A044999.P16986693355859831075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A044975 (n + 1) : ℚ) / 2

end

end A044999.P16986693355859831075

noncomputable section

/-- A044999: Numbers whose base-3 representation contains exactly two 0's and no 2's.

Offset 1, canonical program `A044999.P16986693355859831075`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 365 terms. -/
def A044999 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A044999.P16986693355859831075.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 365 terms. -/
def A044999.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045001.P4548679255925172547

`∩[A023700(n+1), A031452(n+1)]`
-/

namespace A045001.P4548679255925172547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031452 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045001.P4548679255925172547

noncomputable section

/-- A045001: Numbers whose base-3 representation contains exactly two 0's and two 2's.

Offset 1, canonical program `A045001.P4548679255925172547`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1924 terms. -/
def A045001 (n : ℕ) : ℤ :=
  (A045001.P4548679255925172547.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1924 terms. -/
def A045001.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045002.P17857784299893427605

`∩[A031457(n+1), A043322(n+1)]`
-/

namespace A045002.P17857784299893427605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043322 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045002.P17857784299893427605

noncomputable section

/-- A045002: Numbers whose base-3 representation contains exactly two 0's and three 2's.

Offset 1, canonical program `A045002.P17857784299893427605`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2842 terms. -/
def A045002 (n : ℕ) : ℤ :=
  (A045002.P17857784299893427605.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2842 terms. -/
def A045002.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045003.P5732014318311237842

`∩[A023702(n+1), A031458(n+1)]`
-/

namespace A045003.P5732014318311237842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023702 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045003.P5732014318311237842

noncomputable section

/-- A045003: Numbers whose base-3 representation contains exactly two 0's and four 2's.

Offset 1, canonical program `A045003.P5732014318311237842`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2936 terms. -/
def A045003 (n : ℕ) : ℤ :=
  (A045003.P5732014318311237842.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2936 terms. -/
def A045003.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045004.P14105085117710872714

`A044980(n+1)/2`
-/

namespace A045004.P14105085117710872714
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A044980 (n + 1) : ℚ) / 2

end

end A045004.P14105085117710872714

noncomputable section

/-- A045004: Numbers whose base-3 representation contains exactly three 0's and no 2's.

Offset 1, canonical program `A045004.P14105085117710872714`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1002 terms. -/
def A045004 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A045004.P14105085117710872714.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1002 terms. -/
def A045004.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045005.P15994022594868692415

`∩[A023699(n+1), A031454(n+1)]`
-/

namespace A045005.P15994022594868692415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023699 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031454 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045005.P15994022594868692415

noncomputable section

/-- A045005: Numbers whose base-3 representation contains exactly three 0's and one 2.

Offset 1, canonical program `A045005.P15994022594868692415`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1733 terms. -/
def A045005 (n : ℕ) : ℤ :=
  (A045005.P15994022594868692415.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1733 terms. -/
def A045005.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045007.P18296789142797255809

`∩[A031452(n+1), A043323(n+1)]`
-/

namespace A045007.P18296789142797255809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031452 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043323 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045007.P18296789142797255809

noncomputable section

/-- A045007: Numbers whose base-3 representation contains exactly three 0's and three 2's.

Offset 1, canonical program `A045007.P18296789142797255809`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3119 terms. -/
def A045007 (n : ℕ) : ℤ :=
  (A045007.P18296789142797255809.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3119 terms. -/
def A045007.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045010.P1561473996532251622

`∩[A023699(n+1), A031455(n+1)]`
-/

namespace A045010.P1561473996532251622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023699 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045010.P1561473996532251622

noncomputable section

/-- A045010: Numbers whose base-3 representation contains exactly four 0's and one 2.

Offset 1, canonical program `A045010.P1561473996532251622`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2493 terms. -/
def A045010 (n : ℕ) : ℤ :=
  (A045010.P1561473996532251622.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2493 terms. -/
def A045010.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045011.P15370651697208224625

`∩[A031454(n+1), A043324(n+1)]`
-/

namespace A045011.P15370651697208224625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031454 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043324 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045011.P15370651697208224625

noncomputable section

/-- A045011: Numbers whose base-3 representation contains exactly four 0's and two 2's.

Offset 1, canonical program `A045011.P15370651697208224625`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2790 terms. -/
def A045011 (n : ℕ) : ℤ :=
  (A045011.P15370651697208224625.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2790 terms. -/
def A045011.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045012.P13915242892822916730

`∩[A023701(n+1), A043324(n+1)]`
-/

namespace A045012.P13915242892822916730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023701 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043324 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045012.P13915242892822916730

noncomputable section

/-- A045012: Numbers whose base-3 representation contains exactly four 0's and three 2's.

Offset 1, canonical program `A045012.P13915242892822916730`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1975 terms. -/
def A045012 (n : ℕ) : ℤ :=
  (A045012.P13915242892822916730.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1975 terms. -/
def A045012.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045057.P4223567228262729370

`A023713(A043324(n+1)+1)`
-/

namespace A045057.P4223567228262729370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023713 (A043324 (n + 1) + 1).toNat

end

end A045057.P4223567228262729370

noncomputable section

/-- A045057: Numbers whose base-4 representation contains exactly four 0's and no 2's.

Offset 1, canonical program `A045057.P4223567228262729370`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1479 terms. -/
def A045057 (n : ℕ) : ℤ :=
  A045057.P4223567228262729370.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1479 terms. -/
def A045057.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045071.P6797980674944799802

`A023717(A043322(n+1))`
-/

namespace A045071.P6797980674944799802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 (A043322 (n + 1)).toNat

end

end A045071.P6797980674944799802

noncomputable section

/-- A045071: Numbers whose base-4 representation contains exactly two 0's and no 3's.

Offset 1, canonical program `A045071.P6797980674944799802`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2859 terms. -/
def A045071 (n : ℕ) : ℤ :=
  A045071.P6797980674944799802.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2859 terms. -/
def A045071.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045412.P17699345519846233104

`∑[2*A079559(n)+1]`
-/

namespace A045412.P17699345519846233104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A079559 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045412.P17699345519846233104

noncomputable section

/-- A045412: a(1)=3; for n > 1, a(n) = a(n-1) + 1 if n is already in the sequence, a(n) = a(n-1) + 3 otherwise.

Offset 1, canonical program `A045412.P17699345519846233104`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045412 (n : ℕ) : ℤ :=
  A045412.P17699345519846233104.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045412.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045547.P2896272397358188517

`eq[2, A008904(n)]`
-/

namespace A045547.P2896272397358188517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008904 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045547.P2896272397358188517

noncomputable section

/-- A045547: Numbers whose factorial has '2' as its final nonzero digit.

Offset 1, canonical program `A045547.P2896272397358188517`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2509 terms. -/
def A045547 (n : ℕ) : ℤ :=
  (A045547.P2896272397358188517.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2509 terms. -/
def A045547.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045549.P13883420047111945995

`eq[6, A008904(n)]`
-/

namespace A045549.P13883420047111945995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008904 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045549.P13883420047111945995

noncomputable section

/-- A045549: Numbers whose factorial has '6' as its final nonzero digit.

Offset 1, canonical program `A045549.P13883420047111945995`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2494 terms. -/
def A045549 (n : ℕ) : ℤ :=
  (A045549.P13883420047111945995.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2494 terms. -/
def A045549.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045550.P10362698429326084456

`lt[6, A008904(n)]`
-/

namespace A045550.P10362698429326084456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008904 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A045550.P10362698429326084456

noncomputable section

/-- A045550: Numbers whose factorial has '8' as its final nonzero digit.

Offset 1, canonical program `A045550.P10362698429326084456`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2510 terms. -/
def A045550 (n : ℕ) : ℤ :=
  (A045550.P10362698429326084456.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2510 terms. -/
def A045550.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045722.P9382885105584645516

`A006013(n)*A008619(A103517(n))`
-/

namespace A045722.P9382885105584645516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006013 n * A008619 (A103517 n).toNat

end

end A045722.P9382885105584645516

noncomputable section

/-- A045722: Number of border edges in all noncrossing rooted trees on n nodes.

Offset 1, canonical program `A045722.P9382885105584645516`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A045722 (n : ℕ) : ℤ :=
  A045722.P9382885105584645516.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A045722.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046207.P12178220823491989682

`(A000267(n)+1)*A014413(n+1)`
-/

namespace A046207.P12178220823491989682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000267 n + 1) * A014413 (n + 1)

end

end A046207.P12178220823491989682

noncomputable section

/-- A046207: Numbers to the right of the central elements in the triangle of denominators in Leibniz's Harmonic Triangle.

Offset 1, canonical program `A046207.P12178220823491989682`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046207 (n : ℕ) : ℤ :=
  A046207.P12178220823491989682.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046207.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046303.P9565588535061664667

`A000040(n+1)*A046302(n+2)`
-/

namespace A046303.P9565588535061664667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A046302 (n + 2)

end

end A046303.P9565588535061664667

noncomputable section

/-- A046303: Product of 5 successive primes.

Offset 1, canonical program `A046303.P9565588535061664667`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A046303 (n : ℕ) : ℤ :=
  A046303.P9565588535061664667.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A046303.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046821.P4299228859060915380

`log2(A001316(5*n+1))`
-/

namespace A046821.P4299228859060915380
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001316 (5 * n + 1) : ℝ)

end

end A046821.P4299228859060915380

noncomputable section

/-- A046821: Number of 1's in binary expansion of 5n+1.

Offset 0, canonical program `A046821.P4299228859060915380`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046821 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A046821.P4299228859060915380.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046821.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046822.P3385769472462405505

`val(A001316(A016873(n)), 2)`
-/

namespace A046822.P3385769472462405505
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A001316 (A016873 n).toNat).toNat 2

end

end A046822.P3385769472462405505

noncomputable section

/-- A046822: Number of 1's in binary expansion of 5n+2.

Offset 0, canonical program `A046822.P3385769472462405505`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046822 (n : ℕ) : ℤ :=
  (A046822.P3385769472462405505.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046822.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046823.P14777892315166642419

`log2(A001316(5*n+3))`
-/

namespace A046823.P14777892315166642419
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001316 (5 * n + 3) : ℝ)

end

end A046823.P14777892315166642419

noncomputable section

/-- A046823: Number of 1's in binary expansion of 5n+3.

Offset 0, canonical program `A046823.P14777892315166642419`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046823 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A046823.P14777892315166642419.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046823.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046824.P13810941798240372756

`A046820(n+1)-Δ[A000120(n)]`
-/

namespace A046824.P13810941798240372756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046820 (n + 1) - (f1 (n + 1) - f1 n)

end

end A046824.P13810941798240372756

noncomputable section

/-- A046824: Number of 1's in binary expansion of 5n+4.

Offset 0, canonical program `A046824.P13810941798240372756`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046824 (n : ℕ) : ℤ :=
  A046824.P13810941798240372756.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046824.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046868.P12771719425983285755

`lt[A036263(n+1), 1]+2`
-/

namespace A046868.P12771719425983285755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036263 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A046868.P12771719425983285755

noncomputable section

/-- A046868: Numbers n such that prime(n)^2 > prime(n-1)*prime(n+1).

Offset 1, canonical program `A046868.P12771719425983285755`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046868 (n : ℕ) : ℤ :=
  (A046868.P12771719425983285755.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046868.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046930.P1162450832993365803

`Δ[A011974(n+1)]-2`
-/

namespace A046930.P1162450832993365803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011974 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A046930.P1162450832993365803

noncomputable section

/-- A046930: Size of sea of composite numbers surrounding n-th prime.

Offset 1, canonical program `A046930.P1162450832993365803`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046930 (n : ℕ) : ℤ :=
  A046930.P1162450832993365803.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046930.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047009.P16609204866922919021

`A006013(n)-A030983(A028310(n)+2)`
-/

namespace A047009.P16609204866922919021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006013 n - A030983 (A028310 n + 2).toNat

end

end A047009.P16609204866922919021

noncomputable section

/-- A047009: T(2n,n), array T given by A047000.

Offset 0, canonical program `A047009.P16609204866922919021`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 125 terms. -/
def A047009 (n : ℕ) : ℤ :=
  A047009.P16609204866922919021.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 125 terms. -/
def A047009.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047182.P3338192460869076266

`A037955(A028310(n)+1)-1`
-/

namespace A047182.P3338192460869076266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037955 (A028310 n + 1).toNat - 1

end

end A047182.P3338192460869076266

noncomputable section

/-- A047182: Number of nonempty subsets of {1,2,...,n} in which exactly 1/2 of the elements are <= (n-2)/2.

Offset 1, canonical program `A047182.P3338192460869076266`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A047182 (n : ℕ) : ℤ :=
  A047182.P3338192460869076266.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A047182.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048614.P8089396376325747707

`A027833(C(2, n+1)+n+1)-2`
-/

namespace A048614.P8089396376325747707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027833 (Nat.choose 2 (n + 1) + n + 1) - 2

end

end A048614.P8089396376325747707

noncomputable section

/-- A048614: Number of primes between successive pairs of twin primes.

Offset 1, canonical program `A048614.P8089396376325747707`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048614 (n : ℕ) : ℤ :=
  A048614.P8089396376325747707.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048614.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049122.P11757817425609271245

`(A007440(n)+a(n-1))/2` with `a(0)=1`
-/

namespace A049122.P11757817425609271245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((A007440 n : ℚ) + a (n - 1)) / 2

end

end A049122.P11757817425609271245

noncomputable section

/-- A049122: Revert transform of x*(1 + 2*x)/(1 + 3*x + x^2).

Offset 1, canonical program `A049122.P11757817425609271245`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 297 terms. -/
def A049122 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A049122.P11757817425609271245.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 297 terms. -/
def A049122.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049533.P347491331111619318

`record[floor(sqrt(A059591(n)))]`
-/

namespace A049533.P347491331111619318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A059591 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049533.P347491331111619318

noncomputable section

/-- A049533: Numbers k such that k^2+1 is squarefree.

Offset 1, canonical program `A049533.P347491331111619318`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8951 terms. -/
def A049533 (n : ℕ) : ℤ :=
  A049533.P347491331111619318.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8951 terms. -/
def A049533.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049710.P6790608665925512686

`3-A006928(n+1)`
-/

namespace A049710.P6790608665925512686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A006928 (n + 1)

end

end A049710.P6790608665925512686

noncomputable section

/-- A049710: a(n)=3-k(n), where k=A006928; also, a and k have the same runlength sequence, with n-th term k(n-1) for n >= 2.

Offset 1, canonical program `A049710.P6790608665925512686`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049710 (n : ℕ) : ℤ :=
  A049710.P6790608665925512686.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049710.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049797.P8834432724964485178

`∑[lcm(2, n+1)-A091818(n+2)]`
-/

namespace A049797.P8834432724964485178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (n + 1) : ℤ) - A091818 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049797.P8834432724964485178

noncomputable section

/-- A049797: a(n) = Sum_{k = 2..n} T(n,k), array T as in A049800.

Offset 1, canonical program `A049797.P8834432724964485178`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049797 (n : ℕ) : ℤ :=
  A049797.P8834432724964485178.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049797.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049847.P10550477487782794055

`floor(A049613(n+3)/2)`
-/

namespace A049847.P10550477487782794055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A049613 (n + 3) : ℚ) / 2⌋

end

end A049847.P10550477487782794055

noncomputable section

/-- A049847: a(n) = (2*n + 1 - prevprime(2*n+1))/2.

Offset 2, canonical program `A049847.P10550477487782794055`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049847 (n : ℕ) : ℤ :=
  A049847.P10550477487782794055.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049847.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050168.P2561838391192846284

`A026010(n-2)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A050168.P2561838391192846284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A026010 (n - 2) + a (n - 1)

end

end A050168.P2561838391192846284

noncomputable section

/-- A050168: a(0) = 1; for n > 0, a(n) = binomial(n, floor(n/2)) + binomial(n-1, floor(n/2)).

Offset 0, canonical program `A050168.P2561838391192846284`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A050168 (n : ℕ) : ℤ :=
  A050168.P2561838391192846284.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A050168.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050206.P11225108751146401757

`A010783(A038722(n+1))+1`
-/

namespace A050206.P11225108751146401757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010783 (A038722 (n + 1)).toNat + 1

end

end A050206.P11225108751146401757

noncomputable section

/-- A050206: Triangle read by rows: smallest denominator of the expansion of k/n using the greedy algorithm, 1<=k<=n-1.

Offset 2, canonical program `A050206.P11225108751146401757`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050206 (n : ℕ) : ℤ :=
  A050206.P11225108751146401757.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050206.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050607.P8984009073988029614

`lt[A000999(n), 2]`
-/

namespace A050607.P8984009073988029614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000999 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A050607.P8984009073988029614

noncomputable section

/-- A050607: Numbers k such that base 5 expansion matches (0|1|2)*((0|1)(3|4))?(0|1|2)*.

Offset 1, canonical program `A050607.P8984009073988029614`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2430 terms. -/
def A050607 (n : ℕ) : ℤ :=
  (A050607.P8984009073988029614.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2430 terms. -/
def A050607.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051195.P16292542519701830417

`(n+1)*A000912(n+1)`
-/

namespace A051195.P16292542519701830417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000912 (n + 1)

end

end A051195.P16292542519701830417

noncomputable section

/-- A051195: T(2n+2,n), array T as in A050186; a count of aperiodic binary words.

Offset 0, canonical program `A051195.P16292542519701830417`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A051195 (n : ℕ) : ℤ :=
  A051195.P16292542519701830417.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A051195.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A051341.P12409519143467508836

`A023531(A003056(n)%Δ[A099375(n)])`
-/

namespace A051341.P12409519143467508836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 (Int.tmod (A003056 n) (f1 (n + 1) - f1 n)).toNat

end

end A051341.P12409519143467508836

noncomputable section

/-- A051341: A simple 2-dimensional array, read by antidiagonals.

Offset 0, canonical program `A051341.P12409519143467508836`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051341 (n : ℕ) : ℤ :=
  A051341.P12409519143467508836.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051341.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051476.P259747214792868749

`A051474(n)²`
-/

namespace A051476.P259747214792868749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051474 n ^ 2

end

end A051476.P259747214792868749

noncomputable section

/-- A051476: (Terms in A014733)/4.

Offset 0, canonical program `A051476.P259747214792868749`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 575 terms. -/
def A051476 (n : ℕ) : ℤ :=
  A051476.P259747214792868749.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 575 terms. -/
def A051476.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052294.P11560629231918074628

`eq[1, A032741(log2(A001316(n)))]`
-/

namespace A052294.P11560629231918074628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (SequenceMachineLib.roundAway (Real.logb 2 (A001316 n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A052294.P11560629231918074628

noncomputable section

/-- A052294: Pernicious numbers: numbers with a prime number of 1's in their binary expansion.

Offset 1, canonical program `A052294.P11560629231918074628`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A052294 (n : ℕ) : ℤ :=
  (A052294.P11560629231918074628.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A052294.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052784.P7354656700825448306

`n*A052777(abs(1-n))`
-/

namespace A052784.P7354656700825448306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A052777 |1 - (n : ℤ)|.toNat

end

end A052784.P7354656700825448306

noncomputable section

/-- A052784: Expansion of e.g.f.: x^3*(exp(x)-1)^3.

Offset 0, canonical program `A052784.P7354656700825448306`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 199 terms. -/
def A052784 (n : ℕ) : ℤ :=
  A052784.P7354656700825448306.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 199 terms. -/
def A052784.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052793.P3570053525797619001

`n*A052769(abs(1-n))`
-/

namespace A052793.P3570053525797619001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A052769 |1 - (n : ℤ)|.toNat

end

end A052793.P3570053525797619001

noncomputable section

/-- A052793: Expansion of e.g.f. x^4*exp(x)^2 - 2*x^4*exp(x) + x^4.

Offset 0, canonical program `A052793.P3570053525797619001`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 304 terms. -/
def A052793 (n : ℕ) : ℤ :=
  A052793.P3570053525797619001.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 304 terms. -/
def A052793.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053176.P7503796743926850121

`A065091(lt[1, A023595(n+1)])`
-/

namespace A053176.P7503796743926850121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023595 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A053176.P7503796743926850121

noncomputable section

/-- A053176: Primes p such that 2p+1 is composite.

Offset 1, canonical program `A053176.P7503796743926850121`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8778 terms. -/
def A053176 (n : ℕ) : ℤ :=
  A053176.P7503796743926850121.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8778 terms. -/
def A053176.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053201.P1741911093947549040

`A014410(n+2)%A003057(n+2)`
-/

namespace A053201.P1741911093947549040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014410 (n + 2)) (A003057 (n + 2))

end

end A053201.P1741911093947549040

noncomputable section

/-- A053201: Pascal's triangle (excluding first, last element of each row) read by rows, row n read mod n.

Offset 2, canonical program `A053201.P1741911093947549040`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053201 (n : ℕ) : ℤ :=
  A053201.P1741911093947549040.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053201.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053233.P10130912460607265282

`eq[2, A053230(n+1)]+1`
-/

namespace A053233.P10130912460607265282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053230 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A053233.P10130912460607265282

noncomputable section

/-- A053233: Numbers k such that A053230(k) = 2.

Offset 1, canonical program `A053233.P10130912460607265282`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8497 terms. -/
def A053233 (n : ℕ) : ℤ :=
  (A053233.P10130912460607265282.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8497 terms. -/
def A053233.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053235.P6397111754543227532

`eq[3, A053230(A028310(n))]`
-/

namespace A053235.P6397111754543227532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053230 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053235.P6397111754543227532

noncomputable section

/-- A053235: Numbers k such that A053230(k) = 3.

Offset 1, canonical program `A053235.P6397111754543227532`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A053235 (n : ℕ) : ℤ :=
  (A053235.P6397111754543227532.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A053235.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053236.P11682525552161789920

`eq[4, A053230(n+1)]+1`
-/

namespace A053236.P11682525552161789920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053230 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A053236.P11682525552161789920

noncomputable section

/-- A053236: Numbers k such that A053230(k) = 4.

Offset 1, canonical program `A053236.P11682525552161789920`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 417 terms. -/
def A053236 (n : ℕ) : ℤ :=
  (A053236.P11682525552161789920.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 417 terms. -/
def A053236.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053247.P14306056287210934944

`A053223(A053228(n+1))`
-/

namespace A053247.P14306056287210934944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053223 (A053228 (n + 1)).toNat

end

end A053247.P14306056287210934944

noncomputable section

/-- A053247: Second differences of sigma(n) that are positive.

Offset 1, canonical program `A053247.P14306056287210934944`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053228, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053247 (n : ℕ) : ℤ :=
  A053247.P14306056287210934944.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053228, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053247.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A053248.P8659473701059242995

`abs(A053223(A053229(n+1)))`
-/

namespace A053248.P8659473701059242995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A053223 (A053229 (n + 1)).toNat|

end

end A053248.P8659473701059242995

noncomputable section

/-- A053248: Second differences of sigma(n) that are negative.

Offset 1, canonical program `A053248.P8659473701059242995`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5147 terms. -/
def A053248 (n : ℕ) : ℤ :=
  A053248.P8659473701059242995.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5147 terms. -/
def A053248.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053493.P1420012562660781811

`A054563(n+1)+A001752(n)`
-/

namespace A053493.P1420012562660781811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054563 (n + 1) + A001752 n

end

end A053493.P1420012562660781811

noncomputable section

/-- A053493: Number of symmetric 4 X 4 matrices of nonnegative integers with every row and column adding to n.

Offset 0, canonical program `A053493.P1420012562660781811`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053493 (n : ℕ) : ℤ :=
  A053493.P1420012562660781811.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053493.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053616.P15730649175569513944

`val(2*A036561(n), 6)`
-/

namespace A053616.P15730649175569513944
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (2 * A036561 n).toNat 6

end

end A053616.P15730649175569513944

noncomputable section

/-- A053616: Pyramidal sequence: distance to nearest triangular number.

Offset 0, canonical program `A053616.P15730649175569513944`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053616 (n : ℕ) : ℤ :=
  (A053616.P15730649175569513944.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053616.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053767.P11805917997260904903

`A051349(n+1)-1`
-/

namespace A053767.P11805917997260904903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 (n + 1) - 1

end

end A053767.P11805917997260904903

noncomputable section

/-- A053767: Sum of first n composite numbers.

Offset 0, canonical program `A053767.P11805917997260904903`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051349, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053767 (n : ℕ) : ℤ :=
  A053767.P11805917997260904903.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051349, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053767.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A053786.P2010636210610092813

`A007918(A000583(n+1))`
-/

namespace A053786.P2010636210610092813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A000583 (n + 1)).toNat

end

end A053786.P2010636210610092813

noncomputable section

/-- A053786: a(n) = next prime after n^4.

Offset 1, canonical program `A053786.P2010636210610092813`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007918, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053786 (n : ℕ) : ℤ :=
  A053786.P2010636210610092813.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007918, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053786.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A054438.P5014567345859985492

`A038570(A038554(n))`
-/

namespace A054438.P5014567345859985492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038570 (A038554 n).toNat

end

end A054438.P5014567345859985492

noncomputable section

/-- A054438: Third derivative of n.

Offset 0, canonical program `A054438.P5014567345859985492`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054438 (n : ℕ) : ℤ :=
  A054438.P5014567345859985492.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054438.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054439.P8347525699778646254

`A038570(A038570(n))`
-/

namespace A054439.P8347525699778646254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038570 (A038570 n).toNat

end

end A054439.P8347525699778646254

noncomputable section

/-- A054439: Fourth derivative of n.

Offset 0, canonical program `A054439.P8347525699778646254`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038570, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A054439 (n : ℕ) : ℤ :=
  A054439.P8347525699778646254.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038570, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A054439.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A054643.P5809740023025136968

`A000040(eq[6, gcd(6, A036263(n+1))]+1)`
-/

namespace A054643.P5809740023025136968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 6 (A036263 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A054643.P5809740023025136968

noncomputable section

/-- A054643: Primes prime(n) such that prime(n) + prime(n+1) + prime(n+2) == 0 (mod 3).

Offset 1, canonical program `A054643.P5809740023025136968`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1463 terms. -/
def A054643 (n : ℕ) : ℤ :=
  A054643.P5809740023025136968.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1463 terms. -/
def A054643.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054850.P16333873997554975139

`A057428(n)+A045716(n+1)`
-/

namespace A054850.P16333873997554975139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A045716 (n + 1)

end

end A054850.P16333873997554975139

noncomputable section

/-- A054850: Binary logarithm of n-th primorial, rounded down to an integer.

Offset 1, canonical program `A054850.P16333873997554975139`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054850 (n : ℕ) : ℤ :=
  A054850.P16333873997554975139.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054850.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055048.P15109314482782834928

`A055040(n+1)/3`
-/

namespace A055048.P15109314482782834928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055040 (n + 1) : ℚ) / 3

end

end A055048.P15109314482782834928

noncomputable section

/-- A055048: Numbers of the form 9^i*(3*j+2).

Offset 1, canonical program `A055048.P15109314482782834928`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055048 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A055048.P15109314482782834928.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055048.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A055248.P3086643025084055619

`A140513(n)-A102363(n)`
-/

namespace A055248.P3086643025084055619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140513 n - A102363 n

end

end A055248.P3086643025084055619

noncomputable section

/-- A055248: Triangle of partial row sums of triangle A007318(n,m) (Pascal's triangle). Triangle A008949 read backwards. Riordan (1/(1-2x), x/(1-x)).

Offset 0, canonical program `A055248.P3086643025084055619`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055248 (n : ℕ) : ℤ :=
  A055248.P3086643025084055619.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055248.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055498.P9363392666146799462

`A007918(a(n-1)+a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A055498.P9363392666146799462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A007918 (a (n - 1) + a (n - 2)).toNat

end

end A055498.P9363392666146799462

noncomputable section

/-- A055498: a(0)=0, a(1)=1, a(n) = smallest prime >= a(n-1) + a(n-2).

Offset 0, canonical program `A055498.P9363392666146799462`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007918, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055498 (n : ℕ) : ℤ :=
  A055498.P9363392666146799462.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007918, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055498.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A055632.P7552695491409250947

`eq[∑{p}[n, #-1], A007918(∑{p}[n, #-1])]`
-/

namespace A055632.P7552695491409250947
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (∑ p ∈ Nat.primeFactors (f4 n), ((p : ℤ) - 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A055632.P7552695491409250947

noncomputable section

/-- A055632: Sum of totient function of primes dividing n is a prime.

Offset 1, canonical program `A055632.P7552695491409250947`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2999 terms. -/
def A055632 (n : ℕ) : ℤ :=
  (A055632.P7552695491409250947.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2999 terms. -/
def A055632.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056557.P17486820174551382648

`A003056(n-A000292(A056556(n)))`
-/

namespace A056557.P17486820174551382648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 ((n : ℤ) - A000292 (A056556 n).toNat).toNat

end

end A056557.P17486820174551382648

noncomputable section

/-- A056557: Second tetrahedral coordinate.

Offset 0, canonical program `A056557.P17486820174551382648`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056556, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056557 (n : ℕ) : ℤ :=
  A056557.P17486820174551382648.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056556, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056557.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A056607.P17725274653819121326

`A002110(n+1)/A048633(n+1)`
-/

namespace A056607.P17725274653819121326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002110 (n + 1) : ℚ) / (A048633 (n + 1) : ℚ)

end

end A056607.P17725274653819121326

noncomputable section

/-- A056607: a(n) is the n-th primorial divided by squarefree kernel of corresponding central binomial coefficient.

Offset 1, canonical program `A056607.P17725274653819121326`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048633, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056607 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A056607.P17725274653819121326.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048633, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056607.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A056610.P1504894740398831934

`A034386(n+1)/A048633(n+1)`
-/

namespace A056610.P1504894740398831934
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034386 (n + 1) : ℚ) / (A048633 (n + 1) : ℚ)

end

end A056610.P1504894740398831934

noncomputable section

/-- A056610: Quotient: squarefree kernel of lcm(1,..,n) (or of n!) divided by kernel of central binomial coefficient.

Offset 1, canonical program `A056610.P1504894740398831934`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048633, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056610 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A056610.P1504894740398831934.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048633, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056610.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A057037.P2208960147265636780

`val(A036561(2*n), 2)+1`
-/

namespace A057037.P2208960147265636780
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A036561 (2 * n)).toNat 2 + 1

end

end A057037.P2208960147265636780

noncomputable section

/-- A057037: Let R(i,j) be the rectangle with antidiagonals 1; 2,3; 4,5,6; ...; each k is an R(i(k),j(k)) and A057037(n)=j(2n-1).

Offset 1, canonical program `A057037.P2208960147265636780`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057037 (n : ℕ) : ℤ :=
  (A057037.P2208960147265636780.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057037.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057039.P10812322326582328204

`val(A036561(2*n+1), 2)+1`
-/

namespace A057039.P10812322326582328204
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A036561 (2 * n + 1)).toNat 2 + 1

end

end A057039.P10812322326582328204

noncomputable section

/-- A057039: Let R(i,j) be the rectangle with antidiagonals 1; 2,3; 4,5,6; ...; each k is an R(i(k),j(k)) and A057039(n)=j(2n).

Offset 1, canonical program `A057039.P10812322326582328204`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057039 (n : ℕ) : ℤ :=
  (A057039.P10812322326582328204.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057039.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057103.P18299417979130677149

`A001283(n+2)*A098352(n+1)`
-/

namespace A057103.P18299417979130677149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001283 (n + 2) * A098352 (n + 1)

end

end A057103.P18299417979130677149

noncomputable section

/-- A057103: Triangle of congrua: T(n,k) = 4*n*k(n^2-k^2) with n>k>0 and starting at T(2,1) = 24. A055096(n)^2 + a(n) is a square, as is A055096(n)^2 - a(n).

Offset 2, canonical program `A057103.P18299417979130677149`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057103 (n : ℕ) : ℤ :=
  A057103.P18299417979130677149.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057103.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057554.P2016188426634242539

`val(A036561(floor(n/2)), gcd(2, n)+1)`
-/

namespace A057554.P2016188426634242539
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A036561 ⌊(n : ℚ) / 2⌋.toNat).toNat (Nat.gcd 2 n + 1)

end

end A057554.P2016188426634242539

noncomputable section

/-- A057554: Lexicographic ordering of MxM, where M={0,1,2,...}.

Offset 1, canonical program `A057554.P2016188426634242539`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057554 (n : ℕ) : ℤ :=
  (A057554.P2016188426634242539.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057554.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A058256.P14492067050455526603

`A058254(n+2)/A058254(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A058256.P14492067050455526603
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058254 (n + 2) : ℚ) / (A058254 (n + 1) : ℚ)

end

end A058256.P14492067050455526603

noncomputable section

/-- A058256: a(n) = A058254(n+1)/A058254(n).

Offset 1, canonical program `A058256.P14492067050455526603`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A058254, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A058256 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A058256.P14492067050455526603.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A058254, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A058256.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A059018.P17827601340596542486

`A053839(10*n)`
-/

namespace A059018.P17827601340596542486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053839 (10 * n)

end

end A059018.P17827601340596542486

noncomputable section

/-- A059018: Write 10*n in base 4; a(n) = sum of digits mod 4.

Offset 0, canonical program `A059018.P17827601340596542486`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A059018 (n : ℕ) : ℤ :=
  A059018.P17827601340596542486.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A059018.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059143.P3220239693564370248

`A059131(3*n)+A059131(3*n+1)+A059131(3*n)`
-/

namespace A059143.P3220239693564370248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059131 (3 * n) + A059131 (3 * n + 1) + A059131 (3 * n)

end

end A059143.P3220239693564370248

noncomputable section

/-- A059143: A hierarchical sequence (W3{2,2}*c - see A059126).

Offset 0, canonical program `A059143.P3220239693564370248`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059131, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A059143 (n : ℕ) : ℤ :=
  A059143.P3220239693564370248.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059131, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A059143.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A059596.P11268705004907283405

`∑[∑[A059595(n)-a(n-1)]]` with `a(0)=1`
-/

namespace A059596.P11268705004907283405
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A059595 n - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059596.P11268705004907283405

noncomputable section

/-- A059596: Eighth column (m=7) of convolution triangle A059594(n,m).

Offset 0, canonical program `A059596.P11268705004907283405`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059596 (n : ℕ) : ℤ :=
  A059596.P11268705004907283405.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059596.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059786.P8715638951535635433

`A045344(A020900(n+1))`
-/

namespace A059786.P8715638951535635433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (A020900 (n + 1)).toNat

end

end A059786.P8715638951535635433

noncomputable section

/-- A059786: Smallest prime after 2*(n-th prime).

Offset 1, canonical program `A059786.P8715638951535635433`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5352 terms. -/
def A059786 (n : ℕ) : ℤ :=
  A059786.P8715638951535635433.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5352 terms. -/
def A059786.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059789.P935066988113703653

`A100484(n+1)-A059788(n+1)`
-/

namespace A059789.P935066988113703653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) - A059788 (n + 1)

end

end A059789.P935066988113703653

noncomputable section

/-- A059789: Distance of 2*prime(n) from previous prime.

Offset 0, canonical program `A059789.P935066988113703653`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059789 (n : ℕ) : ℤ :=
  A059789.P935066988113703653.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059789.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059981.P14273074610355838574

`Δ[a(A065855(n))+n]` with `a(0)=1`
-/

namespace A059981.P14273074610355838574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (A065855 n).toNat + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A059981.P14273074610355838574

noncomputable section

/-- A059981: Order of compositeness for the n-th composite number.

Offset 1, canonical program `A059981.P14273074610355838574`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059981 (n : ℕ) : ℤ :=
  A059981.P14273074610355838574.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059981.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060176.P5757415201403961736

`A104887(n+1)^A060175(n+1)`
-/

namespace A060176.P5757415201403961736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104887 (n + 1) : ℚ) ^ (A060175 (n + 1) : ℤ)

end

end A060176.P5757415201403961736

noncomputable section

/-- A060176: Square array A(n,k) = the largest power of k-th prime which divides n, read by falling antidiagonals.

Offset 1, canonical program `A060176.P5757415201403961736`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060176 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A060176.P5757415201403961736.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060176.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060192.P8871710138267274484

`A100479(n+1)-A060191(n)`
-/

namespace A060192.P8871710138267274484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100479 (n + 1) - A060191 n

end

end A060192.P8871710138267274484

noncomputable section

/-- A060192: Union_i p(4i+2), p(4i+3), where p(k) = k-th prime.

Offset 0, canonical program `A060192.P8871710138267274484`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060192 (n : ℕ) : ℤ :=
  A060192.P8871710138267274484.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060192.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060271.P16265143597692740306

`A001223(A020900(n+1))`
-/

namespace A060271.P16265143597692740306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A020900 (n + 1)).toNat

end

end A060271.P16265143597692740306

noncomputable section

/-- A060271: Difference between smallest prime following and largest prime preceding 2*(n-th prime).

Offset 1, canonical program `A060271.P16265143597692740306`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060271 (n : ℕ) : ℤ :=
  A060271.P16265143597692740306.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060271.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060330.P16314601193088272172

`p?[A051349(n+5)-A051349(n)]`
-/

namespace A060330.P16314601193088272172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 (n + 5) - A051349 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A060330.P16314601193088272172

noncomputable section

/-- A060330: Primes that are the sum of five consecutive composite numbers.

Offset 1, canonical program `A060330.P16314601193088272172`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 156 terms. -/
def A060330 (n : ℕ) : ℤ :=
  A060330.P16314601193088272172.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 156 terms. -/
def A060330.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060331.P1042131893594704924

`p?[A051349(n+6)-A051349(n)]`
-/

namespace A060331.P1042131893594704924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 (n + 6) - A051349 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A060331.P1042131893594704924

noncomputable section

/-- A060331: Primes the sum of six consecutive composite numbers.

Offset 1, canonical program `A060331.P1042131893594704924`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. -/
def A060331 (n : ℕ) : ℤ :=
  A060331.P1042131893594704924.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. -/
def A060331.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060332.P4845676544807101824

`p?[A051349(n+7)-A051349(n)]`
-/

namespace A060332.P4845676544807101824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 (n + 7) - A051349 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A060332.P4845676544807101824

noncomputable section

/-- A060332: Primes the sum of seven consecutive composite numbers.

Offset 1, canonical program `A060332.P4845676544807101824`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 947 terms. -/
def A060332 (n : ℕ) : ℤ :=
  A060332.P4845676544807101824.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 947 terms. -/
def A060332.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060333.P11127970401652711580

`p?[A051349(n+8)-A051349(n)]`
-/

namespace A060333.P11127970401652711580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 (n + 8) - A051349 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A060333.P11127970401652711580

noncomputable section

/-- A060333: Primes which are the sum of eight consecutive composite numbers.

Offset 1, canonical program `A060333.P11127970401652711580`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 961 terms. -/
def A060333 (n : ℕ) : ℤ :=
  A060333.P11127970401652711580.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 961 terms. -/
def A060333.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A061169.P7979574122928571271

`A060929(2*n)`
-/

namespace A061169.P7979574122928571271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060929 (2 * n)

end

end A061169.P7979574122928571271

noncomputable section

/-- A061169: Third column of Lucas bisection triangle (even part).

Offset 0, canonical program `A061169.P7979574122928571271`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 226 terms. -/
def A061169 (n : ℕ) : ℤ :=
  A061169.P7979574122928571271.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 226 terms. -/
def A061169.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061172.P4308119146751470611

`A060929(Δ[n²])`
-/

namespace A061172.P4308119146751470611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060929 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A061172.P4308119146751470611

noncomputable section

/-- A061172: Third column of Lucas bisection triangle (odd part).

Offset 0, canonical program `A061172.P4308119146751470611`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 226 terms. -/
def A061172 (n : ℕ) : ℤ :=
  A061172.P4308119146751470611.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 226 terms. -/
def A061172.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061305.P15133519490295530476

`A000045(A037918(n+1))`
-/

namespace A061305.P15133519490295530476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A037918 (n + 1)).toNat

end

end A061305.P15133519490295530476

noncomputable section

/-- A061305: Squarefree Fibonacci numbers.

Offset 1, canonical program `A061305.P15133519490295530476`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037918, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A061305 (n : ℕ) : ℤ :=
  A061305.P15133519490295530476.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037918, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A061305.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A061436.P8951258914533288784

`2*A081604(n)-A081603(n)`
-/

namespace A061436.P8951258914533288784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A081604 n - A081603 n

end

end A061436.P8951258914533288784

noncomputable section

/-- A061436: Number of steps for trajectory of n to reach 1 under the map that sends x -> x/3 if x mod 3 = 0, x -> x+3-(x mod 3) if x is not 0 mod 3 (for a 2nd time when n starts at 1).

Offset 1, canonical program `A061436.P8951258914533288784`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061436 (n : ℕ) : ℤ :=
  A061436.P8951258914533288784.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061436.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061802.P6001650494483680040

`∑[A011974(n+1)]`
-/

namespace A061802.P6001650494483680040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011974 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061802.P6001650494483680040

noncomputable section

/-- A061802: Sum of n-th row of triangle of primes: 2; 2 3 2; 2 3 5 3 2; 2 3 5 7 5 3 2; ...; where n-th row contains 2n+1 terms.

Offset 0, canonical program `A061802.P6001650494483680040`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061802 (n : ℕ) : ℤ :=
  A061802.P6001650494483680040.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061802.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061810.P419658108467470369

`∩[A059708(n+1), A016945(n)]`
-/

namespace A061810.P419658108467470369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061810.P419658108467470369

noncomputable section

/-- A061810: Multiples of 3 with all odd digits.

Offset 1, canonical program `A061810.P419658108467470369`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 884 terms. -/
def A061810 (n : ℕ) : ℤ :=
  (A061810.P419658108467470369.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 884 terms. -/
def A061810.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061811.P2011713102555568055

`filter[A014263(n+1), A079979(#)]`
-/

namespace A061811.P2011713102555568055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079979 (f1 j).toNat = 1) n)

end

end A061811.P2011713102555568055

noncomputable section

/-- A061811: Multiples of 3 with all even digits.

Offset 1, canonical program `A061811.P2011713102555568055`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 750 terms. -/
def A061811 (n : ℕ) : ℤ :=
  A061811.P2011713102555568055.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 750 terms. -/
def A061811.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061814.P793041439011287995

`A014263(A047220(n+2))`
-/

namespace A061814.P793041439011287995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014263 (A047220 (n + 2)).toNat

end

end A061814.P793041439011287995

noncomputable section

/-- A061814: Multiples of 4 containing only even digits.

Offset 0, canonical program `A061814.P793041439011287995`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6000 terms. -/
def A061814 (n : ℕ) : ℤ :=
  A061814.P793041439011287995.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6000 terms. -/
def A061814.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061825.P11667199288861640491

`∩[A059708(n+1), A147587(n)]`
-/

namespace A061825.P11667199288861640491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147587 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061825.P11667199288861640491

noncomputable section

/-- A061825: Multiples of 7 containing only odd digits.

Offset 1, canonical program `A061825.P11667199288861640491`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 736 terms. -/
def A061825 (n : ℕ) : ℤ :=
  (A061825.P11667199288861640491.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 736 terms. -/
def A061825.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061928.P7626325743492745551

`A014410(n+2)*A133196(n+1)`
-/

namespace A061928.P7626325743492745551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014410 (n + 2) * A133196 (n + 1)

end

end A061928.P7626325743492745551

noncomputable section

/-- A061928: Array T(n,m) = 1/beta(n+1,m+1) read by antidiagonals.

Offset 1, canonical program `A061928.P7626325743492745551`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061928 (n : ℕ) : ℤ :=
  A061928.P7626325743492745551.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061928.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062020.P11042138404562219295

`2*A014285(n+1)-(n+2)*A007504(n+1)`
-/

namespace A062020.P11042138404562219295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014285 (n + 1) - (n + 2 : ℤ) * A007504 (n + 1)

end

end A062020.P11042138404562219295

noncomputable section

/-- A062020: a(n) = Sum_{i=1..n} Sum_{j=1..i} (prime(i) - prime(j)).

Offset 1, canonical program `A062020.P11042138404562219295`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014285, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062020 (n : ℕ) : ℤ :=
  A062020.P11042138404562219295.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014285, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062020.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A062085.P13290386550748108036

`record[A007913(A014263(n+2))]`
-/

namespace A062085.P13290386550748108036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A014263 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062085.P13290386550748108036

noncomputable section

/-- A062085: Squarefree numbers with all even digits.

Offset 1, canonical program `A062085.P13290386550748108036`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1044 terms. -/
def A062085 (n : ℕ) : ℤ :=
  A062085.P13290386550748108036.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1044 terms. -/
def A062085.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062849.P14264521753656188479

`record[gcd(A147845(n+1)-1, lcm(3, n))]`
-/

namespace A062849.P14264521753656188479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A147845 (n + 1) - 1) (Nat.lcm 3 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062849.P14264521753656188479

noncomputable section

/-- A062849: When expressed in base 2 and then interpreted in base 8, is a multiple of the original number.

Offset 1, canonical program `A062849.P14264521753656188479`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 375 terms. -/
def A062849 (n : ℕ) : ℤ :=
  (A062849.P14264521753656188479.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 375 terms. -/
def A062849.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062957.P18008206236470764848

`A320059(n+1)-∑[2*n]`
-/

namespace A062957.P18008206236470764848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320059 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A062957.P18008206236470764848

noncomputable section

/-- A062957: a(n) = C(n^2) - C(n), where C(n) is Chowla's function (A048050).

Offset 1, canonical program `A062957.P18008206236470764848`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062957 (n : ℕ) : ℤ :=
  A062957.P18008206236470764848.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062957.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063766.P12128886107065429887

`A007918(A000400(n))`
-/

namespace A063766.P12128886107065429887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A000400 n).toNat

end

end A063766.P12128886107065429887

noncomputable section

/-- A063766: a(n) is the smallest prime >= 6^n.

Offset 0, canonical program `A063766.P12128886107065429887`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007918, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A063766 (n : ℕ) : ℤ :=
  A063766.P12128886107065429887.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007918, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A063766.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A063932.P11424779668290983480

`(A007917(n+2)+A007918(n+2))/2`
-/

namespace A063932.P11424779668290983480
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007917 (n + 2) + A007918 (n + 2) : ℚ) / 2

end

end A063932.P11424779668290983480

noncomputable section

/-- A063932: Average of largest prime less than or equal to n and smallest prime greater than or equal to n.

Offset 2, canonical program `A063932.P11424779668290983480`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007918, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A063932 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A063932.P11424779668290983480.a (n - 2))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007918, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A063932.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A064149.P17735911331487124559

`eq[A036263(n+2), A036263(n+1)]+1`
-/

namespace A064149.P17735911331487124559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036263 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036263 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A064149.P17735911331487124559

noncomputable section

/-- A064149: Indices of zeros of third differences of primes: Numbers k such that A036264(k) = 0.

Offset 1, canonical program `A064149.P17735911331487124559`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3071 terms. -/
def A064149 (n : ℕ) : ℤ :=
  (A064149.P17735911331487124559.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3071 terms. -/
def A064149.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064670.P6294794018354747296

`A166350(n+1)²*A060074(n)`
-/

namespace A064670.P6294794018354747296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166350 (n + 1) ^ 2 * A060074 n

end

end A064670.P6294794018354747296

noncomputable section

/-- A064670: Triangle T(n,k) (1 <= k <= n) where the first column (T(n,1)) is the sequence of secant numbers A000364.

Offset 1, canonical program `A064670.P6294794018354747296`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 781 terms. -/
def A064670 (n : ℕ) : ℤ :=
  A064670.P6294794018354747296.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 781 terms. -/
def A064670.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065005.P15636327632005820464

`A063656(lt[1, A004199(n+1)])`
-/

namespace A065005.P15636327632005820464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004199 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063656 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A065005.P15636327632005820464

noncomputable section

/-- A065005: Integers for which the periodic part of the continued fraction for the square root of n begins with 2.

Offset 1, canonical program `A065005.P15636327632005820464`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3326 terms. -/
def A065005 (n : ℕ) : ℤ :=
  A065005.P15636327632005820464.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3326 terms. -/
def A065005.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065049.P15235296619337629108

`p?[A026498(n)²*A007310(n+1)]`
-/

namespace A065049.P15235296619337629108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026498 n ^ 2 * A007310 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A065049.P15235296619337629108

noncomputable section

/-- A065049: Odd primes of incorrect parity: number of 1's in the binary representation of n (mod 2) == 1 - (n mod 3) (mod 2). Also called isolated primes.

Offset 1, canonical program `A065049.P15235296619337629108`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1322 terms. -/
def A065049 (n : ℕ) : ℤ :=
  A065049.P15235296619337629108.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1322 terms. -/
def A065049.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065722.P14518484525193958893

`p?[A036955(n+1)]`
-/

namespace A065722.P14518484525193958893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036955 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A065722.P14518484525193958893

noncomputable section

/-- A065722: Primes that when written in base 4, then reinterpreted in base 10, again give primes.

Offset 1, canonical program `A065722.P14518484525193958893`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3221 terms. -/
def A065722 (n : ℕ) : ℤ :=
  A065722.P14518484525193958893.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3221 terms. -/
def A065722.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065816.P6014750472889023508

`1+eq[0, A065796(n+1)]`
-/

namespace A065816.P6014750472889023508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065796 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A065816.P6014750472889023508

noncomputable section

/-- A065816: Numbers k such that the alternating sum of digits of k^2 is 0.

Offset 1, canonical program `A065816.P6014750472889023508`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 482 terms. -/
def A065816 (n : ℕ) : ℤ :=
  (A065816.P6014750472889023508.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 482 terms. -/
def A065816.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065878.P1041981114255732241

`comp[A049445(n+1)-1]+1`
-/

namespace A065878.P1041981114255732241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049445 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A065878.P1041981114255732241

noncomputable section

/-- A065878: Numbers which are not an integer multiple of their number of binary 1's.

Offset 1, canonical program `A065878.P1041981114255732241`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065878 (n : ℕ) : ℤ :=
  (A065878.P1041981114255732241.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065878.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065917.P2693913146856048653

`ceil(A343048(2*n+1)/2)`
-/

namespace A065917.P2693913146856048653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A343048 (2 * n + 1) : ℚ) / 2⌉

end

end A065917.P2693913146856048653

noncomputable section

/-- A065917: Boundaries of primorial intervals [1,3]; [3,9],[9,15]; [15,45], etc.

Offset 1, canonical program `A065917.P2693913146856048653`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2908 terms. -/
def A065917 (n : ℕ) : ℤ :=
  A065917.P2693913146856048653.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2908 terms. -/
def A065917.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065998.P3373505576399175454

`A084854(∏{e}[n+1, #+1]+∑[n])`
-/

namespace A065998.P3373505576399175454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084854 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) + ∑ j ∈ Finset.range (n + 1), f2 j)

end

end A065998.P3373505576399175454

noncomputable section

/-- A065998: Concatenate n and number of divisors of n.

Offset 1, canonical program `A065998.P3373505576399175454`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A065998 (n : ℕ) : ℤ :=
  A065998.P3373505576399175454.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A065998.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066298.P6599813564015518804

`(A178500(n+1)*A178500(A061601(n)))%(n+1)`
-/

namespace A066298.P6599813564015518804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A178500 (n + 1) * A178500 (A061601 n).toNat) (n + 1 : ℤ)

end

end A066298.P6599813564015518804

noncomputable section

/-- A066298: a(n) = googol (mod n).

Offset 1, canonical program `A066298.P6599813564015518804`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A066298 (n : ℕ) : ℤ :=
  A066298.P6599813564015518804.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A066298.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066909.P7344722265387193395

`A066838(n+1)%(n+1)`
-/

namespace A066909.P7344722265387193395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066838 (n + 1)) (n + 1 : ℤ)

end

end A066909.P7344722265387193395

noncomputable section

/-- A066909: (product of primes < n that do not divide n) (mod n).

Offset 1, canonical program `A066909.P7344722265387193395`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 255 terms. -/
def A066909 (n : ℕ) : ℤ :=
  A066909.P7344722265387193395.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 255 terms. -/
def A066909.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067002.P16545474126586428194

`A004982(n)/A001316(n)`
-/

namespace A067002.P16545474126586428194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004982 n : ℚ) / (A001316 n : ℚ)

end

end A067002.P16545474126586428194

noncomputable section

/-- A067002: Numerator of Sum_{k=0..n} 2^(k-2*n) * binomial(2*n-2*k,n-k) * binomial(n+k,n).

Offset 0, canonical program `A067002.P16545474126586428194`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A067002 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A067002.P16545474126586428194.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A067002.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067325.P15197000550133949116

`A067324(n+1)-2*A000108(n+1)`
-/

namespace A067325.P15197000550133949116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067324 (n + 1) - 2 * A000108 (n + 1)

end

end A067325.P15197000550133949116

noncomputable section

/-- A067325: Fourth column of triangle A067323.

Offset 0, canonical program `A067325.P15197000550133949116`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A067325 (n : ℕ) : ℤ :=
  A067325.P15197000550133949116.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A067325.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067673.P1166334490651037384

`∩[A067672(n+1)-1, A067672(n+1)]`
-/

namespace A067673.P1166334490651037384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067672 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067672 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067673.P1166334490651037384

noncomputable section

/-- A067673: Numbers k such that floor((3/2)^(k+3))/floor((3/2)^k) = (3/2)^3.

Offset 1, canonical program `A067673.P1166334490651037384`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3330 terms. -/
def A067673 (n : ℕ) : ℤ :=
  (A067673.P1166334490651037384.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3330 terms. -/
def A067673.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067792.P11711498623631889729

`A007918(A000203(n+1))`
-/

namespace A067792.P11711498623631889729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A000203 (n + 1)).toNat

end

end A067792.P11711498623631889729

noncomputable section

/-- A067792: a(n) is the least prime >= sigma(n).

Offset 1, canonical program `A067792.P11711498623631889729`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007918, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A067792 (n : ℕ) : ℤ :=
  A067792.P11711498623631889729.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007918, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A067792.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A067978.P743960902897900319

`A067977(n)+A067431(n)`
-/

namespace A067978.P743960902897900319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067977 n + A067431 n

end

end A067978.P743960902897900319

noncomputable section

/-- A067978: Convolution of Fibonacci F(n+1), n>=0, with F(n+10), n>=0.

Offset 0, canonical program `A067978.P743960902897900319`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 459 terms. -/
def A067978 (n : ℕ) : ℤ :=
  A067978.P743960902897900319.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 459 terms. -/
def A067978.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068363.P395449518968758804

`p?[A034961(n+1)+A031165(n+2)]`
-/

namespace A068363.P395449518968758804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (n + 1) + A031165 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A068363.P395449518968758804

noncomputable section

/-- A068363: Primes p such that there exists k such that p = prime(k) + prime(k+2) + prime(k+4).

Offset 1, canonical program `A068363.P395449518968758804`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2086 terms. -/
def A068363 (n : ℕ) : ℤ :=
  A068363.P395449518968758804.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2086 terms. -/
def A068363.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068670.P3265398196871764790

`∑[A097944(n+1)]-A097944(n+1)`
-/

namespace A068670.P3265398196871764790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097944 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A097944 (n + 1)

end

end A068670.P3265398196871764790

noncomputable section

/-- A068670: Number of digits in the concatenation of first n primes.

Offset 0, canonical program `A068670.P3265398196871764790`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068670 (n : ℕ) : ℤ :=
  A068670.P3265398196871764790.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068670.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000150.P13871546353888305123

`floor(A000912(n)/2)`
-/

namespace A000150.P13871546353888305123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000912 n : ℚ) / 2⌋

end

end A000150.P13871546353888305123

noncomputable section

/-- A000150: Number of dissections of an n-gon, rooted at an exterior edge, asymmetric with respect to that edge.

Offset 0, canonical program `A000150.P13871546353888305123`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A000150 (n : ℕ) : ℤ :=
  A000150.P13871546353888305123.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A000150.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000452.P15432004544007735088

`eq[2, A001316(A038148(n+1))]+1`
-/

namespace A000452.P15432004544007735088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A038148 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A000452.P15432004544007735088

noncomputable section

/-- A000452: The greedy sequence of integers which avoids 3-term geometric progressions.

Offset 1, canonical program `A000452.P15432004544007735088`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7206 terms. -/
def A000452 (n : ℕ) : ℤ :=
  (A000452.P15432004544007735088.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7206 terms. -/
def A000452.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000520.P740625616792287926

`A077429(n+1)-A004216(n+1)`
-/

namespace A000520.P740625616792287926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077429 (n + 1) - A004216 (n + 1)

end

end A000520.P740625616792287926

noncomputable section

/-- A000520: Nearest integer to log_10(n).

Offset 1, canonical program `A000520.P740625616792287926`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000520 (n : ℕ) : ℤ :=
  A000520.P740625616792287926.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000520.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000575.P241324822496640098

`∑[A064058(n+1)]-A062988(n)`
-/

namespace A000575.P241324822496640098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064058 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A062988 n

end

end A000575.P241324822496640098

noncomputable section

/-- A000575: Tenth column of quintinomial coefficients.

Offset 0, canonical program `A000575.P241324822496640098`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A000575 (n : ℕ) : ℤ :=
  A000575.P241324822496640098.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A000575.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001307.P15031898288533116587

`∑[A358206(n)]`
-/

namespace A001307.P15031898288533116587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001307.P15031898288533116587

noncomputable section

/-- A001307: Expansion of 1/(1-x)^2/(1-x^2)/(1-x^4)/(1-x^10)/(1-x^20).

Offset 0, canonical program `A001307.P15031898288533116587`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4496 terms. -/
def A001307 (n : ℕ) : ℤ :=
  A001307.P15031898288533116587.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4496 terms. -/
def A001307.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001742.P4076269078881375086

`A202267(A248910(n+1)+1)`
-/

namespace A001742.P4076269078881375086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202267 (A248910 (n + 1) + 1).toNat

end

end A001742.P4076269078881375086

noncomputable section

/-- A001742: Numbers whose digits contain no loops (version 2).

Offset 1, canonical program `A001742.P4076269078881375086`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4298 terms. -/
def A001742 (n : ℕ) : ℤ :=
  A001742.P4076269078881375086.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4298 terms. -/
def A001742.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A002215.P493053246518222214

`A055879(n+1)+A039919(A065033(n))`
-/

namespace A002215.P493053246518222214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055879 (n + 1) + A039919 (A065033 n).toNat

end

end A002215.P493053246518222214

noncomputable section

/-- A002215: Number of polyhexes with n hexagons, having reflectional symmetry (see Harary and Read for precise definition).

Offset 1, canonical program `A002215.P493053246518222214`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 296 terms. -/
def A002215 (n : ℕ) : ℤ :=
  A002215.P493053246518222214.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 296 terms. -/
def A002215.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A002246.P240694436588019048

`A000007(n)+2*A140434(n+1)`
-/

namespace A002246.P240694436588019048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + 2 * A140434 (n + 1)

end

end A002246.P240694436588019048

noncomputable section

/-- A002246: a(1) = 3; for n > 1, a(n) = 4*phi(n); given a rational number r = p/q, where q>0, (p,q)=1, define its height to be max{|p|,q}; then a(n) = number of rational numbers of height n.

Offset 1, canonical program `A002246.P240694436588019048`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A002246 (n : ℕ) : ℤ :=
  A002246.P240694436588019048.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A002246.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A002596.P3328782122912407983

`A182122(2*n)/A001316(n)`
-/

namespace A002596.P3328782122912407983
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182122 (2 * n) : ℚ) / (A001316 n : ℚ)

end

end A002596.P3328782122912407983

noncomputable section

/-- A002596: Numerators in expansion of sqrt(1+x). Absolute values give numerators in expansion of sqrt(1-x).

Offset 0, canonical program `A002596.P3328782122912407983`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A002596 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A002596.P3328782122912407983.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A002596.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A002622.P588810453114800994

`a(n-1)+A001401(n)` with `a(0)=1`
-/

namespace A002622.P588810453114800994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A001401 n

end

end A002622.P588810453114800994

noncomputable section

/-- A002622: Number of partitions of at most n into at most 5 parts.

Offset 0, canonical program `A002622.P588810453114800994`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001401, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A002622 (n : ℕ) : ℤ :=
  A002622.P588810453114800994.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001401, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A002622.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A003082.P8532452631219291351

`A090491(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A003082.P8532452631219291351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  A090491 n + a (n - 3)

end

end A003082.P8532452631219291351

noncomputable section

/-- A003082: Number of multigraphs with 4 nodes and n edges.

Offset 0, canonical program `A003082.P8532452631219291351`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1098 terms. -/
def A003082 (n : ℕ) : ℤ :=
  A003082.P8532452631219291351.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1098 terms. -/
def A003082.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003144.P14581909281585168490

`lt[0, A278045(n)]+1`
-/

namespace A003144.P14581909281585168490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278045 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A003144.P14581909281585168490

noncomputable section

/-- A003144: Positions of letter a in the tribonacci word abacabaabacababac... generated by a->ab, b->ac, c->a (cf. A092782).

Offset 1, canonical program `A003144.P14581909281585168490`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003144 (n : ℕ) : ℤ :=
  (A003144.P14581909281585168490.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003144.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003256.P16678740995948322813

`A003623(n+1)-A003247(A000201(n+1))`
-/

namespace A003256.P16678740995948322813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003623 (n + 1) - A003247 (A000201 (n + 1)).toNat

end

end A003256.P16678740995948322813

noncomputable section

/-- A003256: a(n) is the number m such that A242094(m) = A001950(n).

Offset 1, canonical program `A003256.P16678740995948322813`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6180 terms. -/
def A003256 (n : ℕ) : ℤ :=
  A003256.P16678740995948322813.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6180 terms. -/
def A003256.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003402.P1085761914811690435

`A001401(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A003402.P1085761914811690435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A001401 n + a (n - 3)

end

end A003402.P1085761914811690435

noncomputable section

/-- A003402: G.f.: 1/((1-x)*(1-x^2)*(1-x^3)^2*(1-x^4)*(1-x^5)).

Offset 0, canonical program `A003402.P1085761914811690435`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003402 (n : ℕ) : ℤ :=
  A003402.P1085761914811690435.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003402.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003589.P17999501955238363741

`A276397(n)+2`
-/

namespace A003589.P17999501955238363741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276397 n + 2

end

end A003589.P17999501955238363741

noncomputable section

/-- A003589: a(n) has the property that the sequence b(n) = number of 2's between successive 3's is the same as the original sequence.

Offset 0, canonical program `A003589.P17999501955238363741`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003589 (n : ℕ) : ℤ :=
  A003589.P17999501955238363741.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003589.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A004117.P2862625931059711381

`A004987(n)/A125824(n)`
-/

namespace A004117.P2862625931059711381
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004987 n : ℚ) / (A125824 n : ℚ)

end

end A004117.P2862625931059711381

noncomputable section

/-- A004117: Numerators of expansion of (1-x)^(-1/3).

Offset 0, canonical program `A004117.P2862625931059711381`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A004117 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A004117.P2862625931059711381.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A004117.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004735.P16541191645354368629

`A004731(n+3)/gcd(2, n)`
-/

namespace A004735.P16541191645354368629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004731 (n + 3) : ℚ) / (Nat.gcd 2 n : ℚ)

end

end A004735.P16541191645354368629

noncomputable section

/-- A004735: Denominator of average distance traveled by n-dimensional fly.

Offset 1, canonical program `A004735.P16541191645354368629`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A004735 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A004735.P16541191645354368629.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A004735.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004764.P5836168721162617501

`lt[A090996(xor(n, floor(n/4))), 3]`
-/

namespace A004764.P5836168721162617501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (Int.xor (n : ℤ) ⌊(n : ℚ) / 4⌋).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004764.P5836168721162617501

noncomputable section

/-- A004764: Numbers whose binary expansion does not begin 110.

Offset 1, canonical program `A004764.P5836168721162617501`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004764 (n : ℕ) : ℤ :=
  (A004764.P5836168721162617501.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004764.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005559.P6024995097356233494

`A005817(n+1)*A008619(n)`
-/

namespace A005559.P6024995097356233494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005817 (n + 1) * A008619 n

end

end A005559.P6024995097356233494

noncomputable section

/-- A005559: Number of walks on square lattice. Column y=1 of A052174.

Offset 1, canonical program `A005559.P6024995097356233494`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A005559 (n : ℕ) : ℤ :=
  A005559.P6024995097356233494.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A005559.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005590.P3379431448846241054

`A145865(A122155(n))`
-/

namespace A005590.P3379431448846241054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145865 (A122155 n).toNat

end

end A005590.P3379431448846241054

noncomputable section

/-- A005590: a(0) = 0, a(1) = 1, a(2n) = a(n), a(2n+1) = a(n+1) - a(n).

Offset 0, canonical program `A005590.P3379431448846241054`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A005590 (n : ℕ) : ℤ :=
  A005590.P3379431448846241054.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A005590.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005929.P17002143773609211712

`2*A045833(A091685(n))`
-/

namespace A005929.P17002143773609211712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A045833 (A091685 n).toNat

end

end A005929.P17002143773609211712

noncomputable section

/-- A005929: Theta series of hexagonal net with respect to midpoint of edge.

Offset 0, canonical program `A005929.P17002143773609211712`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005929 (n : ℕ) : ℤ :=
  A005929.P17002143773609211712.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005929.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006073.P326677615052813534

`A006049(eq[1, Δ[A006049(n+1)]]+1)`
-/

namespace A006073.P326677615052813534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006049 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A006073.P326677615052813534

noncomputable section

/-- A006073: Numbers k such that k, k+1 and k+2 all have the same number of distinct prime divisors.

Offset 1, canonical program `A006073.P326677615052813534`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3156 terms. -/
def A006073 (n : ℕ) : ℤ :=
  A006073.P326677615052813534.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3156 terms. -/
def A006073.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006320.P4908016192536168326

`Δ[Δ[A006318(n)]]-A006318(n+1)`
-/

namespace A006320.P4908016192536168326
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006318 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A006318 (n + 1)

end

end A006320.P4908016192536168326

noncomputable section

/-- A006320: Royal paths in a lattice.

Offset 0, canonical program `A006320.P4908016192536168326`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A006320 (n : ℕ) : ℤ :=
  A006320.P4908016192536168326.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A006320.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006590.P12269573465856499266

`A006218(n)+n+1`
-/

namespace A006590.P12269573465856499266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n + (n + 1 : ℤ)

end

end A006590.P12269573465856499266

noncomputable section

/-- A006590: a(n) = Sum_{k=1..n} ceiling(n/k).

Offset 1, canonical program `A006590.P12269573465856499266`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006590 (n : ℕ) : ℤ :=
  A006590.P12269573465856499266.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006590.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A007491.P2456272852996360084

`A007918(A000290(n+1))`
-/

namespace A007491.P2456272852996360084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A000290 (n + 1)).toNat

end

end A007491.P2456272852996360084

noncomputable section

/-- A007491: Smallest prime > n^2.

Offset 1, canonical program `A007491.P2456272852996360084`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007918, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A007491 (n : ℕ) : ℤ :=
  A007491.P2456272852996360084.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007918, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A007491.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A007843.P17090837649853726909

`A100661(A028310(n))+n`
-/

namespace A007843.P17090837649853726909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100661 (A028310 n).toNat + (n : ℤ)

end

end A007843.P17090837649853726909

noncomputable section

/-- A007843: Least positive integer k for which 2^n divides k!.

Offset 0, canonical program `A007843.P17090837649853726909`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007843 (n : ℕ) : ℤ :=
  A007843.P17090837649853726909.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007843.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007883.P7406616137818884317

`A007884(or(3, 12*n+8))+A007880(n)`
-/

namespace A007883.P7406616137818884317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007884 (Nat.lor 3 (12 * n + 8)) + A007880 n

end

end A007883.P7406616137818884317

noncomputable section

/-- A007883: Westminster chimes at 15-minute intervals (2).

Offset 1, canonical program `A007883.P7406616137818884317`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 833 terms. -/
def A007883 (n : ℕ) : ℤ :=
  A007883.P7406616137818884317.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 833 terms. -/
def A007883.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007956.P11894205286673783912

`A007955(n+1)/(n+1)`
-/

namespace A007956.P11894205286673783912
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007955 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A007956.P11894205286673783912

noncomputable section

/-- A007956: Product of the proper divisors of n.

Offset 1, canonical program `A007956.P11894205286673783912`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007956 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A007956.P11894205286673783912.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007956.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A007987.P10557796786755274729

`Δ[(A025565(n+1)-A002426(n))²]`
-/

namespace A007987.P10557796786755274729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025565 (n + 1) - A002426 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007987.P10557796786755274729

noncomputable section

/-- A007987: Number of irreducible words of length 2n in the free group with generators x,y such that the total degree of x and the total degree of y both equal zero.

Offset 0, canonical program `A007987.P10557796786755274729`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. -/
def A007987 (n : ℕ) : ℤ :=
  A007987.P10557796786755274729.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. -/
def A007987.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008441.P257068461411472066

`A002654(4*n+1)`
-/

namespace A008441.P257068461411472066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (4 * n + 1)

end

end A008441.P257068461411472066

noncomputable section

/-- A008441: Number of ordered ways of writing n as the sum of 2 triangular numbers.

Offset 0, canonical program `A008441.P257068461411472066`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002654, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A008441 (n : ℕ) : ℤ :=
  A008441.P257068461411472066.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002654, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A008441.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A008442.P2737165964375719306

`A002654(2*A004525(n)+1)`
-/

namespace A008442.P2737165964375719306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (2 * A004525 n + 1).toNat

end

end A008442.P2737165964375719306

noncomputable section

/-- A008442: Expansion of Jacobi theta constant (theta_2(2z))^2/4.

Offset 1, canonical program `A008442.P2737165964375719306`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008442 (n : ℕ) : ℤ :=
  A008442.P2737165964375719306.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008442.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008471.P11725137829217695718

`eq[3, A038800(n)]`
-/

namespace A008471.P11725137829217695718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038800 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A008471.P11725137829217695718

noncomputable section

/-- A008471: Exactly 3 out of 10m+1, 10m+3, 10m+7, 10m+9 are primes.

Offset 1, canonical program `A008471.P11725137829217695718`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 371 terms. -/
def A008471 (n : ℕ) : ℤ :=
  (A008471.P11725137829217695718.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 371 terms. -/
def A008471.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008493.P15021164243418089667

`A000582(n+9)+A008503(n)-A008492(n)`
-/

namespace A008493.P15021164243418089667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (n + 9) + (A008503 n - A008492 n)

end

end A008493.P15021164243418089667

noncomputable section

/-- A008493: Expansion of (1-x^11) / (1-x)^11.

Offset 0, canonical program `A008493.P15021164243418089667`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008493 (n : ℕ) : ℤ :=
  A008493.P15021164243418089667.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008493.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008644.P10444612600920938958

`A088932(floor(n/2))`
-/

namespace A008644.P10444612600920938958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088932 ⌊(n : ℚ) / 2⌋.toNat

end

end A008644.P10444612600920938958

noncomputable section

/-- A008644: Molien series of 5 X 5 upper triangular matrices over GF( 2 ).

Offset 0, canonical program `A008644.P10444612600920938958`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008644 (n : ℕ) : ℤ :=
  A008644.P10444612600920938958.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008644.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A011670.P18416274354301599814

`A011666(5*(n+2))`
-/

namespace A011670.P18416274354301599814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011666 (5 * (n + 2))

end

end A011670.P18416274354301599814

noncomputable section

/-- A011670: A binary m-sequence: expansion of reciprocal of x^6+x^4+x^3+x+1.

Offset 0, canonical program `A011670.P18416274354301599814`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1998 terms. -/
def A011670 (n : ℕ) : ℤ :=
  A011670.P18416274354301599814.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1998 terms. -/
def A011670.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A011684.P11602949521021621259

`A011676(3*(n+3))`
-/

namespace A011684.P11602949521021621259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011676 (3 * (n + 3))

end

end A011684.P11602949521021621259

noncomputable section

/-- A011684: A binary m-sequence: expansion of reciprocal of x^7+x^4+x^3+x^2+1.

Offset 0, canonical program `A011684.P11602949521021621259`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3331 terms. -/
def A011684 (n : ℕ) : ℤ :=
  A011684.P11602949521021621259.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3331 terms. -/
def A011684.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A013929.P16481699796765016237

`lt[1, A005361(n+1)]+1`
-/

namespace A013929.P16481699796765016237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A013929.P16481699796765016237

noncomputable section

/-- A013929: Numbers that are not squarefree. Numbers that are divisible by a square greater than 1. The complement of A005117.

Offset 1, canonical program `A013929.P16481699796765016237`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A013929 (n : ℕ) : ℤ :=
  (A013929.P16481699796765016237.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A013929.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A014238.P784091901909873668

`A008578(n+1)-A002808(n+1)`
-/

namespace A014238.P784091901909873668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) - A002808 (n + 1)

end

end A014238.P784091901909873668

noncomputable section

/-- A014238: a(n) = (n-th number that is 1 or prime) - (n-th composite number).

Offset 1, canonical program `A014238.P784091901909873668`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014238 (n : ℕ) : ℤ :=
  A014238.P784091901909873668.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014238.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014421.P10055746152506597456

`A007318(A268231(n+1))`
-/

namespace A014421.P10055746152506597456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A268231 (n + 1)).toNat

end

end A014421.P10055746152506597456

noncomputable section

/-- A014421: Odd elements in Pascal's triangle.

Offset 0, canonical program `A014421.P10055746152506597456`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2301 terms. -/
def A014421 (n : ℕ) : ℤ :=
  A014421.P10055746152506597456.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2301 terms. -/
def A014421.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014428.P4888485289418456815

`A007318(A268232(n+1))`
-/

namespace A014428.P4888485289418456815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A268232 (n + 1)).toNat

end

end A014428.P4888485289418456815

noncomputable section

/-- A014428: Even elements in Pascal's triangle.

Offset 1, canonical program `A014428.P4888485289418456815`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7852 terms. -/
def A014428 (n : ℕ) : ℤ :=
  A014428.P4888485289418456815.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7852 terms. -/
def A014428.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014432.P9142585396779688428

`3*A025237((n-1)%(a(n-1)+1))` with `a(0)=1`
-/

namespace A014432.P9142585396779688428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * A025237 (Int.tmod ((n : ℤ) - 1) (a (n - 1) + 1)).toNat

end

end A014432.P9142585396779688428

noncomputable section

/-- A014432: a(n) = Sum_{i=1..n-1} a(i)*a(n-1-i), with a(0) = 1, a(1) = 3.

Offset 0, canonical program `A014432.P9142585396779688428`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A014432 (n : ℕ) : ℤ :=
  A014432.P9142585396779688428.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A014432.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014683.P4274130993241959458

`n+1+A010051(n+1)`
-/

namespace A014683.P4274130993241959458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A010051 (n + 1)

end

end A014683.P4274130993241959458

noncomputable section

/-- A014683: In the sequence of positive integers add 1 to each prime number.

Offset 1, canonical program `A014683.P4274130993241959458`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014683 (n : ℕ) : ℤ :=
  A014683.P4274130993241959458.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014683.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A015618.P16480477383865043174

`∑[A000741(n+2)-n]`
-/

namespace A015618.P16480477383865043174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000741 (n + 2) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015618.P16480477383865043174

noncomputable section

/-- A015618: Number of triples of different integers from [ 2,n ] with no global factor.

Offset 2, canonical program `A015618.P16480477383865043174`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5829 terms. -/
def A015618 (n : ℕ) : ℤ :=
  A015618.P16480477383865043174.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5829 terms. -/
def A015618.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018124.P7269445987187065060

`A018118(2*n)`
-/

namespace A018124.P7269445987187065060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018118 (2 * n)

end

end A018124.P7269445987187065060

noncomputable section

/-- A018124: Powers of fifth root of 4 rounded to nearest integer.

Offset 0, canonical program `A018124.P7269445987187065060`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 831 terms. -/
def A018124 (n : ℕ) : ℤ :=
  A018124.P7269445987187065060.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 831 terms. -/
def A018124.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018136.P3960294426787492481

`A018118(3*n)`
-/

namespace A018136.P3960294426787492481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018118 (3 * n)

end

end A018136.P3960294426787492481

noncomputable section

/-- A018136: Powers of fifth root of 8 rounded to nearest integer.

Offset 0, canonical program `A018136.P3960294426787492481`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 554 terms. -/
def A018136 (n : ℕ) : ℤ :=
  A018136.P3960294426787492481.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 554 terms. -/
def A018136.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018150.P18437596113459788837

`A018152(n)-A011558(n)`
-/

namespace A018150.P18437596113459788837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018152 n - A011558 n

end

end A018150.P18437596113459788837

noncomputable section

/-- A018150: Powers of fifth root of 13 rounded down.

Offset 0, canonical program `A018150.P18437596113459788837`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 449 terms. -/
def A018150 (n : ℕ) : ℤ :=
  A018150.P18437596113459788837.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 449 terms. -/
def A018150.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018180.P526590853399527022

`A018182(n)-A011558(n)`
-/

namespace A018180.P526590853399527022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018182 n - A011558 n

end

end A018180.P526590853399527022

noncomputable section

/-- A018180: Powers of fifth root of 23 rounded down.

Offset 0, canonical program `A018180.P526590853399527022`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 368 terms. -/
def A018180 (n : ℕ) : ℤ :=
  A018180.P526590853399527022.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 368 terms. -/
def A018180.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A018212.P17984279171058020025

`∑[A018211(n)]`
-/

namespace A018212.P17984279171058020025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018211 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A018212.P17984279171058020025

noncomputable section

/-- A018212: Alkane (or paraffin) numbers l(11,n).

Offset 0, canonical program `A018212.P17984279171058020025`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A018212 (n : ℕ) : ℤ :=
  A018212.P17984279171058020025.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A018212.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A019460.P18320416044288335793

`A081123(n)+A019463(n)`
-/

namespace A019460.P18320416044288335793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081123 n + A019463 n

end

end A019460.P18320416044288335793

noncomputable section

/-- A019460: Add 1, multiply by 1, add 2, multiply by 2, etc., start with 2.

Offset 0, canonical program `A019460.P18320416044288335793`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A019460 (n : ℕ) : ℤ :=
  A019460.P18320416044288335793.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A019460.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A019468.P325024408186836971

`3*(A111020(n+1)+1)`
-/

namespace A019468.P325024408186836971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A111020 (n + 1) + 1)

end

end A019468.P325024408186836971

noncomputable section

/-- A019468: (n-2)-th Catalan number is congruent to 2n/3 mod n.

Offset 1, canonical program `A019468.P325024408186836971`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 769 terms. -/
def A019468 (n : ℕ) : ℤ :=
  A019468.P325024408186836971.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 769 terms. -/
def A019468.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A019524.P15401352265773152237

`A007908(n+1)*(1+10^A058183(n+1))`
-/

namespace A019524.P15401352265773152237
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007908 (n + 1) : ℚ) * (1 + (10 : ℚ) ^ (A058183 (n + 1) : ℤ))

end

end A019524.P15401352265773152237

noncomputable section

/-- A019524: Duplicate terms of A007908.

Offset 1, canonical program `A019524.P15401352265773152237`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A058183, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A019524 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A019524.P15401352265773152237.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A058183, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A019524.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A019588.P12494804011733207949

`A194733(n+1)+1`
-/

namespace A019588.P12494804011733207949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194733 (n + 1) + 1

end

end A019588.P12494804011733207949

noncomputable section

/-- A019588: The right budding sequence: # of i such that 0 < i <= n and {tau*n} <= {tau*i} < 1, where {} is fractional part.

Offset 1, canonical program `A019588.P12494804011733207949`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A194733, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A019588 (n : ℕ) : ℤ :=
  A019588.P12494804011733207949.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A194733, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A019588.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A020519.P6741495826422938013

`A060885(A000079(n))`
-/

namespace A020519.P6741495826422938013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060885 (A000079 n).toNat

end

end A020519.P6741495826422938013

noncomputable section

/-- A020519: 11th cyclotomic polynomial evaluated at powers of 2.

Offset 0, canonical program `A020519.P6741495826422938013`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060885, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A020519 (n : ℕ) : ℤ :=
  A020519.P6741495826422938013.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060885, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A020519.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A020966.P16300765011735899529

`A020967(n+1)-Δ[n²]`
-/

namespace A020966.P16300765011735899529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020967 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A020966.P16300765011735899529

noncomputable section

/-- A020966: a(n) = Sum_{k>=1} floor(n*sqrt(2)^(2-k)).

Offset 1, canonical program `A020966.P16300765011735899529`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020966 (n : ℕ) : ℤ :=
  A020966.P16300765011735899529.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020966.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022293.P16227146819227828350

`A022292(n+1)/2`
-/

namespace A022293.P16227146819227828350
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022292 (n + 1) : ℚ) / 2

end

end A022293.P16227146819227828350

noncomputable section

/-- A022293: Sequence A022292 divided by 2.

Offset 0, canonical program `A022293.P16227146819227828350`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A022293 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A022293.P16227146819227828350.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A022293.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022335.P640562549474577524

`∑[A066344(A028310(n))]-(∑[n]-n)`
-/

namespace A022335.P640562549474577524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066344 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (n : ℤ))

end

end A022335.P640562549474577524

noncomputable section

/-- A022335: Index of 2^n within sequence of numbers of form 2^i * 5^j.

Offset 0, canonical program `A022335.P640562549474577524`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022335 (n : ℕ) : ℤ :=
  A022335.P640562549474577524.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022335.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022449.P12153620208137609378

`A002808(A008578(n+1))`
-/

namespace A022449.P12153620208137609378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A008578 (n + 1)).toNat

end

end A022449.P12153620208137609378

noncomputable section

/-- A022449: c(p(n)) where p(k) is k-th prime including p(1)=1 and c(k) is k-th composite number.

Offset 1, canonical program `A022449.P12153620208137609378`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A008578, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A022449 (n : ℕ) : ℤ :=
  A022449.P12153620208137609378.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A008578, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A022449.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A022798.P9273272214686499992

`A002808(n+1)+A008578(n+1)`
-/

namespace A022798.P9273272214686499992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) + A008578 (n + 1)

end

end A022798.P9273272214686499992

noncomputable section

/-- A022798: a(n) = P(n) + c(n), where P(1) = 1, P(n) = (n-1)-st prime for n >= 2, c(n) = n-th number not in sequence P.

Offset 1, canonical program `A022798.P9273272214686499992`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A008578, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A022798 (n : ℕ) : ℤ :=
  A022798.P9273272214686499992.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A008578, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A022798.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A023210.P1819903065177715597

`p?[2*A059325(n+1)-1]`
-/

namespace A023210.P1819903065177715597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A059325 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023210.P1819903065177715597

noncomputable section

/-- A023210: Primes p such that 3*p + 8 is also prime.

Offset 1, canonical program `A023210.P1819903065177715597`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1760 terms. -/
def A023210 (n : ℕ) : ℤ :=
  A023210.P1819903065177715597.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1760 terms. -/
def A023210.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023215.P13763397625159322075

`p?[2*A005124(n+1)-1]`
-/

namespace A023215.P13763397625159322075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005124 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023215.P13763397625159322075

noncomputable section

/-- A023215: Primes p such that 4*p + 7 is also prime.

Offset 1, canonical program `A023215.P13763397625159322075`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1491 terms. -/
def A023215 (n : ℕ) : ℤ :=
  A023215.P13763397625159322075.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1491 terms. -/
def A023215.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023221.P15927786172642082817

`p?[A059325(n+1)]`
-/

namespace A023221.P15927786172642082817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059325 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023221.P15927786172642082817

noncomputable section

/-- A023221: Primes p such that 6*p + 5 is also prime.

Offset 1, canonical program `A023221.P15927786172642082817`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1254 terms. -/
def A023221 (n : ℕ) : ℤ :=
  A023221.P15927786172642082817.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1254 terms. -/
def A023221.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023223.P4921598859195295087

`p?[A105772(n+1)]`
-/

namespace A023223.P4921598859195295087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105772 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023223.P4921598859195295087

noncomputable section

/-- A023223: Primes p such that 7*p + 2 is also prime.

Offset 1, canonical program `A023223.P4921598859195295087`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1305 terms. -/
def A023223 (n : ℕ) : ℤ :=
  A023223.P4921598859195295087.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1305 terms. -/
def A023223.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023225.P1273185913112020908

`floor(A136072(n+1)/7)`
-/

namespace A023225.P1273185913112020908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A136072 (n + 1) : ℚ) / 7⌋

end

end A023225.P1273185913112020908

noncomputable section

/-- A023225: Primes p such that 7*p + 6 is also prime.

Offset 1, canonical program `A023225.P1273185913112020908`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023225 (n : ℕ) : ℤ :=
  A023225.P1273185913112020908.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023225.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023227.P17859908620912783993

`p?[A111250(n+1)]`
-/

namespace A023227.P17859908620912783993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111250 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023227.P17859908620912783993

noncomputable section

/-- A023227: Primes p such that 7*p + 10 is also prime.

Offset 1, canonical program `A023227.P17859908620912783993`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1787 terms. -/
def A023227 (n : ℕ) : ℤ :=
  A023227.P17859908620912783993.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1787 terms. -/
def A023227.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023229.P10386872787772600893

`p?[A005124(n+1)]`
-/

namespace A023229.P10386872787772600893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005124 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023229.P10386872787772600893

noncomputable section

/-- A023229: Primes p such that 8*p + 3 is also prime.

Offset 1, canonical program `A023229.P10386872787772600893`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1369 terms. -/
def A023229 (n : ℕ) : ℤ :=
  A023229.P10386872787772600893.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1369 terms. -/
def A023229.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023244.P3210221976177104251

`p?[A319702(A023206(n+1))-5]`
-/

namespace A023244.P3210221976177104251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319702 (A023206 (n + 1)).toNat - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023244.P3210221976177104251

noncomputable section

/-- A023244: Primes that remain prime through 2 iterations of the function f(x) = 2x + 7.

Offset 1, canonical program `A023244.P3210221976177104251`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 204 terms. -/
def A023244 (n : ℕ) : ℤ :=
  A023244.P3210221976177104251.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 204 terms. -/
def A023244.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023515.P16950231091882071862

`A000040(n+1)*A008578(n+1)-1`
-/

namespace A023515.P16950231091882071862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A008578 (n + 1) - 1

end

end A023515.P16950231091882071862

noncomputable section

/-- A023515: a(n) = prime(n)*prime(n-1) - 1.

Offset 1, canonical program `A023515.P16950231091882071862`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023515 (n : ℕ) : ℤ :=
  A023515.P16950231091882071862.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023515.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023535.P15152860963191410787

`A023562(n+1)-a(n-1)` with `a(0)=0`
-/

namespace A023535.P15152860963191410787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A023562 (n + 1) - a (n - 1)

end

end A023535.P15152860963191410787

noncomputable section

/-- A023535: Convolution of natural numbers with A023531.

Offset 1, canonical program `A023535.P15152860963191410787`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023535 (n : ℕ) : ℤ :=
  A023535.P15152860963191410787.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023535.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023539.P1591536743945207454

`∑[∑[A002808(n+1)]]`
-/

namespace A023539.P1591536743945207454
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023539.P1591536743945207454

noncomputable section

/-- A023539: Convolution of natural numbers with composite numbers.

Offset 1, canonical program `A023539.P1591536743945207454`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023539 (n : ℕ) : ℤ :=
  A023539.P1591536743945207454.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023539.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023609.P18385611758150687772

`A002808(n+1)+a(n-1)+a(n-2)` with `a(0)=4, a(1)=10`
-/

namespace A023609.P18385611758150687772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 10] fun n a =>
  A002808 (n + 1) + (a (n - 1) + a (n - 2))

end

end A023609.P18385611758150687772

noncomputable section

/-- A023609: Convolution of Fibonacci numbers and composite numbers.

Offset 0, canonical program `A023609.P18385611758150687772`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A023609 (n : ℕ) : ℤ :=
  A023609.P18385611758150687772.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A023609.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023617.P9096282738909620640

`2*A023628(n+1)-A023608(n)`
-/

namespace A023617.P9096282738909620640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A023628 (n + 1) - A023608 n

end

end A023617.P9096282738909620640

noncomputable section

/-- A023617: Convolution of Lucas numbers and (1, p(1), p(2), ...).

Offset 1, canonical program `A023617.P9096282738909620640`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. -/
def A023617 (n : ℕ) : ℤ :=
  A023617.P9096282738909620640.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. -/
def A023617.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023621.P16071833400035228711

`A023653(n+1)+A023653(n+1)-A023611(n)`
-/

namespace A023621.P16071833400035228711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023653 (n + 1) + (A023653 (n + 1) - A023611 n)

end

end A023621.P16071833400035228711

noncomputable section

/-- A023621: Convolution of Lucas numbers and A000201.

Offset 1, canonical program `A023621.P16071833400035228711`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. -/
def A023621 (n : ℕ) : ℤ :=
  A023621.P16071833400035228711.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. -/
def A023621.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023625.P15838302889821291983

`A023657(n+1)+A023657(n+1)-A023615(n)`
-/

namespace A023625.P15838302889821291983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023657 (n + 1) + (A023657 (n + 1) - A023615 n)

end

end A023625.P15838302889821291983

noncomputable section

/-- A023625: Convolution of Lucas numbers and primes.

Offset 1, canonical program `A023625.P15838302889821291983`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. -/
def A023625 (n : ℕ) : ℤ :=
  A023625.P15838302889821291983.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. -/
def A023625.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023632.P17596121348302090998

`A023630(A337909(n+1)-A158388(n))`
-/

namespace A023632.P17596121348302090998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023630 (A337909 (n + 1) - A158388 n).toNat

end

end A023632.P17596121348302090998

noncomputable section

/-- A023632: a(n) = s(2n+1) - s(2n), where s( ) is sequence A023631.

Offset 1, canonical program `A023632.P17596121348302090998`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A023632 (n : ℕ) : ℤ :=
  A023632.P17596121348302090998.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A023632.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023706.P12195947765526675273

`eq[n, n*A139352(A334076(n))]`
-/

namespace A023706.P12195947765526675273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A139352 (A334076 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023706.P12195947765526675273

noncomputable section

/-- A023706: Numbers with a single 0 in their base 4 expansion.

Offset 1, canonical program `A023706.P12195947765526675273`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6016 terms. -/
def A023706 (n : ℕ) : ℤ :=
  (A023706.P12195947765526675273.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6016 terms. -/
def A023706.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023721.P11352913858414916130

`lt[0, A309956(n)]`
-/

namespace A023721.P11352913858414916130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309956 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A023721.P11352913858414916130

noncomputable section

/-- A023721: Numbers with no 0's in their base-5 expansion.

Offset 1, canonical program `A023721.P11352913858414916130`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3412 terms. -/
def A023721 (n : ℕ) : ℤ :=
  (A023721.P11352913858414916130.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3412 terms. -/
def A023721.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023731.P14028755844219420142

`eq[2, A007949(A194459(n))]`
-/

namespace A023731.P14028755844219420142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A194459 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023731.P14028755844219420142

noncomputable section

/-- A023731: Numbers with exactly two 2's in base 5 expansion.

Offset 1, canonical program `A023731.P14028755844219420142`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2656 terms. -/
def A023731 (n : ℕ) : ℤ :=
  (A023731.P14028755844219420142.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2656 terms. -/
def A023731.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023735.P3011601314647701763

`eq[3, A051064(A338803(n))]`
-/

namespace A023735.P3011601314647701763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051064 (A338803 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023735.P3011601314647701763

noncomputable section

/-- A023735: Numbers with exactly 2 3's in their base-5 expansion.

Offset 1, canonical program `A023735.P3011601314647701763`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2176 terms. -/
def A023735 (n : ℕ) : ℤ :=
  (A023735.P3011601314647701763.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2176 terms. -/
def A023735.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023738.P1763036353799315097

`eq[n+1, val(A194459(n), 5)+n]`
-/

namespace A023738.P1763036353799315097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A194459 n).toNat 5 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023738.P1763036353799315097

noncomputable section

/-- A023738: Numbers with a single 4 in their base 5 expansion.

Offset 1, canonical program `A023738.P1763036353799315097`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4096 terms. -/
def A023738 (n : ℕ) : ℤ :=
  (A023738.P1763036353799315097.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4096 terms. -/
def A023738.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023739.P14727020229572321214

`eq[n+2, val(A194459(n), 5)+n]`
-/

namespace A023739.P14727020229572321214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A194459 n).toNat 5 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023739.P14727020229572321214

noncomputable section

/-- A023739: Numbers with exactly 2 4's in base 5 expansion.

Offset 1, canonical program `A023739.P14727020229572321214`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2016 terms. -/
def A023739 (n : ℕ) : ℤ :=
  (A023739.P14727020229572321214.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2016 terms. -/
def A023739.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024553.P1583672994999301604

`floor(A024552(n+1)/(n+1))`
-/

namespace A024553.P1583672994999301604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024552 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A024553.P1583672994999301604

noncomputable section

/-- A024553: [ 1/{n*sqrt(5)} ], where {x} := x - [ x ].

Offset 1, canonical program `A024553.P1583672994999301604`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024553 (n : ℕ) : ℤ :=
  A024553.P1583672994999301604.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024553.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A024619.P14596117423334191378

`A080765(n+1)+1`
-/

namespace A024619.P14596117423334191378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080765 (n + 1) + 1

end

end A024619.P14596117423334191378

noncomputable section

/-- A024619: Numbers that are not powers of primes p^k (k >= 0); complement of A000961.

Offset 1, canonical program `A024619.P14596117423334191378`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024619 (n : ℕ) : ℤ :=
  A024619.P14596117423334191378.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024619.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A024820.P4165797963061232133

`2*A043548(n+2)+1`
-/

namespace A024820.P4165797963061232133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043548 (n + 2) + 1

end

end A024820.P4165797963061232133

noncomputable section

/-- A024820: a(n) = least m such that if r and s in {1/2, 1/4, 1/6,..., 1/2n} satisfy r < s, then r < k/m < s for some integer k.

Offset 2, canonical program `A024820.P4165797963061232133`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 852 terms. -/
def A024820 (n : ℕ) : ℤ :=
  A024820.P4165797963061232133.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 852 terms. -/
def A024820.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024824.P3324789184246968409

`3*A043548(n+2)+1`
-/

namespace A024824.P3324789184246968409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A043548 (n + 2) + 1

end

end A024824.P3324789184246968409

noncomputable section

/-- A024824: a(n) = least m such that if r and s in {1/3, 1/6, 1/9,..., 1/3n} satisfy r < s, then r < k/m < s for some integer k.

Offset 2, canonical program `A024824.P3324789184246968409`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 773 terms. -/
def A024824 (n : ℕ) : ℤ :=
  A024824.P3324789184246968409.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 773 terms. -/
def A024824.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024835.P2659846960157059613

`or(1, A043548(2*(n+1)+2))`
-/

namespace A024835.P2659846960157059613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A043548 (2 * (n + 1) + 2))

end

end A024835.P2659846960157059613

noncomputable section

/-- A024835: a(n) = least m such that if r and s in {1/2, 1/4, 1/6, ..., 1/2n} satisfy r < s, then r < k/m < (k+1)/m < s for some integer k.

Offset 2, canonical program `A024835.P2659846960157059613`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 739 terms. -/
def A024835 (n : ℕ) : ℤ :=
  A024835.P2659846960157059613.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 739 terms. -/
def A024835.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024901.P9565501919091176731

`A089079(n+1)-3`
-/

namespace A024901.P9565501919091176731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089079 (n + 1) - 3

end

end A024901.P9565501919091176731

noncomputable section

/-- A024901: Numbers k such that 7*k - 2 is prime.

Offset 1, canonical program `A024901.P9565501919091176731`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A089079, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A024901 (n : ℕ) : ℤ :=
  A024901.P9565501919091176731.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A089079, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A024901.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A024904.P10212136767260610074

`A105772(n+1)+1`
-/

namespace A024904.P10212136767260610074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105772 (n + 1) + 1

end

end A024904.P10212136767260610074

noncomputable section

/-- A024904: Numbers k such that 7*k - 5 is prime.

Offset 1, canonical program `A024904.P10212136767260610074`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024904 (n : ℕ) : ℤ :=
  A024904.P10212136767260610074.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024904.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024920.P14181860566313865578

`(n+1)*A006218(n+1)-A024916(n+1)`
-/

namespace A024920.P14181860566313865578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A006218 (n + 1) - A024916 (n + 1)

end

end A024920.P14181860566313865578

noncomputable section

/-- A024920: a(n) = Sum_{k=1..n} (n-k) * floor(n/k).

Offset 1, canonical program `A024920.P14181860566313865578`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A024920 (n : ℕ) : ℤ :=
  A024920.P14181860566313865578.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A024920.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A025304.P15644327718625747142

`eq[6, A002654(A028310(n))]`
-/

namespace A025304.P15644327718625747142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025304.P15644327718625747142

noncomputable section

/-- A025304: Numbers that are the sum of 2 distinct nonzero squares in exactly 3 ways.

Offset 1, canonical program `A025304.P15644327718625747142`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A025304 (n : ℕ) : ℤ :=
  (A025304.P15644327718625747142.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A025304.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025543.P5462002278886021902

`lcm(a(n-1), A002808(n))` with `a(0)=1`
-/

namespace A025543.P5462002278886021902
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (A002808 n)

end

end A025543.P5462002278886021902

noncomputable section

/-- A025543: Least common multiple of the first n composite numbers.

Offset 0, canonical program `A025543.P5462002278886021902`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 366 terms. -/
def A025543 (n : ℕ) : ℤ :=
  (A025543.P5462002278886021902.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 366 terms. -/
def A025543.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026002.P16997631756133823034

`A001850(n+1)-A006318(n+1)`
-/

namespace A026002.P16997631756133823034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001850 (n + 1) - A006318 (n + 1)

end

end A026002.P16997631756133823034

noncomputable section

/-- A026002: a(n) = T(n,n+2), where T = Delannoy triangle (A008288).

Offset 1, canonical program `A026002.P16997631756133823034`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006318, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A026002 (n : ℕ) : ℤ :=
  A026002.P16997631756133823034.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006318, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A026002.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A026008.P1049361676505189419

`A208355(n+2)-A097331(n+2)`
-/

namespace A026008.P1049361676505189419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208355 (n + 2) - A097331 (n + 2)

end

end A026008.P1049361676505189419

noncomputable section

/-- A026008: a(n) = T(n, floor(n/2)), where T = Catalan triangle (A008315).

Offset 0, canonical program `A026008.P1049361676505189419`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 343 terms. -/
def A026008 (n : ℕ) : ℤ :=
  A026008.P1049361676505189419.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 343 terms. -/
def A026008.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026019.P15282999811891671450

`A262717(n+1)+A174687(n)`
-/

namespace A026019.P15282999811891671450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262717 (n + 1) + A174687 n

end

end A026019.P15282999811891671450

noncomputable section

/-- A026019: a(n) = binomial(3*n,n) - binomial(3*n,n-3).

Offset 0, canonical program `A026019.P15282999811891671450`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A026019 (n : ℕ) : ℤ :=
  A026019.P15282999811891671450.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A026019.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026228.P11632030350600125361

`3*A026140(n+1)+2`
-/

namespace A026228.P11632030350600125361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A026140 (n + 1) + 2

end

end A026228.P11632030350600125361

noncomputable section

/-- A026228: Numbers k such that A026166(k) = A026136(k) - 1.

Offset 1, canonical program `A026228.P11632030350600125361`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026228 (n : ℕ) : ℤ :=
  A026228.P11632030350600125361.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026228.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026232.P6117915654880813712

`∪[A008486(n+1), A026226(n+2)]`
-/

namespace A026232.P6117915654880813712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026226 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026232.P6117915654880813712

noncomputable section

/-- A026232: a(n) = (1/3)*(s(n) + 1), where s = A026231.

Offset 1, canonical program `A026232.P6117915654880813712`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026232 (n : ℕ) : ℤ :=
  (A026232.P6117915654880813712.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026232.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026239.P15837365085214578308

`A073846(xor(A057427(n), A073898(n+1)))`
-/

namespace A026239.P15837365085214578308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (Int.xor (A057427 n) (A073898 (n + 1))).toNat

end

end A026239.P15837365085214578308

noncomputable section

/-- A026239: Beginning with the natural numbers, swap the k-th prime and k-th composite.

Offset 1, canonical program `A026239.P15837365085214578308`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5758 terms. -/
def A026239 (n : ℕ) : ℤ :=
  A026239.P15837365085214578308.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5758 terms. -/
def A026239.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026360.P12649275342122522798

`2*A026359(n+1)-1+n`
-/

namespace A026360.P12649275342122522798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026359 (n + 1) - 1 + (n : ℤ)

end

end A026360.P12649275342122522798

noncomputable section

/-- A026360: a(n) = greatest k such that s(k) = n, where s = A026358.

Offset 1, canonical program `A026360.P12649275342122522798`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026360 (n : ℕ) : ℤ :=
  A026360.P12649275342122522798.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026360.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A026671.P11258807246634829896

`A001076(n)+A176280(n)`
-/

namespace A026671.P11258807246634829896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001076 n + A176280 n

end

end A026671.P11258807246634829896

noncomputable section

/-- A026671: Number of lattice paths from (0,0) to (n,n) with steps (0,1), (1,0) and, when on the diagonal, (1,1).

Offset 0, canonical program `A026671.P11258807246634829896`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A176280, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A026671 (n : ℕ) : ℤ :=
  A026671.P11258807246634829896.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A176280, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A026671.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A026773.P6203066424165419462

`A006318(n+1)-A000108(n+1)`
-/

namespace A026773.P6203066424165419462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006318 (n + 1) - A000108 (n + 1)

end

end A026773.P6203066424165419462

noncomputable section

/-- A026773: a(n) = T(2n-1,n-1), T given by A026769. Also T(2n+1,n+1), T given by A026780.

Offset 1, canonical program `A026773.P6203066424165419462`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006318, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A026773 (n : ℕ) : ℤ :=
  A026773.P6203066424165419462.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006318, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A026773.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A026812.P368867106460486570

`A001402(n)-A001401(n)`
-/

namespace A026812.P368867106460486570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001402 n - A001401 n

end

end A026812.P368867106460486570

noncomputable section

/-- A026812: Number of partitions of n in which the greatest part is 6.

Offset 0, canonical program `A026812.P368867106460486570`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001401, A001402, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A026812 (n : ℕ) : ℤ :=
  A026812.P368867106460486570.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001401, A001402, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A026812.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A026943.P8016539442401033073

`A092690(n+1)-Δ[A027914(n)]`
-/

namespace A026943.P8016539442401033073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027914 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092690 (n + 1) - (f1 (n + 1) - f1 n)

end

end A026943.P8016539442401033073

noncomputable section

/-- A026943: a(n) = Sum_{k=0..n} (k+1) * T(n, k), with T given by A026300.

Offset 0, canonical program `A026943.P8016539442401033073`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. -/
def A026943 (n : ℕ) : ℤ :=
  A026943.P8016539442401033073.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. -/
def A026943.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A027857.P14631129129120359686

`A027423(n+1)%(n+1)`
-/

namespace A027857.P14631129129120359686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027423 (n + 1)) (n + 1 : ℤ)

end

end A027857.P14631129129120359686

noncomputable section

/-- A027857: Number of positive divisors of n!, read mod n.

Offset 1, canonical program `A027857.P14631129129120359686`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 927 terms. -/
def A027857 (n : ℕ) : ℤ :=
  A027857.P14631129129120359686.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 927 terms. -/
def A027857.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A028393.P12035346811171582160

`A180864(n+4)`
-/

namespace A028393.P12035346811171582160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180864 (n + 4)

end

end A028393.P12035346811171582160

noncomputable section

/-- A028393: Iterate the map in A006368 starting at 8.

Offset 0, canonical program `A028393.P12035346811171582160`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3810 terms. -/
def A028393 (n : ℕ) : ℤ :=
  A028393.P12035346811171582160.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3810 terms. -/
def A028393.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028815.P810525423351225743

`A008578(n+1)+1`
-/

namespace A028815.P810525423351225743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) + 1

end

end A028815.P810525423351225743

noncomputable section

/-- A028815: a(n) = prime(n) + 1 (starting with 1).

Offset 0, canonical program `A028815.P810525423351225743`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008578, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A028815 (n : ℕ) : ℤ :=
  A028815.P810525423351225743.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008578, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A028815.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A029313.P18194141507139867726

`A029259(n)+A029303(n)-A029255(n)`
-/

namespace A029313.P18194141507139867726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029259 n + (A029303 n - A029255 n)

end

end A029313.P18194141507139867726

noncomputable section

/-- A029313: Expansion of 1/((1-x^3)*(1-x^7)*(1-x^10)*(1-x^11)).

Offset 0, canonical program `A029313.P18194141507139867726`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029313 (n : ℕ) : ℤ :=
  A029313.P18194141507139867726.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029313.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029357.P1479724606091517717

`A029303(n)+A029349(n)-A029295(n)`
-/

namespace A029357.P1479724606091517717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029303 n + (A029349 n - A029295 n)

end

end A029357.P1479724606091517717

noncomputable section

/-- A029357: Expansion of 1/((1-x^4)*(1-x^6)*(1-x^10)*(1-x^11)).

Offset 0, canonical program `A029357.P1479724606091517717`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029357 (n : ℕ) : ℤ :=
  A029357.P1479724606091517717.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029357.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029376.P16706943438829377810

`A029114(n)+A029346(n)-A029102(n)`
-/

namespace A029376.P16706943438829377810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029114 n + (A029346 n - A029102 n)

end

end A029376.P16706943438829377810

noncomputable section

/-- A029376: Expansion of 1/((1-x^4)*(1-x^9)*(1-x^11)*(1-x^12)).

Offset 0, canonical program `A029376.P16706943438829377810`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029376 (n : ℕ) : ℤ :=
  A029376.P16706943438829377810.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029376.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029399.P14652591475323631026

`Δ[∑[A029417(n)]-A029439(n)]`
-/

namespace A029399.P14652591475323631026
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029417 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A029439 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A029399.P14652591475323631026

noncomputable section

/-- A029399: Expansion of 1/((1-x^5)*(1-x^7)*(1-x^9)*(1-x^12)).

Offset 0, canonical program `A029399.P14652591475323631026`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A029399 (n : ℕ) : ℤ :=
  A029399.P14652591475323631026.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A029399.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029641.P5309606783761197821

`A029638(A268232(n+1)+1)`
-/

namespace A029641.P5309606783761197821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029638 (A268232 (n + 1) + 1).toNat

end

end A029641.P5309606783761197821

noncomputable section

/-- A029641: Even numbers in the (1,2)-Pascal triangle A029635 that are different from 2.

Offset 0, canonical program `A029641.P5309606783761197821`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7718 terms. -/
def A029641 (n : ℕ) : ℤ :=
  A029641.P5309606783761197821.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7718 terms. -/
def A029641.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029740.P619217809888464575

`∩[2*n+1, A010784(n+1)]`
-/

namespace A029740.P619217809888464575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010784 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029740.P619217809888464575

noncomputable section

/-- A029740: Odd numbers with distinct digits.

Offset 1, canonical program `A029740.P619217809888464575`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4888 terms. -/
def A029740 (n : ℕ) : ℤ :=
  (A029740.P619217809888464575.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4888 terms. -/
def A029740.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029741.P12647028783667257905

`∩[2*n, A010784(n+1)]`
-/

namespace A029741.P12647028783667257905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010784 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029741.P12647028783667257905

noncomputable section

/-- A029741: Even numbers with distinct digits.

Offset 1, canonical program `A029741.P12647028783667257905`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5112 terms. -/
def A029741 (n : ℕ) : ℤ :=
  (A029741.P12647028783667257905.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5112 terms. -/
def A029741.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029832.P6927503962102262836

`A004233(n+1)*A010051(n+1)`
-/

namespace A029832.P6927503962102262836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004233 (n + 1) * A010051 (n + 1)

end

end A029832.P6927503962102262836

noncomputable section

/-- A029832: A discrete version of the Mangoldt function: if n is prime then ceiling(log(n)) else 0.

Offset 1, canonical program `A029832.P6927503962102262836`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029832 (n : ℕ) : ℤ :=
  A029832.P6927503962102262836.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029832.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029833.P5806842988776949731

`A000193(n+1)*A010051(n+1)`
-/

namespace A029833.P5806842988776949731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000193 (n + 1) * A010051 (n + 1)

end

end A029833.P5806842988776949731

noncomputable section

/-- A029833: A discrete version of the Mangoldt function: if n is prime then round(log(n)) else 0.

Offset 1, canonical program `A029833.P5806842988776949731`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029833 (n : ℕ) : ℤ :=
  A029833.P5806842988776949731.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029833.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A030014.P14052116061962603541

`∑{d}[n+1, A008578(#)]`
-/

namespace A030014.P14052116061962603541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008578 d

end

end A030014.P14052116061962603541

noncomputable section

/-- A030014: Inverse Moebius transform of {1, primes}.

Offset 1, canonical program `A030014.P14052116061962603541`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A030014 (n : ℕ) : ℤ :=
  A030014.P14052116061962603541.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A030014.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A030431.P16894720436376490872

`10*A102338(n+1)+3`
-/

namespace A030431.P16894720436376490872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A102338 (n + 1) + 3

end

end A030431.P16894720436376490872

noncomputable section

/-- A030431: Primes of form 10n+3.

Offset 1, canonical program `A030431.P16894720436376490872`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A102338, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A030431 (n : ℕ) : ℤ :=
  A030431.P16894720436376490872.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A102338, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A030431.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A031928.P11672901129551717801

`A000040(A320703(n+1))`
-/

namespace A031928.P11672901129551717801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A320703 (n + 1)).toNat

end

end A031928.P11672901129551717801

noncomputable section

/-- A031928: Lower prime of a difference of 10 between consecutive primes.

Offset 1, canonical program `A031928.P11672901129551717801`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A320703, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A031928 (n : ℕ) : ℤ :=
  A031928.P11672901129551717801.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A320703, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A031928.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A031930.P14447064096362393253

`A000040(A320704(n+1))`
-/

namespace A031930.P14447064096362393253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A320704 (n + 1)).toNat

end

end A031930.P14447064096362393253

noncomputable section

/-- A031930: Lower prime of a difference of 12 between consecutive primes.

Offset 1, canonical program `A031930.P14447064096362393253`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A320704, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A031930 (n : ℕ) : ℤ :=
  A031930.P14447064096362393253.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A320704, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A031930.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A032090.P1511666356782873879

`A032089(A028310(n))-(1-n)%2`
-/

namespace A032090.P1511666356782873879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032089 (A028310 n).toNat - Int.tmod (1 - (n : ℤ)) 2

end

end A032090.P1511666356782873879

noncomputable section

/-- A032090: "BHK" (reversible, identity, unlabeled) transform of 0,1,1,1...

Offset 1, canonical program `A032090.P1511666356782873879`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 482 terms. -/
def A032090 (n : ℕ) : ℤ :=
  A032090.P1511666356782873879.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 482 terms. -/
def A032090.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A032890.P13361457398123682468

`record[abs(1-n)-A338251(A004523(n))]`
-/

namespace A032890.P13361457398123682468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)| - A338251 (A004523 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032890.P13361457398123682468

noncomputable section

/-- A032890: Numbers whose base-2 representation Sum_{i=0..m} d(i)*2^i has d(0) >= d(1) <= d(2) >= ...

Offset 1, canonical program `A032890.P13361457398123682468`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 464 terms. -/
def A032890 (n : ℕ) : ℤ :=
  A032890.P13361457398123682468.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 464 terms. -/
def A032890.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033197.P13571610583292348820

`-A204993(record[A007913(n+1)])`
-/

namespace A033197.P13571610583292348820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A204993 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A033197.P13571610583292348820

noncomputable section

/-- A033197: Discriminants of quadratic number fields Q(sqrt -n) for n squarefree.

Offset 1, canonical program `A033197.P13571610583292348820`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6083 terms. -/
def A033197 (n : ℕ) : ℤ :=
  A033197.P13571610583292348820.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6083 terms. -/
def A033197.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033272.P13508540407970114624

`A001227(n+1)-A005087(n+1)`
-/

namespace A033272.P13508540407970114624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) - A005087 (n + 1)

end

end A033272.P13508540407970114624

noncomputable section

/-- A033272: Number of odd nonprimes dividing n.

Offset 1, canonical program `A033272.P13508540407970114624`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005087, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A033272 (n : ℕ) : ℤ :=
  A033272.P13508540407970114624.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005087, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A033272.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A033302.P11811242346175586438

`A000040(∑[A010051(n+3)])`
-/

namespace A033302.P11811242346175586438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A033302.P11811242346175586438

noncomputable section

/-- A033302: Largest prime < largest prime < n.

Offset 4, canonical program `A033302.P11811242346175586438`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033302 (n : ℕ) : ℤ :=
  A033302.P11811242346175586438.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033302.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033558.P5355527907000063137

`2*(n+1)-A000040(∑[A010051(n+1)]+1)`
-/

namespace A033558.P5355527907000063137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A000040 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A033558.P5355527907000063137

noncomputable section

/-- A033558: a(n) = 2n - {smallest prime > n}.

Offset 1, canonical program `A033558.P5355527907000063137`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033558 (n : ℕ) : ℤ :=
  A033558.P5355527907000063137.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033558.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033561.P1549890924565319554

`p?[A008578(n+1)-A267884(n)!]`
-/

namespace A033561.P1549890924565319554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) - (Nat.factorial (A267884 n).toNat : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A033561.P1549890924565319554

noncomputable section

/-- A033561: Primes p such that 6!+p is also prime.

Offset 1, canonical program `A033561.P1549890924565319554`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3338 terms. -/
def A033561 (n : ℕ) : ℤ :=
  A033561.P1549890924565319554.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3338 terms. -/
def A033561.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033634.P14411435356660809235

`∑{d}[n+1, #*A005361(#)%2]`
-/

namespace A033634.P14411435356660809235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * Int.tmod (A005361 d) 2

end

end A033634.P14411435356660809235

noncomputable section

/-- A033634: OddPowerSigma(n) = sum of odd power divisors of n.

Offset 1, canonical program `A033634.P14411435356660809235`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033634 (n : ℕ) : ℤ :=
  A033634.P14411435356660809235.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033634.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033685.P5820918837906960133

`3*A045833(n)`
-/

namespace A033685.P5820918837906960133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A045833 n

end

end A033685.P5820918837906960133

noncomputable section

/-- A033685: Theta series of hexagonal lattice A_2 with respect to deep hole.

Offset 0, canonical program `A033685.P5820918837906960133`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045833, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A033685 (n : ℕ) : ℤ :=
  A033685.P5820918837906960133.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045833, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A033685.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A033881.P3139120918464982481

`A033880(A005101(n+1))`
-/

namespace A033881.P3139120918464982481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033880 (A005101 (n + 1)).toNat

end

end A033881.P3139120918464982481

noncomputable section

/-- A033881: Abundancy of n-th abundant number: sigma(k) - 2k for k such that this is > 0.

Offset 1, canonical program `A033881.P3139120918464982481`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005101, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A033881 (n : ℕ) : ℤ :=
  A033881.P3139120918464982481.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005101, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A033881.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A034099.P16522247859076894767

`A034097(n+1)+∑[A133100(n)]`
-/

namespace A034099.P16522247859076894767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133100 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034097 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034099.P16522247859076894767

noncomputable section

/-- A034099: Fractional part of square root of a(n) starts with digit 3.

Offset 1, canonical program `A034099.P16522247859076894767`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034099 (n : ℕ) : ℤ :=
  A034099.P16522247859076894767.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034099.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034274.P3693840692117694116

`1/2*A180266(n+2)`
-/

namespace A034274.P3693840692117694116
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A180266 (n + 2) : ℚ)

end

end A034274.P3693840692117694116

noncomputable section

/-- A034274: a(n)=f(n,n-1) where f is given in A034261.

Offset 1, canonical program `A034274.P3693840692117694116`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A180266, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A034274 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A034274.P3693840692117694116.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A180266, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A034274.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A034737.P1233646584205894789

`∑{d}[n+1, #*A034729((n+1)/#)]`
-/

namespace A034737.P1233646584205894789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A034729 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034737.P1233646584205894789

noncomputable section

/-- A034737: Dirichlet convolution of b_n=2^(n-1) with sigma(n).

Offset 1, canonical program `A034737.P1233646584205894789`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A034737 (n : ℕ) : ℤ :=
  A034737.P1233646584205894789.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A034737.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034746.P17647171061663066197

`∑{d}[n+1, A000045(#)*A008578((n+1)/#)]`
-/

namespace A034746.P17647171061663066197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000045 d * A008578 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034746.P17647171061663066197

noncomputable section

/-- A034746: Dirichlet convolution of Fibonacci numbers with Primes (with 1).

Offset 1, canonical program `A034746.P17647171061663066197`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A034746 (n : ℕ) : ℤ :=
  A034746.P17647171061663066197.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A034746.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034747.P1402406264465569334

`∑{d}[n+1, #*A007435((n+1)/#)]`
-/

namespace A034747.P1402406264465569334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A007435 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034747.P1402406264465569334

noncomputable section

/-- A034747: Dirichlet convolution of Fibonacci numbers with sigma(n).

Offset 1, canonical program `A034747.P1402406264465569334`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A034747 (n : ℕ) : ℤ :=
  A034747.P1402406264465569334.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A034747.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034752.P8472321955714511973

`∑{d}[n+1, A000244(#-1)*A008578((n+1)/#)]`
-/

namespace A034752.P8472321955714511973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000244 (d - 1) * A008578 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034752.P8472321955714511973

noncomputable section

/-- A034752: Dirichlet convolution of 3^(n-1) with primes (with 1).

Offset 1, canonical program `A034752.P8472321955714511973`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A034752 (n : ℕ) : ℤ :=
  A034752.P8472321955714511973.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A034752.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034759.P7395327973398037914

`∑{d}[n+1, A008578((n+1)/#)*A008578(#)]`
-/

namespace A034759.P7395327973398037914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008578 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A008578 d

end

end A034759.P7395327973398037914

noncomputable section

/-- A034759: Dirichlet convolution of primes (with 1) with themselves.

Offset 1, canonical program `A034759.P7395327973398037914`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034759 (n : ℕ) : ℤ :=
  A034759.P7395327973398037914.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034759.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034771.P14136708575511469544

`∑{d}[n+1, A034729(#)]`
-/

namespace A034771.P14136708575511469544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034729 d

end

end A034771.P14136708575511469544

noncomputable section

/-- A034771: Dirichlet convolution of d(n) (# of divisors) with b_n=2^(n-1).

Offset 1, canonical program `A034771.P14136708575511469544`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A034771 (n : ℕ) : ℤ :=
  A034771.P14136708575511469544.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A034771.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034772.P11684027232908170233

`∑{d}[n+1, A007435(#)]`
-/

namespace A034772.P11684027232908170233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007435 d

end

end A034772.P11684027232908170233

noncomputable section

/-- A034772: Dirichlet convolution of d(n) (number of divisors) with Fibonacci numbers.

Offset 1, canonical program `A034772.P11684027232908170233`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A034772 (n : ℕ) : ℤ :=
  A034772.P11684027232908170233.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A034772.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034939.P731908720823549946

`abs(A048899(n)-A268922(n))`
-/

namespace A034939.P731908720823549946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A048899 n - A268922 n|

end

end A034939.P731908720823549946

noncomputable section

/-- A034939: a(n) is smallest number such that a(n)^2 + 1 is divisible by 5^n.

Offset 0, canonical program `A034939.P731908720823549946`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A034939 (n : ℕ) : ℤ :=
  A034939.P731908720823549946.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A034939.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034942.P16640665796906915742

`A026388(n+2)-A129160(n+2)`
-/

namespace A034942.P16640665796906915742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026388 (n + 2) - A129160 (n + 2)

end

end A034942.P16640665796906915742

noncomputable section

/-- A034942: Binomial transform of A002054.

Offset 0, canonical program `A034942.P16640665796906915742`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A034942 (n : ℕ) : ℤ :=
  A034942.P16640665796906915742.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A034942.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035011.P13854642770801063337

`A006318(n)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A035011.P13854642770801063337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006318 n - 1

end

end A035011.P13854642770801063337

noncomputable section

/-- A035011: A006318(n) - 1.

Offset 0, canonical program `A035011.P13854642770801063337`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006318, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A035011 (n : ℕ) : ℤ :=
  A035011.P13854642770801063337.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006318, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A035011.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A035029.P1069693175398045353

`1/4*(A002002(n+2)-A002002(n+1))`
-/

namespace A035029.P1069693175398045353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 4 * (A002002 (n + 2) - A002002 (n + 1) : ℚ)

end

end A035029.P1069693175398045353

noncomputable section

/-- A035029: a(n) = Sum_{k=0..n} (k+1) * Sum_{j=0..n} 2^j*binomial(n,j)*binomial(n-k,j).

Offset 0, canonical program `A035029.P1069693175398045353`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002002, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A035029 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A035029.P1069693175398045353.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002002, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A035029.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A035154.P17971849599840028777

`A002654(n+1)+A002654(3*(n+1))`
-/

namespace A035154.P17971849599840028777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (n + 1) + A002654 (3 * (n + 1))

end

end A035154.P17971849599840028777

noncomputable section

/-- A035154: a(n) = Sum_{d|n} Kronecker(-36, d).

Offset 1, canonical program `A035154.P17971849599840028777`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002654, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A035154 (n : ℕ) : ℤ :=
  A035154.P17971849599840028777.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002654, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A035154.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A035184.P3251018831054104960

`(val(n+1, 2)+1)*A002654(n+1)`
-/

namespace A035184.P3251018831054104960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 2 + 1 : ℤ) * A002654 (n + 1)

end

end A035184.P3251018831054104960

noncomputable section

/-- A035184: a(n) = Sum_{d|n} Kronecker(-1, d).

Offset 1, canonical program `A035184.P3251018831054104960`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035184 (n : ℕ) : ℤ :=
  A035184.P3251018831054104960.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035184.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035187.P4441846657332739051

`A001899(n+1)+A373335(n+1)-A001878(n+1)`
-/

namespace A035187.P4441846657332739051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001899 (n + 1) + (A373335 (n + 1) - A001878 (n + 1))

end

end A035187.P4441846657332739051

noncomputable section

/-- A035187: Sum over divisors d of n of Kronecker symbol (5|d).

Offset 1, canonical program `A035187.P4441846657332739051`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035187 (n : ℕ) : ℤ :=
  A035187.P4441846657332739051.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035187.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A035260.P10772231064334041702

`lt[-(A035203(n+1)+1)², -1]+1`
-/

namespace A035260.P10772231064334041702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((A035203 (n + 1) + 1) ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A035260.P10772231064334041702

noncomputable section

/-- A035260: Indices of the nonzero terms in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m= 21.

Offset 1, canonical program `A035260.P10772231064334041702`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2615 terms. -/
def A035260 (n : ℕ) : ℤ :=
  (A035260.P10772231064334041702.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2615 terms. -/
def A035260.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035264.P6732478031539693106

`lt[A000038(A035211(n+1)), 1]+1`
-/

namespace A035264.P6732478031539693106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A035211 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A035264.P6732478031539693106

noncomputable section

/-- A035264: Indices of the nonzero terms in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m = 29.

Offset 1, canonical program `A035264.P6732478031539693106`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1983 terms. -/
def A035264 (n : ℕ) : ℤ :=
  (A035264.P6732478031539693106.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1983 terms. -/
def A035264.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036215.P9235640545465369973

`A030101(A000244(n))`
-/

namespace A036215.P9235640545465369973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A000244 n).toNat

end

end A036215.P9235640545465369973

noncomputable section

/-- A036215: Binary reversal of 3^n.

Offset 0, canonical program `A036215.P9235640545465369973`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030101, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A036215 (n : ℕ) : ℤ :=
  A036215.P9235640545465369973.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030101, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A036215.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A036347.P5999781186834882949

`eq[1, A359768(n+1)]+1`
-/

namespace A036347.P5999781186834882949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359768 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A036347.P5999781186834882949

noncomputable section

/-- A036347: Numbers k for which the parity of k and the parity of sopfr(k) differ, where sopfr is the sum of prime factors with repetition.

Offset 1, canonical program `A036347.P5999781186834882949`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8271 terms. -/
def A036347 (n : ℕ) : ℤ :=
  (A036347.P5999781186834882949.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8271 terms. -/
def A036347.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036453.P17495263989008753229

`A036450(A010553(n+1))`
-/

namespace A036453.P17495263989008753229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036450 (A010553 (n + 1)).toNat

end

end A036453.P17495263989008753229

noncomputable section

/-- A036453: a(n) = d(d(d(d(d(n))))), the 5th iterate of the number-of-divisors function d = A000005, with initial value n.

Offset 1, canonical program `A036453.P17495263989008753229`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036453 (n : ℕ) : ℤ :=
  A036453.P17495263989008753229.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036453.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036457.P7190875582605610954

`eq[4, A036450(n+1)]+1`
-/

namespace A036457.P7190875582605610954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036450 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A036457.P7190875582605610954

noncomputable section

/-- A036457: Numbers k for which exactly 5 applications of A000005 are needed to reach 2.

Offset 1, canonical program `A036457.P7190875582605610954`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2108 terms. -/
def A036457 (n : ℕ) : ℤ :=
  (A036457.P7190875582605610954.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2108 terms. -/
def A036457.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036684.P15237940237504667908

`3*A001872(n)+4*A001873(n)+A001874(n)`
-/

namespace A036684.P15237940237504667908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A001872 n + 4 * A001873 n + A001874 n

end

end A036684.P15237940237504667908

noncomputable section

/-- A036684: T(n+5,5) with T as in A036355.

Offset 0, canonical program `A036684.P15237940237504667908`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001874, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A036684 (n : ℕ) : ℤ :=
  A036684.P15237940237504667908.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001874, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A036684.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A036762.P9121888173223789821

`A033950(n+1)/A000005(A033950(n+1))`
-/

namespace A036762.P9121888173223789821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033950 (n + 1) : ℚ) / (A000005 (A033950 (n + 1)).toNat : ℚ)

end

end A036762.P9121888173223789821

noncomputable section

/-- A036762: The integer values of x/d(x) in order of magnitude of x in A033950.

Offset 1, canonical program `A036762.P9121888173223789821`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033950, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A036762 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A036762.P9121888173223789821.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033950, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A036762.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A036779.P249363070567097633

`record[and(n+1, A057300(A010060(n+1)+n))]`
-/

namespace A036779.P249363070567097633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A057300 (A010060 (n + 1) + (n : ℤ)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036779.P249363070567097633

noncomputable section

/-- A036779: Greedy sequence such that no term is the average of three others.

Offset 1, canonical program `A036779.P249363070567097633`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 317 terms. -/
def A036779 (n : ℕ) : ℤ :=
  A036779.P249363070567097633.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 317 terms. -/
def A036779.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036844.P16562848454133775618

`eq[1, A082343(n+1)]+1`
-/

namespace A036844.P16562848454133775618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082343 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A036844.P16562848454133775618

noncomputable section

/-- A036844: Numbers k such that k / sopfr(k) is an integer, where sopfr = sum-of-prime-factors, A001414.

Offset 1, canonical program `A036844.P16562848454133775618`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5721 terms. -/
def A036844 (n : ℕ) : ℤ :=
  (A036844.P16562848454133775618.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5721 terms. -/
def A036844.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037125.P7956072038026776361

`n+1-A007504(A350174(n))`
-/

namespace A037125.P7956072038026776361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A007504 (A350174 n).toNat

end

end A037125.P7956072038026776361

noncomputable section

/-- A037125: Irregular triangle: row n is 1, 2, 3, 4, .., prime(n).

Offset 1, canonical program `A037125.P7956072038026776361`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037125 (n : ℕ) : ℤ :=
  A037125.P7956072038026776361.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037125.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037169.P12121537751605403474

`A000040(n+1)*∏[Δ[A008578(n+1)]]`
-/

namespace A037169.P12121537751605403474
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A037169.P12121537751605403474

noncomputable section

/-- A037169: a(n) = prime(n) * Product_{k=0..n-2} prime(n-k) mod prime(n-k-1).

Offset 1, canonical program `A037169.P12121537751605403474`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A037169 (n : ℕ) : ℤ :=
  A037169.P12121537751605403474.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A037169.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037240.P11525866944506951334

`A165188(n+1)+A083708(n)`
-/

namespace A037240.P11525866944506951334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165188 (n + 1) + A083708 n

end

end A037240.P11525866944506951334

noncomputable section

/-- A037240: Molien series for 3-D group X1.

Offset 0, canonical program `A037240.P11525866944506951334`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037240 (n : ℕ) : ℤ :=
  A037240.P11525866944506951334.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037240.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037340.P11038555772765492057

`eq[0, A276729(A202267(n+1))]`
-/

namespace A037340.P11038555772765492057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 (A202267 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037340.P11038555772765492057

noncomputable section

/-- A037340: Numbers whose base-2 and base-6 expansions have no digits in common.

Offset 1, canonical program `A037340.P11038555772765492057`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A037340 (n : ℕ) : ℤ :=
  (A037340.P11038555772765492057.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A037340.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037678.P8790120410625240737

`xor(A037734(n+1), A037783(n+1))`
-/

namespace A037678.P8790120410625240737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037734 (n + 1)) (A037783 (n + 1))

end

end A037678.P8790120410625240737

noncomputable section

/-- A037678: Base 8 digits are, in order, the first n terms of the periodic sequence with initial period 1,0,2,3.

Offset 1, canonical program `A037678.P8790120410625240737`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A037678 (n : ℕ) : ℤ :=
  A037678.P8790120410625240737.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A037678.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037692.P14883960575083069963

`xor(A037748(n+1), A037776(n+1))`
-/

namespace A037692.P14883960575083069963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037748 (n + 1)) (A037776 (n + 1))

end

end A037692.P14883960575083069963

noncomputable section

/-- A037692: Base 8 digits are, in order, the first n terms of the periodic sequence with initial period 1,2,0,3.

Offset 1, canonical program `A037692.P14883960575083069963`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A037692 (n : ℕ) : ℤ :=
  A037692.P14883960575083069963.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A037692.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037720.P6037356936432607553

`xor(∑[A001018(n)], A037776(n+1))`
-/

namespace A037720.P6037356936432607553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001018 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∑ j ∈ Finset.range (n + 1), f1 j) (A037776 (n + 1))

end

end A037720.P6037356936432607553

noncomputable section

/-- A037720: Base 8 digits are, in order, the first n terms of the periodic sequence with initial period 2,0,1,3.

Offset 1, canonical program `A037720.P6037356936432607553`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A037720 (n : ℕ) : ℤ :=
  A037720.P6037356936432607553.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A037720.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037727.P2649564992157234344

`xor(∑[A001018(n)], A037783(n+1))`
-/

namespace A037727.P2649564992157234344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001018 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∑ j ∈ Finset.range (n + 1), f1 j) (A037783 (n + 1))

end

end A037727.P2649564992157234344

noncomputable section

/-- A037727: Base 8 digits are, in order, the first n terms of the periodic sequence with initial period 2,0,3,1.

Offset 1, canonical program `A037727.P2649564992157234344`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A037727 (n : ℕ) : ℤ :=
  A037727.P2649564992157234344.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A037727.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037741.P16338688457861119066

`xor(∑[A001018(n)], A037769(n+1))`
-/

namespace A037741.P16338688457861119066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001018 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∑ j ∈ Finset.range (n + 1), f1 j) (A037769 (n + 1))

end

end A037741.P16338688457861119066

noncomputable section

/-- A037741: Base 8 digits are, in order, the first n terms of the periodic sequence with initial period 2,1,3,0.

Offset 1, canonical program `A037741.P16338688457861119066`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A037741 (n : ℕ) : ℤ :=
  A037741.P16338688457861119066.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A037741.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037742.P4324914929506903484

`A037714(n+1)+A037721(n+1)-A037693(n+1)`
-/

namespace A037742.P4324914929506903484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037714 (n + 1) + (A037721 (n + 1) - A037693 (n + 1))

end

end A037742.P4324914929506903484

noncomputable section

/-- A037742: Base 9 digits are, in order, the first n terms of the periodic sequence with initial period 2,1,3,0.

Offset 1, canonical program `A037742.P4324914929506903484`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A037742 (n : ℕ) : ℤ :=
  A037742.P4324914929506903484.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A037742.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037863.P16838511849426806167

`A110591(n+1)-2*A139352(n+1)`
-/

namespace A037863.P16838511849426806167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 (n + 1) - 2 * A139352 (n + 1)

end

end A037863.P16838511849426806167

noncomputable section

/-- A037863: a(n) = (number of digits <=1) - (number of digits >1) in base 4 representation of n.

Offset 1, canonical program `A037863.P16838511849426806167`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A110591, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A037863 (n : ℕ) : ℤ :=
  A037863.P16838511849426806167.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A110591, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A037863.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A037953.P4840713921781047894

`A037955(n)-A099376(floor(n/2))`
-/

namespace A037953.P4840713921781047894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037955 n - A099376 ⌊(n : ℚ) / 2⌋.toNat

end

end A037953.P4840713921781047894

noncomputable section

/-- A037953: a(n) = binomial(n, floor((n-5)/2)).

Offset 0, canonical program `A037953.P4840713921781047894`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A037953 (n : ℕ) : ℤ :=
  A037953.P4840713921781047894.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A037953.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038024.P2064224994306672514

`A000007(n)+Δ[A027423(n)]`
-/

namespace A038024.P2064224994306672514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027423 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A038024.P2064224994306672514

noncomputable section

/-- A038024: Number of k's such that A002034(k) = n.

Offset 1, canonical program `A038024.P2064224994306672514`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 927 terms. -/
def A038024 (n : ℕ) : ℤ :=
  A038024.P2064224994306672514.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 927 terms. -/
def A038024.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038511.P1114232487141861154

`filter[A133630(n+1), A162289(#)]`
-/

namespace A038511.P1114232487141861154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133630 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162289 (f1 j).toNat = 1) n)

end

end A038511.P1114232487141861154

noncomputable section

/-- A038511: Composite numbers with smallest prime factor >= 11.

Offset 1, canonical program `A038511.P1114232487141861154`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6988 terms. -/
def A038511 (n : ℕ) : ℤ :=
  A038511.P1114232487141861154.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6988 terms. -/
def A038511.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038529.P12826483427186246447

`A000040(n+1)-A002808(n+1)`
-/

namespace A038529.P12826483427186246447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A002808 (n + 1)

end

end A038529.P12826483427186246447

noncomputable section

/-- A038529: n-th prime - n-th composite.

Offset 1, canonical program `A038529.P12826483427186246447`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A038529 (n : ℕ) : ℤ :=
  A038529.P12826483427186246447.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A038529.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A038908.P2259766501861335261

`eq[A016035(n+1), A035215(n+1)]+1`
-/

namespace A038908.P2259766501861335261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016035 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035215 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A038908.P2259766501861335261

noncomputable section

/-- A038908: Primes p such that 33 is not a square mod p.

Offset 1, canonical program `A038908.P2259766501861335261`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 622 terms. -/
def A038908 (n : ℕ) : ℤ :=
  (A038908.P2259766501861335261.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 622 terms. -/
def A038908.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038918.P6317659458986366672

`p?[eq[and(2, n), A035151(n+1)]+1]`
-/

namespace A038918.P6317659458986366672
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035151 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038918.P6317659458986366672

noncomputable section

/-- A038918: Primes p such that 39 is not a square mod p.

Offset 1, canonical program `A038918.P6317659458986366672`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 633 terms. -/
def A038918 (n : ℕ) : ℤ :=
  (A038918.P6317659458986366672.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 633 terms. -/
def A038918.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039696.P2737647612043200767

`A007947(n+1)+A005361(n+1)`
-/

namespace A039696.P2737647612043200767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) + A005361 (n + 1)

end

end A039696.P2737647612043200767

noncomputable section

/-- A039696: If n = Product (p_j^k_j) then a(n) = Product (p_j) + Product (k_j).

Offset 1, canonical program `A039696.P2737647612043200767`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A039696 (n : ℕ) : ℤ :=
  A039696.P2737647612043200767.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A039696.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A039736.P7194080173085563073

`∑{p}[A040976(n+1), A010051(#)]`
-/

namespace A039736.P7194080173085563073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A010051 p

end

end A039736.P7194080173085563073

noncomputable section

/-- A039736: a(n) = number of primes q

Offset 1, canonical program `A039736.P7194080173085563073`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9602 terms. -/
def A039736 (n : ℕ) : ℤ :=
  A039736.P7194080173085563073.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9602 terms. -/
def A039736.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039819.P17715660467556399268

`A000005(A033950(n+1))`
-/

namespace A039819.P17715660467556399268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A033950 (n + 1)).toNat

end

end A039819.P17715660467556399268

noncomputable section

/-- A039819: Number of divisors of n-th refactorable number (A033950(n)).

Offset 1, canonical program `A039819.P17715660467556399268`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033950, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A039819 (n : ℕ) : ℤ :=
  A039819.P17715660467556399268.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033950, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A039819.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A039975.P14961801530530894059

`A006318(n)%3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A039975.P14961801530530894059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006318 n) 3

end

end A039975.P14961801530530894059

noncomputable section

/-- A039975: An example of a d-perfect sequence: a(n) = A006318(n-1) mod 3.

Offset 1, canonical program `A039975.P14961801530530894059`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006318, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A039975 (n : ℕ) : ℤ :=
  A039975.P14961801530530894059.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006318, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A039975.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A041001.P7868168025577261724

`A042941(n+1)-A038845(n+1)`
-/

namespace A041001.P7868168025577261724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042941 (n + 1) - A038845 (n + 1)

end

end A041001.P7868168025577261724

noncomputable section

/-- A041001: Convolution of A000108(n+1), n >= 0, (Catalan numbers) with A038845 (3-fold convolution of powers of 4).

Offset 0, canonical program `A041001.P7868168025577261724`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. -/
def A041001 (n : ℕ) : ℤ :=
  A041001.P7868168025577261724.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. -/
def A041001.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A042971.P10072078429808819715

`A005654(n+1)-A116406(n+1)`
-/

namespace A042971.P10072078429808819715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005654 (n + 1) - A116406 (n + 1)

end

end A042971.P10072078429808819715

noncomputable section

/-- A042971: a(n) = (C(2n, n)/2 - (2^(n-1) + ((n+1) mod 2)*C(n-1, n/2-1)))/2.

Offset 1, canonical program `A042971.P10072078429808819715`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A042971 (n : ℕ) : ℤ :=
  A042971.P10072078429808819715.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A042971.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043285.P857067819011013542

`A089309(A137688(n))+val(n+1, 12)`
-/

namespace A043285.P857067819011013542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (A137688 n).toNat + (SequenceMachineLib.valuation (n + 1) 12 : ℤ)

end

end A043285.P857067819011013542

noncomputable section

/-- A043285: Maximal run length in base 11 representation of n.

Offset 1, canonical program `A043285.P857067819011013542`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A043285 (n : ℕ) : ℤ :=
  A043285.P857067819011013542.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A043285.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043305.P4009443292463290629

`record[(n+1)*A361465(n+1)]`
-/

namespace A043305.P4009443292463290629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A361465 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043305.P4009443292463290629

noncomputable section

/-- A043305: Numbers k such that the numerator of the sum of the reciprocals of the divisors of k (=A017665(k)) is a power of 2.

Offset 1, canonical program `A043305.P4009443292463290629`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 245 terms. -/
def A043305 (n : ℕ) : ℤ :=
  A043305.P4009443292463290629.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 245 terms. -/
def A043305.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043373.P14535102336819130435

`eq[1, A268643(A202267(n+1))]`
-/

namespace A043373.P14535102336819130435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A202267 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043373.P14535102336819130435

noncomputable section

/-- A043373: Numbers having one 1 in base 6.

Offset 1, canonical program `A043373.P14535102336819130435`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 501 terms. -/
def A043373 (n : ℕ) : ℤ :=
  (A043373.P14535102336819130435.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 501 terms. -/
def A043373.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043374.P2562793773379906124

`eq[2, A268643(A202267(n+1))]`
-/

namespace A043374.P2562793773379906124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A202267 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043374.P2562793773379906124

noncomputable section

/-- A043374: Numbers having two 1's in base 6.

Offset 1, canonical program `A043374.P2562793773379906124`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 150 terms. -/
def A043374 (n : ℕ) : ℤ :=
  (A043374.P2562793773379906124.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 150 terms. -/
def A043374.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043377.P3490029336674327219

`eq[1, A316863(A202267(n+1))]`
-/

namespace A043377.P3490029336674327219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A202267 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043377.P3490029336674327219

noncomputable section

/-- A043377: Numbers having one 2 in base 6.

Offset 1, canonical program `A043377.P3490029336674327219`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. -/
def A043377 (n : ℕ) : ℤ :=
  (A043377.P3490029336674327219.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. -/
def A043377.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043378.P3910935549729391962

`eq[2, A316863(A202267(n+1))]`
-/

namespace A043378.P3910935549729391962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A202267 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043378.P3910935549729391962

noncomputable section

/-- A043378: Numbers having two 2's in base 6.

Offset 1, canonical program `A043378.P3910935549729391962`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 150 terms. -/
def A043378 (n : ℕ) : ℤ :=
  (A043378.P3910935549729391962.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 150 terms. -/
def A043378.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043389.P5903434223701845817

`eq[1, A102677(A202267(n+1))]`
-/

namespace A043389.P5903434223701845817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102677 (A202267 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043389.P5903434223701845817

noncomputable section

/-- A043389: Numbers having one 5 in base 6.

Offset 1, canonical program `A043389.P5903434223701845817`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. -/
def A043389 (n : ℕ) : ℤ :=
  (A043389.P5903434223701845817.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. -/
def A043389.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043390.P901358576775283053

`eq[2, A102677(A202267(n+1))]`
-/

namespace A043390.P901358576775283053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102677 (A202267 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043390.P901358576775283053

noncomputable section

/-- A043390: Numbers having two 5's in base 6.

Offset 1, canonical program `A043390.P901358576775283053`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 150 terms. -/
def A043390 (n : ℕ) : ℤ :=
  (A043390.P901358576775283053.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 150 terms. -/
def A043390.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043514.P17552009662386232543

`eq[2, A316864(A061601(n))]`
-/

namespace A043514.P17552009662386232543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A061601 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043514.P17552009662386232543

noncomputable section

/-- A043514: Numbers having two 6's in base 10.

Offset 1, canonical program `A043514.P17552009662386232543`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 486 terms. -/
def A043514 (n : ℕ) : ℤ :=
  (A043514.P17552009662386232543.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 486 terms. -/
def A043514.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043518.P17478239837040593349

`eq[2, A316863(A061601(n))]`
-/

namespace A043518.P17478239837040593349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A061601 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043518.P17478239837040593349

noncomputable section

/-- A043518: Numbers having two 7's in base 10.

Offset 1, canonical program `A043518.P17478239837040593349`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 486 terms. -/
def A043518 (n : ℕ) : ℤ :=
  (A043518.P17478239837040593349.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 486 terms. -/
def A043518.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A044974.P2158267626890744817

`∩[A023695(n+1), A043321(n+1)]`
-/

namespace A044974.P2158267626890744817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023695 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043321 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044974.P2158267626890744817

noncomputable section

/-- A044974: Numbers whose base-3 representation contains exactly one 0 and four 1's.

Offset 1, canonical program `A044974.P2158267626890744817`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1430 terms. -/
def A044974 (n : ℕ) : ℤ :=
  (A044974.P2158267626890744817.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1430 terms. -/
def A044974.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A044979.P7189074795377754944

`∩[A023695(n+1), A043322(n+1)]`
-/

namespace A044979.P7189074795377754944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023695 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043322 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044979.P7189074795377754944

noncomputable section

/-- A044979: Numbers whose base-3 representation contains exactly two 0's and four 1's.

Offset 1, canonical program `A044979.P7189074795377754944`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2581 terms. -/
def A044979 (n : ℕ) : ℤ :=
  (A044979.P7189074795377754944.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2581 terms. -/
def A044979.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A044984.P4664107033638038390

`∩[A023695(n+1), A043323(n+1)]`
-/

namespace A044984.P4664107033638038390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023695 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043323 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044984.P4664107033638038390

noncomputable section

/-- A044984: Numbers whose base-3 representation contains exactly three 0's and four 1's.

Offset 1, canonical program `A044984.P4664107033638038390`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2594 terms. -/
def A044984 (n : ℕ) : ℤ :=
  (A044984.P4664107033638038390.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2594 terms. -/
def A044984.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045018.P11477163721360045438

`A006015(A045066(n+1))`
-/

namespace A045018.P11477163721360045438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006015 (A045066 (n + 1)).toNat

end

end A045018.P11477163721360045438

noncomputable section

/-- A045018: Numbers whose base-4 representation contains exactly one 0 and no 1's.

Offset 1, canonical program `A045018.P11477163721360045438`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 643 terms. -/
def A045018 (n : ℕ) : ℤ :=
  A045018.P11477163721360045438.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 643 terms. -/
def A045018.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045068.P15868725740429608415

`∩[A023719(n+1), A031466(n+1)]`
-/

namespace A045068.P15868725740429608415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023719 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031466 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045068.P15868725740429608415

noncomputable section

/-- A045068: Numbers whose base-4 representation contains exactly one 0 and two 3's.

Offset 1, canonical program `A045068.P15868725740429608415`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3556 terms. -/
def A045068 (n : ℕ) : ℤ :=
  (A045068.P15868725740429608415.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3556 terms. -/
def A045068.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045089.P4664350553262061469

`A023709(A023695(n+1)+1)`
-/

namespace A045089.P4664350553262061469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023709 (A023695 (n + 1) + 1).toNat

end

end A045089.P4664350553262061469

noncomputable section

/-- A045089: Numbers whose base-4 representation contains no 1's and exactly four 2's.

Offset 1, canonical program `A045089.P4664350553262061469`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A045089 (n : ℕ) : ℤ :=
  A045089.P4664350553262061469.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A045089.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045109.P98421992831852164

`A023717(∩[A023695(n+1), A023702(n+1)])`
-/

namespace A045109.P98421992831852164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023695 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023702 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A045109.P98421992831852164

noncomputable section

/-- A045109: Numbers whose base-4 representation contains exactly four 1's and four 2's.

Offset 1, canonical program `A045109.P98421992831852164`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. -/
def A045109 (n : ℕ) : ℤ :=
  A045109.P98421992831852164.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. -/
def A045109.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045110.P18270338240771069738

`3*A045138(n+1)-A045134(n+1)`
-/

namespace A045110.P18270338240771069738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A045138 (n + 1) - A045134 (n + 1)

end

end A045110.P18270338240771069738

noncomputable section

/-- A045110: Numbers whose base-4 representation contains no 1's and exactly one 3.

Offset 1, canonical program `A045110.P18270338240771069738`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045110 (n : ℕ) : ℤ :=
  A045110.P18270338240771069738.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045110.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045135.P12059944341482856690

`3*A045143(n+1)-A045111(n+1)`
-/

namespace A045135.P12059944341482856690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A045143 (n + 1) - A045111 (n + 1)

end

end A045135.P12059944341482856690

noncomputable section

/-- A045135: Numbers whose base-4 representation contains no 2's and exactly two 3's.

Offset 1, canonical program `A045135.P12059944341482856690`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045135 (n : ℕ) : ℤ :=
  A045135.P12059944341482856690.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045135.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045140.P4056378356856557150

`∩[A023714(n+1), A023719(n+1)]`
-/

namespace A045140.P4056378356856557150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023714 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023719 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045140.P4056378356856557150

noncomputable section

/-- A045140: Numbers whose base-4 representation contains exactly one 2 and two 3's.

Offset 1, canonical program `A045140.P4056378356856557150`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3296 terms. -/
def A045140 (n : ℕ) : ℤ :=
  (A045140.P4056378356856557150.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3296 terms. -/
def A045140.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045145.P17634236122104813282

`∩[A023715(n+1), A023719(n+1)]`
-/

namespace A045145.P17634236122104813282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023719 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045145.P17634236122104813282

noncomputable section

/-- A045145: Numbers whose base-4 representation contains exactly two 2's and two 3's.

Offset 1, canonical program `A045145.P17634236122104813282`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3287 terms. -/
def A045145 (n : ℕ) : ℤ :=
  (A045145.P17634236122104813282.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3287 terms. -/
def A045145.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045237.P11851650769541993133

`∩[A023726(n+1), A039011(n+1)]`
-/

namespace A045237.P11851650769541993133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023726 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039011 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045237.P11851650769541993133

noncomputable section

/-- A045237: Numbers whose base-5 representation contains exactly one 1 and one 3.

Offset 1, canonical program `A045237.P11851650769541993133`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3786 terms. -/
def A045237 (n : ℕ) : ℤ :=
  (A045237.P11851650769541993133.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3786 terms. -/
def A045237.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045389.P14148912449142965134

`A045377((n+1)%(2*n+1)+1)`
-/

namespace A045389.P14148912449142965134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045377 ((n + 1) % (2 * n + 1) + 1)

end

end A045389.P14148912449142965134

noncomputable section

/-- A045389: Primes congruent to {2, 6} mod 7.

Offset 1, canonical program `A045389.P14148912449142965134`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A045389 (n : ℕ) : ℤ :=
  A045389.P14148912449142965134.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A045389.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045702.P6657115471213051972

`record[A094571(A245300(n))]`
-/

namespace A045702.P6657115471213051972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094571 (A245300 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045702.P6657115471213051972

noncomputable section

/-- A045702: Sums of two squares of Fibonacci numbers.

Offset 1, canonical program `A045702.P6657115471213051972`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2554 terms. -/
def A045702 (n : ℕ) : ℤ :=
  A045702.P6657115471213051972.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2554 terms. -/
def A045702.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045725.P13366882839411925248

`A000045(A105501(n+2))`
-/

namespace A045725.P13366882839411925248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A105501 (n + 2)).toNat

end

end A045725.P13366882839411925248

noncomputable section

/-- A045725: Fibonacci numbers having initial digit '1'.

Offset 1, canonical program `A045725.P13366882839411925248`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A045725 (n : ℕ) : ℤ :=
  A045725.P13366882839411925248.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A045725.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045750.P15382284062470339353

`3*A045749(n)+n`
-/

namespace A045750.P15382284062470339353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A045749 n + (n : ℤ)

end

end A045750.P15382284062470339353

noncomputable section

/-- A045750: Extension of Beatty sequence, complement of A045749.

Offset 0, canonical program `A045750.P15382284062470339353`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045749, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A045750 (n : ℕ) : ℤ :=
  A045750.P15382284062470339353.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045749, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A045750.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A045804.P14689304370884465155

`A045800(n+2)+A045802(n+2)-A045803(n+2)`
-/

namespace A045804.P14689304370884465155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045800 (n + 2) + (A045802 (n + 2) - A045803 (n + 2))

end

end A045804.P14689304370884465155

noncomputable section

/-- A045804: 4-ish numbers (end in 09, 41, 63, 87).

Offset 1, canonical program `A045804.P14689304370884465155`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A045804 (n : ℕ) : ℤ :=
  A045804.P14689304370884465155.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A045804.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045806.P9728619306561941735

`2*A045802(n+2)-A045803(n+2)`
-/

namespace A045806.P9728619306561941735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A045802 (n + 2) - A045803 (n + 2)

end

end A045806.P9728619306561941735

noncomputable section

/-- A045806: 6-ish numbers (end in 23, 27, 61, 89).

Offset 1, canonical program `A045806.P9728619306561941735`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A045806 (n : ℕ) : ℤ :=
  A045806.P9728619306561941735.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A045806.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045808.P2297659605663347739

`A045803(n+1)+50`
-/

namespace A045808.P2297659605663347739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045803 (n + 1) + 50

end

end A045808.P2297659605663347739

noncomputable section

/-- A045808: 8-ish numbers (end in 67, 69, 81, 83).

Offset 1, canonical program `A045808.P2297659605663347739`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045808 (n : ℕ) : ℤ :=
  A045808.P2297659605663347739.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045808.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A046217.P15675039198389379782

`lcm(2, A134636(n+1))/2`
-/

namespace A046217.P15675039198389379782
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A134636 (n + 1)) : ℚ) / 2

end

end A046217.P15675039198389379782

noncomputable section

/-- A046217: First numerator and then denominator of 1/2-Pascal triangle (by row) excluding 1's and 2's.

Offset 1, canonical program `A046217.P15675039198389379782`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A046217 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A046217.P15675039198389379782.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A046217.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046224.P15998395619117309683

`A210736(A004275(n))+A004275(n)*A120588(n)`
-/

namespace A046224.P15998395619117309683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 (A004275 n).toNat + A004275 n * A120588 n

end

end A046224.P15998395619117309683

noncomputable section

/-- A046224: Distinct numbers seen when writing first numerator and then denominator of central elements of 1/2-Pascal triangle.

Offset 1, canonical program `A046224.P15998395619117309683`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A046224 (n : ℕ) : ℤ :=
  A046224.P15998395619117309683.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A046224.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046337.P8460392914178476196

`eq[1, A353557(n+1)]+1`
-/

namespace A046337.P8460392914178476196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353557 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A046337.P8460392914178476196

noncomputable section

/-- A046337: Odd numbers with an even number of prime factors (counted with multiplicity).

Offset 1, canonical program `A046337.P8460392914178476196`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046337 (n : ℕ) : ℤ :=
  (A046337.P8460392914178476196.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046337.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046343.P14376199206218772197

`A001414(A002808(n+1))`
-/

namespace A046343.P14376199206218772197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A002808 (n + 1)).toNat

end

end A046343.P14376199206218772197

noncomputable section

/-- A046343: Sum of the prime factors of the composite numbers (counted with multiplicity).

Offset 1, canonical program `A046343.P14376199206218772197`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, A002808, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A046343 (n : ℕ) : ℤ :=
  A046343.P14376199206218772197.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, A002808, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A046343.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A046344.P6539117729032939292

`A001414(A007921(n+1)+2)`
-/

namespace A046344.P6539117729032939292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A007921 (n + 1) + 2).toNat

end

end A046344.P6539117729032939292

noncomputable section

/-- A046344: Sum of the prime factors of the odd composite numbers (counted with multiplicity).

Offset 1, canonical program `A046344.P6539117729032939292`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046344 (n : ℕ) : ℤ :=
  A046344.P6539117729032939292.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046344.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046642.P10673475992677074889

`eq[1, A009191(n+1)]+1`
-/

namespace A046642.P10673475992677074889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009191 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A046642.P10673475992677074889

noncomputable section

/-- A046642: Numbers k such that k and number of divisors d(k) are relatively prime.

Offset 1, canonical program `A046642.P10673475992677074889`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046642 (n : ℕ) : ℤ :=
  (A046642.P10673475992677074889.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046642.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046736.P811384115133273399

`floor(A232665(n)/(n+1))`
-/

namespace A046736.P811384115133273399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A232665 n : ℚ) / (n + 1 : ℚ)⌋

end

end A046736.P811384115133273399

noncomputable section

/-- A046736: Number of ways to place non-intersecting diagonals in convex n-gon so as to create no triangles.

Offset 2, canonical program `A046736.P811384115133273399`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 191 terms. -/
def A046736 (n : ℕ) : ℤ :=
  A046736.P811384115133273399.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 191 terms. -/
def A046736.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047099.P10041740196740171464

`A047098(n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A047099.P10041740196740171464
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047098 (n + 1) : ℚ) / 2

end

end A047099.P10041740196740171464

noncomputable section

/-- A047099: a(n) = A047098(n)/2.

Offset 1, canonical program `A047099.P10041740196740171464`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047098, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A047099 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A047099.P10041740196740171464.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047098, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A047099.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A047171.P3617621157085985974

`A057428(n)+A037952(n)`
-/

namespace A047171.P3617621157085985974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A037952 n

end

end A047171.P3617621157085985974

noncomputable section

/-- A047171: Number of nonempty subsets of {1,2,...,n} in which exactly 1/2 of the elements are <= (n-1)/2.

Offset 0, canonical program `A047171.P3617621157085985974`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A047171 (n : ℕ) : ℤ :=
  A047171.P3617621157085985974.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A047171.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048105.P14513846835403787716

`A000005(n+1)-A034444(n+1)`
-/

namespace A048105.P14513846835403787716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A034444 (n + 1)

end

end A048105.P14513846835403787716

noncomputable section

/-- A048105: Number of non-unitary divisors of n.

Offset 1, canonical program `A048105.P14513846835403787716`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034444, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A048105 (n : ℕ) : ℤ :=
  A048105.P14513846835403787716.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034444, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A048105.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A048107.P6210159664874137761

`lt[A005361(n+1), 3]+1`
-/

namespace A048107.P6210159664874137761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A048107.P6210159664874137761

noncomputable section

/-- A048107: Numbers k such that the number of unitary divisors of k (A034444) is larger than the number of non-unitary divisors of k (A048105).

Offset 1, canonical program `A048107.P6210159664874137761`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048107 (n : ℕ) : ℤ :=
  (A048107.P6210159664874137761.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048107.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048167.P12277590638734498144

`A048166(n+1)/A034444(A048166(n+1))`
-/

namespace A048167.P12277590638734498144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048166 (n + 1) : ℚ) / (A034444 (A048166 (n + 1)).toNat : ℚ)

end

end A048167.P12277590638734498144

noncomputable section

/-- A048167: Integer quotients of numbers k divisible by the number of unitary divisors of k (A034444).

Offset 1, canonical program `A048167.P12277590638734498144`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034444, A048166, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A048167 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A048167.P12277590638734498144.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034444, A048166, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A048167.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A048244.P17897497883723303943

`A048106(A001405(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A048244.P17897497883723303943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048106 (A001405 (n + 1)).toNat

end

end A048244.P17897497883723303943

noncomputable section

/-- A048244: a(n) = A048106(A001405(n)).

Offset 1, canonical program `A048244.P17897497883723303943`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048106, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A048244 (n : ℕ) : ℤ :=
  A048244.P17897497883723303943.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048106, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A048244.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A048449.P12200641501554695606

`A000040(n+1)+A048448(n)+A004139(n+1)`
-/

namespace A048449.P12200641501554695606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A048448 n + A004139 (n + 1))

end

end A048449.P12200641501554695606

noncomputable section

/-- A048449: Starting from generation 2 add previous and next term yielding generation 3.

Offset 0, canonical program `A048449.P12200641501554695606`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048449 (n : ℕ) : ℤ :=
  A048449.P12200641501554695606.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048449.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048657.P12251602765094748303

`A027423(n+1)-A048656(n+1)`
-/

namespace A048657.P12251602765094748303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027423 (n + 1) - A048656 (n + 1)

end

end A048657.P12251602765094748303

noncomputable section

/-- A048657: Number of non-unitary divisors of n!.

Offset 1, canonical program `A048657.P12251602765094748303`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 927 terms. -/
def A048657 (n : ℕ) : ℤ :=
  A048657.P12251602765094748303.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 927 terms. -/
def A048657.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048701.P12021779623566832141

`A030101(n)+n*A062383(n)`
-/

namespace A048701.P12021779623566832141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 n + (n : ℤ) * A062383 n

end

end A048701.P12021779623566832141

noncomputable section

/-- A048701: List of binary palindromes of even length (written in base 10).

Offset 0, canonical program `A048701.P12021779623566832141`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048701 (n : ℕ) : ℤ :=
  A048701.P12021779623566832141.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048701.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048740.P15296092853580222762

`A007955(A002808(n+1))`
-/

namespace A048740.P15296092853580222762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (A002808 (n + 1)).toNat

end

end A048740.P15296092853580222762

noncomputable section

/-- A048740: Product of divisors of n-th composite number.

Offset 1, canonical program `A048740.P15296092853580222762`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A048740 (n : ℕ) : ℤ :=
  A048740.P15296092853580222762.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A048740.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A049078.P11330889708614572885

`A000040(A007821(n+1))`
-/

namespace A049078.P11330889708614572885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A007821 (n + 1)).toNat

end

end A049078.P11330889708614572885

noncomputable section

/-- A049078: Primes prime(k) for which A049076(k) = 2.

Offset 1, canonical program `A049078.P11330889708614572885`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007821, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A049078 (n : ℕ) : ℤ :=
  A049078.P11330889708614572885.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007821, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A049078.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A049084.P10934933317972537770

`A000720(n+1)*A010051(n+1)`
-/

namespace A049084.P10934933317972537770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) * A010051 (n + 1)

end

end A049084.P10934933317972537770

noncomputable section

/-- A049084: a(n) = pi(n) if n is prime, otherwise 0.

Offset 1, canonical program `A049084.P10934933317972537770`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A049084 (n : ℕ) : ℤ :=
  A049084.P10934933317972537770.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A049084.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A049456.P5211538082339159720

`A002487(A103354(n+2))`
-/

namespace A049456.P5211538082339159720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A103354 (n + 2)).toNat

end

end A049456.P5211538082339159720

noncomputable section

/-- A049456: Triangle T(n,k) = denominator of fraction in k-th term of n-th row of variant of Farey series. This is also Stern's diatomic array read by rows (version 1).

Offset 1, canonical program `A049456.P5211538082339159720`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A049456 (n : ℕ) : ℤ :=
  A049456.P5211538082339159720.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A049456.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050361.P4609984906141832222

`∏{e}[n+1, A347586(#)]`
-/

namespace A050361.P4609984906141832222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A347586 (Nat.factorization (f1 n) p)

end

end A050361.P4609984906141832222

noncomputable section

/-- A050361: Number of factorizations into distinct prime powers greater than 1.

Offset 1, canonical program `A050361.P4609984906141832222`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050361 (n : ℕ) : ℤ :=
  A050361.P4609984906141832222.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050361.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050435.P14006746801944486327

`A002808(A002808(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A050435.P14006746801944486327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A002808 (n + 1)).toNat

end

end A050435.P14006746801944486327

noncomputable section

/-- A050435: a(n) = composite(composite(n)), where composite = A002808, composite numbers.

Offset 1, canonical program `A050435.P14006746801944486327`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A050435 (n : ℕ) : ℤ :=
  A050435.P14006746801944486327.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A050435.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A050459.P9123758851676713191

`A050451(n+1)-A050454(n+1)`
-/

namespace A050459.P9123758851676713191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050451 (n + 1) - A050454 (n + 1)

end

end A050459.P9123758851676713191

noncomputable section

/-- A050459: a(n) = Sum_{d|n, d==1 mod 4} d^3 - Sum_{d|n, d==3 mod 4} d^3.

Offset 1, canonical program `A050459.P9123758851676713191`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050451, A050454, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A050459 (n : ℕ) : ℤ :=
  A050459.P9123758851676713191.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050451, A050454, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A050459.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A050460.P174083124151891616

`(A002131(n+1)+A050469(n+1))/2`
-/

namespace A050460.P174083124151891616
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002131 (n + 1) + A050469 (n + 1) : ℚ) / 2

end

end A050460.P174083124151891616

noncomputable section

/-- A050460: a(n) = Sum_{d|n, n/d=1 mod 4} d.

Offset 1, canonical program `A050460.P174083124151891616`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050469, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A050460 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A050460.P174083124151891616.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050469, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A050460.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A050613.P13423793685532721928

`A075149(or(1, n))`
-/

namespace A050613.P13423793685532721928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075149 (Nat.lor 1 n)

end

end A050613.P13423793685532721928

noncomputable section

/-- A050613: Products of distinct terms of 1 and rest from A001566: a(n) = Product_{i=0..floor(log_2(n+1))} L(2^i)^bit(n,i).

Offset 0, canonical program `A050613.P13423793685532721928`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A050613 (n : ℕ) : ℤ :=
  A050613.P13423793685532721928.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A050613.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050931.P15021199958239579984

`lt[0, A005072(n+1)]+1`
-/

namespace A050931.P15021199958239579984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005072 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A050931.P15021199958239579984

noncomputable section

/-- A050931: Numbers having a prime factor congruent to 1 mod 6.

Offset 1, canonical program `A050931.P15021199958239579984`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6103 terms. -/
def A050931 (n : ℕ) : ℤ :=
  (A050931.P15021199958239579984.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6103 terms. -/
def A050931.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050939.P13334191487414510968

`comp[A193922(n)-1]+1`
-/

namespace A050939.P13334191487414510968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193922 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A050939.P13334191487414510968

noncomputable section

/-- A050939: Numbers that are not the sum of consecutive Fibonacci numbers.

Offset 1, canonical program `A050939.P13334191487414510968`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050939 (n : ℕ) : ℤ :=
  (A050939.P13334191487414510968.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050939.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051135.P7841360352150666310

`A188163(n+2)-A188163(n+1)`
-/

namespace A051135.P7841360352150666310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188163 (n + 2) - A188163 (n + 1)

end

end A051135.P7841360352150666310

noncomputable section

/-- A051135: a(n) = number of times n appears in the Hofstadter-Conway $10000 sequence A004001.

Offset 1, canonical program `A051135.P7841360352150666310`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A188163, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A051135 (n : ℕ) : ℤ :=
  A051135.P7841360352150666310.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A188163, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A051135.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A051201.P10278196116176951271

`1/4*A000267(n+1)*A055086(n+1)+1/2*A006218(n+1)`
-/

namespace A051201.P10278196116176951271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 4 * (A000267 (n + 1) : ℚ) * (A055086 (n + 1) : ℚ) + (1 : ℚ) / 2 * (A006218 (n + 1) : ℚ)

end

end A051201.P10278196116176951271

noncomputable section

/-- A051201: Sum of elements of the set { [ n/k ] : 1 <= k <= n }.

Offset 1, canonical program `A051201.P10278196116176951271`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051201 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A051201.P10278196116176951271.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051201.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051283.P12676069233016146012

`eq[1, A354996(n+1)]+1`
-/

namespace A051283.P12676069233016146012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354996 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A051283.P12676069233016146012

noncomputable section

/-- A051283: Numbers k such that if one writes k = Product p_i^e_i (p_i primes) and P = max p_i^e_i, then k/P > P.

Offset 1, canonical program `A051283.P12676069233016146012`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051283 (n : ℕ) : ℤ :=
  (A051283.P12676069233016146012.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051283.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051352.P2247896589470806278

`a(n-1)+n*(1-2*A010051(n))` with `a(0)=0`
-/

namespace A051352.P2247896589470806278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (n : ℤ) * (1 - 2 * A010051 n)

end

end A051352.P2247896589470806278

noncomputable section

/-- A051352: a(0) = 0; for n>0, a(n) = a(n-1) + n if n not prime else a(n-1) - n.

Offset 0, canonical program `A051352.P2247896589470806278`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A051352 (n : ℕ) : ℤ :=
  A051352.P2247896589470806278.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A051352.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A051353.P4884144329668290276

`a(n-1)+n*(A010051(n)*(n+1)-1)` with `a(0)=0`
-/

namespace A051353.P4884144329668290276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (n : ℤ) * (A010051 n * (n + 1 : ℤ) - 1)

end

end A051353.P4884144329668290276

noncomputable section

/-- A051353: a(n) = a(n-1) + n^2 if n prime else a(n-1) - n, starting with a(0) = 0.

Offset 0, canonical program `A051353.P4884144329668290276`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A051353 (n : ℕ) : ℤ :=
  A051353.P4884144329668290276.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A051353.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A051356.P11536315113442041786

`∑[Δ[A112632(n+1)]*A065091(n+1)]`
-/

namespace A051356.P11536315113442041786
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112632 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A065091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051356.P11536315113442041786

noncomputable section

/-- A051356: Start with 0, run through primes >=5, adding if -1 mod 6, subtracting if +1 mod 6.

Offset 0, canonical program `A051356.P11536315113442041786`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A051356 (n : ℕ) : ℤ :=
  A051356.P11536315113442041786.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A051356.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051598.P11098162579697711574

`A134636(n)-A097805(n+1)`
-/

namespace A051598.P11098162579697711574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134636 n - A097805 (n + 1)

end

end A051598.P11098162579697711574

noncomputable section

/-- A051598: Rows of triangle formed using Pascal's rule except begin n-th row with 2*n and end it with 2*n+1.

Offset 0, canonical program `A051598.P11098162579697711574`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051598 (n : ℕ) : ℤ :=
  A051598.P11098162579697711574.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051598.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051951.P11397954646157849919

`Δ[A051950(A028310(n)+1)]`
-/

namespace A051951.P11397954646157849919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051950 (A028310 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A051951.P11397954646157849919

noncomputable section

/-- A051951: Second differences of tau(n).

Offset 0, canonical program `A051951.P11397954646157849919`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051951 (n : ℕ) : ℤ :=
  A051951.P11397954646157849919.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051951.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052511.P3876828905905718149

`A000040(n+1)-1-A006218(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A052511.P3876828905905718149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 1 - A006218 (n + 1)

end

end A052511.P3876828905905718149

noncomputable section

/-- A052511: a(n) = prime(n) - 1 - A006218(n).

Offset 1, canonical program `A052511.P3876828905905718149`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+1)-1-A006218(n+1)` (program `A052511.P3876828905905718149`, by `A052511.P3876828905905718149.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A052511 (n : ℕ) : ℤ :=
  A052511.P3876828905905718149.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+1)-1-A006218(n+1)` (program `A052511.P3876828905905718149`, by `A052511.P3876828905905718149.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A052511.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A052714.P11540160832821077407

`A052701(n)*n!`
-/

namespace A052714.P11540160832821077407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052701 n * (Nat.factorial n : ℤ)

end

end A052714.P11540160832821077407

noncomputable section

/-- A052714: a(n) = 2^(n-1) * n! * Catalan(n-1) for n > 0 with a(0) = 0.

Offset 0, canonical program `A052714.P11540160832821077407`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052701, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A052714 (n : ℕ) : ℤ :=
  A052714.P11540160832821077407.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052701, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A052714.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A052792.P11520273071812812638

`n*A052776(abs(1-n))`
-/

namespace A052792.P11520273071812812638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A052776 |1 - (n : ℤ)|.toNat

end

end A052792.P11520273071812812638

noncomputable section

/-- A052792: Expansion of e.g.f.: x^2*(exp(x)-1)^4.

Offset 0, canonical program `A052792.P11520273071812812638`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A052792 (n : ℕ) : ℤ :=
  A052792.P11520273071812812638.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A052792.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053021.P11940680763512173238

`A000005(A027423(n+1))`
-/

namespace A053021.P11940680763512173238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A027423 (n + 1)).toNat

end

end A053021.P11940680763512173238

noncomputable section

/-- A053021: Number of divisors function applied twice to n!.

Offset 1, canonical program `A053021.P11940680763512173238`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053021 (n : ℕ) : ℤ :=
  A053021.P11940680763512173238.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053021.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053227.P5415555737178442554

`abs(A053222(A053226(n+1)))`
-/

namespace A053227.P5415555737178442554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A053222 (A053226 (n + 1)).toNat|

end

end A053227.P5415555737178442554

noncomputable section

/-- A053227: First differences of sigma(n) that are negative.

Offset 1, canonical program `A053227.P5415555737178442554`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4989 terms. -/
def A053227 (n : ℕ) : ℤ :=
  A053227.P5415555737178442554.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4989 terms. -/
def A053227.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053240.P4301108083726215672

`eq[char[A053241(n+1)], A000007(n)]`
-/

namespace A053240.P4301108083726215672
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053241 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A053240.P4301108083726215672

noncomputable section

/-- A053240: n for which values not equal to 2 occur in the expansion of A053238.

Offset 1, canonical program `A053240.P4301108083726215672`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1508 terms. -/
def A053240 (n : ℕ) : ℤ :=
  (A053240.P4301108083726215672.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1508 terms. -/
def A053240.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053405.P14811944541059498351

`A257213(n+3)+1`
-/

namespace A053405.P14811944541059498351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257213 (n + 3) + 1

end

end A053405.P14811944541059498351

noncomputable section

/-- A053405: Definition: A kara B = C, where C is the least nonnegative integer such that C * B >= A and C * (B-1) < A. a(n) is the smallest k such that n kara k is undefined.

Offset 4, canonical program `A053405.P14811944541059498351`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A257213, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053405 (n : ℕ) : ℤ :=
  A053405.P14811944541059498351.a (n - 4)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A257213, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053405.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A053865.P16031829855945893776

`A053864(A003557(n+1)*A055231(n+1))`
-/

namespace A053865.P16031829855945893776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053864 (A003557 (n + 1) * A055231 (n + 1)).toNat

end

end A053865.P16031829855945893776

noncomputable section

/-- A053865: A third-order generalization of the Mobius function of n.

Offset 1, canonical program `A053865.P16031829855945893776`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053865 (n : ℕ) : ℤ :=
  A053865.P16031829855945893776.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053865.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053981.P11504119553309885411

`A189021(A062378(n+1))^A007426(n+1)`
-/

namespace A053981.P11504119553309885411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189021 (A062378 (n + 1)).toNat : ℚ) ^ (A007426 (n + 1) : ℤ)

end

end A053981.P11504119553309885411

noncomputable section

/-- A053981: A fourth order generalization of the Mobius function of n.

Offset 1, canonical program `A053981.P11504119553309885411`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053981 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A053981.P11504119553309885411.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053981.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054011.P1372442972230571596

`lt[A032741(A054009(n+2)), A054009(n+2)]+2`
-/

namespace A054011.P1372442972230571596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A054009 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054009 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A054011.P1372442972230571596

noncomputable section

/-- A054011: n is not divisible by the number of its proper divisors.

Offset 1, canonical program `A054011.P1372442972230571596`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7446 terms. -/
def A054011 (n : ℕ) : ℤ :=
  (A054011.P1372442972230571596.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7446 terms. -/
def A054011.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054020.P2226027343435845436

`lt[1, A054015(n+1)+1]+1`
-/

namespace A054020.P2226027343435845436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054015 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A054020.P2226027343435845436

noncomputable section

/-- A054020: Chowla's function of n is not divisible by the number of proper divisors of n.

Offset 1, canonical program `A054020.P2226027343435845436`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054020 (n : ℕ) : ℤ :=
  (A054020.P2226027343435845436.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054020.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054021.P6429758712637015010

`eq[0, A054015(n+2)]+2`
-/

namespace A054021.P6429758712637015010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054015 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A054021.P6429758712637015010

noncomputable section

/-- A054021: Numbers n such that Chowla's function of n is divisible by the number of proper divisors of n.

Offset 1, canonical program `A054021.P6429758712637015010`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5328 terms. -/
def A054021 (n : ℕ) : ℤ :=
  (A054021.P6429758712637015010.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5328 terms. -/
def A054021.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054057.P9083325440450604952

`A054056(n+1)+12`
-/

namespace A054057.P9083325440450604952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054056 (n + 1) + 12

end

end A054057.P9083325440450604952

noncomputable section

/-- A054057: Numbers of form 41+n^2+n or 41+2*n^2.

Offset 1, canonical program `A054057.P9083325440450604952`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054057 (n : ℕ) : ℤ :=
  A054057.P9083325440450604952.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054057.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054072.P9099250148289974949

`A194737(n+1)+1`
-/

namespace A054072.P9099250148289974949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194737 (n + 1) + 1

end

end A054072.P9099250148289974949

noncomputable section

/-- A054072: Position of n in the permutation of 1,2,...,n obtained by ordering the fractional parts {h*sqrt(2)} for h=1,2,...,n.

Offset 1, canonical program `A054072.P9099250148289974949`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054072 (n : ℕ) : ℤ :=
  A054072.P9099250148289974949.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054072.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054143.P11222314207562248900

`A204206(n+1)-A140513(n)`
-/

namespace A054143.P11222314207562248900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204206 (n + 1) - A140513 n

end

end A054143.P11222314207562248900

noncomputable section

/-- A054143: Triangular array T given by T(n,k) = Sum_{0 <= j <= i-n+k, n-k <= i <= n} C(i,j) for n >= 0 and 0 <= k <= n.

Offset 0, canonical program `A054143.P11222314207562248900`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054143 (n : ℕ) : ℤ :=
  A054143.P11222314207562248900.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054143.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054388.P5591882632319717874

`A002595(n)/gcd(A002595(n), A008574(n))`
-/

namespace A054388.P5591882632319717874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002595 n : ℚ) / (Int.gcd (A002595 n) (A008574 n) : ℚ)

end

end A054388.P5591882632319717874

noncomputable section

/-- A054388: Denominators of coefficients of 1/2^(2n+1) in Newton's series for Pi.

Offset 0, canonical program `A054388.P5591882632319717874`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A054388 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A054388.P5591882632319717874.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A054388.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054519.P3292618312068876157

`A006218(n)+1`
-/

namespace A054519.P3292618312068876157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n + 1

end

end A054519.P3292618312068876157

noncomputable section

/-- A054519: Number of increasing arithmetic progressions of nonnegative integers ending in n, including those of length 1 or 2.

Offset 0, canonical program `A054519.P3292618312068876157`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A054519 (n : ℕ) : ℤ :=
  A054519.P3292618312068876157.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A054519.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A055067.P4337884994625751527

`A000142(n+1)/A007955(n+1)`
-/

namespace A055067.P4337884994625751527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 1) : ℚ) / (A007955 (n + 1) : ℚ)

end

end A055067.P4337884994625751527

noncomputable section

/-- A055067: Product of numbers < n which do not divide n (or 1 if no such numbers exist).

Offset 1, canonical program `A055067.P4337884994625751527`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A055067 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A055067.P4337884994625751527.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A055067.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A055205.P13391514614413086589

`A048691(n+1)-A000005(n+1)`
-/

namespace A055205.P13391514614413086589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048691 (n + 1) - A000005 (n + 1)

end

end A055205.P13391514614413086589

noncomputable section

/-- A055205: Number of nonsquare divisors of n^2.

Offset 1, canonical program `A055205.P13391514614413086589`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A055205 (n : ℕ) : ℤ :=
  A055205.P13391514614413086589.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A055205.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A055212.P14412881054625885538

`A033273(n+1)-1`
-/

namespace A055212.P14412881054625885538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (n + 1) - 1

end

end A055212.P14412881054625885538

noncomputable section

/-- A055212: Number of composite divisors of n.

Offset 1, canonical program `A055212.P14412881054625885538`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033273, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055212 (n : ℕ) : ℤ :=
  A055212.P14412881054625885538.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033273, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055212.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A055219.P8501780133907540001

`A108863(n+3)`
-/

namespace A055219.P8501780133907540001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108863 (n + 3)

end

end A055219.P8501780133907540001

noncomputable section

/-- A055219: T(2n+3,n), array T as in A055216.

Offset 0, canonical program `A055219.P8501780133907540001`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A055219 (n : ℕ) : ℤ :=
  A055219.P8501780133907540001.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A055219.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055220.P257140366328946267

`A108863(n+4)-A014532(n+2)`
-/

namespace A055220.P257140366328946267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108863 (n + 4) - A014532 (n + 2)

end

end A055220.P257140366328946267

noncomputable section

/-- A055220: T(2n+4,n), array T as in A055216.

Offset 0, canonical program `A055220.P257140366328946267`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A055220 (n : ℕ) : ℤ :=
  A055220.P257140366328946267.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A055220.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055597.P13990031299968115871

`∑[val(1-A010051(n+1)+n, 2)]`
-/

namespace A055597.P13990031299968115871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (1 - A010051 (n + 1) + (n : ℤ)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055597.P13990031299968115871

noncomputable section

/-- A055597: Exponent of the highest power of 2 dividing phi(n!).

Offset 1, canonical program `A055597.P13990031299968115871`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055597 (n : ℕ) : ℤ :=
  (A055597.P13990031299968115871.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055597.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055678.P13434665025333706559

`record[A033950(n+1)%lcm(6, A033950(n+1))]`
-/

namespace A055678.P13434665025333706559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033950 (n + 1)) (Int.lcm 6 (A033950 (n + 1)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055678.P13434665025333706559

noncomputable section

/-- A055678: Integers not congruent to 0 (mod 6) that are divisible by the number of their divisors.

Offset 1, canonical program `A055678.P13434665025333706559`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4133 terms. -/
def A055678 (n : ℕ) : ℤ :=
  A055678.P13434665025333706559.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4133 terms. -/
def A055678.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055864.P3727447162581188383

`A003057(n+2)^A025581(n)*A076112(n+1)`
-/

namespace A055864.P3727447162581188383
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003057 (n + 2) : ℚ) ^ (A025581 n : ℤ) * (A076112 (n + 1) : ℚ)

end

end A055864.P3727447162581188383

noncomputable section

/-- A055864: Coefficient triangle for certain polynomials.

Offset 1, canonical program `A055864.P3727447162581188383`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1653 terms. -/
def A055864 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A055864.P3727447162581188383.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1653 terms. -/
def A055864.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055928.P10393867367407220433

`A035316((n+1)!)`
-/

namespace A055928.P10393867367407220433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035316 (Nat.factorial (n + 1))

end

end A055928.P10393867367407220433

noncomputable section

/-- A055928: Sum of square divisors of n! = sum of squares of divisors of the square root of largest square dividing n!.

Offset 1, canonical program `A055928.P10393867367407220433`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035316, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055928 (n : ℕ) : ℤ :=
  A055928.P10393867367407220433.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035316, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055928.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A055944.P9824612390251619605

`n+A030101(n)`
-/

namespace A055944.P9824612390251619605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A030101 n

end

end A055944.P9824612390251619605

noncomputable section

/-- A055944: a(n) = n + (reversal of base-2 digits of n) (written in base 10).

Offset 0, canonical program `A055944.P9824612390251619605`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030101, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055944 (n : ℕ) : ℤ :=
  A055944.P9824612390251619605.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030101, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055944.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A055981.P9915863314307213301

`ceil(A000142(n+1)/A027423(n+1))`
-/

namespace A055981.P9915863314307213301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000142 (n + 1) : ℚ) / (A027423 (n + 1) : ℚ)⌉

end

end A055981.P9915863314307213301

noncomputable section

/-- A055981: a(n) = ceiling(n!/d(n!)).

Offset 1, canonical program `A055981.P9915863314307213301`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A055981 (n : ℕ) : ℤ :=
  A055981.P9915863314307213301.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A055981.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A056011.P1549659588632935802

`A092543(n+1)+A057944(n)`
-/

namespace A056011.P1549659588632935802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092543 (n + 1) + A057944 n

end

end A056011.P1549659588632935802

noncomputable section

/-- A056011: Enumeration of natural numbers by the boustrophedonic diagonal method.

Offset 1, canonical program `A056011.P1549659588632935802`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056011 (n : ℕ) : ℤ :=
  A056011.P1549659588632935802.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056011.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056169.P17430176249366647977

`A001221(A055231(n+1))`
-/

namespace A056169.P17430176249366647977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A055231 (n + 1)).toNat

end

end A056169.P17430176249366647977

noncomputable section

/-- A056169: Number of unitary prime divisors of n.

Offset 1, canonical program `A056169.P17430176249366647977`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056169 (n : ℕ) : ℤ :=
  A056169.P17430176249366647977.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056169.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A056329.P340607529314105081

`A056324(n+1)-A056323(n+1)`
-/

namespace A056329.P340607529314105081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056324 (n + 1) - A056323 (n + 1)

end

end A056329.P340607529314105081

noncomputable section

/-- A056329: Number of reversible string structures with n beads using exactly five different colors.

Offset 1, canonical program `A056329.P340607529314105081`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056324, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056329 (n : ℕ) : ℤ :=
  A056329.P340607529314105081.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056324, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056329.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A056813.P16387577618086397622

`A008578(A056811(n+1)+1)`
-/

namespace A056813.P16387577618086397622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A056811 (n + 1) + 1).toNat

end

end A056813.P16387577618086397622

noncomputable section

/-- A056813: Largest non-unitary prime factor of LCM(1,...,n); that is, the largest prime which occurs to power > 1 in prime factorization of LCM(1,..,n).

Offset 1, canonical program `A056813.P16387577618086397622`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056813 (n : ℕ) : ℤ :=
  A056813.P16387577618086397622.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056813.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056925.P9728593941335423866

`(n+1)^A056924(n+1)`
-/

namespace A056925.P9728593941335423866
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A056924 (n + 1) : ℤ)

end

end A056925.P9728593941335423866

noncomputable section

/-- A056925: Largest integer power of n which divides product of divisors of n.

Offset 1, canonical program `A056925.P9728593941335423866`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056925 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A056925.P9728593941335423866.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056925.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A056928.P1059956196817698277

`A000290(n+2)+(A053000(n+2)-A056927(n+2))/2`
-/

namespace A056928.P1059956196817698277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000290 (n + 2) : ℚ) + (A053000 (n + 2) - A056927 (n + 2) : ℚ) / 2

end

end A056928.P1059956196817698277

noncomputable section

/-- A056928: Average of the smallest prime greater than n^2 and the largest prime less than n^2.

Offset 2, canonical program `A056928.P1059956196817698277`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053000, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056928 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A056928.P1059956196817698277.a (n - 2))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053000, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056928.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A056968.P16808487561389902358

`A062172(eq[11, A131818(n+1)])`
-/

namespace A056968.P16808487561389902358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062172 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A056968.P16808487561389902358

noncomputable section

/-- A056968: 10^(n-1) modulo n.

Offset 1, canonical program `A056968.P16808487561389902358`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. -/
def A056968 (n : ℕ) : ℤ :=
  A056968.P16808487561389902358.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. -/
def A056968.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057020.P17158263776737705447

`A000203(n+1)/A009205(n+1)`
-/

namespace A057020.P17158263776737705447
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A009205 (n + 1) : ℚ)

end

end A057020.P17158263776737705447

noncomputable section

/-- A057020: Numerator of (sum of divisors of n / number of divisors of n).

Offset 1, canonical program `A057020.P17158263776737705447`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057020 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A057020.P17158263776737705447.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057020.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A057021.P14859402968036356371

`A000005(n+1)/A009205(n+1)`
-/

namespace A057021.P14859402968036356371
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) / (A009205 (n + 1) : ℚ)

end

end A057021.P14859402968036356371

noncomputable section

/-- A057021: Denominator of (sum of divisors of n / number of divisors of n).

Offset 1, canonical program `A057021.P14859402968036356371`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057021 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A057021.P14859402968036356371.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057021.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A057022.P12449521830501119084

`(A000203(n+1)-A054025(n+1))/A000005(n+1)`
-/

namespace A057022.P12449521830501119084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) - A054025 (n + 1) : ℚ) / (A000005 (n + 1) : ℚ)

end

end A057022.P12449521830501119084

noncomputable section

/-- A057022: a(n) = floor((sum of divisors of n) / (number of divisors of n)), or floor(sigma_1(n)/sigma_0(n)).

Offset 1, canonical program `A057022.P12449521830501119084`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057022 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A057022.P12449521830501119084.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057022.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A057265.P17036607551991928888

`filter[A033950(n+1), A049240(#)]`
-/

namespace A057265.P17036607551991928888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A057265.P17036607551991928888

noncomputable section

/-- A057265: Even refactorable numbers (i.e., the number of divisors is itself a divisor and it is also even).

Offset 1, canonical program `A057265.P17036607551991928888`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3537 terms. -/
def A057265 (n : ℕ) : ℤ :=
  A057265.P17036607551991928888.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3537 terms. -/
def A057265.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057334.P9909904161761339769

`A008578(1+A000120(n))`
-/

namespace A057334.P9909904161761339769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (1 + A000120 n).toNat

end

end A057334.P9909904161761339769

noncomputable section

/-- A057334: In A000120, replace each entry k with the k-th prime and replace 0 with 1.

Offset 0, canonical program `A057334.P9909904161761339769`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008578, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A057334 (n : ℕ) : ℤ :=
  A057334.P9909904161761339769.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008578, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A057334.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A057494.P2374338064675521297

`A006218(10^n)`
-/

namespace A057494.P2374338064675521297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (10 ^ n)

end

end A057494.P2374338064675521297

noncomputable section

/-- A057494: a(n) = Sum_{k = 1..10^n} d(k) where d(n) = number of divisors of n (A000005).

Offset 0, canonical program `A057494.P2374338064675521297`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057494 (n : ℕ) : ℤ :=
  A057494.P2374338064675521297.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057494.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A057553.P1941252198653360221

`A112849(n+1)+∑[A001791(n)]`
-/

namespace A057553.P1941252198653360221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001791 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112849 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057553.P1941252198653360221

noncomputable section

/-- A057553: Rank of (1,1,...,1) (n 1's) when {0,1,2,...}^n is lexicographically ordered.

Offset 1, canonical program `A057553.P1941252198653360221`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A057553 (n : ℕ) : ℤ :=
  A057553.P1941252198653360221.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A057553.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057602.P3191110448721845909

`A000040(A008619(n))*A008578(A080513(n))`
-/

namespace A057602.P3191110448721845909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A008619 n).toNat * A008578 (A080513 n).toNat

end

end A057602.P3191110448721845909

noncomputable section

/-- A057602: a(1)=2, a(n+1) is the smallest integer > a(n) such that the smallest prime factor of a(n+1) is the largest prime factor of a(n).

Offset 1, canonical program `A057602.P3191110448721845909`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057602 (n : ℕ) : ℤ :=
  A057602.P3191110448721845909.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057602.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057889.P1698969628910927929

`A006519(A028310(n))*A030101(n)`
-/

namespace A057889.P1698969628910927929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A028310 n).toNat * A030101 n

end

end A057889.P1698969628910927929

noncomputable section

/-- A057889: Bijective bit-reverse of n: keep the trailing zeros in the binary expansion of n fixed, but reverse all the digits up to that point.

Offset 0, canonical program `A057889.P1698969628910927929`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057889 (n : ℕ) : ℤ :=
  A057889.P1698969628910927929.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057889.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057891.P12237480807863623377

`lt[0, A175919(xor(n, A175919(n)))]`
-/

namespace A057891.P12237480807863623377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175919 (Int.xor (n : ℤ) (A175919 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A057891.P12237480807863623377

noncomputable section

/-- A057891: In base 2, neither a palindrome nor becomes a palindrome if trailing 0's are omitted.

Offset 1, canonical program `A057891.P12237480807863623377`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057891 (n : ℕ) : ℤ :=
  (A057891.P12237480807863623377.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057891.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059246.P1456171731783157114

`lcm(n+1, A006218(n+1))/(n+1)`
-/

namespace A059246.P1456171731783157114
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A006218 (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A059246.P1456171731783157114

noncomputable section

/-- A059246: Numerator of Sum_{j=1..n} d(j)/n, where d = number of divisors function (A000005).

Offset 1, canonical program `A059246.P1456171731783157114`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059246 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A059246.P1456171731783157114.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059246.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059292.P13391037705740320393

`A049820(n+1)+2`
-/

namespace A059292.P13391037705740320393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (n + 1) + 2

end

end A059292.P13391037705740320393

noncomputable section

/-- A059292: a(n) = n + 2 - (number of divisors of n).

Offset 1, canonical program `A059292.P13391037705740320393`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059292 (n : ℕ) : ℤ :=
  A059292.P13391037705740320393.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059292.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A060687.P13266842757816177506

`eq[2, A005361(n+1)]+1`
-/

namespace A060687.P13266842757816177506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A060687.P13266842757816177506

noncomputable section

/-- A060687: Numbers k such that there exist exactly 2 Abelian groups of order k, i.e., A000688(k) = 2.

Offset 1, canonical program `A060687.P13266842757816177506`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060687 (n : ℕ) : ℤ :=
  (A060687.P13266842757816177506.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060687.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A060832.P6221694055297476933

`a(n-1)+A055881(n)` with `a(0)=0`
-/

namespace A060832.P6221694055297476933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A055881 n

end

end A060832.P6221694055297476933

noncomputable section

/-- A060832: a(n) = Sum_{k>0} floor(n/k!).

Offset 0, canonical program `A060832.P6221694055297476933`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055881, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A060832 (n : ℕ) : ℤ :=
  A060832.P6221694055297476933.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055881, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A060832.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A061181.P12037119667169386881

`A001874(2*n)`
-/

namespace A061181.P12037119667169386881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001874 (2 * n)

end

end A061181.P12037119667169386881

noncomputable section

/-- A061181: Sixth column (m=5) of triangle A060920 (bisection of Fibonacci triangle, even part).

Offset 0, canonical program `A061181.P12037119667169386881`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. -/
def A061181 (n : ℕ) : ℤ :=
  A061181.P12037119667169386881.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. -/
def A061181.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061185.P2683814619146341447

`floor(A001874(A005408(n))/2)`
-/

namespace A061185.P2683814619146341447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001874 (A005408 n).toNat : ℚ) / 2⌋

end

end A061185.P2683814619146341447

noncomputable section

/-- A061185: One half of sixth (m=5) column of triangle A060921 (bisection of Fibonacci triangle, odd part).

Offset 0, canonical program `A061185.P2683814619146341447`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. -/
def A061185 (n : ℕ) : ℤ :=
  A061185.P2683814619146341447.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. -/
def A061185.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061383.P13799043592853504637

`eq[0, A180160(n)]`
-/

namespace A061383.P13799043592853504637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180160 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061383.P13799043592853504637

noncomputable section

/-- A061383: Arithmetic mean of digits is an integer.

Offset 0, canonical program `A061383.P13799043592853504637`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5604 terms. -/
def A061383 (n : ℕ) : ℤ :=
  (A061383.P13799043592853504637.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5604 terms. -/
def A061383.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061397.P17730824645895443051

`A010051(n+1)*A000027(n+1)`
-/

namespace A061397.P17730824645895443051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) * A000027 (n + 1)

end

end A061397.P17730824645895443051

noncomputable section

/-- A061397: Characteristic function sequence of primes multiplied componentwise by N, the natural numbers.

Offset 1, canonical program `A061397.P17730824645895443051`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A061397 (n : ℕ) : ℤ :=
  A061397.P17730824645895443051.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A061397.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A061447.P2905474837907043685

`A061446(2*(n+1))`
-/

namespace A061447.P2905474837907043685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061446 (2 * (n + 1))

end

end A061447.P2905474837907043685

noncomputable section

/-- A061447: Primitive part of Lucas(n).

Offset 1, canonical program `A061447.P2905474837907043685`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 243 terms. -/
def A061447 (n : ℕ) : ℤ :=
  A061447.P2905474837907043685.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 243 terms. -/
def A061447.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061536.P1966979558929038729

`1+A046992(n+1)`
-/

namespace A061536.P1966979558929038729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A046992 (n + 1)

end

end A061536.P1966979558929038729

noncomputable section

/-- A061536: a(1) = 1 and a(n) = a(n-1) + (the number of primes <= n) for n > 1.

Offset 1, canonical program `A061536.P1966979558929038729`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046992, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A061536 (n : ℕ) : ℤ :=
  A061536.P1966979558929038729.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046992, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A061536.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A061537.P7218639686472403361

`(n+1)^(A034444(n+1)/2)`
-/

namespace A061537.P7218639686472403361
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ ((A034444 (n + 1) : ℚ) / 2 : ℝ)

end

end A061537.P7218639686472403361

noncomputable section

/-- A061537: Product of the unitary divisors of n: a(n) = Product_{d|n, gcd(d,n/d) = 1} d.

Offset 1, canonical program `A061537.P7218639686472403361`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034444, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A061537 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A061537.P7218639686472403361.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034444, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A061537.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A061680.P8755189030702859138

`gcd(A048691(n+1), A000005(n+1))`
-/

namespace A061680.P8755189030702859138
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048691 (n + 1)) (A000005 (n + 1))

end

end A061680.P8755189030702859138

noncomputable section

/-- A061680: a(n) = gcd(d(n^2), d(n)).

Offset 1, canonical program `A061680.P8755189030702859138`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061680 (n : ℕ) : ℤ :=
  (A061680.P8755189030702859138.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061680.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A061838.P10671917777384719382

`A061751(n+1)-2`
-/

namespace A061838.P10671917777384719382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061751 (n + 1) - 2

end

end A061838.P10671917777384719382

noncomputable section

/-- A061838: Numbers k such that (k+3)^3 | k!.

Offset 1, canonical program `A061838.P10671917777384719382`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061838 (n : ℕ) : ℤ :=
  A061838.P10671917777384719382.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061838.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061867.P11555610868483655055

`eq[1, A010052(A053667(n))]²`
-/

namespace A061867.P11555610868483655055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A053667 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A061867.P11555610868483655055

noncomputable section

/-- A061867: Squares whose product of digits is also a square (allowing zeros).

Offset 1, canonical program `A061867.P11555610868483655055`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. -/
def A061867 (n : ℕ) : ℤ :=
  (A061867.P11555610868483655055.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. -/
def A061867.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062086.P15083974956987109728

`filter[A059708(n+1), A323239(#)]`
-/

namespace A062086.P15083974956987109728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059708 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323239 (f1 j).toNat = 1) n)

end

end A062086.P15083974956987109728

noncomputable section

/-- A062086: Squarefree numbers with all odd digits.

Offset 1, canonical program `A062086.P15083974956987109728`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2146 terms. -/
def A062086 (n : ℕ) : ℤ :=
  A062086.P15083974956987109728.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2146 terms. -/
def A062086.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062371.P18105862137816597211

`lt[A010051(2*(n+1)), A010052(A051801(n))]`
-/

namespace A062371.P18105862137816597211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A051801 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A062371.P18105862137816597211

noncomputable section

/-- A062371: Numbers the product of whose nonzero digits is a perfect square.

Offset 1, canonical program `A062371.P18105862137816597211`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1368 terms. -/
def A062371 (n : ℕ) : ℤ :=
  (A062371.P18105862137816597211.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1368 terms. -/
def A062371.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062532.P17785931247852482798

`A014076(n+1)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A062532.P17785931247852482798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1) ^ 2

end

end A062532.P17785931247852482798

noncomputable section

/-- A062532: Odd nonprimes squared, or A014076(n)^2.

Offset 1, canonical program `A062532.P17785931247852482798`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014076, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062532 (n : ℕ) : ℤ :=
  A062532.P17785931247852482798.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014076, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062532.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A062550.P429279295105592696

`A006218(2*n)`
-/

namespace A062550.P429279295105592696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (2 * n)

end

end A062550.P429279295105592696

noncomputable section

/-- A062550: a(n) = Sum_{k = 1..2n} floor(2n/k).

Offset 0, canonical program `A062550.P429279295105592696`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062550 (n : ℕ) : ℤ :=
  A062550.P429279295105592696.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062550.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A062590.P15736737728538598181

`A010051(n+1)*A029835(n+1)`
-/

namespace A062590.P15736737728538598181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) * A029835 (n + 1)

end

end A062590.P15736737728538598181

noncomputable section

/-- A062590: Variation on A029834: a discrete version of the Mangoldt function. If n is prime then floor(log(prime(n))) else 0.

Offset 1, canonical program `A062590.P15736737728538598181`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062590 (n : ℕ) : ℤ :=
  A062590.P15736737728538598181.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062590.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A062758.P10816466318006647829

`A007955(n+1)²`
-/

namespace A062758.P10816466318006647829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (n + 1) ^ 2

end

end A062758.P10816466318006647829

noncomputable section

/-- A062758: Product of squares of divisors of n.

Offset 1, canonical program `A062758.P10816466318006647829`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062758 (n : ℕ) : ℤ :=
  A062758.P10816466318006647829.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062758.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A062770.P13203404241284622665

`A072774(n+2)`
-/

namespace A062770.P13203404241284622665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072774 (n + 2)

end

end A062770.P13203404241284622665

noncomputable section

/-- A062770: n/[largest power of squarefree kernel] equals 1; perfect powers of sqf-kernels (or sqf-numbers).

Offset 1, canonical program `A062770.P13203404241284622665`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072774, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062770 (n : ℕ) : ℤ :=
  A062770.P13203404241284622665.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072774, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062770.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A062825.P9883742102294151601

`A162195(n+1)+A057428(n)`
-/

namespace A062825.P9883742102294151601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162195 (n + 1) + A057428 n

end

end A062825.P9883742102294151601

noncomputable section

/-- A062825: Ch(n-th nonprime) where Ch(n) is Chowla's function, cf. A048050.

Offset 1, canonical program `A062825.P9883742102294151601`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062825 (n : ℕ) : ℤ :=
  A062825.P9883742102294151601.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062825.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062839.P16129045088072440583

`floor(A048448(n+1)/2)`
-/

namespace A062839.P16129045088072440583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A048448 (n + 1) : ℚ) / 2⌋

end

end A062839.P16129045088072440583

noncomputable section

/-- A062839: a(n) = floor((prime(n-1)+prime(n+1))/2).

Offset 1, canonical program `A062839.P16129045088072440583`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062839 (n : ℕ) : ℤ :=
  A062839.P16129045088072440583.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062839.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062968.P12745258028289340812

`A049820(n+1)+1`
-/

namespace A062968.P12745258028289340812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (n + 1) + 1

end

end A062968.P12745258028289340812

noncomputable section

/-- A062968: a(n) = n + 1 - d(n), where d(n) is the number of divisors function.

Offset 1, canonical program `A062968.P12745258028289340812`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062968 (n : ℕ) : ℤ :=
  A062968.P12745258028289340812.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062968.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063080.P8650061368992008328

`filter[A082293(n+1), A336040(#)]`
-/

namespace A063080.P8650061368992008328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082293 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336040 (f1 j).toNat = 1) n)

end

end A063080.P8650061368992008328

noncomputable section

/-- A063080: Numbers k such that k/d(k) is prime, where d(k) is the number of divisors of k.

Offset 1, canonical program `A063080.P8650061368992008328`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1050 terms. -/
def A063080 (n : ℕ) : ℤ :=
  A063080.P8650061368992008328.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1050 terms. -/
def A063080.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063173.P15522695692086999954

`val(A002808(A004736(n+1)), A037126(n+1))`
-/

namespace A063173.P15522695692086999954
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A002808 (A004736 (n + 1)).toNat).toNat (A037126 (n + 1)).toNat

end

end A063173.P15522695692086999954

noncomputable section

/-- A063173: Prime-composite array T(m,n): highest power of the n-th prime that divides the m-th composite, read by antidiagonals.

Offset 1, canonical program `A063173.P15522695692086999954`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063173 (n : ℕ) : ℤ :=
  (A063173.P15522695692086999954.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063173.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063264.P15008203233816380364

`A034263(n)+∑[A064058(n)]`
-/

namespace A063264.P15008203233816380364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064058 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034263 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063264.P15008203233816380364

noncomputable section

/-- A063264: Tenth column (k=9) of sextinomial array A063260.

Offset 0, canonical program `A063264.P15008203233816380364`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063264 (n : ℕ) : ℤ :=
  A063264.P15008203233816380364.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063264.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063449.P15389851829037356267

`lt[A000005(n+1), A051950(n+2)]+1`
-/

namespace A063449.P15389851829037356267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051950 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A063449.P15389851829037356267

noncomputable section

/-- A063449: Numbers k for which d(k+1) > 2*d(k), where d(j) = A000005(j).

Offset 1, canonical program `A063449.P15389851829037356267`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5451 terms. -/
def A063449 (n : ℕ) : ℤ :=
  (A063449.P15389851829037356267.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5451 terms. -/
def A063449.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063479.P3402868684958619055

`eq[A034444(n+1)², A034444(n+2)]+1`
-/

namespace A063479.P3402868684958619055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A063479.P3402868684958619055

noncomputable section

/-- A063479: Numbers k such that omega(k+1) = 2*omega(k), where omega is the number of distinct prime factors.

Offset 1, canonical program `A063479.P3402868684958619055`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 769 terms. -/
def A063479 (n : ℕ) : ℤ :=
  (A063479.P3402868684958619055.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 769 terms. -/
def A063479.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063641.P1389479516569409955

`p?[A046316(n+1)-2]`
-/

namespace A063641.P1389479516569409955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046316 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A063641.P1389479516569409955

noncomputable section

/-- A063641: Primes of form p*q*r - 2, where p, q and r are primes (not necessarily distinct).

Offset 1, canonical program `A063641.P1389479516569409955`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2197 terms. -/
def A063641 (n : ℕ) : ℤ :=
  A063641.P1389479516569409955.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2197 terms. -/
def A063641.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063642.P3584060890965356888

`p?[A046316(n+1)+2]`
-/

namespace A063642.P3584060890965356888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046316 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A063642.P3584060890965356888

noncomputable section

/-- A063642: Primes of form p*q*r + 2, where p, q and r are primes (not necessarily distinct).

Offset 1, canonical program `A063642.P3584060890965356888`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2283 terms. -/
def A063642 (n : ℕ) : ℤ :=
  A063642.P3584060890965356888.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2283 terms. -/
def A063642.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063909.P3011731433848719074

`(A145471(n+1)+5)/2`
-/

namespace A063909.P3011731433848719074
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145471 (n + 1) + 5 : ℚ) / 2

end

end A063909.P3011731433848719074

noncomputable section

/-- A063909: Primes p such that 2*p - 5 is also prime.

Offset 1, canonical program `A063909.P3011731433848719074`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A145471, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A063909 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A063909.P3011731433848719074.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A145471, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A063909.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A063962.P11030534656895760199

`∑{e}[A382486(n+1), #]`
-/

namespace A063962.P11030534656895760199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382486 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A063962.P11030534656895760199

noncomputable section

/-- A063962: Number of distinct prime divisors of n that are <= sqrt(n).

Offset 1, canonical program `A063962.P11030534656895760199`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063962 (n : ℕ) : ℤ :=
  (A063962.P11030534656895760199.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063962.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064030.P13053883513226172745

`(n+1)!^(A034444((n+1)!)/2)`
-/

namespace A064030.P13053883513226172745
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℝ) ^ ((A034444 (Nat.factorial (n + 1)) : ℚ) / 2 : ℝ)

end

end A064030.P13053883513226172745

noncomputable section

/-- A064030: Product of unitary divisors of n!.

Offset 1, canonical program `A064030.P13053883513226172745`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034444, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064030 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A064030.P13053883513226172745.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034444, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064030.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A064531.P14938962011606256932

`A064693(n)-A316865(n)`
-/

namespace A064531.P14938962011606256932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064693 n - A316865 n

end

end A064531.P14938962011606256932

noncomputable section

/-- A064531: Number of connected components remaining when decimal expansion of the number n is cut from a piece of paper.

Offset 0, canonical program `A064531.P14938962011606256932`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064531 (n : ℕ) : ℤ :=
  A064531.P14938962011606256932.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064531.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064608.P13779215787646709680

`a(n-1)+A034444(n+1)` with `a(0)=1`
-/

namespace A064608.P13779215787646709680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A034444 (n + 1)

end

end A064608.P13779215787646709680

noncomputable section

/-- A064608: Partial sums of A034444: sum of number of unitary divisors from 1 to n.

Offset 1, canonical program `A064608.P13779215787646709680`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034444, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064608 (n : ℕ) : ℤ :=
  A064608.P13779215787646709680.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034444, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064608.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A064766.P6005750168765779772

`A332663(C(n+1, 2)+n)+1`
-/

namespace A064766.P6005750168765779772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332663 (Nat.choose (n + 1) 2 + n) + 1

end

end A064766.P6005750168765779772

noncomputable section

/-- A064766: Fill up an infinite triangular array by rows by successively writing numbers 1, then 1 up to 2*3/2, then 1 up to 3*4/2, then 1 up to 4*5/2 and so on, at the k-th step writing the numbers from 1 up to the k-th triangular number. The final elements of the rows of this infinite triangle form the sequence.

Offset 0, canonical program `A064766.P6005750168765779772`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 151 terms. -/
def A064766 (n : ℕ) : ℤ :=
  A064766.P6005750168765779772.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 151 terms. -/
def A064766.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064799.P13450618005534133469

`A000040(n+1)+A002808(n+1)`
-/

namespace A064799.P13450618005534133469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + A002808 (n + 1)

end

end A064799.P13450618005534133469

noncomputable section

/-- A064799: Sum of n-th prime number and n-th composite number.

Offset 1, canonical program `A064799.P13450618005534133469`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064799 (n : ℕ) : ℤ :=
  A064799.P13450618005534133469.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064799.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A064813.P8078473473580934433

`C(A002808(n+1), n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A064813.P8078473473580934433
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002808 (n + 1)).toNat (n + 1)

end

end A064813.P8078473473580934433

noncomputable section

/-- A064813: a(n) = binomial(composite(n), n), where composite = A002808, composite numbers.

Offset 1, canonical program `A064813.P8078473473580934433`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064813 (n : ℕ) : ℤ :=
  (A064813.P8078473473580934433.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064813.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A064814.P8119879285267834608

`gcd(n+1, A002808(n+1))`
-/

namespace A064814.P8119879285267834608
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A002808 (n + 1))

end

end A064814.P8119879285267834608

noncomputable section

/-- A064814: Greatest common divisor of n and the n-th composite number.

Offset 1, canonical program `A064814.P8119879285267834608`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064814 (n : ℕ) : ℤ :=
  (A064814.P8119879285267834608.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064814.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A064924.P16188674607000745231

`A007917(n+2)*(A064722(n+2)+1)`
-/

namespace A064924.P16188674607000745231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 (n + 2) * (A064722 (n + 2) + 1)

end

end A064924.P16188674607000745231

noncomputable section

/-- A064924: If n is prime then a(n) = n; for the subsequent nonprime positions a(n + k) = (k+1)*n; then at the next prime position a new subsequence begins.

Offset 2, canonical program `A064924.P16188674607000745231`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064722, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064924 (n : ℕ) : ℤ :=
  A064924.P16188674607000745231.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064722, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064924.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A065227.P6933920780390560153

`A332663(∑[n])+1`
-/

namespace A065227.P6933920780390560153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332663 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A065227.P6933920780390560153

noncomputable section

/-- A065227: Fill a triangular array by rows by writing numbers 1 up to b(0), 1 up to b(1), etc., where b(n) are the triangular numbers. The first elements of the rows form a(n).

Offset 0, canonical program `A065227.P6933920780390560153`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 152 terms. -/
def A065227 (n : ℕ) : ℤ :=
  A065227.P6933920780390560153.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 152 terms. -/
def A065227.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065228.P11115784030113203353

`A064866(∑[n]+1)`
-/

namespace A065228.P11115784030113203353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064866 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A065228.P11115784030113203353

noncomputable section

/-- A065228: Fill a triangular array by rows by writing numbers 1 up to b(0), 1 up to b(1), etc., where b(n) are the square numbers. The first elements of the rows form a(n).

Offset 0, canonical program `A065228.P11115784030113203353`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A065228 (n : ℕ) : ℤ :=
  A065228.P11115784030113203353.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A065228.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065359.P2716114422933254065

`A139351(n)-A139352(n)`
-/

namespace A065359.P2716114422933254065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 n - A139352 n

end

end A065359.P2716114422933254065

noncomputable section

/-- A065359: Alternating bit sum for n: replace 2^k with (-1)^k in binary expansion of n.

Offset 0, canonical program `A065359.P2716114422933254065`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A139351, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065359 (n : ℕ) : ℤ :=
  A065359.P2716114422933254065.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A139351, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065359.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A065524.P4182551559051557307

`A002808(5^n)`
-/

namespace A065524.P4182551559051557307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (5 ^ n)

end

end A065524.P4182551559051557307

noncomputable section

/-- A065524: The (5^n)-th composite number.

Offset 0, canonical program `A065524.P4182551559051557307`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065524 (n : ℕ) : ℤ :=
  A065524.P4182551559051557307.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065524.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A065525.P5304963212479784431

`A002808(6^n)`
-/

namespace A065525.P5304963212479784431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (6 ^ n)

end

end A065525.P5304963212479784431

noncomputable section

/-- A065525: The (6^n)-th composite number.

Offset 0, canonical program `A065525.P5304963212479784431`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065525 (n : ℕ) : ℤ :=
  A065525.P5304963212479784431.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065525.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A065605.P11398291683349746784

`A002808(3^n)`
-/

namespace A065605.P11398291683349746784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (3 ^ n)

end

end A065605.P11398291683349746784

noncomputable section

/-- A065605: The (3^n)-th composite number.

Offset 0, canonical program `A065605.P11398291683349746784`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065605 (n : ℕ) : ℤ :=
  A065605.P11398291683349746784.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065605.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A065606.P7826699758227426873

`A002808(7^n)`
-/

namespace A065606.P7826699758227426873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (7 ^ n)

end

end A065606.P7826699758227426873

noncomputable section

/-- A065606: The (7^n)-th composite number.

Offset 0, canonical program `A065606.P7826699758227426873`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065606 (n : ℕ) : ℤ :=
  A065606.P7826699758227426873.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065606.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A065726.P14405010515887988270

`p?[A036963(n+1)]`
-/

namespace A065726.P14405010515887988270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A065726.P14405010515887988270

noncomputable section

/-- A065726: Primes p whose base-8 expansion is also the decimal expansion of a prime.

Offset 1, canonical program `A065726.P14405010515887988270`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2099 terms. -/
def A065726 (n : ℕ) : ℤ :=
  A065726.P14405010515887988270.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2099 terms. -/
def A065726.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065727.P9498803677997058480

`p?[A036964(n+1)]`
-/

namespace A065727.P9498803677997058480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036964 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A065727.P9498803677997058480

noncomputable section

/-- A065727: Primes p such that the decimal expansion of its base-9 conversion is also prime.

Offset 1, canonical program `A065727.P9498803677997058480`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 949 terms. -/
def A065727 (n : ℕ) : ℤ :=
  A065727.P9498803677997058480.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 949 terms. -/
def A065727.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065856.P15714026655245255570

`A002808(2^n)`
-/

namespace A065856.P15714026655245255570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (2 ^ n)

end

end A065856.P15714026655245255570

noncomputable section

/-- A065856: The (2^n)-th composite number.

Offset 0, canonical program `A065856.P15714026655245255570`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065856 (n : ℕ) : ℤ :=
  A065856.P15714026655245255570.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065856.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A065857.P15511301847593102298

`A002808(10^n)`
-/

namespace A065857.P15511301847593102298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (10 ^ n)

end

end A065857.P15511301847593102298

noncomputable section

/-- A065857: The (10^n)-th composite number.

Offset 0, canonical program `A065857.P15511301847593102298`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065857 (n : ℕ) : ℤ :=
  A065857.P15511301847593102298.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065857.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A065858.P14612648944669410725

`A002808(A000040(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A065858.P14612648944669410725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A000040 (n + 1)).toNat

end

end A065858.P14612648944669410725

noncomputable section

/-- A065858: m-th composite number c(m) = A002808(m), where m is the n-th prime number: a(n) = A002808(A000040(n)).

Offset 1, canonical program `A065858.P14612648944669410725`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065858 (n : ℕ) : ℤ :=
  A065858.P14612648944669410725.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065858.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A065859.P11041658421309913817

`A000040(n+1)%A002808(n+1)`
-/

namespace A065859.P11041658421309913817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) (A002808 (n + 1))

end

end A065859.P11041658421309913817

noncomputable section

/-- A065859: Remainder when the n-th prime is divided by the n-th composite number.

Offset 1, canonical program `A065859.P11041658421309913817`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065859 (n : ℕ) : ℤ :=
  A065859.P11041658421309913817.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065859.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A065860.P1157239488686513098

`A002808(n+1)%(n+1)`
-/

namespace A065860.P1157239488686513098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002808 (n + 1)) (n + 1 : ℤ)

end

end A065860.P1157239488686513098

noncomputable section

/-- A065860: Remainder when the n-th composite number is divided by n.

Offset 1, canonical program `A065860.P1157239488686513098`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065860 (n : ℕ) : ℤ :=
  A065860.P1157239488686513098.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065860.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A065861.P13112295784115317579

`A002808(n+2)%A000720(n+2)`
-/

namespace A065861.P13112295784115317579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002808 (n + 2)) (A000720 (n + 2))

end

end A065861.P13112295784115317579

noncomputable section

/-- A065861: Remainder when the n-th composite number is divided by pi(n), the number of primes not exceeding n.

Offset 2, canonical program `A065861.P13112295784115317579`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065861 (n : ℕ) : ℤ :=
  A065861.P13112295784115317579.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065861.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A065862.P3406526789678622698

`A002808(n+1)%A062298(n+1)`
-/

namespace A065862.P3406526789678622698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002808 (n + 1)) (A062298 (n + 1))

end

end A065862.P3406526789678622698

noncomputable section

/-- A065862: Remainder when n-th composite number is divided by the number of nonprimes not exceeding n.

Offset 1, canonical program `A065862.P3406526789678622698`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065862 (n : ℕ) : ℤ :=
  A065862.P3406526789678622698.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065862.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A066774.P15152739577050822243

`eq[4, A032741(n)+A023645(n+2)]`
-/

namespace A066774.P15152739577050822243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n + A023645 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066774.P15152739577050822243

noncomputable section

/-- A066774: A066728(a(n))=3.

Offset 1, canonical program `A066774.P15152739577050822243`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 855 terms. -/
def A066774 (n : ℕ) : ℤ :=
  (A066774.P15152739577050822243.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 855 terms. -/
def A066774.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066876.P931542748291788386

`eq[A159461((2*n)%(n+1)+1), A159461(n+2)]+1`
-/

namespace A066876.P931542748291788386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159461 (2 * n % (n + 1) + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159461 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A066876.P931542748291788386

noncomputable section

/-- A066876: Numbers n such that prime(k+2) + prime(k-2) = 2*prime(k).

Offset 1, canonical program `A066876.P931542748291788386`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A066876 (n : ℕ) : ℤ :=
  (A066876.P931542748291788386.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A066876.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067290.P124068687972599428

`lt[A000040(n+1), A038040(n+1)]+1`
-/

namespace A067290.P124068687972599428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038040 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A067290.P124068687972599428

noncomputable section

/-- A067290: Numbers n such that prime(n)

Offset 1, canonical program `A067290.P124068687972599428`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3427 terms. -/
def A067290 (n : ℕ) : ℤ :=
  (A067290.P124068687972599428.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3427 terms. -/
def A067290.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067291.P5863031356185478968

`lt[A038040(n+1), A000040(n+1)]+1`
-/

namespace A067291.P5863031356185478968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A067291.P5863031356185478968

noncomputable section

/-- A067291: Numbers n such that prime(n)>n*tau(n) where tau(n) is the number of divisors of n.

Offset 1, canonical program `A067291.P5863031356185478968`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6573 terms. -/
def A067291 (n : ℕ) : ℤ :=
  (A067291.P5863031356185478968.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6573 terms. -/
def A067291.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067563.P8241945958915333115

`A000040(n+1)*A002808(n+1)`
-/

namespace A067563.P8241945958915333115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A002808 (n + 1)

end

end A067563.P8241945958915333115

noncomputable section

/-- A067563: Product of n-th prime number and n-th composite number.

Offset 1, canonical program `A067563.P8241945958915333115`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A067563 (n : ℕ) : ℤ :=
  A067563.P8241945958915333115.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A067563.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A067720.P10605338190023800648

`eq[A053000(A053000(n))², A001065(n+1)]`
-/

namespace A067720.P10605338190023800648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053000 (A053000 n).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067720.P10605338190023800648

noncomputable section

/-- A067720: Numbers k such that phi(k^2+1) = k*phi(k+1).

Offset 1, canonical program `A067720.P10605338190023800648`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 181 terms. -/
def A067720 (n : ℕ) : ℤ :=
  (A067720.P10605338190023800648.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 181 terms. -/
def A067720.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067747.P14118183397394803050

`A000040(ceil((n+1)/2))*A000035(n+1)+A002808(ceil((n+1)/2))*A059841(n+1)`
-/

namespace A067747.P14118183397394803050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ⌈(n + 1 : ℚ) / 2⌉.toNat * A000035 (n + 1) + A002808 ⌈(n + 1 : ℚ) / 2⌉.toNat * A059841 (n + 1)

end

end A067747.P14118183397394803050

noncomputable section

/-- A067747: Primes interleaved between composite numbers: n-th prime followed by the n-th composite number.

Offset 1, canonical program `A067747.P14118183397394803050`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A067747 (n : ℕ) : ℤ :=
  A067747.P14118183397394803050.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A067747.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A067800.P328424139569097014

`filter[A014076(n+1), A374134(#)]`
-/

namespace A067800.P328424139569097014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A067800.P328424139569097014

noncomputable section

/-- A067800: Nonprime numbers k such that phi(k) > k/2.

Offset 1, canonical program `A067800.P328424139569097014`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9698 terms. -/
def A067800 (n : ℕ) : ℤ :=
  A067800.P328424139569097014.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9698 terms. -/
def A067800.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067888.P5381462083945113283

`A062832(n+1)+1`
-/

namespace A067888.P5381462083945113283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062832 (n + 1) + 1

end

end A067888.P5381462083945113283

noncomputable section

/-- A067888: Numbers k such that tau(k+1) = tau(k-1) where tau(k) = A000005(k).

Offset 1, canonical program `A067888.P5381462083945113283`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067888 (n : ℕ) : ℤ :=
  A067888.P5381462083945113283.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067888.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067970.P18334042092421451489

`A014076(n+2)-A014076(n+1)`
-/

namespace A067970.P18334042092421451489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 2) - A014076 (n + 1)

end

end A067970.P18334042092421451489

noncomputable section

/-- A067970: First differences of A014076, the odd nonprimes.

Offset 1, canonical program `A067970.P18334042092421451489`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014076, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A067970 (n : ℕ) : ℤ :=
  A067970.P18334042092421451489.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014076, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A067970.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A068068.P4574816363977512760

`A034444(2*(n+1))/2`
-/

namespace A068068.P4574816363977512760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034444 (2 * (n + 1)) : ℚ) / 2

end

end A068068.P4574816363977512760

noncomputable section

/-- A068068: Number of odd unitary divisors of n. d is a unitary divisor of n if d divides n and gcd(d,n/d) = 1.

Offset 1, canonical program `A068068.P4574816363977512760`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034444, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A068068 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A068068.P4574816363977512760.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034444, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A068068.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A068207.P7943942854021389993

`eq[A129296(n+1), A292286(n+1)]+1`
-/

namespace A068207.P7943942854021389993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129296 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292286 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A068207.P7943942854021389993

noncomputable section

/-- A068207: Numbers k such that the number of divisors of k^2-1 equals the number of divisors of k.

Offset 1, canonical program `A068207.P7943942854021389993`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 457 terms. -/
def A068207 (n : ℕ) : ℤ :=
  (A068207.P7943942854021389993.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 457 terms. -/
def A068207.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068350.P17751297019967877582

`lt[A000040(2*n+1), A038040(n+1)]+1`
-/

namespace A068350.P17751297019967877582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038040 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A068350.P17751297019967877582

noncomputable section

/-- A068350: Numbers n such that n*tau(n) > prime(2*n) where tau(n) = A000005(n).

Offset 1, canonical program `A068350.P17751297019967877582`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 425 terms. -/
def A068350 (n : ℕ) : ℤ :=
  (A068350.P17751297019967877582.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 425 terms. -/
def A068350.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068398.P3412321244934658565

`A125059(2*n)`
-/

namespace A068398.P3412321244934658565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125059 (2 * n)

end

end A068398.P3412321244934658565

noncomputable section

/-- A068398: Number of digits in (2^n)*(n!).

Offset 0, canonical program `A068398.P3412321244934658565`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A068398 (n : ℕ) : ℤ :=
  A068398.P3412321244934658565.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A068398.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068499.P703561085316997960

`A008578(n+1)-C(n, C(5, n²))`
-/

namespace A068499.P703561085316997960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) - (Nat.choose n (Nat.choose 5 (n ^ 2)) : ℤ)

end

end A068499.P703561085316997960

noncomputable section

/-- A068499: Numbers m such that m! reduced modulo (m+1) is not zero.

Offset 1, canonical program `A068499.P703561085316997960`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068499 (n : ℕ) : ℤ :=
  A068499.P703561085316997960.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068499.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068544.P4052281466746777693

`lt[2*A008578(n+1), A038040(A028310(n))]`
-/

namespace A068544.P4052281466746777693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038040 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A068544.P4052281466746777693

noncomputable section

/-- A068544: Numbers k such that k*tau(k) > 2*prime(k).

Offset 1, canonical program `A068544.P4052281466746777693`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1072 terms. -/
def A068544 (n : ℕ) : ℤ :=
  (A068544.P4052281466746777693.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1072 terms. -/
def A068544.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068780.P12907519640094677805

`A005381(n+1)-1`
-/

namespace A068780.P12907519640094677805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005381 (n + 1) - 1

end

end A068780.P12907519640094677805

noncomputable section

/-- A068780: Composite numbers n such that n+1 is also composite.

Offset 1, canonical program `A068780.P12907519640094677805`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068780 (n : ℕ) : ℤ :=
  A068780.P12907519640094677805.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068780.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000026.P14646158085172730513

`A005361(n+1)*A007947(n+1)`
-/

namespace A000026.P14646158085172730513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1) * A007947 (n + 1)

end

end A000026.P14646158085172730513

noncomputable section

/-- A000026: Mosaic numbers or multiplicative projection of n: if n = Product (p_j^k_j) then a(n) = Product (p_j * k_j).

Offset 1, canonical program `A000026.P14646158085172730513`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000026 (n : ℕ) : ℤ :=
  A000026.P14646158085172730513.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000026.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A000415.P13707848856828247433

`filter[A001481(n+2), A049240(#)]`
-/

namespace A000415.P13707848856828247433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A000415.P13707848856828247433

noncomputable section

/-- A000415: Numbers that are the sum of 2 but no fewer nonzero squares.

Offset 1, canonical program `A000415.P13707848856828247433`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9801 terms. -/
def A000415 (n : ℕ) : ℤ :=
  A000415.P13707848856828247433.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9801 terms. -/
def A000415.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001003.P3652309286495105422

`3*a(n-1)+2*A065096(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A001003.P3652309286495105422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  3 * a (n - 1) + 2 * A065096 (n - 2)

end

end A001003.P3652309286495105422

noncomputable section

/-- A001003: Schroeder's second problem (generalized parentheses); also called super-Catalan numbers or little Schroeder numbers.

Offset 0, canonical program `A001003.P3652309286495105422`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065096, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A001003 (n : ℕ) : ℤ :=
  A001003.P3652309286495105422.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065096, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A001003.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A001157.P6892814788348726787

`A035316((n+1)²)`
-/

namespace A001157.P6892814788348726787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035316 ((n + 1) ^ 2)

end

end A001157.P6892814788348726787

noncomputable section

/-- A001157: a(n) = sigma_2(n): sum of squares of divisors of n.

Offset 1, canonical program `A001157.P6892814788348726787`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035316, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A001157 (n : ℕ) : ℤ :=
  A001157.P6892814788348726787.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035316, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A001157.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A001747.P198467477273308856

`2*A008578(n+1)`
-/

namespace A001747.P198467477273308856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008578 (n + 1)

end

end A001747.P198467477273308856

noncomputable section

/-- A001747: 2 together with primes multiplied by 2.

Offset 1, canonical program `A001747.P198467477273308856`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008578, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A001747 (n : ℕ) : ℤ :=
  A001747.P198467477273308856.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008578, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A001747.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A002068.P13415145323525649016

`A301316(A008578(n+2))/p?[A014681(n)]`
-/

namespace A002068.P13415145323525649016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A301316 (A008578 (n + 2)).toNat : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)

end

end A002068.P13415145323525649016

noncomputable section

/-- A002068: Wilson remainders: a(n) = ((p-1)!+1)/p mod p, where p = prime(n).

Offset 1, canonical program `A002068.P13415145323525649016`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A002068 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A002068.P13415145323525649016.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A002068.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A002541.P10664040244727747136

`A006218(n+1)-(n+1)`
-/

namespace A002541.P10664040244727747136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (n + 1) - (n + 1 : ℤ)

end

end A002541.P10664040244727747136

noncomputable section

/-- A002541: a(n) = Sum_{k=1..n-1} floor((n-k)/k).

Offset 1, canonical program `A002541.P10664040244727747136`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002541 (n : ℕ) : ℤ :=
  A002541.P10664040244727747136.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002541.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A003158.P15521823830310252341

`A003157(n+1)-1`
-/

namespace A003158.P15521823830310252341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003157 (n + 1) - 1

end

end A003158.P15521823830310252341

noncomputable section

/-- A003158: A self-generating sequence (see Comments in A003156 for the definition).

Offset 1, canonical program `A003158.P15521823830310252341`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003157, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A003158 (n : ℕ) : ℤ :=
  A003158.P15521823830310252341.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003157, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A003158.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A003645.P9793536378345761660

`A052701(n+2)/2`
-/

namespace A003645.P9793536378345761660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052701 (n + 2) : ℚ) / 2

end

end A003645.P9793536378345761660

noncomputable section

/-- A003645: a(n) = 2^n * C(n+1), where C(n) = A000108(n) Catalan numbers.

Offset 0, canonical program `A003645.P9793536378345761660`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052701, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A003645 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A003645.P9793536378345761660.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052701, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A003645.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A005171.P15860856746370777121

`1-A010051(n+1)`
-/

namespace A005171.P15860856746370777121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A010051 (n + 1)

end

end A005171.P15860856746370777121

noncomputable section

/-- A005171: Characteristic function of nonprimes: 0 if n is prime, else 1.

Offset 1, canonical program `A005171.P15860856746370777121`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A005171 (n : ℕ) : ℤ :=
  A005171.P15860856746370777121.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A005171.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A005812.P15868546208220252248

`a(A081134(n))+1` with `a(0)=0`
-/

namespace A005812.P15868546208220252248
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A081134 n).toNat + 1

end

end A005812.P15868546208220252248

noncomputable section

/-- A005812: Weight of balanced ternary representation of n.

Offset 0, canonical program `A005812.P15868546208220252248`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005812 (n : ℕ) : ℤ :=
  (A005812.P15868546208220252248.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005812.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005881.P8037099234371923042

`2*A033762(n)`
-/

namespace A005881.P8037099234371923042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033762 n

end

end A005881.P8037099234371923042

noncomputable section

/-- A005881: Theta series of planar hexagonal lattice (A2) with respect to edge.

Offset 0, canonical program `A005881.P8037099234371923042`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033762, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A005881 (n : ℕ) : ℤ :=
  A005881.P8037099234371923042.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033762, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A005881.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A007007.P15679075897862241062

`A037952((n+1)%(2*n+1))`
-/

namespace A007007.P15679075897862241062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 ((n + 1) % (2 * n + 1))

end

end A007007.P15679075897862241062

noncomputable section

/-- A007007: Valence of graph of maximal intersecting families of sets.

Offset 1, canonical program `A007007.P15679075897862241062`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A007007 (n : ℕ) : ℤ :=
  A007007.P15679075897862241062.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A007007.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007640.P6533582036686519537

`eq[0, A010051(A051890(n)+17)]`
-/

namespace A007640.P6533582036686519537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A051890 n + 17).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A007640.P6533582036686519537

noncomputable section

/-- A007640: Numbers k such that 2*k^2 - 2*k + 19 is composite.

Offset 1, canonical program `A007640.P6533582036686519537`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A007640 (n : ℕ) : ℤ :=
  (A007640.P6533582036686519537.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A007640.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008309.P1593060599352894748

`A049218(eq[0, A111594(n)])`
-/

namespace A008309.P1593060599352894748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111594 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049218 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A008309.P1593060599352894748

noncomputable section

/-- A008309: Triangle T(n,k) of arctangent numbers: expansion of arctan(x)^n/n!.

Offset 1, canonical program `A008309.P1593060599352894748`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1260 terms. -/
def A008309 (n : ℕ) : ℤ :=
  A008309.P1593060599352894748.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1260 terms. -/
def A008309.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008383.P7955473492485774871

`A008528(n)+2*A006527(n)`
-/

namespace A008383.P7955473492485774871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008528 n + 2 * A006527 n

end

end A008383.P7955473492485774871

noncomputable section

/-- A008383: Coordination sequence for A_4 lattice.

Offset 0, canonical program `A008383.P7955473492485774871`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008383 (n : ℕ) : ℤ :=
  A008383.P7955473492485774871.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008383.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008784.P11903729417169927821

`filter[A072437(n+1), A098725(#)]`
-/

namespace A008784.P11903729417169927821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072437 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098725 (f1 j).toNat = 1) n)

end

end A008784.P11903729417169927821

noncomputable section

/-- A008784: Numbers k such that sqrt(-1) mod k exists; or, numbers that are primitively represented by x^2 + y^2.

Offset 1, canonical program `A008784.P11903729417169927821`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7310 terms. -/
def A008784 (n : ℕ) : ℤ :=
  A008784.P11903729417169927821.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7310 terms. -/
def A008784.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A009087.P18076322764317860629

`filter[A089237(n+3), A355937(#)]`
-/

namespace A009087.P18076322764317860629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089237 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A009087.P18076322764317860629

noncomputable section

/-- A009087: Numbers whose number of divisors is prime (i.e., numbers of the form p^(q-1) for primes p,q).

Offset 1, canonical program `A009087.P18076322764317860629`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9671 terms. -/
def A009087 (n : ℕ) : ℤ :=
  A009087.P18076322764317860629.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9671 terms. -/
def A009087.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A011674.P2384227229124822472

`A011687(A270545(n))`
-/

namespace A011674.P2384227229124822472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011687 (A270545 n).toNat

end

end A011674.P2384227229124822472

noncomputable section

/-- A011674: A binary m-sequence: expansion of reciprocal of x^7+x^6+x^5+x^4+x^3+x^2+1.

Offset 0, canonical program `A011674.P2384227229124822472`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1668 terms. -/
def A011674 (n : ℕ) : ℤ :=
  A011674.P2384227229124822472.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1668 terms. -/
def A011674.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A011679.P6700023965337903991

`A011683(3*n+2)`
-/

namespace A011679.P6700023965337903991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011683 (3 * n + 2)

end

end A011679.P6700023965337903991

noncomputable section

/-- A011679: A binary m-sequence: expansion of reciprocal of x^7+x^6+x^4+x+1.

Offset 0, canonical program `A011679.P6700023965337903991`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A011679 (n : ℕ) : ℤ :=
  A011679.P6700023965337903991.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A011679.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A013602.P10366200212724924736

`A013597(2*n)`
-/

namespace A013602.P10366200212724924736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013597 (2 * n)

end

end A013602.P10366200212724924736

noncomputable section

/-- A013602: a(n) = nextprime(4^n)-4^n.

Offset 0, canonical program `A013602.P10366200212724924736`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013597, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A013602 (n : ℕ) : ℤ :=
  A013602.P10366200212724924736.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013597, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A013602.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A014208.P8121156037884658954

`A159978(C(2, n+2)+n)+A000045(A028310(n))`
-/

namespace A014208.P8121156037884658954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159978 (Nat.choose 2 (n + 2) + n) + A000045 (A028310 n).toNat

end

end A014208.P8121156037884658954

noncomputable section

/-- A014208: Next prime after n-th Fibonacci number.

Offset 0, canonical program `A014208.P8121156037884658954`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A014208 (n : ℕ) : ℤ :=
  A014208.P8121156037884658954.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A014208.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014210.P8900791388522812635

`A013597(n)+2^n`
-/

namespace A014210.P8900791388522812635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013597 n + (2 ^ n : ℤ)

end

end A014210.P8900791388522812635

noncomputable section

/-- A014210: Next prime after 2^n.

Offset 0, canonical program `A014210.P8900791388522812635`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A014210 (n : ℕ) : ℤ :=
  A014210.P8900791388522812635.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A014210.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014220.P16701128890246734141

`A121842(n)+n^3`
-/

namespace A014220.P16701128890246734141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121842 n + (n ^ 3 : ℤ)

end

end A014220.P16701128890246734141

noncomputable section

/-- A014220: Next prime after n^3.

Offset 0, canonical program `A014220.P16701128890246734141`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014220 (n : ℕ) : ℤ :=
  A014220.P16701128890246734141.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014220.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014463.P9700480387867443290

`A014462(A080037(n+1))`
-/

namespace A014463.P9700480387867443290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014462 (A080037 (n + 1)).toNat

end

end A014463.P9700480387867443290

noncomputable section

/-- A014463: Triangular array formed from elements to left of middle of rows of Pascal's triangle that are not 1.

Offset 1, canonical program `A014463.P9700480387867443290`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014463 (n : ℕ) : ℤ :=
  A014463.P9700480387867443290.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014463.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018122.P2107038045910433194

`A018120(n)+A011558(n)`
-/

namespace A018122.P2107038045910433194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018120 n + A011558 n

end

end A018122.P2107038045910433194

noncomputable section

/-- A018122: Powers of fifth root of 3 rounded up.

Offset 0, canonical program `A018122.P2107038045910433194`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1048 terms. -/
def A018122 (n : ℕ) : ℤ :=
  A018122.P2107038045910433194.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1048 terms. -/
def A018122.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022821.P4749726610708956292

`∑[A092405(2*n+3)-2]`
-/

namespace A022821.P4749726610708956292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092405 (2 * n + 3) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022821.P4749726610708956292

noncomputable section

/-- A022821: [ (n+1)/(n-1) ] + [ (n+2)/(n-2) ] + ... + [ (2n-1)/1 ].

Offset 2, canonical program `A022821.P4749726610708956292`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A022821 (n : ℕ) : ℤ :=
  A022821.P4749726610708956292.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A022821.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023226.P6331527255177992895

`p?[A111249(n+1)]`
-/

namespace A023226.P6331527255177992895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111249 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023226.P6331527255177992895

noncomputable section

/-- A023226: Primes p such that 7*p + 8 is also prime.

Offset 1, canonical program `A023226.P6331527255177992895`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1293 terms. -/
def A023226 (n : ℕ) : ℤ :=
  A023226.P6331527255177992895.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1293 terms. -/
def A023226.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023803.P17041091785280444925

`eq[A033999(n+1)², A178788(A007094(n))]`
-/

namespace A023803.P17041091785280444925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178788 (A007094 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023803.P17041091785280444925

noncomputable section

/-- A023803: Xenodromes: all digits in base 8 are different.

Offset 1, canonical program `A023803.P17041091785280444925`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1821 terms. -/
def A023803 (n : ℕ) : ℤ :=
  (A023803.P17041091785280444925.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1821 terms. -/
def A023803.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023804.P10244361593913642022

`eq[1, A178788(A052413(n+1))]`
-/

namespace A023804.P10244361593913642022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178788 (A052413 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023804.P10244361593913642022

noncomputable section

/-- A023804: Xenodromes: all digits in base 9 are different.

Offset 1, canonical program `A023804.P10244361593913642022`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3209 terms. -/
def A023804 (n : ℕ) : ℤ :=
  (A023804.P10244361593913642022.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3209 terms. -/
def A023804.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025225.P15758787713115943274

`2*A052701(n+1)`
-/

namespace A025225.P15758787713115943274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A052701 (n + 1)

end

end A025225.P15758787713115943274

noncomputable section

/-- A025225: a(n) = a(1)*a(n-1) + a(2)*a(n-2) + ...+ a(n-1)*a(1) for n >= 2. Also a(n) = (2^n)*C(n-1), where C = A000108 (Catalan numbers).

Offset 1, canonical program `A025225.P15758787713115943274`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052701, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A025225 (n : ℕ) : ℤ :=
  A025225.P15758787713115943274.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052701, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A025225.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A025566.P4061906558492932459

`ceil(A105696(n)/2)`
-/

namespace A025566.P4061906558492932459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A105696 n : ℚ) / 2⌉

end

end A025566.P4061906558492932459

noncomputable section

/-- A025566: a(n) = number of (s(0), s(1), ..., s(n)) such that every s(i) is a nonnegative integer, s(0) = 0, s(1) = 1, |s(i) - s(i-1)| <= 1 for i >= 2. Also a(n) = sum of numbers in row n+1 of the array T defined in A026105. Also a(n) = T(n,n), where T is the array defined in A025564.

Offset 0, canonical program `A025566.P4061906558492932459`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A025566 (n : ℕ) : ℤ :=
  A025566.P4061906558492932459.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A025566.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025583.P11297861115936055759

`A061673(n+1)+1`
-/

namespace A025583.P11297861115936055759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061673 (n + 1) + 1

end

end A025583.P11297861115936055759

noncomputable section

/-- A025583: Composite numbers that are not the sum of 2 primes.

Offset 1, canonical program `A025583.P11297861115936055759`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025583 (n : ℕ) : ℤ :=
  A025583.P11297861115936055759.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025583.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026138.P14895961469128642459

`A026140(n+1)+1`
-/

namespace A026138.P14895961469128642459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026140 (n + 1) + 1

end

end A026138.P14895961469128642459

noncomputable section

/-- A026138: Numbers k such that s(j) < s(k) for all j < k, where s = A026136.

Offset 1, canonical program `A026138.P14895961469128642459`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026138 (n : ℕ) : ℤ :=
  A026138.P14895961469128642459.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026138.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026139.P8785309321780490600

`2*A026140(n+1)+1`
-/

namespace A026139.P8785309321780490600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026140 (n + 1) + 1

end

end A026139.P8785309321780490600

noncomputable section

/-- A026139: a(n) = s(k), where k is the n-th number such that s(j) < s(k) for all j < k, where s = A026136. Also a(n) = 2*t(n) - 1, where t = A026138.

Offset 1, canonical program `A026139.P8785309321780490600`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026139 (n : ℕ) : ℤ :=
  A026139.P8785309321780490600.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026139.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026141.P6698721252845057780

`A026225(n+1)-A026140(n+1)`
-/

namespace A026141.P6698721252845057780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026225 (n + 1) - A026140 (n + 1)

end

end A026141.P6698721252845057780

noncomputable section

/-- A026141: a(n) = (s(n)-s(n-1))/2, where s = A026139.

Offset 2, canonical program `A026141.P6698721252845057780`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026141 (n : ℕ) : ℤ :=
  A026141.P6698721252845057780.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026141.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026320.P3662656461649246048

`∩[A026319(n+1), A246297(n+1)]`
-/

namespace A026320.P3662656461649246048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246297 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A026320.P3662656461649246048

noncomputable section

/-- A026320: sin(n) > cos(n) > sin(n+1).

Offset 1, canonical program `A026320.P3662656461649246048`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A026320 (n : ℕ) : ℤ :=
  (A026320.P3662656461649246048.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A026320.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028949.P15011364157154069551

`A147809(abs(1-2*n))+A122553(n)`
-/

namespace A028949.P15011364157154069551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147809 |1 - (2 * n : ℤ)|.toNat + A122553 n

end

end A028949.P15011364157154069551

noncomputable section

/-- A028949: Write numbers from 1 to n(n+1)/2 in a left-justified lower triangular array (a) downwards and (b) across; a(n) is number of numbers in same position in both.

Offset 1, canonical program `A028949.P15011364157154069551`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A028949 (n : ℕ) : ℤ :=
  A028949.P15011364157154069551.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A028949.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028966.P4564524160118052881

`∪[A055040(n+1), comp[A189715(n+1)]]`
-/

namespace A028966.P4564524160118052881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055040 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189715 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A028966.P4564524160118052881

noncomputable section

/-- A028966: Norms of vectors in the a.c.c. lattice, divided by 2.

Offset 0, canonical program `A028966.P4564524160118052881`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A028966 (n : ℕ) : ℤ :=
  (A028966.P4564524160118052881.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A028966.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A029629.P6084514030674874401

`A029628(A049068(n+1))`
-/

namespace A029629.P6084514030674874401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029628 (A049068 (n + 1)).toNat

end

end A029629.P6084514030674874401

noncomputable section

/-- A029629: Numbers to left of central elements of the (3,2)-Pascal triangle A029618 that are different from 3.

Offset 0, canonical program `A029629.P6084514030674874401`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9801 terms. -/
def A029629 (n : ℕ) : ℤ :=
  A029629.P6084514030674874401.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9801 terms. -/
def A029629.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029630.P10151144225103094584

`A029628(eq[1, A130047(n)])`
-/

namespace A029630.P10151144225103094584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130047 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029628 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029630.P10151144225103094584

noncomputable section

/-- A029630: Odd numbers to left of central elements of the (3,2)-Pascal triangle A029618.

Offset 0, canonical program `A029630.P10151144225103094584`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1861 terms. -/
def A029630 (n : ℕ) : ℤ :=
  A029630.P10151144225103094584.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1861 terms. -/
def A029630.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029631.P17454013802700819155

`A029628(eq[0, A130047(n)])`
-/

namespace A029631.P17454013802700819155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130047 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029628 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029631.P17454013802700819155

noncomputable section

/-- A029631: Even numbers to left of central elements of the (3,2)-Pascal triangle A029618.

Offset 0, canonical program `A029631.P17454013802700819155`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8139 terms. -/
def A029631 (n : ℕ) : ℤ :=
  A029631.P17454013802700819155.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8139 terms. -/
def A029631.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029646.P63597527185748147

`A029644(eq[1, A130047(n)])`
-/

namespace A029646.P63597527185748147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130047 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029644 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029646.P63597527185748147

noncomputable section

/-- A029646: Odd numbers to the left of the central elements of the (1,2)-Pascal triangle A029635.

Offset 0, canonical program `A029646.P63597527185748147`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1861 terms. -/
def A029646 (n : ℕ) : ℤ :=
  A029646.P63597527185748147.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1861 terms. -/
def A029646.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029647.P16607861063663059710

`A029644(eq[0, A130047(n)])`
-/

namespace A029647.P16607861063663059710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130047 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029644 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029647.P16607861063663059710

noncomputable section

/-- A029647: Even numbers to the left of the central elements of the (1,2)-Pascal triangle A029635.

Offset 0, canonical program `A029647.P16607861063663059710`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8139 terms. -/
def A029647 (n : ℕ) : ℤ :=
  A029647.P16607861063663059710.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8139 terms. -/
def A029647.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029662.P6655327354340354651

`A029644(n)+A008315(n)`
-/

namespace A029662.P6655327354340354651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029644 n + A008315 n

end

end A029662.P6655327354340354651

noncomputable section

/-- A029662: Numbers to the left of the central numbers of the (2,1)-Pascal triangle A029653.

Offset 0, canonical program `A029662.P6655327354340354651`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029662 (n : ℕ) : ℤ :=
  A029662.P6655327354340354651.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029662.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A030096.P1601059321159697482

`p?[A066640(n+1)]`
-/

namespace A030096.P1601059321159697482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066640 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A030096.P1601059321159697482

noncomputable section

/-- A030096: Primes whose digits are all odd.

Offset 1, canonical program `A030096.P1601059321159697482`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3217 terms. -/
def A030096 (n : ℕ) : ℤ :=
  A030096.P1601059321159697482.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3217 terms. -/
def A030096.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A030241.P11357588331415714441

`floor(log(A080709(n+1)))`
-/

namespace A030241.P11357588331415714441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A080709 (n + 1) : ℝ)⌋

end

end A030241.P11357588331415714441

noncomputable section

/-- A030241: Minimal determinant of any n-dimensional even lattice.

Offset 0, canonical program `A030241.P11357588331415714441`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A030241 (n : ℕ) : ℤ :=
  A030241.P11357588331415714441.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A030241.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A030634.P5580952251098320278

`A002808(eq[16, A035004(n+1)])`
-/

namespace A030634.P5580952251098320278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035004 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A030634.P5580952251098320278

noncomputable section

/-- A030634: Numbers with 16 divisors.

Offset 1, canonical program `A030634.P5580952251098320278`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 942 terms. -/
def A030634 (n : ℕ) : ℤ :=
  A030634.P5580952251098320278.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 942 terms. -/
def A030634.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A031497.P1152109054829542898

`A007095(A043453(n+1))%A155085((n+6)²)`
-/

namespace A031497.P1152109054829542898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007095 (A043453 (n + 1)).toNat) (A155085 ((n + 6) ^ 2))

end

end A031497.P1152109054829542898

noncomputable section

/-- A031497: Numbers whose base-10 representation has one more 0 than 9's.

Offset 1, canonical program `A031497.P1152109054829542898`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A031497 (n : ℕ) : ℤ :=
  A031497.P1152109054829542898.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A031497.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A032938.P16217621075849988673

`∪[A037314(n+1), A208665(n+1)]`
-/

namespace A032938.P16217621075849988673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037314 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208665 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A032938.P16217621075849988673

noncomputable section

/-- A032938: Numbers whose base-3 representation Sum_{i=0..m} d(i)*3^(m-i) has d(i)=0 for all odd i.

Offset 1, canonical program `A032938.P16217621075849988673`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A032938 (n : ℕ) : ℤ :=
  (A032938.P16217621075849988673.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A032938.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033034.P13313601177705697998

`eq[1, gcd(2, A309959(n))]`
-/

namespace A033034.P13313601177705697998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A309959 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A033034.P13313601177705697998

noncomputable section

/-- A033034: Numbers all of whose base 8 digits are odd.

Offset 1, canonical program `A033034.P13313601177705697998`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 596 terms. -/
def A033034 (n : ℕ) : ℤ :=
  (A033034.P13313601177705697998.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 596 terms. -/
def A033034.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033831.P4343580932729545234

`A004526(A055086(n)-A078152(n+1))`
-/

namespace A033831.P4343580932729545234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A055086 n - A078152 (n + 1)).toNat

end

end A033831.P4343580932729545234

noncomputable section

/-- A033831: Number of numbers d dividing n such that d >= 3 and n/d <= d-2.

Offset 1, canonical program `A033831.P4343580932729545234`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033831 (n : ℕ) : ℤ :=
  A033831.P4343580932729545234.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033831.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034098.P11444615271163327952

`A078358(A034103(n+1)+1)`
-/

namespace A034098.P11444615271163327952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078358 (A034103 (n + 1) + 1).toNat

end

end A034098.P11444615271163327952

noncomputable section

/-- A034098: Fractional part of square root of a(n) starts with digit 2.

Offset 1, canonical program `A034098.P11444615271163327952`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1010 terms. -/
def A034098 (n : ℕ) : ℤ :=
  A034098.P11444615271163327952.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1010 terms. -/
def A034098.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034714.P15425672651250517908

`(n+1)*A038040(n+1)`
-/

namespace A034714.P15425672651250517908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A038040 (n + 1)

end

end A034714.P15425672651250517908

noncomputable section

/-- A034714: Dirichlet convolution of squares with themselves.

Offset 1, canonical program `A034714.P15425672651250517908`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034714 (n : ℕ) : ℤ :=
  A034714.P15425672651250517908.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034714.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A035928.P1929867611185398910

`(n+1)*A062383(n+1)+A036044(n+1)`
-/

namespace A035928.P1929867611185398910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A062383 (n + 1) + A036044 (n + 1)

end

end A035928.P1929867611185398910

noncomputable section

/-- A035928: Numbers n such that BCR(n) = n, where BCR = binary-complement-and-reverse = take one's complement then reverse bit order.

Offset 1, canonical program `A035928.P1929867611185398910`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A036044, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A035928 (n : ℕ) : ℤ :=
  A035928.P1929867611185398910.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A036044, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A035928.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A036537.P3717985819955807243

`eq[1, A359473(n+1)]+1`
-/

namespace A036537.P3717985819955807243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359473 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A036537.P3717985819955807243

noncomputable section

/-- A036537: Numbers whose number of divisors is a power of 2.

Offset 1, canonical program `A036537.P3717985819955807243`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036537 (n : ℕ) : ℤ :=
  (A036537.P3717985819955807243.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036537.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037035.P15953228204083907658

`A013597(n)-1`
-/

namespace A037035.P15953228204083907658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013597 n - 1

end

end A037035.P15953228204083907658

noncomputable section

/-- A037035: Least k such that 2^n+1+k is a prime.

Offset 0, canonical program `A037035.P15953228204083907658`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 755 terms. -/
def A037035 (n : ℕ) : ℤ :=
  A037035.P15953228204083907658.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 755 terms. -/
def A037035.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037203.P613243773187998549

`∑[val(A036689(n+1), A048448(n+1))]`
-/

namespace A037203.P613243773187998549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A036689 (n + 1)).toNat (A048448 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037203.P613243773187998549

noncomputable section

/-- A037203: Number of terms by which A001223 lags behind A037201.

Offset 0, canonical program `A037203.P613243773187998549`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037203 (n : ℕ) : ℤ :=
  (A037203.P613243773187998549.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037203.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037341.P3346706287896231561

`A249102(A248910(n+1)+1)`
-/

namespace A037341.P3346706287896231561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249102 (A248910 (n + 1) + 1).toNat

end

end A037341.P3346706287896231561

noncomputable section

/-- A037341: Numbers whose base-2 and base-7 expansions have no digits in common.

Offset 1, canonical program `A037341.P3346706287896231561`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4298 terms. -/
def A037341 (n : ℕ) : ℤ :=
  A037341.P3346706287896231561.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4298 terms. -/
def A037341.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037413.P354472380037276149

`A033045(record[gcd(n, A099894(n))])`
-/

namespace A037413.P354472380037276149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A099894 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033045 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A037413.P354472380037276149

noncomputable section

/-- A037413: Positive numbers having the same set of digits in base 2 and base 8.

Offset 1, canonical program `A037413.P354472380037276149`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9987 terms. -/
def A037413 (n : ℕ) : ℤ :=
  A037413.P354472380037276149.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9987 terms. -/
def A037413.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037477.P15889330472557437891

`eq[0, xor(A007095(n), A052421(n+1))]`
-/

namespace A037477.P15889330472557437891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007095 n) (A052421 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037477.P15889330472557437891

noncomputable section

/-- A037477: a(n) = Sum{d(i)*9^i: i=0,1,...,m}, where Sum{d(i)*8^i: i=0,1,...,m} is the base 8 representation of n.

Offset 0, canonical program `A037477.P15889330472557437891`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. -/
def A037477 (n : ℕ) : ℤ :=
  (A037477.P15889330472557437891.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. -/
def A037477.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037718.P5498483775677250731

`A037690(n+1)+A037739(n+1)-A037711(n+1)`
-/

namespace A037718.P5498483775677250731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037690 (n + 1) + (A037739 (n + 1) - A037711 (n + 1))

end

end A037718.P5498483775677250731

noncomputable section

/-- A037718: Base 6 digits are, in order, the first n terms of the periodic sequence with initial period 2,0,1,3.

Offset 1, canonical program `A037718.P5498483775677250731`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A037718 (n : ℕ) : ℤ :=
  A037718.P5498483775677250731.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A037718.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037774.P1186075867567179161

`A037767(n+1)+A037788(n+1)-A037781(n+1)`
-/

namespace A037774.P1186075867567179161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037767 (n + 1) + (A037788 (n + 1) - A037781 (n + 1))

end

end A037774.P1186075867567179161

noncomputable section

/-- A037774: Base 6 digits are, in order, the first n terms of the periodic sequence with initial period 3,1,0,2.

Offset 1, canonical program `A037774.P1186075867567179161`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. -/
def A037774 (n : ℕ) : ℤ :=
  A037774.P1186075867567179161.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. -/
def A037774.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037868.P10667047250231889726

`A037869(A007095(n+1))`
-/

namespace A037868.P10667047250231889726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037869 (A007095 (n + 1)).toNat

end

end A037868.P10667047250231889726

noncomputable section

/-- A037868: a(n)=(number of digits <=4)-(number of digits >4) in base 9 representation of n.

Offset 1, canonical program `A037868.P10667047250231889726`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. -/
def A037868 (n : ℕ) : ℤ :=
  A037868.P10667047250231889726.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. -/
def A037868.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037896.P17461005331305696964

`A002523(eq[1, A193929(n)])`
-/

namespace A037896.P17461005331305696964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193929 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002523 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A037896.P17461005331305696964

noncomputable section

/-- A037896: Primes of the form k^4 + 1.

Offset 1, canonical program `A037896.P17461005331305696964`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 790 terms. -/
def A037896 (n : ℕ) : ℤ :=
  A037896.P17461005331305696964.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 790 terms. -/
def A037896.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037911.P18019407288265882149

`A037913(A007094(n+1))`
-/

namespace A037911.P18019407288265882149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037913 (A007094 (n + 1)).toNat

end

end A037911.P18019407288265882149

noncomputable section

/-- A037911: Number of i such that |d(i) - d(i-1)| = 1, where Sum_{i=0..m} d(i)*8^i is the base-8 representation of n.

Offset 1, canonical program `A037911.P18019407288265882149`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4096 terms. -/
def A037911 (n : ℕ) : ℤ :=
  A037911.P18019407288265882149.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4096 terms. -/
def A037911.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037912.P2162404746786536408

`A037913(A007095(n+1))`
-/

namespace A037912.P2162404746786536408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037913 (A007095 (n + 1)).toNat

end

end A037912.P2162404746786536408

noncomputable section

/-- A037912: Number of i such that |d(i) - d(i-1)| = 1, where Sum_{i=0..m} d(i)*9^i is the base-9 representation of n.

Offset 1, canonical program `A037912.P2162404746786536408`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. -/
def A037912 (n : ℕ) : ℤ :=
  A037912.P2162404746786536408.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. -/
def A037912.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038513.P216814139241609581

`filter[A046316(n+1), A187074(#)]`
-/

namespace A038513.P216814139241609581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046316 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187074 (f1 j).toNat = 1) n)

end

end A038513.P216814139241609581

noncomputable section

/-- A038513: Numbers with three not necessarily distinct prime factors with smallest prime >=5.

Offset 0, canonical program `A038513.P216814139241609581`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5214 terms. -/
def A038513 (n : ℕ) : ℤ :=
  A038513.P216814139241609581.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5214 terms. -/
def A038513.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038548.P12593795823109361725

`A000005(n+1)-A056924(n+1)`
-/

namespace A038548.P12593795823109361725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A056924 (n + 1)

end

end A038548.P12593795823109361725

noncomputable section

/-- A038548: Number of divisors of n that are at most sqrt(n).

Offset 1, canonical program `A038548.P12593795823109361725`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038548 (n : ℕ) : ℤ :=
  A038548.P12593795823109361725.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038548.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A038613.P7921595428629418031

`p?[A052413(n+1)]`
-/

namespace A038613.P7921595428629418031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038613.P7921595428629418031

noncomputable section

/-- A038613: Primes not containing the digit '5'.

Offset 1, canonical program `A038613.P7921595428629418031`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1301 terms. -/
def A038613 (n : ℕ) : ℤ :=
  A038613.P7921595428629418031.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1301 terms. -/
def A038613.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038614.P8063922092030666977

`p?[A052414(n+1)]`
-/

namespace A038614.P8063922092030666977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052414 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038614.P8063922092030666977

noncomputable section

/-- A038614: Primes not containing the digit '6'.

Offset 1, canonical program `A038614.P8063922092030666977`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1299 terms. -/
def A038614 (n : ℕ) : ℤ :=
  A038614.P8063922092030666977.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1299 terms. -/
def A038614.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038616.P11115806758595749976

`p?[A052421(n+1)]`
-/

namespace A038616.P11115806758595749976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052421 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038616.P11115806758595749976

noncomputable section

/-- A038616: Primes not containing the digit '8'.

Offset 1, canonical program `A038616.P11115806758595749976`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1317 terms. -/
def A038616 (n : ℕ) : ℤ :=
  A038616.P11115806758595749976.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1317 terms. -/
def A038616.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039416.P5541879360622471767

`∩[A011532(n+1), A039134(n+1)]`
-/

namespace A039416.P5541879360622471767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011532 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039416.P5541879360622471767

noncomputable section

/-- A039416: Numbers whose base-10 representation has the same nonzero number of 2's and 9's.

Offset 1, canonical program `A039416.P5541879360622471767`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1808 terms. -/
def A039416 (n : ℕ) : ℤ :=
  (A039416.P5541879360622471767.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1808 terms. -/
def A039416.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039738.P12802691868891967207

`A171157(A001750(n+1)%A008864(n+1))`
-/

namespace A039738.P12802691868891967207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171157 (Int.tmod (A001750 (n + 1)) (A008864 (n + 1))).toNat

end

end A039738.P12802691868891967207

noncomputable section

/-- A039738: a(n)=number of primes q

Offset 1, canonical program `A039738.P12802691868891967207`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A039738 (n : ℕ) : ℤ :=
  A039738.P12802691868891967207.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A039738.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043283.P13169352551083880011

`A043290(A023717(n+1))`
-/

namespace A043283.P13169352551083880011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043290 (A023717 (n + 1)).toNat

end

end A043283.P13169352551083880011

noncomputable section

/-- A043283: Maximal run length in base-9 representation of n.

Offset 1, canonical program `A043283.P13169352551083880011`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6562 terms. -/
def A043283 (n : ℕ) : ℤ :=
  A043283.P13169352551083880011.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6562 terms. -/
def A043283.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043454.P3294804726548310803

`eq[2, A055641(A052413(n+1))]`
-/

namespace A043454.P3294804726548310803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A052413 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043454.P3294804726548310803

noncomputable section

/-- A043454: Numbers having two 0's in base 9.

Offset 1, canonical program `A043454.P3294804726548310803`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A043454 (n : ℕ) : ℤ :=
  (A043454.P3294804726548310803.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A043454.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045329.P12914608708689287997

`∪[A045341(n+1), A045377(n+1)]`
-/

namespace A045329.P12914608708689287997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045341 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045377 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045329.P12914608708689287997

noncomputable section

/-- A045329: Primes congruent to {0, 2, 3, 6} (mod 7).

Offset 1, canonical program `A045329.P12914608708689287997`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045329 (n : ℕ) : ℤ :=
  (A045329.P12914608708689287997.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045329.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045376.P4361008746595793697

`∪[A045377(n+1), A045463(n+1)]`
-/

namespace A045376.P4361008746595793697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045377 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045463 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045376.P4361008746595793697

noncomputable section

/-- A045376: Primes congruent to {0, 1, 2, 6} mod 7.

Offset 1, canonical program `A045376.P4361008746595793697`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045376 (n : ℕ) : ℤ :=
  (A045376.P4361008746595793697.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045376.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047779.P5728304473776711494

`∩[A023196(n+1), A079364(n+1)]`
-/

namespace A047779.P5728304473776711494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023196 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079364 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A047779.P5728304473776711494

noncomputable section

/-- A047779: Abundant or perfect numbers k such that neither k-1 nor k+1 is a prime.

Offset 1, canonical program `A047779.P5728304473776711494`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1757 terms. -/
def A047779 (n : ℕ) : ℤ :=
  (A047779.P5728304473776711494.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1757 terms. -/
def A047779.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048109.P10170578425489534564

`filter[A336593(n+1), A359472(#)]`
-/

namespace A048109.P10170578425489534564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336593 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359472 (f1 j).toNat = 1) n)

end

end A048109.P10170578425489534564

noncomputable section

/-- A048109: Numbers having equally many squarefree and nonsquarefree divisors; number of unitary divisors of n (A034444) = number of non-unitary divisors of n (A048105).

Offset 1, canonical program `A048109.P10170578425489534564`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7421 terms. -/
def A048109 (n : ℕ) : ℤ :=
  A048109.P10170578425489534564.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7421 terms. -/
def A048109.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048675.P15792214674053257917

`∑{d}[n+1, A297108(#)]`
-/

namespace A048675.P15792214674053257917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A297108 d

end

end A048675.P15792214674053257917

noncomputable section

/-- A048675: If n = p_i^e_i * ... * p_k^e_k, p_i < ... < p_k primes (with p_i = prime(i)), then a(n) = (1/2) * (e_i * 2^i + ... + e_k * 2^k).

Offset 1, canonical program `A048675.P15792214674053257917`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2242 terms. -/
def A048675 (n : ℕ) : ℤ :=
  A048675.P15792214674053257917.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2242 terms. -/
def A048675.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048765.P3171386167876683570

`A000142(∑[A316341(n)]+1)`
-/

namespace A048765.P3171386167876683570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316341 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A048765.P3171386167876683570

noncomputable section

/-- A048765: Smallest factorial >= n.

Offset 1, canonical program `A048765.P3171386167876683570`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048765 (n : ℕ) : ℤ :=
  A048765.P3171386167876683570.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048765.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049441.P4202534320219273296

`eq[3, A121842(A000038(n)+n)]`
-/

namespace A049441.P4202534320219273296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121842 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A049441.P4202534320219273296

noncomputable section

/-- A049441: Numbers k such that k^3 + 3 is prime.

Offset 1, canonical program `A049441.P4202534320219273296`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 586 terms. -/
def A049441 (n : ℕ) : ℤ :=
  (A049441.P4202534320219273296.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 586 terms. -/
def A049441.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049510.P5320459567008850854

`A000720(A030433(n+1))`
-/

namespace A049510.P5320459567008850854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A030433 (n + 1)).toNat

end

end A049510.P5320459567008850854

noncomputable section

/-- A049510: Numbers k such that prime(k) == 9 (mod 10).

Offset 1, canonical program `A049510.P5320459567008850854`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030433, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A049510 (n : ℕ) : ℤ :=
  A049510.P5320459567008850854.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030433, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A049510.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A049711.P4440062402042869045

`A064722(n+2)+1`
-/

namespace A049711.P4440062402042869045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064722 (n + 2) + 1

end

end A049711.P4440062402042869045

noncomputable section

/-- A049711: a(n) = n - prevprime(n).

Offset 3, canonical program `A049711.P4440062402042869045`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064722, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A049711 (n : ℕ) : ℤ :=
  A049711.P4440062402042869045.a (n - 3)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064722, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A049711.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A050376.P8445497075527543903

`A084400(n+2)`
-/

namespace A050376.P8445497075527543903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084400 (n + 2)

end

end A050376.P8445497075527543903

noncomputable section

/-- A050376: "Fermi-Dirac primes": numbers of the form p^(2^k) where p is prime and k >= 0.

Offset 1, canonical program `A050376.P8445497075527543903`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A050376 (n : ℕ) : ℤ :=
  A050376.P8445497075527543903.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A050376.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050795.P10925690759410066325

`2*A140612(n+2)+1`
-/

namespace A050795.P10925690759410066325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A140612 (n + 2) + 1

end

end A050795.P10925690759410066325

noncomputable section

/-- A050795: Numbers n such that n^2 - 1 is expressible as the sum of two nonzero squares in at least one way.

Offset 1, canonical program `A050795.P10925690759410066325`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A050795 (n : ℕ) : ℤ :=
  A050795.P10925690759410066325.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A050795.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051288.P12667383771510004661

`A034868(n)*A207538(n+1)`
-/

namespace A051288.P12667383771510004661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034868 n * A207538 (n + 1)

end

end A051288.P12667383771510004661

noncomputable section

/-- A051288: Triangle read by rows: T(n,k) = number of paths of n upsteps U and n downsteps D that contain k UUDs.

Offset 0, canonical program `A051288.P12667383771510004661`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7351 terms. -/
def A051288 (n : ℕ) : ℤ :=
  A051288.P12667383771510004661.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7351 terms. -/
def A051288.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054022.P4308669514195259819

`record[gcd(n+1, A123108(A160550(n+1)))]`
-/

namespace A054022.P4308669514195259819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A123108 (A160550 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054022.P4308669514195259819

noncomputable section

/-- A054022: Chowla function of n is divisible by the number of divisors of n.

Offset 1, canonical program `A054022.P4308669514195259819`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4303 terms. -/
def A054022 (n : ℕ) : ℤ :=
  (A054022.P4308669514195259819.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4303 terms. -/
def A054022.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055151.P1770356931591867441

`A391403(n)/A122197(n+1)`
-/

namespace A055151.P1770356931591867441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A391403 n : ℚ) / (A122197 (n + 1) : ℚ)

end

end A055151.P1770356931591867441

noncomputable section

/-- A055151: Triangular array of Motzkin polynomial coefficients.

Offset 0, canonical program `A055151.P1770356931591867441`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055151 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A055151.P1770356931591867441.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055151.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055770.P10085862936855628698

`A055881(n+1)!`
-/

namespace A055770.P10085862936855628698
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A055881 (n + 1)).toNat

end

end A055770.P10085862936855628698

noncomputable section

/-- A055770: Largest factorial number which divides n.

Offset 1, canonical program `A055770.P10085862936855628698`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055770 (n : ℕ) : ℤ :=
  (A055770.P10085862936855628698.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055770.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056548.P9433201203860911017

`A350102(2*n)-A350102(n)`
-/

namespace A056548.P9433201203860911017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350102 (2 * n) - A350102 n

end

end A056548.P9433201203860911017

noncomputable section

/-- A056548: a(n) = Sum_{k>=1} round(n/k) where round(1/2) = 0.

Offset 0, canonical program `A056548.P9433201203860911017`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A056548 (n : ℕ) : ℤ :=
  A056548.P9433201203860911017.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A056548.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056709.P1000143406783122933

`p?[A273460(n+1)]`
-/

namespace A056709.P1000143406783122933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273460 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A056709.P1000143406783122933

noncomputable section

/-- A056709: Naught-y primes, primes with noughts (or zeros).

Offset 1, canonical program `A056709.P1000143406783122933`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9983 terms. -/
def A056709 (n : ℕ) : ℤ :=
  A056709.P1000143406783122933.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9983 terms. -/
def A056709.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059015.P11480840936605404321

`A083652(n)-A000788(n)`
-/

namespace A059015.P11480840936605404321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083652 n - A000788 n

end

end A059015.P11480840936605404321

noncomputable section

/-- A059015: Total number of 0's in binary expansions of 0, ..., n.

Offset 0, canonical program `A059015.P11480840936605404321`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000788, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A059015 (n : ℕ) : ℤ :=
  A059015.P11480840936605404321.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000788, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A059015.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A059344.P14070619251469344958

`A034868(n)*A344391(n)`
-/

namespace A059344.P14070619251469344958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034868 n * A344391 n

end

end A059344.P14070619251469344958

noncomputable section

/-- A059344: Triangle read by rows: row n consists of the nonzero coefficients of the expansion of 2^n x^n in terms of Hermite polynomials with decreasing subscripts.

Offset 0, canonical program `A059344.P14070619251469344958`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2803 terms. -/
def A059344 (n : ℕ) : ℤ :=
  A059344.P14070619251469344958.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2803 terms. -/
def A059344.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060254.P6574363649956652698

`A176902(n+2)`
-/

namespace A060254.P6574363649956652698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176902 (n + 2)

end

end A060254.P6574363649956652698

noncomputable section

/-- A060254: Primes which are the sum of two consecutive composite numbers.

Offset 1, canonical program `A060254.P6574363649956652698`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A060254 (n : ℕ) : ℤ :=
  A060254.P6574363649956652698.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A060254.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061384.P2326583486309432145

`A001202(A031448(n+1)+1)`
-/

namespace A061384.P2326583486309432145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001202 (A031448 (n + 1) + 1).toNat

end

end A061384.P2326583486309432145

noncomputable section

/-- A061384: Numbers n such that sum of digits = number of digits.

Offset 1, canonical program `A061384.P2326583486309432145`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A061384 (n : ℕ) : ℤ :=
  A061384.P2326583486309432145.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A061384.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061430.P16664291568719836085

`eq[A004428(n)^A055642(n), A007954(n)]`
-/

namespace A061430.P16664291568719836085
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004428 n : ℚ) ^ (A055642 n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A061430.P16664291568719836085

noncomputable section

/-- A061430: Geometric mean of the digits is an integer: k-digit numbers such that the product of the digits is a number of the form m^k.

Offset 1, canonical program `A061430.P16664291568719836085`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2833 terms. -/
def A061430 (n : ℕ) : ℤ :=
  (A061430.P16664291568719836085.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2833 terms. -/
def A061430.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062091.P6979132532382001810

`record[2*A065883(A084400(n+1))]`
-/

namespace A062091.P6979132532382001810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A065883 (A084400 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062091.P6979132532382001810

noncomputable section

/-- A062091: a(1) = 2, a(n)= smallest even number which does not divide the product of all previous terms.

Offset 1, canonical program `A062091.P6979132532382001810`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2301 terms. -/
def A062091 (n : ℕ) : ℤ :=
  A062091.P6979132532382001810.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2301 terms. -/
def A062091.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062879.P8862703960269035905

`A171070(n+1)-A036796(n)`
-/

namespace A062879.P8862703960269035905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171070 (n + 1) - A036796 n

end

end A062879.P8862703960269035905

noncomputable section

/-- A062879: Integers whose Zeckendorf expansion does not contain ones at even positions.

Offset 1, canonical program `A062879.P8862703960269035905`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4097 terms. -/
def A062879 (n : ℕ) : ℤ :=
  A062879.P8862703960269035905.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4097 terms. -/
def A062879.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063101.P351098770969771744

`A063440(n!)`
-/

namespace A063101.P351098770969771744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063440 (Nat.factorial n)

end

end A063101.P351098770969771744

noncomputable section

/-- A063101: a(n) is the number of divisors of n!*(n! + 1)/2.

Offset 0, canonical program `A063101.P351098770969771744`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063101 (n : ℕ) : ℤ :=
  A063101.P351098770969771744.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063101.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063123.P8123817947040067879

`A092517(n+1)/2`
-/

namespace A063123.P8123817947040067879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092517 (n + 1) : ℚ) / 2

end

end A063123.P8123817947040067879

noncomputable section

/-- A063123: Number of solutions (r,s), 0< r< s, to the equation 1/n = 1/r + 1/s + 1/(r*s).

Offset 1, canonical program `A063123.P8123817947040067879`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063123 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A063123.P8123817947040067879.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063123.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A064865.P16846928706753949874

`A064866(∑[n+1])`
-/

namespace A064865.P16846928706753949874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064866 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A064865.P16846928706753949874

noncomputable section

/-- A064865: Fill a triangular array by rows by writing numbers 1, then 1 up to 2^2, then 1 up to 3^2, then 1 up to 4^2 and so on. The final elements of the rows form the sequence.

Offset 1, canonical program `A064865.P16846928706753949874`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. -/
def A064865 (n : ℕ) : ℤ :=
  A064865.P16846928706753949874.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. -/
def A064865.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066136.P8726344444493965524

`floor(A073897(n+1)/2)`
-/

namespace A066136.P8726344444493965524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A073897 (n + 1) : ℚ) / 2⌋

end

end A066136.P8726344444493965524

noncomputable section

/-- A066136: Primes are replaced by their local sequence number in A000040, while composites are replaced by their sequence number in A002808; (a kind of eigen- or home-indexing).

Offset 1, canonical program `A066136.P8726344444493965524`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066136 (n : ℕ) : ℤ :=
  A066136.P8726344444493965524.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066136.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067268.P9303226199233799514

`eq[A001221(n+1), A128428(n+1)]+1`
-/

namespace A067268.P9303226199233799514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128428 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A067268.P9303226199233799514

noncomputable section

/-- A067268: Numbers k such that k and k^2+1 have the same number of distinct prime factors.

Offset 1, canonical program `A067268.P9303226199233799514`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2486 terms. -/
def A067268 (n : ℕ) : ℤ :=
  (A067268.P9303226199233799514.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2486 terms. -/
def A067268.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008299.P1528602672575865424

`A134991(A056536(n+1))`
-/

namespace A008299.P1528602672575865424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134991 (A056536 (n + 1)).toNat

end

end A008299.P1528602672575865424

noncomputable section

/-- A008299: Triangle T(n,k) of associated Stirling numbers of second kind, n >= 2, 1 <= k <= floor(n/2).

Offset 2, canonical program `A008299.P1528602672575865424`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 870 terms. -/
def A008299 (n : ℕ) : ℤ :=
  A008299.P1528602672575865424.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 870 terms. -/
def A008299.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008311.P16507071146551103518

`A008314(A082375(n)+A028391(n))`
-/

namespace A008311.P16507071146551103518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008314 (A082375 n + A028391 n).toNat

end

end A008311.P16507071146551103518

noncomputable section

/-- A008311: Triangle of expansions of powers of x in terms of Chebyshev polynomials T_n (x).

Offset 0, canonical program `A008311.P16507071146551103518`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008311 (n : ℕ) : ℤ :=
  A008311.P16507071146551103518.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008311.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023218.P971650435398565174

`p?[floor(A030433(n+1)/5)]`
-/

namespace A023218.P971650435398565174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A030433 (n + 1) : ℚ) / 5⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023218.P971650435398565174

noncomputable section

/-- A023218: Primes p such that 5*p + 4 is also prime.

Offset 1, canonical program `A023218.P971650435398565174`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9748 terms. -/
def A023218 (n : ℕ) : ℤ :=
  A023218.P971650435398565174.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9748 terms. -/
def A023218.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029610.P915263053335155690

`A029628(n)-A008315(n)`
-/

namespace A029610.P915263053335155690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029628 n - A008315 n

end

end A029610.P915263053335155690

noncomputable section

/-- A029610: Numbers to the left of the central numbers of the (2,3)-Pascal triangle A029600.

Offset 0, canonical program `A029610.P915263053335155690`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029610 (n : ℕ) : ℤ :=
  A029610.P915263053335155690.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029610.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A042990.P10404979310700425933

`∪[A003625(n+1), A042994(n+1)]`
-/

namespace A042990.P10404979310700425933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042994 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042990.P10404979310700425933

noncomputable section

/-- A042990: Primes not congruent to 4 (mod 7).

Offset 0, canonical program `A042990.P10404979310700425933`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A042990 (n : ℕ) : ℤ :=
  (A042990.P10404979310700425933.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A042990.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066436.P14967679808844480665

`∪[A090684(n+1), A264823(n+1)]`
-/

namespace A066436.P14967679808844480665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090684 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264823 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A066436.P14967679808844480665

noncomputable section

/-- A066436: Primes of the form 2*n^2 - 1.

Offset 1, canonical program `A066436.P14967679808844480665`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066436 (n : ℕ) : ℤ :=
  (A066436.P14967679808844480665.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066436.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003013.P16339675636839990099

`A002999(n)-n`
-/

namespace A003013.P16339675636839990099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002999 n - (n : ℤ)

end

end A003013.P16339675636839990099

noncomputable section

/-- A003013: E.g.f. 1 + x*exp(x) + x^2*exp(2*x).

Offset 0, canonical program `A003013.P16339675636839990099`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002999, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A003013 (n : ℕ) : ℤ :=
  A003013.P16339675636839990099.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002999, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A003013.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A005075.P408257098076567385

`A005063(n+1)-A005071(n+1)-9*A079978(n+1)`
-/

namespace A005075.P408257098076567385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005063 (n + 1) - A005071 (n + 1) - 9 * A079978 (n + 1)

end

end A005075.P408257098076567385

noncomputable section

/-- A005075: Sum of squares of primes = 2 mod 3 dividing n.

Offset 1, canonical program `A005075.P408257098076567385`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005063, A005071, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A005075 (n : ℕ) : ℤ :=
  A005075.P408257098076567385.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005063, A005071, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A005075.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A010815.P5219802530418017542

`Δ[A078616(abs(1-n))]`
-/

namespace A010815.P5219802530418017542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078616 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A010815.P5219802530418017542

noncomputable section

/-- A010815: From Euler's Pentagonal Theorem: coefficient of q^n in Product_{m>=1} (1 - q^m).

Offset 0, canonical program `A010815.P5219802530418017542`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A010815 (n : ℕ) : ℤ :=
  A010815.P5219802530418017542.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A010815.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022885.P9407388956969530620

`A000040(A022884(n+1))`
-/

namespace A022885.P9407388956969530620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A022884 (n + 1)).toNat

end

end A022885.P9407388956969530620

noncomputable section

/-- A022885: Primes p=prime(k) such that prime(k) + prime(k+3) = prime(k+1) + prime(k+2).

Offset 1, canonical program `A022885.P9407388956969530620`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022884, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A022885 (n : ℕ) : ℤ :=
  A022885.P9407388956969530620.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022884, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A022885.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A023201.P15581086770608415372

`p?[A015914(n+1)]`
-/

namespace A023201.P15581086770608415372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015914 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023201.P15581086770608415372

noncomputable section

/-- A023201: Primes p such that p + 6 is also prime. (Lesser of a pair of sexy primes.)

Offset 1, canonical program `A023201.P15581086770608415372`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9993 terms. -/
def A023201 (n : ℕ) : ℤ :=
  A023201.P15581086770608415372.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9993 terms. -/
def A023201.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025179.P2089828949187285846

`1/2*A024997(n+3)`
-/

namespace A025179.P2089828949187285846
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A024997 (n + 3) : ℚ)

end

end A025179.P2089828949187285846

noncomputable section

/-- A025179: a(n) = number of (s(0), s(1), ..., s(n)) such that s(i) is an integer, s(0) = 0, |s(1)| = 1, |s(i) - s(i-1)| <= 1 for i >= 2, s(n) = 1. Also a(n) = T(n,n-1), where T is the array defined in A025177.

Offset 2, canonical program `A025179.P2089828949187285846`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024997, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A025179 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A025179.P2089828949187285846.a (n - 2))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024997, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A025179.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A030109.P14199666590729784855

`floor(A030101(n+1)/2)`
-/

namespace A030109.P14199666590729784855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A030101 (n + 1) : ℚ) / 2⌋

end

end A030109.P14199666590729784855

noncomputable section

/-- A030109: Write n in binary, reverse bits, subtract 1, divide by 2.

Offset 1, canonical program `A030109.P14199666590729784855`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A030109 (n : ℕ) : ℤ :=
  A030109.P14199666590729784855.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A030109.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035178.P16959896462476049729

`abs(A261884(n+1))`
-/

namespace A035178.P16959896462476049729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A261884 (n + 1)|

end

end A035178.P16959896462476049729

noncomputable section

/-- A035178: a(n) = Sum_{d|n} Kronecker(-12, d) (= A134667(d)).

Offset 1, canonical program `A035178.P16959896462476049729`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035178 (n : ℕ) : ℤ :=
  A035178.P16959896462476049729.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035178.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037445.P13224315450337883063

`∏{e}[n+1, A001316(#)]`
-/

namespace A037445.P13224315450337883063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A001316 (Nat.factorization (f1 n) p)

end

end A037445.P13224315450337883063

noncomputable section

/-- A037445: Number of infinitary divisors (or i-divisors) of n.

Offset 1, canonical program `A037445.P13224315450337883063`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037445 (n : ℕ) : ℤ :=
  A037445.P13224315450337883063.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037445.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046645.P11243749111570164507

`log2(A046644(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A046645.P11243749111570164507
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A046644 (n + 1) : ℝ)

end

end A046645.P11243749111570164507

noncomputable section

/-- A046645: a(n) = log_2(A046644(n)); also the 2-adic valuation of A046644(n).

Offset 1, canonical program `A046645.P11243749111570164507`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046644, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A046645 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A046645.P11243749111570164507.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046644, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A046645.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A046970.P18046929235984925317

`A023900(n+1)*A048250(n+1)`
-/

namespace A046970.P18046929235984925317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023900 (n + 1) * A048250 (n + 1)

end

end A046970.P18046929235984925317

noncomputable section

/-- A046970: Dirichlet inverse of the Jordan function J_2 (A007434).

Offset 1, canonical program `A046970.P18046929235984925317`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023900, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A046970 (n : ℕ) : ℤ :=
  A046970.P18046929235984925317.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023900, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A046970.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A050452.P8848155708238405563

`A000593(n+1)-A050449(n+1)`
-/

namespace A050452.P8848155708238405563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1) - A050449 (n + 1)

end

end A050452.P8848155708238405563

noncomputable section

/-- A050452: a(n) = Sum_{d|n, d == 3 (mod 4)} d.

Offset 1, canonical program `A050452.P8848155708238405563`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050449, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A050452 (n : ℕ) : ℤ :=
  A050452.P8848155708238405563.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050449, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A050452.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A050470.P13784025442860772715

`A076577(n+1)-2*A050465(n+1)`
-/

namespace A050470.P13784025442860772715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076577 (n + 1) - 2 * A050465 (n + 1)

end

end A050470.P13784025442860772715

noncomputable section

/-- A050470: a(n) = Sum_{d|n, n/d == 1 (mod 4)} d^2 - Sum_{d|n, n/d == 3 (mod 4)} d^2.

Offset 1, canonical program `A050470.P13784025442860772715`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050470 (n : ℕ) : ℤ :=
  A050470.P13784025442860772715.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050470.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054520.P14142192903502151308

`lt[A230641(n), A050449(n+1)]+1`
-/

namespace A054520.P14142192903502151308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230641 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050449 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A054520.P14142192903502151308

noncomputable section

/-- A054520: Let S = {1,5,9,13,..., 4n+1, ...} and call p in S an S-prime if p>1 and the only divisors of p in S are 1 and p; sequence gives elements of S that are not S-primes.

Offset 1, canonical program `A054520.P14142192903502151308`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1270 terms. -/
def A054520 (n : ℕ) : ℤ :=
  (A054520.P14142192903502151308.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1270 terms. -/
def A054520.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054546.P12235855701833693749

`A065310(A000038(n)²+n)`
-/

namespace A054546.P12235855701833693749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065310 (A000038 n ^ 2 + (n : ℤ)).toNat

end

end A054546.P12235855701833693749

noncomputable section

/-- A054546: First differences of nonprimes (including 0 and 1, A002808).

Offset 1, canonical program `A054546.P12235855701833693749`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054546 (n : ℕ) : ℤ :=
  A054546.P12235855701833693749.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054546.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055029.P8500131277876422925

`char[A002144(n+1)]+char[A055025(n+1)]`
-/

namespace A055029.P8500131277876422925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

end

end A055029.P8500131277876422925

noncomputable section

/-- A055029: Number of inequivalent Gaussian primes of norm n.

Offset 0, canonical program `A055029.P8500131277876422925`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055029 (n : ℕ) : ℤ :=
  (A055029.P8500131277876422925.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055029.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056675.P16805316149492235292

`A048656(n+1)-A056672(n+1)`
-/

namespace A056675.P16805316149492235292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048656 (n + 1) - A056672 (n + 1)

end

end A056675.P16805316149492235292

noncomputable section

/-- A056675: Number of non-unitary but squarefree divisors of n!. Also number of unitary but not-squarefree divisors of n!.

Offset 1, canonical program `A056675.P16805316149492235292`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056672, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056675 (n : ℕ) : ℤ :=
  A056675.P16805316149492235292.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056672, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056675.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A064775.P13267556708224384151

`∑[1-A341642(n+1)]`
-/

namespace A064775.P13267556708224384151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A341642 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064775.P13267556708224384151

noncomputable section

/-- A064775: Number of positive integers k <= n such that all prime divisors of k are <= sqrt(k).

Offset 1, canonical program `A064775.P13267556708224384151`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064775 (n : ℕ) : ℤ :=
  A064775.P13267556708224384151.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064775.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066692.P15153014828628836343

`filter[A062832(n+1), A379952(#)]`
-/

namespace A066692.P15153014828628836343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062832 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379952 (f1 j).toNat = 1) n)

end

end A066692.P15153014828628836343

noncomputable section

/-- A066692: Odd numbers k such that tau(k) = tau(k+2), where tau(k) = A000005(k) is the number of divisors of k.

Offset 1, canonical program `A066692.P15153014828628836343`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7561 terms. -/
def A066692 (n : ℕ) : ℤ :=
  A066692.P15153014828628836343.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7561 terms. -/
def A066692.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000010.P4673923239450215316

`A173557(n+1)*A003557(n+1)`
-/

namespace A000010.P4673923239450215316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173557 (n + 1) * A003557 (n + 1)

end

end A000010.P4673923239450215316

noncomputable section

/-- A000010: Euler totient function phi(n): count numbers <= n and prime to n.

Offset 1, canonical program `A000010.P4673923239450215316`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173557, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A000010 (n : ℕ) : ℤ :=
  A000010.P4673923239450215316.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173557, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A000010.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A001083.P5643140285671293949

`A054353(a(n-1))` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A001083.P5643140285671293949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  A054353 (a (n - 1)).toNat

end

end A001083.P5643140285671293949

noncomputable section

/-- A001083: Length of one version of Kolakoski sequence {A000002(i)} at n-th growth stage.

Offset 1, canonical program `A001083.P5643140285671293949`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054353, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A001083 (n : ℕ) : ℤ :=
  A001083.P5643140285671293949.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054353, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A001083.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A005064.P4705532925960423919

`A005067(n+1)+8*A059841(n+1)`
-/

namespace A005064.P4705532925960423919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005067 (n + 1) + 8 * A059841 (n + 1)

end

end A005064.P4705532925960423919

noncomputable section

/-- A005064: Sum of cubes of primes dividing n.

Offset 1, canonical program `A005064.P4705532925960423919`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005067, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A005064 (n : ℕ) : ℤ :=
  A005064.P4705532925960423919.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005067, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A005064.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A005077.P2212048464589055495

`A005065(n+1)-A005073(n+1)-81*A079978(n+1)`
-/

namespace A005077.P2212048464589055495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005065 (n + 1) - A005073 (n + 1) - 81 * A079978 (n + 1)

end

end A005077.P2212048464589055495

noncomputable section

/-- A005077: Sum of 4th powers of primes = 2 mod 3 dividing n.

Offset 1, canonical program `A005077.P2212048464589055495`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005065, A005073, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A005077 (n : ℕ) : ℤ :=
  A005077.P2212048464589055495.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005065, A005073, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A005077.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A005081.P3663982266665043880

`A005065(n+1)-A005085(n+1)-16*A059841(n+1)`
-/

namespace A005081.P3663982266665043880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005065 (n + 1) - A005085 (n + 1) - 16 * A059841 (n + 1)

end

end A005081.P3663982266665043880

noncomputable section

/-- A005081: Sum of 4th powers of primes = 1 mod 4 dividing n.

Offset 1, canonical program `A005081.P3663982266665043880`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005065, A005085, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A005081 (n : ℕ) : ℤ :=
  A005081.P3663982266665043880.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005065, A005085, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A005081.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A005656.P12596922391734523113

`Δ[A034872(A004273(n))]%A088218(n)`
-/

namespace A005656.P12596922391734523113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034872 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A088218 n)

end

end A005656.P12596922391734523113

noncomputable section

/-- A005656: Number of bracelets (turn over necklaces) with n red, 1 pink and n - 3 blue beads; also reversible strings with n red and n-3 blue beads.

Offset 1, canonical program `A005656.P12596922391734523113`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A005656 (n : ℕ) : ℤ :=
  A005656.P12596922391734523113.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A005656.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006068.P16534033749009019403

`2*A265263(n)-2*A377404(n)-A010060(n)`
-/

namespace A006068.P16534033749009019403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A265263 n - 2 * A377404 n - A010060 n

end

end A006068.P16534033749009019403

noncomputable section

/-- A006068: a(n) is Gray-coded into n.

Offset 0, canonical program `A006068.P16534033749009019403`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A265263, A377404, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A006068 (n : ℕ) : ℤ :=
  A006068.P16534033749009019403.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A265263, A377404, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A006068.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A006605.P14742297344609024448

`A026302(n)/(n+1)`
-/

namespace A006605.P14742297344609024448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026302 n : ℚ) / (n + 1 : ℚ)

end

end A006605.P14742297344609024448

noncomputable section

/-- A006605: Number of modes of connections of 2n points.

Offset 0, canonical program `A006605.P14742297344609024448`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026302, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A006605 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A006605.P14742297344609024448.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026302, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A006605.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A007895.P13159574906702943091

`A143299(n+1)-1`
-/

namespace A007895.P13159574906702943091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143299 (n + 1) - 1

end

end A007895.P13159574906702943091

noncomputable section

/-- A007895: Number of terms in the Zeckendorf representation of n (write n as a sum of non-consecutive distinct Fibonacci numbers).

Offset 0, canonical program `A007895.P13159574906702943091`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A143299, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A007895 (n : ℕ) : ℤ :=
  A007895.P13159574906702943091.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A143299, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A007895.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A020643.P9151950905293445288

`record[A322590(A066779(n+1))]`
-/

namespace A020643.P9151950905293445288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322590 (A066779 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020643.P9151950905293445288

noncomputable section

/-- A020643: a(n)-th squarefree is sum of first k squarefrees for some k.

Offset 1, canonical program `A020643.P9151950905293445288`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 180 terms. -/
def A020643 (n : ℕ) : ℤ :=
  A020643.P9151950905293445288.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 180 terms. -/
def A020643.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022414.P15866858124123457630

`A002251(A022413(n)-n)`
-/

namespace A022414.P15866858124123457630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002251 (A022413 n - (n : ℤ)).toNat

end

end A022414.P15866858124123457630

noncomputable section

/-- A022414: Kim-sums: "Kimberling sums" K_n + K_3.

Offset 0, canonical program `A022414.P15866858124123457630`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6180 terms. -/
def A022414 (n : ℕ) : ℤ :=
  A022414.P15866858124123457630.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6180 terms. -/
def A022414.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022417.P10626180340282099604

`A002251(A022415(n)-n)`
-/

namespace A022417.P10626180340282099604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002251 (A022415 n - (n : ℤ)).toNat

end

end A022417.P10626180340282099604

noncomputable section

/-- A022417: Kim-sums: "Kimberling sums" K_n + K_6.

Offset 0, canonical program `A022417.P10626180340282099604`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6177 terms. -/
def A022417 (n : ℕ) : ℤ :=
  A022417.P10626180340282099604.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6177 terms. -/
def A022417.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022419.P10055904053497005654

`A002251(A022416(n)-n)`
-/

namespace A022419.P10055904053497005654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002251 (A022416 n - (n : ℤ)).toNat

end

end A022419.P10055904053497005654

noncomputable section

/-- A022419: Kim-sums: "Kimberling sums" K_n + K_8.

Offset 0, canonical program `A022419.P10055904053497005654`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6175 terms. -/
def A022419 (n : ℕ) : ℤ :=
  A022419.P10055904053497005654.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6175 terms. -/
def A022419.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023888.P17873500436284849145

`A000203(n+1)-A035321(n+1)`
-/

namespace A023888.P17873500436284849145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A035321 (n + 1)

end

end A023888.P17873500436284849145

noncomputable section

/-- A023888: Sum of prime power divisors of n (1 included).

Offset 1, canonical program `A023888.P17873500436284849145`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035321, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023888 (n : ℕ) : ℤ :=
  A023888.P17873500436284849145.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035321, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023888.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A024620.P8536977387799856667

`A065515(A000040(n+1))`
-/

namespace A024620.P8536977387799856667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065515 (A000040 (n + 1)).toNat

end

end A024620.P8536977387799856667

noncomputable section

/-- A024620: Positions of primes among the powers of primes (A000961).

Offset 1, canonical program `A024620.P8536977387799856667`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065515, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A024620 (n : ℕ) : ℤ :=
  A024620.P8536977387799856667.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065515, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A024620.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A024623.P17142202958174441954

`A065515(3^n)`
-/

namespace A024623.P17142202958174441954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065515 (3 ^ n)

end

end A024623.P17142202958174441954

noncomputable section

/-- A024623: a(n) is the number of prime powers <= 3^n.

Offset 0, canonical program `A024623.P17142202958174441954`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065515, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A024623 (n : ℕ) : ℤ :=
  A024623.P17142202958174441954.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065515, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A024623.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A025471.P13068643471398560519

`A065515(5^n)`
-/

namespace A025471.P13068643471398560519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065515 (5 ^ n)

end

end A025471.P13068643471398560519

noncomputable section

/-- A025471: Position of 5^n among the powers of primes (A000961).

Offset 0, canonical program `A025471.P13068643471398560519`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065515, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A025471 (n : ℕ) : ℤ :=
  A025471.P13068643471398560519.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065515, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A025471.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A025472.P17597315845330719835

`A065515(7^n)`
-/

namespace A025472.P17597315845330719835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065515 (7 ^ n)

end

end A025472.P17597315845330719835

noncomputable section

/-- A025472: a(n) is the position of 7^n among the powers of primes (A000961).

Offset 0, canonical program `A025472.P17597315845330719835`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065515, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A025472 (n : ℕ) : ℤ :=
  A025472.P17597315845330719835.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065515, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A025472.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A026112.P727766938938311538

`A026302(A028310(n))-A327871(n)`
-/

namespace A026112.P727766938938311538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026302 (A028310 n).toNat - A327871 n

end

end A026112.P727766938938311538

noncomputable section

/-- A026112: a(n) = T(2n,n), where T is the array defined in A026105.

Offset 0, canonical program `A026112.P727766938938311538`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. -/
def A026112 (n : ℕ) : ℤ :=
  A026112.P727766938938311538.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. -/
def A026112.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026242.P14627616473925988182

`abs(n+1-A002251(n+1))`
-/

namespace A026242.P14627616473925988182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) - A002251 (n + 1)|

end

end A026242.P14627616473925988182

noncomputable section

/-- A026242: a(n) = j if n is L(j), else a(n) = k if n is U(k), where L = A000201, U = A001950 (lower and upper Wythoff sequences).

Offset 1, canonical program `A026242.P14627616473925988182`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002251, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A026242 (n : ℕ) : ℤ :=
  A026242.P14627616473925988182.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002251, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A026242.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A030430.P15047301384318659499

`10*A024912(n+1)+1`
-/

namespace A030430.P15047301384318659499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A024912 (n + 1) + 1

end

end A030430.P15047301384318659499

noncomputable section

/-- A030430: Primes of the form 10*n+1.

Offset 1, canonical program `A030430.P15047301384318659499`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024912, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A030430 (n : ℕ) : ℤ :=
  A030430.P15047301384318659499.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024912, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A030430.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A034178.P3748445109450908079

`round(A143520(n+1)/(2*n+1))`
-/

namespace A034178.P3748445109450908079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A143520 (n + 1) : ℚ) / (2 * n + 1 : ℚ))

end

end A034178.P3748445109450908079

noncomputable section

/-- A034178: Number of solutions to n = a^2 - b^2, a > b >= 0.

Offset 1, canonical program `A034178.P3748445109450908079`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034178 (n : ℕ) : ℤ :=
  A034178.P3748445109450908079.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034178.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038669.P16373294596466858069

`∑[A304092(n+1)-1]`
-/

namespace A038669.P16373294596466858069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304092 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038669.P16373294596466858069

noncomputable section

/-- A038669: [ n/2 ]+[ n/3 ]+[ n/4 ]+[ n/7 ]+[ n/11 ]+[ n/18 ]+[ n/29 ]+[ n/47 ]+[ n/76 ]+[ n/123 ]+[ n/199 ]+... (using Lucas numbers A000032).

Offset 1, canonical program `A038669.P16373294596466858069`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038669 (n : ℕ) : ℤ :=
  A038669.P16373294596466858069.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038669.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039724.P5845673454398674636

`A007088(A005351(n))`
-/

namespace A039724.P5845673454398674636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A005351 n).toNat

end

end A039724.P5845673454398674636

noncomputable section

/-- A039724: a(n) is the negabinary expansion of n, that is, the expansion of n in base -2.

Offset 0, canonical program `A039724.P5845673454398674636`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039724 (n : ℕ) : ℤ :=
  A039724.P5845673454398674636.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039724.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A042939.P563178382816472669

`A040997(A000040(n+1))`
-/

namespace A042939.P563178382816472669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040997 (A000040 (n + 1)).toNat

end

end A042939.P563178382816472669

noncomputable section

/-- A042939: Absolute values between digits of primes.

Offset 1, canonical program `A042939.P563178382816472669`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A040997, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A042939 (n : ℕ) : ℤ :=
  A042939.P563178382816472669.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A040997, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A042939.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A044436.P3602461463815188657

`record[Δ[A004488(n)+A000326(n)]]`
-/

namespace A044436.P3602461463815188657
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 n + A000326 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044436.P3602461463815188657

noncomputable section

/-- A044436: Numbers n such that string 1,0 occurs in the base 3 representation of n but not of n+1.

Offset 1, canonical program `A044436.P3602461463815188657`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1030 terms. -/
def A044436 (n : ℕ) : ℤ :=
  A044436.P3602461463815188657.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1030 terms. -/
def A044436.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046340.P2863459807996963045

`filter[A014076(n+1), A359372(#)]`
-/

namespace A046340.P2863459807996963045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359372 (f1 j).toNat = 1) n)

end

end A046340.P2863459807996963045

noncomputable section

/-- A046340: Odd composite numbers with an odd number of prime factors (counted with multiplicity).

Offset 1, canonical program `A046340.P2863459807996963045`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3693 terms. -/
def A046340 (n : ℕ) : ℤ :=
  A046340.P2863459807996963045.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3693 terms. -/
def A046340.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054352.P3911841191489718260

`A054353(a(n-1))+1` with `a(0)=1`
-/

namespace A054352.P3911841191489718260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A054353 (a (n - 1)).toNat + 1

end

end A054352.P3911841191489718260

noncomputable section

/-- A054352: Lengths of successive generations of the Kolakoski sequence A000002.

Offset 0, canonical program `A054352.P3911841191489718260`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054353, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A054352 (n : ℕ) : ℤ :=
  A054352.P3911841191489718260.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054353, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A054352.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A055654.P12577505086499020644

`n+1-A055653(n+1)`
-/

namespace A055654.P12577505086499020644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A055653 (n + 1)

end

end A055654.P12577505086499020644

noncomputable section

/-- A055654: Difference between n and the result of "Phi-summation" over unitary divisors of n.

Offset 1, canonical program `A055654.P12577505086499020644`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055653, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055654 (n : ℕ) : ℤ :=
  A055654.P12577505086499020644.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055653, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055654.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A057532.P4710718478601077176

`A057531(eq[1, A057531(n+1)%2]+1)`
-/

namespace A057532.P4710718478601077176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057531 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057531 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A057532.P4710718478601077176

noncomputable section

/-- A057532: n is odd and sum of digits of n equals the numbers of divisors of n.

Offset 1, canonical program `A057532.P4710718478601077176`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1840 terms. -/
def A057532 (n : ℕ) : ℤ :=
  A057532.P4710718478601077176.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1840 terms. -/
def A057532.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059249.P4278260831633000860

`A004488(n+1)-1`
-/

namespace A059249.P4278260831633000860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 (n + 1) - 1

end

end A059249.P4278260831633000860

noncomputable section

/-- A059249: Tersum n + (n-1); write n and n-1 in base 3 and add mod 3 with no carries.

Offset 1, canonical program `A059249.P4278260831633000860`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059249 (n : ℕ) : ℤ :=
  A059249.P4278260831633000860.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059249.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059867.P12640614250635796407

`2^A073642(n+1)`
-/

namespace A059867.P12640614250635796407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A073642 (n + 1) : ℤ)

end

end A059867.P12640614250635796407

noncomputable section

/-- A059867: Number of irreducible representations of the symmetric group S_n that have odd degree.

Offset 1, canonical program `A059867.P12640614250635796407`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A073642, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A059867 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A059867.P12640614250635796407.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A073642, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A059867.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A061884.P16971839620340354771

`A057670(n+1)*A173557(n+1)/A007947(n+1)`
-/

namespace A061884.P16971839620340354771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057670 (n + 1) * A173557 (n + 1) : ℚ) / (A007947 (n + 1) : ℚ)

end

end A061884.P16971839620340354771

noncomputable section

/-- A061884: a(n) = Sum_{ d | n } phi(lcm(d,n/d)), where phi(n) = Euler totient A000010.

Offset 1, canonical program `A061884.P16971839620340354771`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173557, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A061884 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A061884.P16971839620340354771.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173557, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A061884.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A065073.P8599182111085404624

`A062028(A000040(n+1))`
-/

namespace A065073.P8599182111085404624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 (A000040 (n + 1)).toNat

end

end A065073.P8599182111085404624

noncomputable section

/-- A065073: a(n) = prime(n) + (sum of digits of prime(n)).

Offset 1, canonical program `A065073.P8599182111085404624`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062028, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065073 (n : ℕ) : ℤ :=
  A065073.P8599182111085404624.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062028, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065073.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A065620.P132964274324401119

`(2*A265263(n)-n)*(2*A010060(n)-1)`
-/

namespace A065620.P132964274324401119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A265263 n - (n : ℤ)) * (2 * A010060 n - 1)

end

end A065620.P132964274324401119

noncomputable section

/-- A065620: a(0)=0; thereafter a(2n) = 2a(n), a(2n+1) = -2a(n) + 1.

Offset 0, canonical program `A065620.P132964274324401119`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A265263, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065620 (n : ℕ) : ℤ :=
  A065620.P132964274324401119.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A265263, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065620.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A066086.P8501771591660618369

`gcd(A048250(n+1), A173557(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A066086.P8501771591660618369
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048250 (n + 1)) (A173557 (n + 1))

end

end A066086.P8501771591660618369

noncomputable section

/-- A066086: Greatest common divisor of product (p-1) and product (p+1), where p ranges over distinct prime divisors of n; a(n) = gcd(A048250(n), A173557(n)).

Offset 1, canonical program `A066086.P8501771591660618369`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173557, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066086 (n : ℕ) : ℤ :=
  (A066086.P8501771591660618369.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173557, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066086.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A067343.P8902143204584263014

`eq[A007953(n), A067342(A028310(n))]`
-/

namespace A067343.P8902143204584263014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067342 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067343.P8902143204584263014

noncomputable section

/-- A067343: Sum of decimal digits of n equals sum of decimal digits of sum of divisors of n.

Offset 1, canonical program `A067343.P8902143204584263014`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 459 terms. -/
def A067343 (n : ℕ) : ℤ :=
  (A067343.P8902143204584263014.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 459 terms. -/
def A067343.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068807.P3891556660410364740

`p?[A028838(n+1)]`
-/

namespace A068807.P3891556660410364740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A068807.P3891556660410364740

noncomputable section

/-- A068807: Primes whose sum of digits is a power of 2.

Offset 1, canonical program `A068807.P3891556660410364740`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1409 terms. -/
def A068807 (n : ℕ) : ℤ :=
  A068807.P3891556660410364740.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1409 terms. -/
def A068807.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004207.P9379893475422078749

`A062028(a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A004207.P9379893475422078749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A062028 (a (n - 1)).toNat

end

end A004207.P9379893475422078749

noncomputable section

/-- A004207: a(0) = 1, a(n) = sum of digits of all previous terms.

Offset 0, canonical program `A004207.P9379893475422078749`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062028, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A004207 (n : ℕ) : ℤ :=
  A004207.P9379893475422078749.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062028, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A004207.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A006507.P10105666352366520478

`A062028(a(n-1))` with `a(0)=7`
-/

namespace A006507.P10105666352366520478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  A062028 (a (n - 1)).toNat

end

end A006507.P10105666352366520478

noncomputable section

/-- A006507: a(n+1) = a(n) + sum of digits of a(n), with a(1)=7.

Offset 1, canonical program `A006507.P10105666352366520478`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062028, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A006507 (n : ℕ) : ℤ :=
  A006507.P10105666352366520478.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062028, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A006507.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A007304.P8931890627172899564

`eq[1, A354926(n+2)]+2`
-/

namespace A007304.P8931890627172899564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354926 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A007304.P8931890627172899564

noncomputable section

/-- A007304: Sphenic numbers: products of 3 distinct primes.

Offset 1, canonical program `A007304.P8931890627172899564`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9724 terms. -/
def A007304 (n : ℕ) : ℤ :=
  (A007304.P8931890627172899564.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9724 terms. -/
def A007304.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007618.P6018863421737465196

`A062028(a(n-1))` with `a(0)=5`
-/

namespace A007618.P6018863421737465196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A062028 (a (n - 1)).toNat

end

end A007618.P6018863421737465196

noncomputable section

/-- A007618: a(n) = a(n-1) + sum of digits of a(n-1), a(1) = 5.

Offset 1, canonical program `A007618.P6018863421737465196`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062028, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A007618 (n : ℕ) : ℤ :=
  A007618.P6018863421737465196.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062028, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A007618.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A010070.P9415386238020052903

`comp[A173528(n+1)+n-1]`
-/

namespace A010070.P9415386238020052903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173528 (n + 1) + ((n : ℤ) - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A010070.P9415386238020052903

noncomputable section

/-- A010070: Base 8 self or Colombian numbers (not of form k + sum of base 8 digits of k).

Offset 1, canonical program `A010070.P9415386238020052903`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 608 terms. -/
def A010070 (n : ℕ) : ℤ :=
  (A010070.P9415386238020052903.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 608 terms. -/
def A010070.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A010071.P8562185197263536109

`a(n-1)+A173528(a(n-1)+1)-1` with `a(0)=1`
-/

namespace A010071.P8562185197263536109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A173528 (a (n - 1) + 1).toNat - 1)

end

end A010071.P8562185197263536109

noncomputable section

/-- A010071: a(n+1) = a(n) + sum of digits in base 8 representation of a(n).

Offset 0, canonical program `A010071.P8562185197263536109`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 735 terms. -/
def A010071 (n : ℕ) : ℤ :=
  A010071.P8562185197263536109.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 735 terms. -/
def A010071.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A016052.P16387825715003404480

`A062028(a(n-1))` with `a(0)=3`
-/

namespace A016052.P16387825715003404480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A062028 (a (n - 1)).toNat

end

end A016052.P16387825715003404480

noncomputable section

/-- A016052: a(1) = 3; for n >= 1, a(n+1) = a(n) + sum of its digits.

Offset 1, canonical program `A016052.P16387825715003404480`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062028, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A016052 (n : ℕ) : ℤ :=
  A016052.P16387825715003404480.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062028, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A016052.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A016096.P6894083767046586145

`A062028(a(n-1))` with `a(0)=9`
-/

namespace A016096.P6894083767046586145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9] fun n a =>
  A062028 (a (n - 1)).toNat

end

end A016096.P6894083767046586145

noncomputable section

/-- A016096: a(n+1) = a(n) + sum of its digits, with a(1) = 9.

Offset 1, canonical program `A016096.P6894083767046586145`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062028, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A016096 (n : ℕ) : ℤ :=
  A016096.P6894083767046586145.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062028, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A016096.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A032937.P10558907271502412002

`∪[A000695(n+1), A062880(n+1)]`
-/

namespace A032937.P10558907271502412002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062880 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A032937.P10558907271502412002

noncomputable section

/-- A032937: Numbers k whose base-2 representation Sum_{i=0..m} d(i)*2^(m-i) has d(i)=0 for all odd i, excluding 0. Here m is the position of the leading bit of k.

Offset 1, canonical program `A032937.P10558907271502412002`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A032937 (n : ℕ) : ℤ :=
  (A032937.P10558907271502412002.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A032937.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036227.P6221341663879694796

`A062028(a(n-1))` with `a(0)=20`
-/

namespace A036227.P6221341663879694796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [20] fun n a =>
  A062028 (a (n - 1)).toNat

end

end A036227.P6221341663879694796

noncomputable section

/-- A036227: a(1) = 20; a(n+1) = a(n) + sum of decimal digits of a(n).

Offset 1, canonical program `A036227.P6221341663879694796`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 589 terms. -/
def A036227 (n : ℕ) : ℤ :=
  A036227.P6221341663879694796.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 589 terms. -/
def A036227.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037315.P7198483397476573084

`lt[(n*A180019(n))², n]`
-/

namespace A037315.P7198483397476573084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A180019 n) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A037315.P7198483397476573084

noncomputable section

/-- A037315: Numbers whose base-3 and base-10 expansions have the same digit sum.

Offset 1, canonical program `A037315.P7198483397476573084`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A037315 (n : ℕ) : ℤ :=
  (A037315.P7198483397476573084.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A037315.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037331.P10183187185978453703

`eq[A053828(A028310(n))+1, A173528(n+1)]`
-/

namespace A037331.P10183187185978453703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 (A028310 n).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173528 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037331.P10183187185978453703

noncomputable section

/-- A037331: Numbers whose base-7 and base-8 expansions have the same digit sum.

Offset 1, canonical program `A037331.P10183187185978453703`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 636 terms. -/
def A037331 (n : ℕ) : ℤ :=
  (A037331.P10183187185978453703.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 636 terms. -/
def A037331.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038366.P4711874104874146746

`eq[lcm(n, A061762(n)), A028310(n)]`
-/

namespace A038366.P4711874104874146746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A061762 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A038366.P4711874104874146746

noncomputable section

/-- A038366: n is divisible by (product of digits) + (sum of digits).

Offset 1, canonical program `A038366.P4711874104874146746`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 769 terms. -/
def A038366 (n : ℕ) : ℤ :=
  (A038366.P4711874104874146746.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 769 terms. -/
def A038366.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039393.P4198254221456296311

`∩[A039112(n+1), A062997(n+1)]`
-/

namespace A039393.P4198254221456296311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039393.P4198254221456296311

noncomputable section

/-- A039393: Numbers whose base-10 representation has the same nonzero number of 0's and 1's.

Offset 1, canonical program `A039393.P4198254221456296311`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3336 terms. -/
def A039393 (n : ℕ) : ℤ :=
  (A039393.P4198254221456296311.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3336 terms. -/
def A039393.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045776.P5877182421305232441

`A062028(a(n-1))-a(n-1)%A007953(a(n-1))` with `a(0)=1`
-/

namespace A045776.P5877182421305232441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A062028 (a (n - 1)).toNat - Int.tmod (a (n - 1)) (A007953 (a (n - 1)).toNat)

end

end A045776.P5877182421305232441

noncomputable section

/-- A045776: a(n+1) is smallest multiple of (sum of digits of a(n)) which is > a(n).

Offset 0, canonical program `A045776.P5877182421305232441`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 670 terms. -/
def A045776 (n : ℕ) : ℤ :=
  A045776.P5877182421305232441.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 670 terms. -/
def A045776.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047791.P9707445729224729229

`record[(n+1)*A010051(A062028(n+1))]`
-/

namespace A047791.P9707445729224729229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A010051 (A062028 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047791.P9707445729224729229

noncomputable section

/-- A047791: Numbers n such that n plus digit sum of n (A007953) equals a prime.

Offset 1, canonical program `A047791.P9707445729224729229`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1234 terms. -/
def A047791 (n : ℕ) : ℤ :=
  A047791.P9707445729224729229.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1234 terms. -/
def A047791.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049343.P4245191771258133539

`eq[∑{digits}[n², #], A004092(n)]`
-/

namespace A049343.P4245191771258133539
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A049343.P4245191771258133539

noncomputable section

/-- A049343: Numbers m such that 2m and m^2 have same digit sum.

Offset 1, canonical program `A049343.P4245191771258133539`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 259 terms. -/
def A049343 (n : ℕ) : ℤ :=
  (A049343.P4245191771258133539.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 259 terms. -/
def A049343.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051351.P6493723572968094148

`∑[A007605(A000007(n)+n)]-2`
-/

namespace A051351.P6493723572968094148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007605 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A051351.P6493723572968094148

noncomputable section

/-- A051351: a(n) = a(n-1) + sum of digits of n-th prime.

Offset 0, canonical program `A051351.P6493723572968094148`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051351 (n : ℕ) : ℤ :=
  A051351.P6493723572968094148.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051351.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051369.P3720303996826784203

`A004159(a(n-1))+a(n-1)` with `a(0)=3`
-/

namespace A051369.P3720303996826784203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A004159 (a (n - 1)).toNat + a (n - 1)

end

end A051369.P3720303996826784203

noncomputable section

/-- A051369: a(n+1) = a(n) + sum of digits of a(n)^2, with a(1) = 3.

Offset 1, canonical program `A051369.P3720303996826784203`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 318 terms. -/
def A051369 (n : ℕ) : ℤ :=
  A051369.P3720303996826784203.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 318 terms. -/
def A051369.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051370.P16333339530751387422

`A004159(a(n-1))+a(n-1)` with `a(0)=8`
-/

namespace A051370.P16333339530751387422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  A004159 (a (n - 1)).toNat + a (n - 1)

end

end A051370.P16333339530751387422

noncomputable section

/-- A051370: a(n+1) = a(n) + sum of digits of a(n)^2, with a(1) = 8.

Offset 1, canonical program `A051370.P16333339530751387422`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 317 terms. -/
def A051370 (n : ℕ) : ℤ :=
  A051370.P16333339530751387422.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 317 terms. -/
def A051370.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051373.P62567746208219066

`A004164(a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A051373.P62567746208219066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004164 (a (n - 1)).toNat + a (n - 1)

end

end A051373.P62567746208219066

noncomputable section

/-- A051373: a(n+1) = a(n) + sum of digits of (a(n)^3).

Offset 1, canonical program `A051373.P62567746208219066`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 222 terms. -/
def A051373 (n : ℕ) : ℤ :=
  A051373.P62567746208219066.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 222 terms. -/
def A051373.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051408.P15079108207671988781

`A004164(a(n-1))+a(n-1)` with `a(0)=3`
-/

namespace A051408.P15079108207671988781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A004164 (a (n - 1)).toNat + a (n - 1)

end

end A051408.P15079108207671988781

noncomputable section

/-- A051408: a(n+1) = a(n) + sum of digits of (a(n)^3).

Offset 1, canonical program `A051408.P15079108207671988781`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A051408 (n : ℕ) : ℤ :=
  A051408.P15079108207671988781.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A051408.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051409.P11390321377571457585

`A004164(a(n-1))+a(n-1)` with `a(0)=4`
-/

namespace A051409.P11390321377571457585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A004164 (a (n - 1)).toNat + a (n - 1)

end

end A051409.P11390321377571457585

noncomputable section

/-- A051409: a(n+1) = a(n) + sum of digits of (a(n)^3).

Offset 1, canonical program `A051409.P11390321377571457585`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. -/
def A051409 (n : ℕ) : ℤ :=
  A051409.P11390321377571457585.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. -/
def A051409.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051410.P16283429953950596313

`A004164(a(n-1))+a(n-1)` with `a(0)=6`
-/

namespace A051410.P16283429953950596313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  A004164 (a (n - 1)).toNat + a (n - 1)

end

end A051410.P16283429953950596313

noncomputable section

/-- A051410: a(n+1) = a(n) + sum of digits of a(n)^3.

Offset 1, canonical program `A051410.P16283429953950596313`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. -/
def A051410 (n : ℕ) : ℤ :=
  A051410.P16283429953950596313.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. -/
def A051410.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051411.P15164664904360530703

`A004164(a(n-1))+a(n-1)` with `a(0)=7`
-/

namespace A051411.P15164664904360530703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  A004164 (a (n - 1)).toNat + a (n - 1)

end

end A051411.P15164664904360530703

noncomputable section

/-- A051411: a(n+1) = a(n) + sum of digits of a(n)^3.

Offset 1, canonical program `A051411.P15164664904360530703`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. -/
def A051411 (n : ℕ) : ℤ :=
  A051411.P15164664904360530703.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. -/
def A051411.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051412.P8533835990491713621

`A004164(a(n-1))+a(n-1)` with `a(0)=9`
-/

namespace A051412.P8533835990491713621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9] fun n a =>
  A004164 (a (n - 1)).toNat + a (n - 1)

end

end A051412.P8533835990491713621

noncomputable section

/-- A051412: a(n+1) = a(n) + sum of digits of a(n)^3.

Offset 1, canonical program `A051412.P8533835990491713621`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A051412 (n : ℕ) : ℤ :=
  A051412.P8533835990491713621.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A051412.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053057.P8917643215926025307

`eq[1, A010052(A004159(n))]²`
-/

namespace A053057.P8917643215926025307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A004159 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A053057.P8917643215926025307

noncomputable section

/-- A053057: Squares whose digit sum is also a square.

Offset 1, canonical program `A053057.P8917643215926025307`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2238 terms. -/
def A053057 (n : ℕ) : ℤ :=
  (A053057.P8917643215926025307.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2238 terms. -/
def A053057.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053834.P7687178758272888330

`A055647(n)%99`
-/

namespace A053834.P7687178758272888330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055647 n) 99

end

end A053834.P7687178758272888330

noncomputable section

/-- A053834: Sum of digits of n written in base 14.

Offset 0, canonical program `A053834.P7687178758272888330`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053834 (n : ℕ) : ℤ :=
  A053834.P7687178758272888330.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053834.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056528.P4442300986705318360

`A004159(A004159(n+1))`
-/

namespace A056528.P4442300986705318360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 (A004159 (n + 1)).toNat

end

end A056528.P4442300986705318360

noncomputable section

/-- A056528: Sum of digits of square of sum of digits of square.

Offset 1, canonical program `A056528.P4442300986705318360`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004159, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056528 (n : ℕ) : ℤ :=
  A056528.P4442300986705318360.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004159, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056528.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A058369.P43549229018123999

`eq[A004159(n), A007953(n)]`
-/

namespace A058369.P43549229018123999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A058369.P43549229018123999

noncomputable section

/-- A058369: Numbers k such that k and k^2 have same digit sum.

Offset 1, canonical program `A058369.P43549229018123999`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 244 terms. -/
def A058369 (n : ℕ) : ℤ :=
  (A058369.P43549229018123999.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 244 terms. -/
def A058369.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060979.P5913686302778209989

`11*eq[A000007(n), A142150(A245627(n))]`
-/

namespace A060979.P5913686302778209989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A245627 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A060979.P5913686302778209989

noncomputable section

/-- A060979: |First digit - second digit + third digit - fourth digit ...| = 11.

Offset 1, canonical program `A060979.P5913686302778209989`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4374 terms. -/
def A060979 (n : ℕ) : ℤ :=
  (A060979.P5913686302778209989.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4374 terms. -/
def A060979.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062037.P16385492444936946523

`eq[A007954(n), A008486(A169805(n))]`
-/

namespace A062037.P16385492444936946523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A169805 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062037.P16385492444936946523

noncomputable section

/-- A062037: Positive numbers whose product of digits is 6 times their sum.

Offset 1, canonical program `A062037.P16385492444936946523`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. -/
def A062037 (n : ℕ) : ℤ :=
  (A062037.P16385492444936946523.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. -/
def A062037.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062330.P1434482193101896200

`A062331(a(n-1))` with `a(0)=2`
-/

namespace A062330.P1434482193101896200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A062331 (a (n - 1)).toNat

end

end A062330.P1434482193101896200

noncomputable section

/-- A062330: a(n) = product of the sum and product of the digits of a(n-1) (0 is not to be considered a factor in the product).

Offset 1, canonical program `A062330.P1434482193101896200`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062330 (n : ℕ) : ℤ :=
  A062330.P1434482193101896200.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062330.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062338.P8695219899618334486

`A000040(lt[A007605(n+1)%4, 1]+1)`
-/

namespace A062338.P8695219899618334486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007605 (n + 1)) 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A062338.P8695219899618334486

noncomputable section

/-- A062338: Primes whose sum of digits is a multiple of 4.

Offset 1, canonical program `A062338.P8695219899618334486`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2462 terms. -/
def A062338 (n : ℕ) : ℤ :=
  A062338.P8695219899618334486.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2462 terms. -/
def A062338.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062342.P3421117723688188329

`p?[A273188(n+1)]`
-/

namespace A062342.P3421117723688188329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062342.P3421117723688188329

noncomputable section

/-- A062342: Primes whose sum of digits is a multiple of 8.

Offset 1, canonical program `A062342.P3421117723688188329`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 782 terms. -/
def A062342 (n : ℕ) : ℤ :=
  A062342.P3421117723688188329.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 782 terms. -/
def A062342.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062753.P6486166718394067354

`filter[A268620(n+2), A121262(#)]`
-/

namespace A062753.P6486166718394067354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268620 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A121262 (f1 j).toNat = 1) n)

end

end A062753.P6486166718394067354

noncomputable section

/-- A062753: Multiples of 4 whose sum of digits is also a multiple of 4.

Offset 1, canonical program `A062753.P6486166718394067354`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2499 terms. -/
def A062753 (n : ℕ) : ℤ :=
  A062753.P6486166718394067354.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2499 terms. -/
def A062753.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062996.P11625453850010715147

`∪[A055933(n+1), A062997(n+1)]`
-/

namespace A062996.P11625453850010715147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055933 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A062996.P11625453850010715147

noncomputable section

/-- A062996: Numbers whose sum of digits is greater than or equal to its product of digits.

Offset 1, canonical program `A062996.P11625453850010715147`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062996 (n : ℕ) : ℤ :=
  (A062996.P11625453850010715147.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062996.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064399.P18127450818113564184

`lt[A004159(n), A007953(n)]`
-/

namespace A064399.P18127450818113564184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A064399.P18127450818113564184

noncomputable section

/-- A064399: Numbers k whose sum of digits exceeds the sum of the digits of k^2.

Offset 1, canonical program `A064399.P18127450818113564184`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 280 terms. -/
def A064399 (n : ℕ) : ℤ :=
  (A064399.P18127450818113564184.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 280 terms. -/
def A064399.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065713.P2914558267731047984

`A001370(2*n)`
-/

namespace A065713.P2914558267731047984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001370 (2 * n)

end

end A065713.P2914558267731047984

noncomputable section

/-- A065713: Sum of digits of 4^n.

Offset 0, canonical program `A065713.P2914558267731047984`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A065713 (n : ℕ) : ℤ :=
  A065713.P2914558267731047984.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A065713.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066004.P14525788820147274037

`A001370(3*n)`
-/

namespace A066004.P14525788820147274037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001370 (3 * n)

end

end A066004.P14525788820147274037

noncomputable section

/-- A066004: Sum of digits of 8^n.

Offset 0, canonical program `A066004.P14525788820147274037`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A066004 (n : ℕ) : ℤ :=
  A066004.P14525788820147274037.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A066004.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066566.P279150373663098236

`eq[1, A053186(A066568(n))+1]`
-/

namespace A066566.P279150373663098236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (A066568 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066566.P279150373663098236

noncomputable section

/-- A066566: Numbers that when decremented by the sum of their digits produce a square.

Offset 1, canonical program `A066566.P279150373663098236`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 310 terms. -/
def A066566 (n : ℕ) : ℤ :=
  (A066566.P279150373663098236.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 310 terms. -/
def A066566.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067507.P10580886633487687631

`A000079(eq[0, A071906(n)])`
-/

namespace A067507.P10580886633487687631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071906 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A067507.P10580886633487687631

noncomputable section

/-- A067507: Powers of 2 with even digit sum.

Offset 1, canonical program `A067507.P10580886633487687631`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A067507 (n : ℕ) : ℤ :=
  A067507.P10580886633487687631.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A067507.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067521.P8006543298138063662

`(lt[(n+1)%A004159(n+1), 1]+1)²`
-/

namespace A067521.P8006543298138063662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A004159 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1) ^ 2

end

end A067521.P8006543298138063662

noncomputable section

/-- A067521: Numbers n such that the square root of n is an integer and a multiple of the sum of the digits of n.

Offset 1, canonical program `A067521.P8006543298138063662`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 564 terms. -/
def A067521 (n : ℕ) : ℤ :=
  (A067521.P8006543298138063662.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 564 terms. -/
def A067521.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067552.P17186920303504174424

`A007953(n)²-A004159(n)`
-/

namespace A067552.P17186920303504174424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n ^ 2 - A004159 n

end

end A067552.P17186920303504174424

noncomputable section

/-- A067552: a(n) = SumOfDigits(n)^2 - SumOfDigits(n^2), where SumOfDigits = A007953.

Offset 0, canonical program `A067552.P17186920303504174424`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004159, A007953, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A067552 (n : ℕ) : ℤ :=
  A067552.P17186920303504174424.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004159, A007953, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A067552.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A068130.P8380932321966618756

`A000217(eq[15, A004157(n)])`
-/

namespace A068130.P8380932321966618756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A068130.P8380932321966618756

noncomputable section

/-- A068130: Triangular numbers with sum of digits = 15.

Offset 1, canonical program `A068130.P8380932321966618756`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 191 terms. -/
def A068130 (n : ℕ) : ℤ :=
  A068130.P8380932321966618756.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 191 terms. -/
def A068130.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068131.P296359315164383935

`A000217(eq[21, A004157(n)])`
-/

namespace A068131.P296359315164383935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A068131.P296359315164383935

noncomputable section

/-- A068131: Triangular numbers with sum of digits = 21.

Offset 1, canonical program `A068131.P296359315164383935`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 552 terms. -/
def A068131 (n : ℕ) : ℤ :=
  A068131.P296359315164383935.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 552 terms. -/
def A068131.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068132.P10501098146319111768

`A000217(eq[28, A004157(n)])`
-/

namespace A068132.P10501098146319111768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  28

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A068132.P10501098146319111768

noncomputable section

/-- A068132: Triangular numbers with sum of digits = 28.

Offset 1, canonical program `A068132.P10501098146319111768`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1185 terms. -/
def A068132 (n : ℕ) : ℤ :=
  A068132.P10501098146319111768.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1185 terms. -/
def A068132.provenance : SequenceMachineLib.Provenance := .conjectured

