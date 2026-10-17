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

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

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

/-! ## A002544.P18026945423642297502

`A002457(n)*(n+1)`
-/

namespace A002544.P18026945423642297502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002457 n * (n + 1 : ℤ)

end

end A002544.P18026945423642297502

noncomputable section

/-- A002544: a(n) = binomial(2*n+1,n)*(n+1)^2.

Offset 0, canonical program `A002544.P18026945423642297502`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002544 (n : ℕ) : ℤ :=
  A002544.P18026945423642297502.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002544.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A024486.P14309275763816620096

`A006480(n)/(2*n+1)`
-/

namespace A024486.P14309275763816620096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006480 n : ℚ) / (2 * n + 1 : ℚ)

end

end A024486.P14309275763816620096

noncomputable section

/-- A024486: a(n) = (1/(2n+1))*Multinomial(3n; n,n,n).

Offset 0, canonical program `A024486.P14309275763816620096`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A024486 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A024486.P14309275763816620096.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A024486.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A024491.P11557080651820310435

`A001448(n)/(4*n-1)`
-/

namespace A024491.P11557080651820310435
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001448 n : ℚ) / ((4 * n : ℤ) - 1 : ℚ)

end

end A024491.P11557080651820310435

noncomputable section

/-- A024491: a(n) = (1/(4n-1))*C(4n,2n).

Offset 0, canonical program `A024491.P11557080651820310435`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A024491 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A024491.P11557080651820310435.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A024491.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A051960.P3694803677626322338

`A051924(n+1)+A000108(n)`
-/

namespace A051960.P3694803677626322338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051924 (n + 1) + A000108 n

end

end A051960.P3694803677626322338

noncomputable section

/-- A051960: a(n) = C(n)*(3n+2) where C(n) = Catalan numbers = A000108.

Offset 0, canonical program `A051960.P3694803677626322338`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051960 (n : ℕ) : ℤ :=
  A051960.P3694803677626322338.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051960.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A000897.P14910180461201994835

`A000984(n)*A001448(n)`
-/

namespace A000897.P14910180461201994835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A001448 n

end

end A000897.P14910180461201994835

noncomputable section

/-- A000897: a(n) = (4*n)! / ((2*n)!*n!^2).

Offset 0, canonical program `A000897.P14910180461201994835`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000897 (n : ℕ) : ℤ :=
  A000897.P14910180461201994835.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000897.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A004247.P14233945955703425283

`A002262(n)*A025581(n)`
-/

namespace A004247.P14233945955703425283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n * A025581 n

end

end A004247.P14233945955703425283

noncomputable section

/-- A004247: Multiplication table read by antidiagonals: T(i,j) = i*j (i>=0, j>=0). Alternatively, multiplication triangle read by rows: P(i,j) = j*(i-j) (i>=0, 0<=j<=i).

Offset 0, canonical program `A004247.P14233945955703425283`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A004247 (n : ℕ) : ℤ :=
  A004247.P14233945955703425283.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A004247.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A006013.P4079729848362006556

`A024485(n+1)/3`
-/

namespace A006013.P4079729848362006556
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024485 (n + 1) : ℚ) / 3

end

end A006013.P4079729848362006556

noncomputable section

/-- A006013: a(n) = binomial(3*n+1,n)/(n+1).

Offset 0, canonical program `A006013.P4079729848362006556`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006013 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A006013.P4079729848362006556.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006013.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A014132.P16100975300423531158

`a(n-1)+A035214(n)` with `a(0)=2`
-/

namespace A014132.P16100975300423531158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + A035214 n

end

end A014132.P16100975300423531158

noncomputable section

/-- A014132: Complement of triangular numbers (A000217); also array T(n,k) = ((n+k)^2 + n-k)/2, n, k > 0, read by antidiagonals.

Offset 1, canonical program `A014132.P16100975300423531158`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014132 (n : ℕ) : ℤ :=
  A014132.P16100975300423531158.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014132.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A018900.P2868698677378612256

`2^A002024(n+1)+2^A002262(n)`
-/

namespace A018900.P2868698677378612256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A002024 (n + 1) : ℤ) + (2 : ℚ) ^ (A002262 n : ℤ)

end

end A018900.P2868698677378612256

noncomputable section

/-- A018900: Sums of two distinct powers of 2.

Offset 1, canonical program `A018900.P2868698677378612256`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A018900 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A018900.P2868698677378612256.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A018900.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A038487.P7367698157938051377

`9^A002024(n+1)+9^A002262(n)`
-/

namespace A038487.P7367698157938051377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 : ℚ) ^ (A002024 (n + 1) : ℤ) + (9 : ℚ) ^ (A002262 n : ℤ)

end

end A038487.P7367698157938051377

noncomputable section

/-- A038487: Sums of two distinct powers of 9.

Offset 1, canonical program `A038487.P7367698157938051377`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038487 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A038487.P7367698157938051377.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038487.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051162.P14261216125704105833

`A003056(n)+A002262(n)`
-/

namespace A051162.P14261216125704105833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n + A002262 n

end

end A051162.P14261216125704105833

noncomputable section

/-- A051162: Triangle T(n,k) = n+k, n >= 0, 0 <= k <= n.

Offset 0, canonical program `A051162.P14261216125704105833`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051162 (n : ℕ) : ℤ :=
  A051162.P14261216125704105833.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051162.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A054785.P15699579488212647133

`2*A002131(n+1)`
-/

namespace A054785.P15699579488212647133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002131 (n + 1)

end

end A054785.P15699579488212647133

noncomputable section

/-- A054785: a(n) = sigma(2n) - sigma(n), where sigma is the sum of divisors of n, A000203.

Offset 1, canonical program `A054785.P15699579488212647133`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A054785 (n : ℕ) : ℤ :=
  A054785.P15699579488212647133.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A054785.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A055236.P17447280474531156854

`4^A002262(n)+4^A003056(n)`
-/

namespace A055236.P17447280474531156854
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A002262 n : ℤ) + (4 : ℚ) ^ (A003056 n : ℤ)

end

end A055236.P17447280474531156854

noncomputable section

/-- A055236: Sums of two powers of 4.

Offset 0, canonical program `A055236.P17447280474531156854`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A055236 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A055236.P17447280474531156854.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A055236.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A055237.P7118855710974747732

`5^A002262(n)+5^A003056(n)`
-/

namespace A055237.P7118855710974747732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (A002262 n : ℤ) + (5 : ℚ) ^ (A003056 n : ℤ)

end

end A055237.P7118855710974747732

noncomputable section

/-- A055237: Sums of two powers of 5.

Offset 0, canonical program `A055237.P7118855710974747732`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A055237 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A055237.P7118855710974747732.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A055237.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A055257.P16433225161489891658

`6^A002262(n)+6^A003056(n)`
-/

namespace A055257.P16433225161489891658
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ (A002262 n : ℤ) + (6 : ℚ) ^ (A003056 n : ℤ)

end

end A055257.P16433225161489891658

noncomputable section

/-- A055257: Sums of two powers of 6.

Offset 0, canonical program `A055257.P16433225161489891658`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A055257 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A055257.P16433225161489891658.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A055257.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A055258.P16286617528214645909

`7^A002262(n)+7^A003056(n)`
-/

namespace A055258.P16286617528214645909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 : ℚ) ^ (A002262 n : ℤ) + (7 : ℚ) ^ (A003056 n : ℤ)

end

end A055258.P16286617528214645909

noncomputable section

/-- A055258: Sums of two powers of 7.

Offset 0, canonical program `A055258.P16286617528214645909`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A055258 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A055258.P16286617528214645909.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A055258.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A055259.P4830454040640714648

`8^A002262(n)+8^A003056(n)`
-/

namespace A055259.P4830454040640714648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 : ℚ) ^ (A002262 n : ℤ) + (8 : ℚ) ^ (A003056 n : ℤ)

end

end A055259.P4830454040640714648

noncomputable section

/-- A055259: Sums of two powers of 8.

Offset 0, canonical program `A055259.P4830454040640714648`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A055259 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A055259.P4830454040640714648.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A055259.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A055260.P17956841710511999010

`9^A002262(n)+9^A003056(n)`
-/

namespace A055260.P17956841710511999010
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 : ℚ) ^ (A002262 n : ℤ) + (9 : ℚ) ^ (A003056 n : ℤ)

end

end A055260.P17956841710511999010

noncomputable section

/-- A055260: Sums of two powers of 9.

Offset 0, canonical program `A055260.P17956841710511999010`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A055260 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A055260.P17956841710511999010.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A055260.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A055261.P5169350612647211692

`16^A002262(n)+16^A003056(n)`
-/

namespace A055261.P5169350612647211692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (16 : ℚ) ^ (A002262 n : ℤ) + (16 : ℚ) ^ (A003056 n : ℤ)

end

end A055261.P5169350612647211692

noncomputable section

/-- A055261: Sums of two powers of 16.

Offset 1, canonical program `A055261.P5169350612647211692`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A055261 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A055261.P5169350612647211692.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A055261.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A057945.P8114443607598857798

`a(A002262(n))+1` with `a(0)=0`
-/

namespace A057945.P8114443607598857798
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A002262 n).toNat + 1

end

end A057945.P8114443607598857798

noncomputable section

/-- A057945: Number of triangular numbers needed to represent n with greedy algorithm.

Offset 0, canonical program `A057945.P8114443607598857798`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057945 (n : ℕ) : ℤ :=
  (A057945.P8114443607598857798.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057945.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A001511.P17146462531039486101`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001511 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A001511.P17146462531039486101.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001511.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A002260.P769748059679640451

`1+A002262(n)`
-/

namespace A002260.P769748059679640451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A002262 n

end

end A002260.P769748059679640451

noncomputable section

/-- A002260: Triangle read by rows: T(n,k) = k for n >= 1, k = 1..n.

Offset 1, canonical program `A002260.P769748059679640451`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002260 (n : ℕ) : ℤ :=
  A002260.P769748059679640451.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002260.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 0, canonical program `A004207.P9379893475422078749`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A004207 (n : ℕ) : ℤ :=
  A004207.P9379893475422078749.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A004207.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A006507.P10105666352366520478`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006507 (n : ℕ) : ℤ :=
  A006507.P10105666352366520478.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006507.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A007618.P6018863421737465196`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007618 (n : ℕ) : ℤ :=
  A007618.P6018863421737465196.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007618.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A016052.P16387825715003404480`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A016052 (n : ℕ) : ℤ :=
  A016052.P16387825715003404480.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A016052.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A016096.P6894083767046586145`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A016096 (n : ℕ) : ℤ :=
  A016096.P6894083767046586145.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A016096.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A001453.P13217606277513459641

`∑[∑[A026012(n)]]`
-/

namespace A001453.P13217606277513459641
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026012 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001453.P13217606277513459641

noncomputable section

/-- A001453: Catalan numbers - 1.

Offset 2, canonical program `A001453.P13217606277513459641`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A001453 (n : ℕ) : ℤ :=
  A001453.P13217606277513459641.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A001453.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A002055.P6743341208794558895

`A002457(n+1)-A002054(n+2)`
-/

namespace A002055.P6743341208794558895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002457 (n + 1) - A002054 (n + 2)

end

end A002055.P6743341208794558895

noncomputable section

/-- A002055: Number of diagonal dissections of a convex n-gon into n-4 regions.

Offset 5, canonical program `A002055.P6743341208794558895`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A002055 (n : ℕ) : ℤ :=
  A002055.P6743341208794558895.a (n - 5)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A002055.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A002944.P9903695625241811934

`A001405(n)*A048619(n)`
-/

namespace A002944.P9903695625241811934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n * A048619 n

end

end A002944.P9903695625241811934

noncomputable section

/-- A002944: a(n) = LCM(1,2,...,n) / n.

Offset 1, canonical program `A002944.P9903695625241811934`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. -/
def A002944 (n : ℕ) : ℤ :=
  A002944.P9903695625241811934.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. -/
def A002944.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003516.P5801381491269670092

`A002054(n+2)-A002057(n+1)`
-/

namespace A003516.P5801381491269670092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002054 (n + 2) - A002057 (n + 1)

end

end A003516.P5801381491269670092

noncomputable section

/-- A003516: Binomial coefficients C(2n+1, n-2).

Offset 2, canonical program `A003516.P5801381491269670092`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A003516 (n : ℕ) : ℤ :=
  A003516.P5801381491269670092.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A003516.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003583.P13992419334370876741

`A081039(n)-n*A114121(n)`
-/

namespace A003583.P13992419334370876741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081039 n - (n : ℤ) * A114121 n

end

end A003583.P13992419334370876741

noncomputable section

/-- A003583: a(n) = (n+2)*2^(2*n-1) - (n/2)*binomial(2*n,n).

Offset 0, canonical program `A003583.P13992419334370876741`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A003583 (n : ℕ) : ℤ :=
  A003583.P13992419334370876741.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A003583.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003623.P14438316745221780006

`A000201(n+1)+A001950(n+1)`
-/

namespace A003623.P14438316745221780006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (n + 1) + A001950 (n + 1)

end

end A003623.P14438316745221780006

noncomputable section

/-- A003623: Wythoff AB-numbers: floor(floor(n*phi^2)*phi), where phi = (1+sqrt(5))/2.

Offset 1, canonical program `A003623.P14438316745221780006`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000201, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A003623 (n : ℕ) : ℤ :=
  A003623.P14438316745221780006.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000201, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A003623.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A003986.P12926496113833734776

`or(A002262(n), A025581(n))`
-/

namespace A003986.P12926496113833734776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002262 n) (A025581 n)

end

end A003986.P12926496113833734776

noncomputable section

/-- A003986: Table T(n,k) = n OR k read by antidiagonals.

Offset 0, canonical program `A003986.P12926496113833734776`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003986 (n : ℕ) : ℤ :=
  A003986.P12926496113833734776.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003986.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003987.P6522273903622706452

`xor(A002262(n), A025581(n))`
-/

namespace A003987.P6522273903622706452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002262 n) (A025581 n)

end

end A003987.P6522273903622706452

noncomputable section

/-- A003987: Table of n XOR m (or Nim-sum of n and m) read by antidiagonals with m>=0, n>=0.

Offset 0, canonical program `A003987.P6522273903622706452`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003987 (n : ℕ) : ℤ :=
  A003987.P6522273903622706452.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003987.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003992.P8204926085743196475

`A025581(n)^A002262(n)`
-/

namespace A003992.P8204926085743196475
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025581 n : ℚ) ^ (A002262 n : ℤ)

end

end A003992.P8204926085743196475

noncomputable section

/-- A003992: Square array read by upwards antidiagonals: T(n,k) = n^k for n >= 0, k >= 0.

Offset 0, canonical program `A003992.P8204926085743196475`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4823 terms. -/
def A003992 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A003992.P8204926085743196475.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4823 terms. -/
def A003992.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004233.P12987865471568449723

`A000195(n+1)-A057428(n)`
-/

namespace A004233.P12987865471568449723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000195 (n + 1) - A057428 n

end

end A004233.P12987865471568449723

noncomputable section

/-- A004233: a(n) = ceiling(log(n)).

Offset 1, canonical program `A004233.P12987865471568449723`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004233 (n : ℕ) : ℤ :=
  A004233.P12987865471568449723.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004233.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004248.P8443486986946494157

`A002262(n)^A025581(n)`
-/

namespace A004248.P8443486986946494157
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002262 n : ℚ) ^ (A025581 n : ℤ)

end

end A004248.P8443486986946494157

noncomputable section

/-- A004248: Array read by ascending antidiagonals: A(n, k) = k^n.

Offset 0, canonical program `A004248.P8443486986946494157`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4773 terms. -/
def A004248 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A004248.P8443486986946494157.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4773 terms. -/
def A004248.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A005077.P5899432689193163448

`∑{p}[n+1, A005075(#)²]`
-/

namespace A005077.P5899432689193163448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A005075 p ^ 2

end

end A005077.P5899432689193163448

noncomputable section

/-- A005077: Sum of 4th powers of primes = 2 mod 3 dividing n.

Offset 1, canonical program `A005077.P5899432689193163448`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005077 (n : ℕ) : ℤ :=
  A005077.P5899432689193163448.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005077.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A005429.P13277658660728260534

`n*A002736(n)`
-/

namespace A005429.P13277658660728260534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A002736 n

end

end A005429.P13277658660728260534

noncomputable section

/-- A005429: Apéry numbers: n^3*C(2n,n).

Offset 0, canonical program `A005429.P13277658660728260534`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. -/
def A005429 (n : ℕ) : ℤ :=
  A005429.P13277658660728260534.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. -/
def A005429.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005498.P10281591895793247956

`A002054(n+1)+A001791(∑[n]%(n+1))`
-/

namespace A005498.P10281591895793247956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002054 (n + 1) + A001791 ((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1))

end

end A005498.P10281591895793247956

noncomputable section

/-- A005498: Triangulations of the disk G_{2,n}.

Offset 0, canonical program `A005498.P10281591895793247956`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A005498 (n : ℕ) : ℤ :=
  A005498.P10281591895793247956.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A005498.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006659.P11778441097935589513

`2*A002694(n+2)`
-/

namespace A006659.P11778441097935589513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002694 (n + 2)

end

end A006659.P11778441097935589513

noncomputable section

/-- A006659: Number of closed meander systems of order n+1 with n components.

Offset 1, canonical program `A006659.P11778441097935589513`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A006659 (n : ℕ) : ℤ :=
  A006659.P11778441097935589513.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A006659.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006976.P4043253609936143795

`a(n-1)+A006975(n)+a(n-1)` with `a(0)=1`
-/

namespace A006976.P4043253609936143795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A006975 n + a (n - 1))

end

end A006976.P4043253609936143795

noncomputable section

/-- A006976: Coefficients of Chebyshev T polynomials: a(n) = A053120(n+12, n), n >= 0.

Offset 0, canonical program `A006976.P4043253609936143795`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 294 terms. -/
def A006976 (n : ℕ) : ℤ :=
  A006976.P4043253609936143795.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 294 terms. -/
def A006976.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A007069.P5542488001650695356

`A001952(n+1)-(A001953(n)+2)`
-/

namespace A007069.P5542488001650695356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (n + 1) - (A001953 n + 2)

end

end A007069.P5542488001650695356

noncomputable section

/-- A007069: First column of spectral array W(sqrt 2).

Offset 1, canonical program `A007069.P5542488001650695356`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007069 (n : ℕ) : ℤ :=
  A007069.P5542488001650695356.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007069.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007291.P4918383632592437030

`A024196(n+1)+4*A108678(n)`
-/

namespace A007291.P4918383632592437030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024196 (n + 1) + 4 * A108678 n

end

end A007291.P4918383632592437030

noncomputable section

/-- A007291: Series expansion for rectilinear polymers on square lattice.

Offset 2, canonical program `A007291.P4918383632592437030`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007291 (n : ℕ) : ℤ :=
  A007291.P4918383632592437030.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007291.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007851.P2131316942083239351

`A134760(n)+A000245(n)`
-/

namespace A007851.P2131316942083239351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134760 n + A000245 n

end

end A007851.P2131316942083239351

noncomputable section

/-- A007851: Number of elements w of the Weyl group D(n) such that the roots sent negative by w span an Abelian subalgebra of the Lie algebra.

Offset 1, canonical program `A007851.P2131316942083239351`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A007851 (n : ℕ) : ℤ :=
  A007851.P2131316942083239351.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A007851.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007857.P12156564883507010954

`A007226(n)-A000108(n)`
-/

namespace A007857.P12156564883507010954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007226 n - A000108 n

end

end A007857.P12156564883507010954

noncomputable section

/-- A007857: Number of independent sets in rooted plane trees on n nodes.

Offset 1, canonical program `A007857.P12156564883507010954`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007226, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A007857 (n : ℕ) : ℤ :=
  A007857.P12156564883507010954.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007226, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A007857.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A008279.P7177801246737440238

`A002262(n)!*C(A003056(n), A002262(n))`
-/

namespace A008279.P7177801246737440238
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A002262 n).toNat * Nat.choose (A003056 n).toNat (A002262 n).toNat

end

end A008279.P7177801246737440238

noncomputable section

/-- A008279: Triangle T(n,k) = n!/(n-k)! (0 <= k <= n) read by rows, giving number of permutations of n things k at a time.

Offset 0, canonical program `A008279.P7177801246737440238`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2554 terms. -/
def A008279 (n : ℕ) : ℤ :=
  (A008279.P7177801246737440238.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2554 terms. -/
def A008279.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A008875.P10416676355482975149

`A008874(n+2)`
-/

namespace A008875.P10416676355482975149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008874 (n + 2)

end

end A008875.P10416676355482975149

noncomputable section

/-- A008875: 3x+1 sequence starting at 95.

Offset 0, canonical program `A008875.P10416676355482975149`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008874, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A008875 (n : ℕ) : ℤ :=
  A008875.P10416676355482975149.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008874, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A008875.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A010990.P17304077008684416413

`∑[A010989(n)]`
-/

namespace A010990.P17304077008684416413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010989 (n + 36)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010990.P17304077008684416413

noncomputable section

/-- A010990: Binomial coefficient C(n,37).

Offset 37, canonical program `A010990.P17304077008684416413`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7371 terms. -/
def A010990 (n : ℕ) : ℤ :=
  A010990.P17304077008684416413.a (n - 37)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7371 terms. -/
def A010990.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A014531.P11834881055280477151

`A005717(n+2)-record[A005043(n)]`
-/

namespace A014531.P11834881055280477151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005043 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005717 (n + 2) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014531.P11834881055280477151

noncomputable section

/-- A014531: Form array in which n-th row is obtained by expanding (1+x+x^2)^n and taking the 2nd column from the center.

Offset 1, canonical program `A014531.P11834881055280477151`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A014531 (n : ℕ) : ℤ :=
  A014531.P11834881055280477151.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A014531.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014532.P5823161043713431904

`A005717(n+3)-A002026(n+3)`
-/

namespace A014532.P5823161043713431904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005717 (n + 3) - A002026 (n + 3)

end

end A014532.P5823161043713431904

noncomputable section

/-- A014532: Form array in which n-th row is obtained by expanding (1+x+x^2)^n and taking the 3rd column from the center.

Offset 1, canonical program `A014532.P5823161043713431904`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A014532 (n : ℕ) : ℤ :=
  A014532.P5823161043713431904.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A014532.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018161.P6356870683678075885

`A018125(2*n)`
-/

namespace A018161.P6356870683678075885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018125 (2 * n)

end

end A018161.P6356870683678075885

noncomputable section

/-- A018161: Powers of fifth root of 16 rounded up.

Offset 0, canonical program `A018161.P6356870683678075885`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 416 terms. -/
def A018161 (n : ℕ) : ℤ :=
  A018161.P6356870683678075885.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 416 terms. -/
def A018161.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018217.P16026018910762649906

`2*(n+1)*A008549(n)`
-/

namespace A018217.P16026018910762649906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) * A008549 n)

end

end A018217.P16026018910762649906

noncomputable section

/-- A018217: a(n) = Sum_{j=0..n-1} C(j)*(n-j)*4^(n-j), C = Catalan numbers.

Offset 0, canonical program `A018217.P16026018910762649906`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 162 terms. -/
def A018217 (n : ℕ) : ℤ :=
  A018217.P16026018910762649906.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 162 terms. -/
def A018217.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A020906.P9041250250638292646

`a(A025581(n))` with `a(0)=1, a(1)=2`
-/

namespace A020906.P9041250250638292646
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (A025581 n).toNat

end

end A020906.P9041250250638292646

noncomputable section

/-- A020906: Triangle where n-th row is the first n terms of the sequence in reverse order, starting with a(1) = 1 and a(2) = 2.

Offset 1, canonical program `A020906.P9041250250638292646`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020906 (n : ℕ) : ℤ :=
  (A020906.P9041250250638292646.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020906.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020918.P10037703926254174420

`A002803(n)-a(n-1)` with `a(0)=1`
-/

namespace A020918.P10037703926254174420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002803 n - a (n - 1)

end

end A020918.P10037703926254174420

noncomputable section

/-- A020918: Expansion of 1/(1-4*x)^(7/2).

Offset 0, canonical program `A020918.P10037703926254174420`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. -/
def A020918 (n : ℕ) : ℤ :=
  A020918.P10037703926254174420.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. -/
def A020918.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A023488.P475559876391436152

`A022800(n+1)+A000045(n+2)`
-/

namespace A023488.P475559876391436152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022800 (n + 1) + A000045 (n + 2)

end

end A023488.P475559876391436152

noncomputable section

/-- A023488: a(n) = b(n) + d(n), where b(n) = (n-th Fibonacci number > 2) and d(n) = (n-th number that is 1 or is not a Fibonacci number).

Offset 0, canonical program `A023488.P475559876391436152`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. -/
def A023488 (n : ℕ) : ℤ :=
  A023488.P475559876391436152.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. -/
def A023488.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A023498.P15877121129977384704

`A022809(n+1)+Δ[A001911(n)]`
-/

namespace A023498.P15877121129977384704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022809 (n + 1) + (f1 (n + 1) - f1 n)

end

end A023498.P15877121129977384704

noncomputable section

/-- A023498: a(n) = b(n) + d(n), where b(n) = (n-th Lucas number > 3) and d(n) = (n-th number that is 1 or 2 or is not a Fibonacci number).

Offset 0, canonical program `A023498.P15877121129977384704`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 476 terms. -/
def A023498 (n : ℕ) : ℤ :=
  A023498.P15877121129977384704.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 476 terms. -/
def A023498.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A023745.P14630683886862311875

`A003462(A002262(n))+A003462(A003056(n))`
-/

namespace A023745.P14630683886862311875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 (A002262 n).toNat + A003462 (A003056 n).toNat

end

end A023745.P14630683886862311875

noncomputable section

/-- A023745: Plaindromes: numbers whose digits in base 3 are in nondecreasing order.

Offset 1, canonical program `A023745.P14630683886862311875`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023745 (n : ℕ) : ℤ :=
  A023745.P14630683886862311875.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023745.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A024192.P4759035746116519592

`floor(A024185(n+1)/A055998(n+4))`
-/

namespace A024192.P4759035746116519592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024185 (n + 1) : ℚ) / (A055998 (n + 4) : ℚ)⌋

end

end A024192.P4759035746116519592

noncomputable section

/-- A024192: Integer part of (4th elementary symmetric function of 3,4,...,n+5)/(3+4+...+n+5).

Offset 1, canonical program `A024192.P4759035746116519592`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9996 terms. -/
def A024192 (n : ℕ) : ℤ :=
  A024192.P4759035746116519592.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9996 terms. -/
def A024192.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024194.P15620669044121865782

`floor(A024185(n+1)/A024183(n+3))`
-/

namespace A024194.P15620669044121865782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024185 (n + 1) : ℚ) / (A024183 (n + 3) : ℚ)⌋

end

end A024194.P15620669044121865782

noncomputable section

/-- A024194: [ (4th elementary symmetric function of S(n))/(2nd elementary symmetric of S(n)) ], where S(n) = {3,4, ..., n+5}.

Offset 1, canonical program `A024194.P15620669044121865782`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A024194 (n : ℕ) : ℤ :=
  A024194.P15620669044121865782.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A024194.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024203.P5902371013324500065

`floor(A024198(n+1)/(n+4)²)`
-/

namespace A024203.P5902371013324500065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024198 (n + 1) : ℚ) / ((n + 4) ^ 2 : ℚ)⌋

end

end A024203.P5902371013324500065

noncomputable section

/-- A024203: [ (4th elementary symmetric function of S(n))/(first elementary symmetric function of S(n)) ], where S(n) = {first n+3 odd positive integers}.

Offset 1, canonical program `A024203.P5902371013324500065`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024203 (n : ℕ) : ℤ :=
  A024203.P5902371013324500065.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024203.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024205.P3824833347384216472

`floor(A024198(n+1)/A024196(n+3))`
-/

namespace A024205.P3824833347384216472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024198 (n + 1) : ℚ) / (A024196 (n + 3) : ℚ)⌋

end

end A024205.P3824833347384216472

noncomputable section

/-- A024205: [ (4th elementary symmetric function of S(n))/(2nd elementary symmetric function of S(n)) ], where S(n) = {first n+3 odd positive integers}.

Offset 1, canonical program `A024205.P3824833347384216472`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024198, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A024205 (n : ℕ) : ℤ :=
  A024205.P3824833347384216472.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024198, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A024205.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A024306.P12319263228253453196

`A024305(n+1)+A008805(n)+A008619(n)`
-/

namespace A024306.P12319263228253453196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024305 (n + 1) + (A008805 n + A008619 n)

end

end A024306.P12319263228253453196

noncomputable section

/-- A024306: a(n) = s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n+1-k), where k=[ (n+1)/2 ], s = (natural numbers >= 2), t = (natural numbers >= 3).

Offset 1, canonical program `A024306.P12319263228253453196`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024306 (n : ℕ) : ℤ :=
  A024306.P12319263228253453196.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024306.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A024483.P14115129668160858980

`A276666(n+1)`
-/

namespace A024483.P14115129668160858980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276666 (n + 1)

end

end A024483.P14115129668160858980

noncomputable section

/-- A024483: a(n) = binomial(2*n, n) mod binomial(2*n-2, n-1).

Offset 2, canonical program `A024483.P14115129668160858980`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A024483 (n : ℕ) : ℤ :=
  A024483.P14115129668160858980.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A024483.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A024676.P4220503656072247791

`∑{e}[A024675(n+1), #]`
-/

namespace A024676.P4220503656072247791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A024676.P4220503656072247791

noncomputable section

/-- A024676: a(n) is the number of prime divisors (counted by multiplicity) of A024675(n).

Offset 1, canonical program `A024676.P4220503656072247791`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024676 (n : ℕ) : ℤ :=
  (A024676.P4220503656072247791.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024676.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A024702.P11141641154328853276

`A024700(n+1)/8`
-/

namespace A024702.P11141641154328853276
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024700 (n + 1) : ℚ) / 8

end

end A024702.P11141641154328853276

noncomputable section

/-- A024702: a(n) = (prime(n)^2 - 1)/24.

Offset 3, canonical program `A024702.P11141641154328853276`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024702 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A024702.P11141641154328853276.a (n - 3))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024702.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A025568.P11960037931394237519

`A005775(n+4)-A005774(n+2)`
-/

namespace A025568.P11960037931394237519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005775 (n + 4) - A005774 (n + 2)

end

end A025568.P11960037931394237519

noncomputable section

/-- A025568: a(n) = T(n,n+2) where T is the array defined in A025564.

Offset 1, canonical program `A025568.P11960037931394237519`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A025568 (n : ℕ) : ℤ :=
  A025568.P11960037931394237519.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A025568.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A025809.P11486427593988040997

`A025779(n)-a(n-1)` with `a(0)=1`
-/

namespace A025809.P11486427593988040997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025779 n - a (n - 1)

end

end A025809.P11486427593988040997

noncomputable section

/-- A025809: Expansion of 1/((1-x^2)*(1-x^5)*(1-x^9)).

Offset 0, canonical program `A025809.P11486427593988040997`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025809 (n : ℕ) : ℤ :=
  A025809.P11486427593988040997.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025809.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025814.P11611117855187492253

`A025798(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A025814.P11611117855187492253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  A025798 n - a (n - 3)

end

end A025814.P11611117855187492253

noncomputable section

/-- A025814: Expansion of 1/((1-x^2)*(1-x^6)*(1-x^9)).

Offset 0, canonical program `A025814.P11611117855187492253`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025814 (n : ℕ) : ℤ :=
  A025814.P11611117855187492253.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025814.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025829.P13681330988320405037

`A008671(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A025829.P13681330988320405037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A008671 n - a (n - 2)

end

end A025829.P13681330988320405037

noncomputable section

/-- A025829: Expansion of 1/((1-x^3)*(1-x^4)*(1-x^7)).

Offset 0, canonical program `A025829.P13681330988320405037`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025829 (n : ℕ) : ℤ :=
  A025829.P13681330988320405037.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025829.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025831.P9343871419199393657

`A025798(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A025831.P9343871419199393657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025798 n - a (n - 2)

end

end A025831.P9343871419199393657

noncomputable section

/-- A025831: Expansion of 1/((1-x^3)*(1-x^4)*(1-x^9)).

Offset 0, canonical program `A025831.P9343871419199393657`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025831 (n : ℕ) : ℤ :=
  A025831.P9343871419199393657.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025831.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025850.P8628792431840119563

`A025769(n)+A025798(n)-A025765(n)`
-/

namespace A025850.P8628792431840119563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025769 n + (A025798 n - A025765 n)

end

end A025850.P8628792431840119563

noncomputable section

/-- A025850: Expansion of 1/((1-x^3)*(1-x^8)*(1-x^9)).

Offset 0, canonical program `A025850.P8628792431840119563`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025850 (n : ℕ) : ℤ :=
  A025850.P8628792431840119563.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025850.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025855.P15285033373270992385

`A025771(n)+A025798(n)-A025766(n)`
-/

namespace A025855.P15285033373270992385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025771 n + (A025798 n - A025766 n)

end

end A025855.P15285033373270992385

noncomputable section

/-- A025855: Expansion of 1/((1-x^3)*(1-x^9)*(1-x^11)).

Offset 0, canonical program `A025855.P15285033373270992385`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025855 (n : ℕ) : ℤ :=
  A025855.P15285033373270992385.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025855.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025860.P11747482110590855365

`A025808(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A025860.P11747482110590855365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025808 n - a (n - 2)

end

end A025860.P11747482110590855365

noncomputable section

/-- A025860: Expansion of 1/((1-x^4)*(1-x^5)*(1-x^8)).

Offset 0, canonical program `A025860.P11747482110590855365`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025860 (n : ℕ) : ℤ :=
  A025860.P11747482110590855365.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025860.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025867.P4210357465313117353

`A025816(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A025867.P4210357465313117353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025816 n - a (n - 2)

end

end A025867.P4210357465313117353

noncomputable section

/-- A025867: Expansion of 1/((1-x^4)*(1-x^7)*(1-x^8)).

Offset 0, canonical program `A025867.P4210357465313117353`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025867 (n : ℕ) : ℤ :=
  A025867.P4210357465313117353.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025867.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025872.P6078473724533073689

`A025821(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A025872.P6078473724533073689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025821 n - a (n - 2)

end

end A025872.P6078473724533073689

noncomputable section

/-- A025872: Expansion of 1/((1-x^4)*(1-x^8)*(1-x^9)).

Offset 0, canonical program `A025872.P6078473724533073689`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025872 (n : ℕ) : ℤ :=
  A025872.P6078473724533073689.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025872.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025881.P18383509037900537522

`A025857(abs(xor(1, 1-n)))`
-/

namespace A025881.P18383509037900537522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025857 |Int.xor 1 (1 - (n : ℤ))|.toNat

end

end A025881.P18383509037900537522

noncomputable section

/-- A025881: Expansion of 1/((1-x^5)*(1-x^6)*(1-x^12)).

Offset 0, canonical program `A025881.P18383509037900537522`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025881 (n : ℕ) : ℤ :=
  A025881.P18383509037900537522.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025881.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025909.P2062600259352315993

`A025882(n)-a(n-5)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=0`
-/

namespace A025909.P2062600259352315993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 0, 0] fun n a =>
  A025882 n - a (n - 5)

end

end A025909.P2062600259352315993

noncomputable section

/-- A025909: Expansion of 1/((1-x^7)*(1-x^8)*(1-x^10)).

Offset 0, canonical program `A025909.P2062600259352315993`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025909 (n : ℕ) : ℤ :=
  A025909.P2062600259352315993.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025909.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A026021.P624873047912347274

`A026016(A065033(n))+Δ[A208355(n)]`
-/

namespace A026021.P624873047912347274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208355 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026016 (A065033 n).toNat + (f1 (n + 1) - f1 n)

end

end A026021.P624873047912347274

noncomputable section

/-- A026021: a(n) = T(n, [n/2]), where T is the array defined in A026009.

Offset 0, canonical program `A026021.P624873047912347274`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A026021 (n : ℕ) : ℤ :=
  A026021.P624873047912347274.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A026021.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A026353.P11254182584666036756

`abs(A001489(n)-A026271(n+1))`
-/

namespace A026353.P11254182584666036756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001489 n - A026271 (n + 1)|

end

end A026353.P11254182584666036756

noncomputable section

/-- A026353: a(n) = sum of the numbers between the two n's in A026350.

Offset 2, canonical program `A026353.P11254182584666036756`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026353 (n : ℕ) : ℤ :=
  A026353.P11254182584666036756.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026353.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026379.P3720313122135347011

`A026378(n+2)-A002212(n+2)`
-/

namespace A026379.P3720313122135347011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026378 (n + 2) - A002212 (n + 2)

end

end A026379.P3720313122135347011

noncomputable section

/-- A026379: a(n) = number of integer strings s(0),...,s(n) counted by array T in A026374 that have s(n)=3; also a(n) = T(2n-1,n-2).

Offset 2, canonical program `A026379.P3720313122135347011`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A026379 (n : ℕ) : ℤ :=
  A026379.P3720313122135347011.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A026379.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A026517.P14581879115746617932

`A046820(n)%2+1`
-/

namespace A026517.P14581879115746617932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046820 n) 2 + 1

end

end A026517.P14581879115746617932

noncomputable section

/-- A026517: a(n) = t(5n), where t = A001285 (Thue-Morse sequence).

Offset 0, canonical program `A026517.P14581879115746617932`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026517 (n : ℕ) : ℤ :=
  A026517.P14581879115746617932.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026517.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026535.P3473713263889247215

`A001316(5*n+1)%3`
-/

namespace A026535.P3473713263889247215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001316 (5 * n + 1)) 3

end

end A026535.P3473713263889247215

noncomputable section

/-- A026535: a(n) = t(1+5n) where t = A001285 (Thue-Morse sequence).

Offset 0, canonical program `A026535.P3473713263889247215`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026535 (n : ℕ) : ℤ :=
  A026535.P3473713263889247215.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026535.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A026616.P7774796732190663953

`A028329(n)-A000984((2*n)%(n+1))`
-/

namespace A026616.P7774796732190663953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028329 n - A000984 (2 * n % (n + 1))

end

end A026616.P7774796732190663953

noncomputable section

/-- A026616: a(n) = A026615(2*n, n).

Offset 0, canonical program `A026616.P7774796732190663953`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A026616 (n : ℕ) : ℤ :=
  A026616.P7774796732190663953.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A026616.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026620.P15880584792676228702

`A002054(n+1)+Δ[A002054(A028310(n))]`
-/

namespace A026620.P15880584792676228702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002054 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002054 (n + 1) + (f1 (n + 1) - f1 n)

end

end A026620.P15880584792676228702

noncomputable section

/-- A026620: a(n) = A026615(2*n-1, n-2).

Offset 2, canonical program `A026620.P15880584792676228702`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A026620 (n : ℕ) : ℤ :=
  A026620.P15880584792676228702.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A026620.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026729.P18212919796410262121

`C(A002262(n), A025581(n))`
-/

namespace A026729.P18212919796410262121
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002262 n).toNat (A025581 n).toNat

end

end A026729.P18212919796410262121

noncomputable section

/-- A026729: Square array of binomial coefficients T(n,k) = binomial(n,k), n >= 0, k >= 0, read by downward antidiagonals.

Offset 0, canonical program `A026729.P18212919796410262121`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026729 (n : ℕ) : ℤ :=
  (A026729.P18212919796410262121.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026729.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026861.P471245241801296625

`A026759(n+1)-A000108(n+1)`
-/

namespace A026861.P471245241801296625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026759 (n + 1) - A000108 (n + 1)

end

end A026861.P471245241801296625

noncomputable section

/-- A026861: T(2n,n+1), T given by A026747.

Offset 1, canonical program `A026861.P471245241801296625`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. -/
def A026861 (n : ℕ) : ℤ :=
  A026861.P471245241801296625.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. -/
def A026861.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A027787.P6331187292566275208

`∑[A027786(n)+A027773(n)]`
-/

namespace A027787.P6331187292566275208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027786 (n + 11) + A027773 (n + 12)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027787.P6331187292566275208

noncomputable section

/-- A027787: a(n) = 7*(n+1)*binomial(n+2,14).

Offset 12, canonical program `A027787.P6331187292566275208`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027787 (n : ℕ) : ℤ :=
  A027787.P6331187292566275208.a (n - 12)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027787.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027796.P14895296671750171779

`∑[A027795(n+7)+A027783(n+8)]`
-/

namespace A027796.P14895296671750171779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027795 (n + 7) + A027783 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027796.P14895296671750171779

noncomputable section

/-- A027796: a(n) = 55*(n+1)*binomial(n+3,11)/3.

Offset 8, canonical program `A027796.P14895296671750171779`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027796 (n : ℕ) : ℤ :=
  A027796.P14895296671750171779.a (n - 8)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027796.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027806.P6442495618936108017

`∑[A027805(n+5)+A027794(n+6)]`
-/

namespace A027806.P6442495618936108017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027805 (n + 5) + A027794 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027806.P6442495618936108017

noncomputable section

/-- A027806: a(n) = 30*(n+1)*binomial(n+4,10).

Offset 6, canonical program `A027806.P6442495618936108017`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027806 (n : ℕ) : ℤ :=
  A027806.P6442495618936108017.a (n - 6)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027806.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A028283.P13523606839211364512

`A028270(n)+A028270(n)-A000984(n)`
-/

namespace A028283.P13523606839211364512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028270 n + (A028270 n - A000984 n)

end

end A028283.P13523606839211364512

noncomputable section

/-- A028283: Central elements in 4-Pascal triangle A028275 (by row).

Offset 0, canonical program `A028283.P13523606839211364512`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A028283 (n : ℕ) : ℤ :=
  A028283.P13523606839211364512.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A028283.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029001.P9690577901768069254

`∑[A008671(n)]`
-/

namespace A029001.P9690577901768069254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008671 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029001.P9690577901768069254

noncomputable section

/-- A029001: Expansion of 1/((1-x)(1-x^2)(1-x^3)(1-x^7)).

Offset 0, canonical program `A029001.P9690577901768069254`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029001 (n : ℕ) : ℤ :=
  A029001.P9690577901768069254.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029001.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029003.P4148205043917680536

`∑[A025798(n)]`
-/

namespace A029003.P4148205043917680536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025798 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029003.P4148205043917680536

noncomputable section

/-- A029003: Expansion of 1/((1-x)*(1-x^2)*(1-x^3)*(1-x^9)).

Offset 0, canonical program `A029003.P4148205043917680536`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029003 (n : ℕ) : ℤ :=
  A029003.P4148205043917680536.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029003.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029013.P17688571077656891261

`∑[A025808(n)]`
-/

namespace A029013.P17688571077656891261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025808 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029013.P17688571077656891261

noncomputable section

/-- A029013: Expansion of 1/((1-x)*(1-x^2)*(1-x^5)*(1-x^8)).

Offset 0, canonical program `A029013.P17688571077656891261`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029013 (n : ℕ) : ℤ :=
  A029013.P17688571077656891261.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029013.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029020.P6858622026024199747

`∑[A025816(n)]`
-/

namespace A029020.P6858622026024199747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025816 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029020.P6858622026024199747

noncomputable section

/-- A029020: Expansion of 1/((1-x)*(1-x^2)*(1-x^7)*(1-x^8)).

Offset 0, canonical program `A029020.P6858622026024199747`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029020 (n : ℕ) : ℤ :=
  A029020.P6858622026024199747.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029020.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029025.P4180660963339087720

`∑[A025821(n)]`
-/

namespace A029025.P4180660963339087720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025821 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029025.P4180660963339087720

noncomputable section

/-- A029025: Expansion of 1/((1-x)*(1-x^2)*(1-x^8)*(1-x^9)).

Offset 0, canonical program `A029025.P4180660963339087720`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029025 (n : ℕ) : ℤ :=
  A029025.P4180660963339087720.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029025.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029041.P7111796206172511067

`A025779(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A029041.P7111796206172511067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A025779 n + a (n - 3)

end

end A029041.P7111796206172511067

noncomputable section

/-- A029041: Expansion of 1/((1-x)*(1-x^3)*(1-x^5)*(1-x^9)).

Offset 0, canonical program `A029041.P7111796206172511067`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029041 (n : ℕ) : ℤ :=
  A029041.P7111796206172511067.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029041.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029046.P944543083982543891

`∑[A307018(A110657(n))+A025853(n)]`
-/

namespace A029046.P944543083982543891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307018 (A110657 n).toNat + A025853 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029046.P944543083982543891

noncomputable section

/-- A029046: Expansion of 1/((1-x)*(1-x^3)*(1-x^6)*(1-x^8)).

Offset 0, canonical program `A029046.P944543083982543891`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029046 (n : ℕ) : ℤ :=
  A029046.P944543083982543891.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029046.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029057.P8055949690666840573

`∑[A025853(n)]`
-/

namespace A029057.P8055949690666840573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025853 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029057.P8055949690666840573

noncomputable section

/-- A029057: Expansion of 1/((1-x)*(1-x^3)*(1-x^8)*(1-x^12)).

Offset 0, canonical program `A029057.P8055949690666840573`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029057 (n : ℕ) : ℤ :=
  A029057.P8055949690666840573.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029057.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029061.P4801605726621384143

`∑[A025857(n)]`
-/

namespace A029061.P4801605726621384143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025857 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029061.P4801605726621384143

noncomputable section

/-- A029061: Expansion of 1/((1-x)*(1-x^3)*(1-x^10)*(1-x^12)).

Offset 0, canonical program `A029061.P4801605726621384143`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029061 (n : ℕ) : ℤ :=
  A029061.P4801605726621384143.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029061.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029067.P13105805842187110081

`∑[A025862(n)]`
-/

namespace A029067.P13105805842187110081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029067.P13105805842187110081

noncomputable section

/-- A029067: Expansion of 1/((1-x)*(1-x^4)*(1-x^5)*(1-x^10)).

Offset 0, canonical program `A029067.P13105805842187110081`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029067 (n : ℕ) : ℤ :=
  A029067.P13105805842187110081.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029067.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029082.P2329619087138817251

`∑[A025874(n)]`
-/

namespace A029082.P2329619087138817251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025874 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029082.P2329619087138817251

noncomputable section

/-- A029082: Expansion of 1/((1-x)(1-x^4)(1-x^9)(1-x^12)).

Offset 0, canonical program `A029082.P2329619087138817251`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029082 (n : ℕ) : ℤ :=
  A029082.P2329619087138817251.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029082.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029089.P17493476904949368248

`A029043(n)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A029089.P17493476904949368248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A029043 n - a (n - 3)

end

end A029089.P17493476904949368248

noncomputable section

/-- A029089: Expansion of 1/((1-x)*(1-x^5)*(1-x^6)*(1-x^11)).

Offset 0, canonical program `A029089.P17493476904949368248`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029089 (n : ℕ) : ℤ :=
  A029089.P17493476904949368248.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029089.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029091.P4227717721528143562

`∑[A025882(n)]`
-/

namespace A029091.P4227717721528143562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025882 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029091.P4227717721528143562

noncomputable section

/-- A029091: Expansion of 1/((1-x)*(1-x^5)*(1-x^7)*(1-x^8)).

Offset 0, canonical program `A029091.P4227717721528143562`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029091 (n : ℕ) : ℤ :=
  A029091.P4227717721528143562.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029091.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029099.P18376010635766918802

`∑[A025890(n)]`
-/

namespace A029099.P18376010635766918802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025890 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029099.P18376010635766918802

noncomputable section

/-- A029099: Expansion of 1/((1-x)*(1-x^5)*(1-x^8)*(1-x^12)).

Offset 0, canonical program `A029099.P18376010635766918802`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029099 (n : ℕ) : ℤ :=
  A029099.P18376010635766918802.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029099.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029102.P15887035511913371875

`∑[A025893(n)]`
-/

namespace A029102.P15887035511913371875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025893 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029102.P15887035511913371875

noncomputable section

/-- A029102: Expansion of 1/((1-x)*(1-x^5)*(1-x^9)*(1-x^12)).

Offset 0, canonical program `A029102.P15887035511913371875`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029102 (n : ℕ) : ℤ :=
  A029102.P15887035511913371875.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029102.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029106.P13297306788925450376

`∑[A025897(n)]`
-/

namespace A029106.P13297306788925450376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029106.P13297306788925450376

noncomputable section

/-- A029106: Expansion of 1/((1-x)(1-x^6)(1-x^7)(1-x^8)).

Offset 0, canonical program `A029106.P13297306788925450376`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029106 (n : ℕ) : ℤ :=
  A029106.P13297306788925450376.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029106.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029108.P7657049067647274667

`A029051(n)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A029108.P7657049067647274667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A029051 n - a (n - 3)

end

end A029108.P7657049067647274667

noncomputable section

/-- A029108: Expansion of g.f. 1/((1-x)*(1-x^6)*(1-x^7)*(1-x^10)).

Offset 0, canonical program `A029108.P7657049067647274667`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029108 (n : ℕ) : ℤ :=
  A029108.P7657049067647274667.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029108.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029120.P7286583677430843617

`∑[A025911(n)]`
-/

namespace A029120.P7286583677430843617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025911 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029120.P7286583677430843617

noncomputable section

/-- A029120: Expansion of 1/((1-x)*(1-x^7)*(1-x^8)*(1-x^12)).

Offset 0, canonical program `A029120.P7286583677430843617`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029120 (n : ℕ) : ℤ :=
  A029120.P7286583677430843617.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029120.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029136.P6833100279942692144

`A008670(n)-a(n-1)` with `a(0)=1`
-/

namespace A029136.P6833100279942692144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008670 n - a (n - 1)

end

end A029136.P6833100279942692144

noncomputable section

/-- A029136: Expansion of 1/((1-x^2)*(1-x^3)*(1-x^4)*(1-x^6)).

Offset 0, canonical program `A029136.P6833100279942692144`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029136 (n : ℕ) : ℤ :=
  A029136.P6833100279942692144.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029136.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029138.P17947836681290005128

`A029034(n)-a(n-1)` with `a(0)=1`
-/

namespace A029138.P17947836681290005128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029034 n - a (n - 1)

end

end A029138.P17947836681290005128

noncomputable section

/-- A029138: Expansion of 1/((1-x^2)(1-x^3)(1-x^4)(1-x^8)).

Offset 0, canonical program `A029138.P17947836681290005128`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029138 (n : ℕ) : ℤ :=
  A029138.P17947836681290005128.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029138.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029140.P7619574260066122741

`A029036(n)-a(n-1)` with `a(0)=1`
-/

namespace A029140.P7619574260066122741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029036 n - a (n - 1)

end

end A029140.P7619574260066122741

noncomputable section

/-- A029140: Expansion of 1/((1-x^2)*(1-x^3)*(1-x^4)*(1-x^10)).

Offset 0, canonical program `A029140.P7619574260066122741`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029140 (n : ℕ) : ℤ :=
  A029140.P7619574260066122741.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029140.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029141.P18405955012558555081

`A029037(n)-a(n-1)` with `a(0)=1`
-/

namespace A029141.P18405955012558555081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029037 n - a (n - 1)

end

end A029141.P18405955012558555081

noncomputable section

/-- A029141: Expansion of 1/((1-x^2)(1-x^3)(1-x^4)(1-x^11)).

Offset 0, canonical program `A029141.P18405955012558555081`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029141 (n : ℕ) : ℤ :=
  A029141.P18405955012558555081.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029141.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029143.P15609554736967013213

`A029039(n)-a(n-1)` with `a(0)=1`
-/

namespace A029143.P15609554736967013213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029039 n - a (n - 1)

end

end A029143.P15609554736967013213

noncomputable section

/-- A029143: Expansion of 1/((1-x^2)*(1-x^3)*(1-x^5)*(1-x^6)). Molien series for u.g.g.r. #31 of order 46080. Poincaré series [or Poincare series] for ring of even weight Siegel modular forms of genus 2.

Offset 0, canonical program `A029143.P15609554736967013213`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029143 (n : ℕ) : ℤ :=
  A029143.P15609554736967013213.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029143.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029145.P7520990149888030438

`A029040(n)-a(n-1)` with `a(0)=1`
-/

namespace A029145.P7520990149888030438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029040 n - a (n - 1)

end

end A029145.P7520990149888030438

noncomputable section

/-- A029145: Expansion of 1/((1-x^2)*(1-x^3)*(1-x^5)*(1-x^8)).

Offset 0, canonical program `A029145.P7520990149888030438`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029145 (n : ℕ) : ℤ :=
  A029145.P7520990149888030438.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029145.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029148.P3955780201210385014

`A029043(n)-a(n-1)` with `a(0)=1`
-/

namespace A029148.P3955780201210385014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029043 n - a (n - 1)

end

end A029148.P3955780201210385014

noncomputable section

/-- A029148: Expansion of 1/((1-x^2)*(1-x^3)*(1-x^5)*(1-x^11)).

Offset 0, canonical program `A029148.P3955780201210385014`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029148 (n : ℕ) : ℤ :=
  A029148.P3955780201210385014.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029148.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029150.P2877327488263682648

`A029045(n)-a(n-1)` with `a(0)=1`
-/

namespace A029150.P2877327488263682648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029045 n - a (n - 1)

end

end A029150.P2877327488263682648

noncomputable section

/-- A029150: Expansion of 1/((1-x^2)*(1-x^3)*(1-x^6)*(1-x^7)).

Offset 0, canonical program `A029150.P2877327488263682648`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029150 (n : ℕ) : ℤ :=
  A029150.P2877327488263682648.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029150.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029154.P15883492566712472573

`A029048(n)-a(n-1)` with `a(0)=1`
-/

namespace A029154.P15883492566712472573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029048 n - a (n - 1)

end

end A029154.P15883492566712472573

noncomputable section

/-- A029154: Expansion of 1/((1-x^2)*(1-x^3)*(1-x^6)*(1-x^11)).

Offset 0, canonical program `A029154.P15883492566712472573`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029154 (n : ℕ) : ℤ :=
  A029154.P15883492566712472573.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029154.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029156.P8988054540789904733

`A029049(n)-a(n-1)` with `a(0)=1`
-/

namespace A029156.P8988054540789904733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029049 n - a (n - 1)

end

end A029156.P8988054540789904733

noncomputable section

/-- A029156: Expansion of 1/((1-x^2)*(1-x^3)*(1-x^7)*(1-x^8)).

Offset 0, canonical program `A029156.P8988054540789904733`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029156 (n : ℕ) : ℤ :=
  A029156.P8988054540789904733.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029156.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029158.P9530038267913608749

`A029051(n)-a(n-1)` with `a(0)=1`
-/

namespace A029158.P9530038267913608749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029051 n - a (n - 1)

end

end A029158.P9530038267913608749

noncomputable section

/-- A029158: Expansion of 1/((1-x^2)*(1-x^3)*(1-x^7)*(1-x^10)).

Offset 0, canonical program `A029158.P9530038267913608749`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029158 (n : ℕ) : ℤ :=
  A029158.P9530038267913608749.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029158.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029171.P1523925124885283882

`A029063(n)-a(n-1)` with `a(0)=1`
-/

namespace A029171.P1523925124885283882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029063 n - a (n - 1)

end

end A029171.P1523925124885283882

noncomputable section

/-- A029171: Expansion of 1/((1-x^2)*(1-x^4)*(1-x^5)*(1-x^6)).

Offset 0, canonical program `A029171.P1523925124885283882`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029171 (n : ℕ) : ℤ :=
  A029171.P1523925124885283882.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029171.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029172.P7881889128371546076

`A029064(n)-a(n-1)` with `a(0)=1`
-/

namespace A029172.P7881889128371546076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029064 n - a (n - 1)

end

end A029172.P7881889128371546076

noncomputable section

/-- A029172: Expansion of 1/((1-x^2)*(1-x^4)*(1-x^5)*(1-x^7)).

Offset 0, canonical program `A029172.P7881889128371546076`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029172 (n : ℕ) : ℤ :=
  A029172.P7881889128371546076.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029172.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029176.P1107500298987403073

`A029068(n)-a(n-1)` with `a(0)=1`
-/

namespace A029176.P1107500298987403073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029068 n - a (n - 1)

end

end A029176.P1107500298987403073

noncomputable section

/-- A029176: Expansion of 1/((1-x^2)*(1-x^4)*(1-x^5)*(1-x^11)).

Offset 0, canonical program `A029176.P1107500298987403073`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029176 (n : ℕ) : ℤ :=
  A029176.P1107500298987403073.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029176.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029177.P6003917001418373779

`A029069(n)-a(n-1)` with `a(0)=1`
-/

namespace A029177.P6003917001418373779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029069 n - a (n - 1)

end

end A029177.P6003917001418373779

noncomputable section

/-- A029177: Expansion of 1/((1-x^2)*(1-x^4)*(1-x^5)*(1-x^12)).

Offset 0, canonical program `A029177.P6003917001418373779`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029177 (n : ℕ) : ℤ :=
  A029177.P6003917001418373779.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029177.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029178.P2783044879236484133

`A029070(n)-a(n-1)` with `a(0)=1`
-/

namespace A029178.P2783044879236484133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029070 n - a (n - 1)

end

end A029178.P2783044879236484133

noncomputable section

/-- A029178: Expansion of 1/((1-x^2)*(1-x^4)*(1-x^6)*(1-x^7)).

Offset 0, canonical program `A029178.P2783044879236484133`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029178 (n : ℕ) : ℤ :=
  A029178.P2783044879236484133.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029178.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029180.P8281748570085510314

`A029072(n)-a(n-1)` with `a(0)=1`
-/

namespace A029180.P8281748570085510314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029072 n - a (n - 1)

end

end A029180.P8281748570085510314

noncomputable section

/-- A029180: Expansion of 1/((1-x^2)*(1-x^4)*(1-x^6)*(1-x^11)).

Offset 0, canonical program `A029180.P8281748570085510314`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029180 (n : ℕ) : ℤ :=
  A029180.P8281748570085510314.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029180.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029183.P12325617636140847852

`A029075(n)-a(n-1)` with `a(0)=1`
-/

namespace A029183.P12325617636140847852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029075 n - a (n - 1)

end

end A029183.P12325617636140847852

noncomputable section

/-- A029183: Expansion of 1/((1-x^2)*(1-x^4)*(1-x^7)*(1-x^10)).

Offset 0, canonical program `A029183.P12325617636140847852`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029183 (n : ℕ) : ℤ :=
  A029183.P12325617636140847852.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029183.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029194.P6053703161313486365

`A029086(n)-a(n-1)` with `a(0)=1`
-/

namespace A029194.P6053703161313486365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029086 n - a (n - 1)

end

end A029194.P6053703161313486365

noncomputable section

/-- A029194: Expansion of 1/((1-x^2)*(1-x^5)*(1-x^6)*(1-x^8)).

Offset 0, canonical program `A029194.P6053703161313486365`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029194 (n : ℕ) : ℤ :=
  A029194.P6053703161313486365.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029194.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029196.P17074011412360568660

`A029088(n)-a(n-1)` with `a(0)=1`
-/

namespace A029196.P17074011412360568660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029088 n - a (n - 1)

end

end A029196.P17074011412360568660

noncomputable section

/-- A029196: Expansion of 1/((1-x^2)*(1-x^5)*(1-x^6)*(1-x^10)).

Offset 0, canonical program `A029196.P17074011412360568660`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029196 (n : ℕ) : ℤ :=
  A029196.P17074011412360568660.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029196.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029223.P10718192621319969633

`A029167(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A029223.P10718192621319969633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  A029167 n - a (n - 3)

end

end A029223.P10718192621319969633

noncomputable section

/-- A029223: Expansion of 1/((1-x^2)*(1-x^6)*(1-x^9)*(1-x^12)).

Offset 0, canonical program `A029223.P10718192621319969633`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029223 (n : ℕ) : ℤ :=
  A029223.P10718192621319969633.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029223.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029248.P4123003717781958600

`A029147(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029248.P4123003717781958600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029147 n - a (n - 2)

end

end A029248.P4123003717781958600

noncomputable section

/-- A029248: Expansion of 1/((1-x^3)*(1-x^4)*(1-x^5)*(1-x^10)).

Offset 0, canonical program `A029248.P4123003717781958600`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029248 (n : ℕ) : ℤ :=
  A029248.P4123003717781958600.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029248.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029268.P3355551099729970313

`A029167(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029268.P3355551099729970313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029167 n - a (n - 2)

end

end A029268.P3355551099729970313

noncomputable section

/-- A029268: Expansion of 1/((1-x^3)*(1-x^4)*(1-x^9)*(1-x^12)).

Offset 0, canonical program `A029268.P3355551099729970313`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029268 (n : ℕ) : ℤ :=
  A029268.P3355551099729970313.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029268.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029278.P2000901770763036903

`A025882(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029278.P2000901770763036903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A025882 n + a (n - 3)

end

end A029278.P2000901770763036903

noncomputable section

/-- A029278: Expansion of 1/((1-x^3)*(1-x^5)*(1-x^7)*(1-x^8)).

Offset 0, canonical program `A029278.P2000901770763036903`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029278 (n : ℕ) : ℤ :=
  A029278.P2000901770763036903.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029278.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029285.P15493432003765234757

`A025890(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029285.P15493432003765234757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A025890 n + a (n - 3)

end

end A029285.P15493432003765234757

noncomputable section

/-- A029285: Expansion of 1/((1-x^3)*(1-x^5)*(1-x^8)*(1-x^12)).

Offset 0, canonical program `A029285.P15493432003765234757`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029285 (n : ℕ) : ℤ :=
  A029285.P15493432003765234757.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029285.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029288.P10411134377989181800

`A025893(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029288.P10411134377989181800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A025893 n + a (n - 3)

end

end A029288.P10411134377989181800

noncomputable section

/-- A029288: Expansion of 1/((1-x^3)*(1-x^5)*(1-x^9)*(1-x^12)).

Offset 0, canonical program `A029288.P10411134377989181800`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029288 (n : ℕ) : ℤ :=
  A029288.P10411134377989181800.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029288.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029292.P6272815214469632561

`A025897(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029292.P6272815214469632561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A025897 n + a (n - 3)

end

end A029292.P6272815214469632561

noncomputable section

/-- A029292: Expansion of 1/((1-x^3)*(1-x^6)*(1-x^7)*(1-x^8)).

Offset 0, canonical program `A029292.P6272815214469632561`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029292 (n : ℕ) : ℤ :=
  A029292.P6272815214469632561.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029292.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029309.P15051498724445637453

`A025911(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029309.P15051498724445637453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A025911 n + a (n - 3)

end

end A029309.P15051498724445637453

noncomputable section

/-- A029309: Expansion of 1/((1-x^3)*(1-x^7)*(1-x^8)*(1-x^12)).

Offset 0, canonical program `A029309.P15051498724445637453`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029309 (n : ℕ) : ℤ :=
  A029309.P15051498724445637453.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029309.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029326.P2226920409026667842

`A029193(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029326.P2226920409026667842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029193 n - a (n - 2)

end

end A029326.P2226920409026667842

noncomputable section

/-- A029326: Expansion of 1/((1-x^4)*(1-x^5)*(1-x^6)*(1-x^7)).

Offset 0, canonical program `A029326.P2226920409026667842`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029326 (n : ℕ) : ℤ :=
  A029326.P2226920409026667842.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029326.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029358.P6065047460035336274

`A029072(n)-∑[A025796(A057979(n))]`
-/

namespace A029358.P6065047460035336274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025796 (A057979 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029072 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029358.P6065047460035336274

noncomputable section

/-- A029358: Expansion of 1/((1-x^4)*(1-x^6)*(1-x^11)*(1-x^12)).

Offset 0, canonical program `A029358.P6065047460035336274`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029358 (n : ℕ) : ℤ :=
  A029358.P6065047460035336274.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029358.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029432.P8426870499552025551

`∑[A025818(n+7)-A025821(n+7)]`
-/

namespace A029432.P8426870499552025551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025818 (n + 7) - A025821 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029432.P8426870499552025551

noncomputable section

/-- A029432: Expansion of 1/((1-x^7)*(1-x^8)*(1-x^9)*(1-x^10)).

Offset 0, canonical program `A029432.P8426870499552025551`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9993 terms. -/
def A029432 (n : ℕ) : ℤ :=
  A029432.P8426870499552025551.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9993 terms. -/
def A029432.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029760.P12701853743882014842

`A002457(n+1)-A000346(n+1)`
-/

namespace A029760.P12701853743882014842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002457 (n + 1) - A000346 (n + 1)

end

end A029760.P12701853743882014842

noncomputable section

/-- A029760: A sum with next-to-central binomial coefficients of even order, Catalan related.

Offset 0, canonical program `A029760.P12701853743882014842`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A029760 (n : ℕ) : ℤ :=
  A029760.P12701853743882014842.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A029760.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A031339.P13047857505135678834

`A031336(2*(n+1))`
-/

namespace A031339.P13047857505135678834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031336 (2 * (n + 1))

end

end A031339.P13047857505135678834

noncomputable section

/-- A031339: a(n) = prime(6*n).

Offset 1, canonical program `A031339.P13047857505135678834`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A031339 (n : ℕ) : ℤ :=
  A031339.P13047857505135678834.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A031339.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A031342.P3768870702408430836

`A031336(3*(n+1))`
-/

namespace A031342.P3768870702408430836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031336 (3 * (n + 1))

end

end A031342.P3768870702408430836

noncomputable section

/-- A031342: a(n) = prime(9*n).

Offset 1, canonical program `A031342.P3768870702408430836`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A031342 (n : ℕ) : ℤ :=
  A031342.P3768870702408430836.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A031342.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A031375.P12755134045357932822

`A031369(3*(n+1))`
-/

namespace A031375.P12755134045357932822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031369 (3 * (n + 1))

end

end A031375.P12755134045357932822

noncomputable section

/-- A031375: a(n) = prime(9n-1).

Offset 1, canonical program `A031375.P12755134045357932822`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A031375 (n : ℕ) : ℤ :=
  A031375.P12755134045357932822.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A031375.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A031387.P4049417690404258223

`A031336(Δ[n²])`
-/

namespace A031387.P4049417690404258223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031336 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A031387.P4049417690404258223

noncomputable section

/-- A031387: a(n) = prime(6*n-3).

Offset 1, canonical program `A031387.P4049417690404258223`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A031387 (n : ℕ) : ℤ :=
  A031387.P4049417690404258223.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A031387.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A031389.P8318100543051636544

`A031385(2*(n+1))`
-/

namespace A031389.P8318100543051636544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031385 (2 * (n + 1))

end

end A031389.P8318100543051636544

noncomputable section

/-- A031389: a(n) = prime(8*n-3).

Offset 1, canonical program `A031389.P8318100543051636544`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A031389 (n : ℕ) : ℤ :=
  A031389.P8318100543051636544.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A031389.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A031390.P14385056515366583428

`A031336(3*n+2)`
-/

namespace A031390.P14385056515366583428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031336 (3 * n + 2)

end

end A031390.P14385056515366583428

noncomputable section

/-- A031390: a(n) = prime(9*n - 3).

Offset 1, canonical program `A031390.P14385056515366583428`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A031390 (n : ℕ) : ℤ :=
  A031390.P14385056515366583428.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A031390.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A031393.P2159843465191176975

`A031369(Δ[n²])`
-/

namespace A031393.P2159843465191176975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031369 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A031393.P2159843465191176975

noncomputable section

/-- A031393: a(n) = prime(6*n - 4).

Offset 1, canonical program `A031393.P2159843465191176975`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A031393 (n : ℕ) : ℤ :=
  A031393.P2159843465191176975.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A031393.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A031915.P1776797287709644077

`A031385(Δ[n²])`
-/

namespace A031915.P1776797287709644077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031385 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A031915.P1776797287709644077

noncomputable section

/-- A031915: a(n) = prime(8*n - 7).

Offset 1, canonical program `A031915.P1776797287709644077`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A031915 (n : ℕ) : ℤ :=
  A031915.P1776797287709644077.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A031915.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A031916.P15113012530568562469

`A031369(3*n+1)`
-/

namespace A031916.P15113012530568562469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031369 (3 * n + 1)

end

end A031916.P15113012530568562469

noncomputable section

/-- A031916: a(n) = prime(9*n-7).

Offset 1, canonical program `A031916.P15113012530568562469`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A031916 (n : ℕ) : ℤ :=
  A031916.P15113012530568562469.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A031916.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A032093.P17812668640305024204

`∑[A032092(n+7)]`
-/

namespace A032093.P17812668640305024204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032092 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032093.P17812668640305024204

noncomputable section

/-- A032093: Number of reversible strings with n-1 beads of 2 colors. 6 beads are black. Strings are not palindromic.

Offset 8, canonical program `A032093.P17812668640305024204`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A032093 (n : ℕ) : ℤ :=
  A032093.P17812668640305024204.a (n - 8)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A032093.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A032095.P17238562505437964512

`A005317(A028310(n))-A027306(n)`
-/

namespace A032095.P17238562505437964512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005317 (A028310 n).toNat - A027306 n

end

end A032095.P17238562505437964512

noncomputable section

/-- A032095: Number of reversible strings with n-1 black beads and n-1 white beads. String is not palindromic.

Offset 1, canonical program `A032095.P17238562505437964512`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A032095 (n : ℕ) : ℤ :=
  A032095.P17238562505437964512.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A032095.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A032180.P12612180409227209886

`120*A000770(n+6)`
-/

namespace A032180.P12612180409227209886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  120 * A000770 (n + 6)

end

end A032180.P12612180409227209886

noncomputable section

/-- A032180: Number of ways to partition n labeled elements into 6 pie slices.

Offset 6, canonical program `A032180.P12612180409227209886`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000770, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A032180 (n : ℕ) : ℤ :=
  A032180.P12612180409227209886.a (n - 6)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000770, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A032180.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A032794.P15494052535104857542

`A032770(A042968(n+1))`
-/

namespace A032794.P15494052535104857542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032770 (A042968 (n + 1)).toNat

end

end A032794.P15494052535104857542

noncomputable section

/-- A032794: Positive integers of the form n(n+1)(n+2)(n+3)(n+4)/(n+(n+1)+(n+2)+(n+3)+(n+4)) that are a multiple of n.

Offset 1, canonical program `A032794.P15494052535104857542`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7500 terms. -/
def A032794 (n : ℕ) : ℤ :=
  A032794.P15494052535104857542.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7500 terms. -/
def A032794.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A033265.P13190706930275476979

`A023416(A292272(n+1))`
-/

namespace A033265.P13190706930275476979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A292272 (n + 1)).toNat

end

end A033265.P13190706930275476979

noncomputable section

/-- A033265: Number of i such that d(i) >= d(i-1), where Sum_{i=0..m} d(i)*2^i is the base-2 representation of n.

Offset 1, canonical program `A033265.P13190706930275476979`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033265 (n : ℕ) : ℤ :=
  A033265.P13190706930275476979.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033265.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033434.P16108752292041278544

`Δ[A026012(n)]`
-/

namespace A033434.P16108752292041278544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033434.P16108752292041278544

noncomputable section

/-- A033434: Third differences of Catalan numbers A000108.

Offset 0, canonical program `A033434.P16108752292041278544`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A033434 (n : ℕ) : ℤ :=
  A033434.P16108752292041278544.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A033434.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A034267.P8758762277003965209

`A000245(n)+n*A276666(n)`
-/

namespace A034267.P8758762277003965209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 n + (n : ℤ) * A276666 n

end

end A034267.P8758762277003965209

noncomputable section

/-- A034267: a(n) = f(n,n) where f is given in A034261.

Offset 0, canonical program `A034267.P8758762277003965209`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A034267 (n : ℕ) : ℤ :=
  A034267.P8758762277003965209.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A034267.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034738.P10286811658297623229

`∑{d}[n+1, A007427(#)*A034737((n+1)/#)]`
-/

namespace A034738.P10286811658297623229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A034737 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034738.P10286811658297623229

noncomputable section

/-- A034738: Dirichlet convolution of b_n = 2^(n-1) with phi(n).

Offset 1, canonical program `A034738.P10286811658297623229`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A034738 (n : ℕ) : ℤ :=
  A034738.P10286811658297623229.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A034738.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034766.P9231521320511394635

`∑{d}[n+1, #*A034742((n+1)/#)]`
-/

namespace A034766.P9231521320511394635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A034742 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034766.P9231521320511394635

noncomputable section

/-- A034766: Dirichlet convolution of phi(n) with Catalan numbers.

Offset 1, canonical program `A034766.P9231521320511394635`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A034766 (n : ℕ) : ℤ :=
  A034766.P9231521320511394635.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A034766.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034768.P13889137241695126334

`∑{d}[n+1, A034731(#)*A034742((n+1)/#)]`
-/

namespace A034768.P13889137241695126334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034731 d * A034742 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034768.P13889137241695126334

noncomputable section

/-- A034768: Dirichlet convolution of Catalan numbers with themselves.

Offset 1, canonical program `A034768.P13889137241695126334`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A034768 (n : ℕ) : ℤ :=
  A034768.P13889137241695126334.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A034768.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034932.P1496221729046170045

`C(A003056(n), A025581(n))%16`
-/

namespace A034932.P1496221729046170045
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n).toNat (A025581 n).toNat % 16

end

end A034932.P1496221729046170045

noncomputable section

/-- A034932: Triangle, read by rows, formed by reading Pascal's triangle (A007318) mod 16.

Offset 0, canonical program `A034932.P1496221729046170045`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034932 (n : ℕ) : ℤ :=
  (A034932.P1496221729046170045.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034932.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A035103.P1324719609663575418`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014499, A035100, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A035103 (n : ℕ) : ℤ :=
  A035103.P1324719609663575418.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014499, A035100, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
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

/-! ## A036555.P9976746027563483838

`val(A001316(A008585(n)), 2)`
-/

namespace A036555.P9976746027563483838
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A001316 (A008585 n).toNat).toNat 2

end

end A036555.P9976746027563483838

noncomputable section

/-- A036555: Hamming weight of 3n: number of 1's in binary expansion of 3n.

Offset 0, canonical program `A036555.P9976746027563483838`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036555 (n : ℕ) : ℤ :=
  (A036555.P9976746027563483838.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036555.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A037167.P11043553757995377342

`A037165(n+1)+A000040(n+1)`
-/

namespace A037167.P11043553757995377342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037165 (n + 1) + A000040 (n + 1)

end

end A037167.P11043553757995377342

noncomputable section

/-- A037167: a(n) = prime(n)*prime(n+1) - prime(n+1).

Offset 1, canonical program `A037167.P11043553757995377342`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037167 (n : ℕ) : ℤ :=
  A037167.P11043553757995377342.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037167.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A038408.P14381304774561669787

`floor(A019561(n)/A005901(n))`
-/

namespace A038408.P14381304774561669787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A019561 n : ℚ) / (A005901 n : ℚ)⌋

end

end A038408.P14381304774561669787

noncomputable section

/-- A038408: Coordination sequence for Zeolite Code DFT.

Offset 0, canonical program `A038408.P14381304774561669787`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038408 (n : ℕ) : ℤ :=
  A038408.P14381304774561669787.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038408.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A038992.P6853481220545635755

`∑{d}[n+1, #*A038991(#)]`
-/

namespace A038992.P6853481220545635755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A038991 d

end

end A038992.P6853481220545635755

noncomputable section

/-- A038992: Number of sublattices of index n in generic 5-dimensional lattice.

Offset 1, canonical program `A038992.P6853481220545635755`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038992 (n : ℕ) : ℤ :=
  A038992.P6853481220545635755.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038992.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A044967.P11768154619602539084

`A032924(eq[2, A023416(n+1)])`
-/

namespace A044967.P11768154619602539084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A044967.P11768154619602539084

noncomputable section

/-- A044967: Numbers whose base-3 representation contains no 0's and exactly two 1's.

Offset 1, canonical program `A044967.P11768154619602539084`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 286 terms. -/
def A044967 (n : ℕ) : ℤ :=
  A044967.P11768154619602539084.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 286 terms. -/
def A044967.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A044968.P18330494829545156474

`A032924(eq[3, A023416(n+1)])`
-/

namespace A044968.P18330494829545156474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A044968.P18330494829545156474

noncomputable section

/-- A044968: Numbers whose base-3 representation contains no 0's and exactly three 1's.

Offset 1, canonical program `A044968.P18330494829545156474`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 718 terms. -/
def A044968 (n : ℕ) : ℤ :=
  A044968.P18330494829545156474.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 718 terms. -/
def A044968.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A044969.P2565728100705881724

`A032924(eq[4, A023416(n+1)])`
-/

namespace A044969.P2565728100705881724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A044969.P2565728100705881724

noncomputable section

/-- A044969: Numbers whose base-3 representation contains no 0's and exactly four 1's.

Offset 1, canonical program `A044969.P2565728100705881724`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1314 terms. -/
def A044969 (n : ℕ) : ℤ :=
  A044969.P2565728100705881724.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1314 terms. -/
def A044969.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A045635.P4073587291953969490

`Δ[A045445(n+1)-A039919(n+1)]-A045445(n+1)`
-/

namespace A045635.P4073587291953969490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045445 (n + 1) - A039919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A045445 (n + 1)

end

end A045635.P4073587291953969490

noncomputable section

/-- A045635: Catafusenes (see references for precise definition).

Offset 1, canonical program `A045635.P4073587291953969490`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. -/
def A045635 (n : ℕ) : ℤ :=
  A045635.P4073587291953969490.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. -/
def A045635.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A045902.P1362283279913711618

`Δ[Δ[A045445(A028310(n))]]`
-/

namespace A045902.P1362283279913711618
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045445 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A045902.P1362283279913711618

noncomputable section

/-- A045902: Catafusenes (see reference for precise definition).

Offset 0, canonical program `A045902.P1362283279913711618`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. -/
def A045902 (n : ℕ) : ℤ :=
  A045902.P1362283279913711618.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. -/
def A045902.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046135.P1361638922268334320

`p?[A046133(n+1)+2]-2`
-/

namespace A046135.P1361638922268334320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046133 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2

end

end A046135.P1361638922268334320

noncomputable section

/-- A046135: Primes p such that p+2 and p+12 are primes.

Offset 1, canonical program `A046135.P1361638922268334320`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1358 terms. -/
def A046135 (n : ℕ) : ℤ :=
  A046135.P1361638922268334320.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1358 terms. -/
def A046135.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046301.P8827187728700103366

`(A034961(n+1)-A001043(n+1))*A006094(n+1)`
-/

namespace A046301.P8827187728700103366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A034961 (n + 1) - A001043 (n + 1)) * A006094 (n + 1)

end

end A046301.P8827187728700103366

noncomputable section

/-- A046301: Product of 3 successive primes.

Offset 1, canonical program `A046301.P8827187728700103366`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046301 (n : ℕ) : ℤ :=
  A046301.P8827187728700103366.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046301.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A047663.P7880503406323538909

`∑[A008414(n+1)/2]`
-/

namespace A047663.P7880503406323538909
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008414 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047663.P7880503406323538909

noncomputable section

/-- A047663: Row 6 of square array defined in A047662.

Offset 1, canonical program `A047663.P7880503406323538909`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047663 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A047663.P7880503406323538909.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047663.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047819.P16248126213952327268

`∑[A107891(n)]`
-/

namespace A047819.P16248126213952327268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047819.P16248126213952327268

noncomputable section

/-- A047819: a(n) = Product_{i=1..n} ((i+3)*(i+4)*(i+5))/(i*(i+1)*(i+2)).

Offset 0, canonical program `A047819.P16248126213952327268`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047819 (n : ℕ) : ℤ :=
  A047819.P16248126213952327268.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047819.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047999.P4496697157608863547

`A008975(n)%2`
-/

namespace A047999.P4496697157608863547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008975 n) 2

end

end A047999.P4496697157608863547

noncomputable section

/-- A047999: Sierpiński's [Sierpinski's] triangle (or gasket): triangle, read by rows, formed by reading Pascal's triangle (A007318) mod 2.

Offset 0, canonical program `A047999.P4496697157608863547`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047999 (n : ℕ) : ℤ :=
  A047999.P4496697157608863547.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047999.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048147.P313002570057476945

`A002262(n)²+A025581(n)²`
-/

namespace A048147.P313002570057476945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n ^ 2 + A025581 n ^ 2

end

end A048147.P313002570057476945

noncomputable section

/-- A048147: Array T read by diagonals; T(i,j) = i^2 + j^2.

Offset 0, canonical program `A048147.P313002570057476945`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048147 (n : ℕ) : ℤ :=
  A048147.P313002570057476945.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048147.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A049492.P4525552218433629718

`p?[A046133(n+1)-4]`
-/

namespace A049492.P4525552218433629718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046133 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049492.P4525552218433629718

noncomputable section

/-- A049492: Primes p such that p+4 and p+16 are also primes.

Offset 1, canonical program `A049492.P4525552218433629718`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 925 terms. -/
def A049492 (n : ℕ) : ℤ :=
  A049492.P4525552218433629718.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 925 terms. -/
def A049492.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049759.P4392440920391466402

`A025581(n)²%(A002262(n)+1)`
-/

namespace A049759.P4392440920391466402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025581 n ^ 2) (A002262 n + 1)

end

end A049759.P4392440920391466402

noncomputable section

/-- A049759: Triangular array T read by rows: T(n,k)=n^2 mod k, for k=1,2,...,n, n=1,2,...

Offset 1, canonical program `A049759.P4392440920391466402`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049759 (n : ℕ) : ℤ :=
  A049759.P4392440920391466402.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049759.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049801.P17998493784673270206

`A052938(A131507(n))%A008620(A002262(n))`
-/

namespace A049801.P17998493784673270206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052938 (A131507 n).toNat) (A008620 (A002262 n).toNat)

end

end A049801.P17998493784673270206

noncomputable section

/-- A049801: Triangular array T, read by rows: T(n,k) = n mod floor(k/3), k = 3..n and n >= 3.

Offset 3, canonical program `A049801.P17998493784673270206`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049801 (n : ℕ) : ℤ :=
  A049801.P17998493784673270206.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049801.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A050504.P2062606616927554055

`A057428(n)+A050502(n+1)`
-/

namespace A050504.P2062606616927554055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A050502 (n + 1)

end

end A050504.P2062606616927554055

noncomputable section

/-- A050504: Integer part of n*log(n).

Offset 1, canonical program `A050504.P2062606616927554055`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050504 (n : ℕ) : ℤ :=
  A050504.P2062606616927554055.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050504.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A051124.P2649153232714135343

`A051123(n)-A051122(n)`
-/

namespace A051124.P2649153232714135343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051123 n - A051122 n

end

end A051124.P2649153232714135343

noncomputable section

/-- A051124: a(n) = Fibonacci(n) XOR Fibonacci(n+1).

Offset 0, canonical program `A051124.P2649153232714135343`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. -/
def A051124 (n : ℕ) : ℤ :=
  A051124.P2649153232714135343.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. -/
def A051124.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051126.P17323727967013825035

`(A002262(n)+1)%(A025581(n)+1)`
-/

namespace A051126.P17323727967013825035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002262 n + 1) (A025581 n + 1)

end

end A051126.P17323727967013825035

noncomputable section

/-- A051126: Table T(n,k) = n mod k read by downward antidiagonals (n >= 1, k >= 1).

Offset 1, canonical program `A051126.P17323727967013825035`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051126 (n : ℕ) : ℤ :=
  A051126.P17323727967013825035.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051126.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051127.P6714805154847763680

`(A025581(n)+1)%(A002262(n)+1)`
-/

namespace A051127.P6714805154847763680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025581 n + 1) (A002262 n + 1)

end

end A051127.P6714805154847763680

noncomputable section

/-- A051127: Table T(n,k) = k mod n read by antidiagonals (n >= 1, k >= 1).

Offset 1, canonical program `A051127.P6714805154847763680`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051127 (n : ℕ) : ℤ :=
  A051127.P6714805154847763680.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051127.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A051677.P145270310871526407

`∑[C(A002262(n)+2, 2)]`
-/

namespace A051677.P145270310871526407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002262 n + 2).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051677.P145270310871526407

noncomputable section

/-- A051677: Tetrahedron-tree numbers: a(n)=sum(b(m),m=1..n), b(m)=1, 1,3, 1,3,6, 1,3,6,10,..., 1,2,...,i*(i+1)2.

Offset 1, canonical program `A051677.P145270310871526407`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051677 (n : ℕ) : ℤ :=
  (A051677.P145270310871526407.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051677.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051778.P6932995160286021118

`(A002262(n)+1)%(A025581(n)+2)`
-/

namespace A051778.P6932995160286021118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002262 n + 1) (A025581 n + 2)

end

end A051778.P6932995160286021118

noncomputable section

/-- A051778: Triangle read by rows, where row (n) = n mod (n-1), n mod (n-2), n mod (n-3), ...n mod 2.

Offset 3, canonical program `A051778.P6932995160286021118`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051778 (n : ℕ) : ℤ :=
  A051778.P6932995160286021118.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051778.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051933.P14643551248336978789

`xor(A002262(n), A003056(n))`
-/

namespace A051933.P14643551248336978789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002262 n) (A003056 n)

end

end A051933.P14643551248336978789

noncomputable section

/-- A051933: Triangle T(n,m) = Nim-sum (or XOR) of n and m, read by rows, 0<=m<=n.

Offset 0, canonical program `A051933.P14643551248336978789`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051933 (n : ℕ) : ℤ :=
  A051933.P14643551248336978789.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051933.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051949.P14237255743979375876

`record[A003056(n)!-A025581(n)!]`
-/

namespace A051949.P14237255743979375876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A003056 n).toNat : ℤ) - (Nat.factorial (A025581 n).toNat : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051949.P14237255743979375876

noncomputable section

/-- A051949: Differences of two factorial numbers.

Offset 0, canonical program `A051949.P14237255743979375876`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2347 terms. -/
def A051949 (n : ℕ) : ℤ :=
  A051949.P14237255743979375876.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2347 terms. -/
def A051949.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052216.P12658414752221687192

`A011557(A002262(n))+A011557(A003056(n))`
-/

namespace A052216.P12658414752221687192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 (A002262 n).toNat + A011557 (A003056 n).toNat

end

end A052216.P12658414752221687192

noncomputable section

/-- A052216: Sums of two powers of 10.

Offset 1, canonical program `A052216.P12658414752221687192`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5134 terms. -/
def A052216 (n : ℕ) : ℤ :=
  A052216.P12658414752221687192.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5134 terms. -/
def A052216.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A052343.P15911122501402458117

`ceil(A008441(n)/2)`
-/

namespace A052343.P15911122501402458117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A008441 n : ℚ) / 2⌉

end

end A052343.P15911122501402458117

noncomputable section

/-- A052343: Number of ways to write n as the unordered sum of two triangular numbers (zero allowed).

Offset 0, canonical program `A052343.P15911122501402458117`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008441, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A052343 (n : ℕ) : ℤ :=
  A052343.P15911122501402458117.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008441, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A052343.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A052553.P11748680671898398416

`C(A025581(n), A002262(n))`
-/

namespace A052553.P11748680671898398416
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A025581 n).toNat (A002262 n).toNat

end

end A052553.P11748680671898398416

noncomputable section

/-- A052553: Square array of binomial coefficients T(n,k) = binomial(n,k), n >= 0, k >= 0, read by upward antidiagonals.

Offset 0, canonical program `A052553.P11748680671898398416`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A052553 (n : ℕ) : ℤ :=
  (A052553.P11748680671898398416.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A052553.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A053247.P14306056287210934944`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4851 terms. -/
def A053247 (n : ℕ) : ℤ :=
  A053247.P14306056287210934944.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4851 terms. -/
def A053247.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A053603.P8228624408487937013

`A008441(n)-A046698(A198954(n))`
-/

namespace A053603.P8228624408487937013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008441 n - A046698 (A198954 n).toNat

end

end A053603.P8228624408487937013

noncomputable section

/-- A053603: Number of ways to write n as an ordered sum of two nonzero triangular numbers.

Offset 0, canonical program `A053603.P8228624408487937013`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053603 (n : ℕ) : ℤ :=
  A053603.P8228624408487937013.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053603.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A054084.P17694258563391689400

`A001950(A008619(n))+A027656(n)-A008619(n)`
-/

namespace A054084.P17694258563391689400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (A008619 n).toNat + (A027656 n - A008619 n)

end

end A054084.P17694258563391689400

noncomputable section

/-- A054084: Permutation of N: for each k >= 1, let p(k)=least natural number not already an a(i), q(k)=p(k)+k, a(2k-1)=q(k), a(2k)=p(k).

Offset 1, canonical program `A054084.P17694258563391689400`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054084 (n : ℕ) : ℤ :=
  A054084.P17694258563391689400.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054084.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054142.P6369338685803904687

`C(A025581(n)+A003056(n), A002262(n))`
-/

namespace A054142.P6369338685803904687
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A025581 n + A003056 n).toNat (A002262 n).toNat

end

end A054142.P6369338685803904687

noncomputable section

/-- A054142: Triangular array binomial(2*n-k, k), k=0..n, n >= 0.

Offset 0, canonical program `A054142.P6369338685803904687`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054142 (n : ℕ) : ℤ :=
  (A054142.P6369338685803904687.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054142.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A055630.P16080195491770059270

`A002262(n)+A025581(n)²`
-/

namespace A055630.P16080195491770059270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n + A025581 n ^ 2

end

end A055630.P16080195491770059270

noncomputable section

/-- A055630: Table T(k,m) = k^2 + m read by antidiagonals.

Offset 0, canonical program `A055630.P16080195491770059270`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055630 (n : ℕ) : ℤ :=
  A055630.P16080195491770059270.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055630.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055663.P5131911919764471879

`∑[∑[n+1]]*A002696(n+6)`
-/

namespace A055663.P5131911919764471879
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A002696 (n + 6)

end

end A055663.P5131911919764471879

noncomputable section

/-- A055663: Number of (3,3; n,n)-partitions of a chain of length n^2 + n.

Offset 9, canonical program `A055663.P5131911919764471879`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 153 terms. -/
def A055663 (n : ℕ) : ℤ :=
  A055663.P5131911919764471879.a (n - 9)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 153 terms. -/
def A055663.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056174.P3001330646264561605

`A000312(n)-A045992(n)`
-/

namespace A056174.P3001330646264561605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 n - A045992 n

end

end A056174.P3001330646264561605

noncomputable section

/-- A056174: Number of non-monotone maps from 1,...,n to 1,...,n.

Offset 0, canonical program `A056174.P3001330646264561605`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045992, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056174 (n : ℕ) : ℤ :=
  A056174.P3001330646264561605.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045992, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056174.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A056951.P14752552283292487820

`round((2*n+1)/2-A038722(n+1))`
-/

namespace A056951.P14752552283292487820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * n + 1 : ℚ) / 2 - (A038722 (n + 1) : ℚ))

end

end A056951.P14752552283292487820

noncomputable section

/-- A056951: Triangle whose rows show the result of flipping the first, first two, ... and finally first n coins when starting with the stack (1,2,3,4,...,n) [starting with all heads up, where signs show whether particular coins end up heads or tails].

Offset 1, canonical program `A056951.P14752552283292487820`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056951 (n : ℕ) : ℤ :=
  A056951.P14752552283292487820.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056951.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A057656.P13929880755277153593

`∑[2*A008441(n)]`
-/

namespace A057656.P13929880755277153593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008441 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057656.P13929880755277153593

noncomputable section

/-- A057656: Number of points (x,y) in square lattice with (x-1/2)^2+y^2 <= n.

Offset 0, canonical program `A057656.P13929880755277153593`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057656 (n : ℕ) : ℤ :=
  A057656.P13929880755277153593.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057656.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057773.P3425110863733540674

`∑[A023506(n+1)]`
-/

namespace A057773.P3425110863733540674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023506 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057773.P3425110863733540674

noncomputable section

/-- A057773: a(n) = Sum_{i=1..n} nu_2(prime(i) - 1) where nu_2(m) = exponent of highest power of 2 dividing m.

Offset 1, canonical program `A057773.P3425110863733540674`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057773 (n : ℕ) : ℤ :=
  A057773.P3425110863733540674.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057773.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057843.P1375060347392083398

`(A001950(n+1)-3)%A017041(n)`
-/

namespace A057843.P1375060347392083398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001950 (n + 1) - 3) (A017041 n)

end

end A057843.P1375060347392083398

noncomputable section

/-- A057843: a(n) = floor(n*tau^2) - 3, where tau = (1+sqrt(5))/2.

Offset 1, canonical program `A057843.P1375060347392083398`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057843 (n : ℕ) : ℤ :=
  A057843.P1375060347392083398.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057843.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A058079.P6918650657682453408

`A000040(eq[1, A058078(n+1)]+3)`
-/

namespace A058079.P6918650657682453408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058078 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 3)

end

end A058079.P6918650657682453408

noncomputable section

/-- A058079: a(n) = p3, where {p1,p2,p3} are 3 consecutive primes with increasing order such that gcd(C(p3,p2), C(p2,p1)) = 1, where C is the binomial coefficient.

Offset 1, canonical program `A058079.P6918650657682453408`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1290 terms. -/
def A058079 (n : ℕ) : ℤ :=
  A058079.P6918650657682453408.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1290 terms. -/
def A058079.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A058256.P6970293744707123220

`A006093(n+2)/gcd(A006093(n+2), A058254(n+1))`
-/

namespace A058256.P6970293744707123220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 2) : ℚ) / (Int.gcd (A006093 (n + 2)) (A058254 (n + 1)) : ℚ)

end

end A058256.P6970293744707123220

noncomputable section

/-- A058256: a(n) = A058254(n+1)/A058254(n).

Offset 1, canonical program `A058256.P6970293744707123220`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A058256 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A058256.P6970293744707123220.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A058256.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A058384.P9239699759080930942

`A000079(A023506(n+1))`
-/

namespace A058384.P9239699759080930942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A023506 (n + 1)).toNat

end

end A058384.P9239699759080930942

noncomputable section

/-- A058384: Largest power of 2 which is a divisor of p(n)-1, where p(n) = n-th prime.

Offset 1, canonical program `A058384.P9239699759080930942`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A058384 (n : ℕ) : ℤ :=
  A058384.P9239699759080930942.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A058384.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A059028.P10481110246671892895

`3*A057661(n+1)-(n+2)`
-/

namespace A059028.P10481110246671892895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A057661 (n + 1) - (n + 2 : ℤ)

end

end A059028.P10481110246671892895

noncomputable section

/-- A059028: Row sums of A059026: a(n) = Sum_{m=1..n} (lcm(n,m)/n + lcm(n,m)/m - 1).

Offset 1, canonical program `A059028.P10481110246671892895`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059028 (n : ℕ) : ℤ :=
  A059028.P10481110246671892895.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059028.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A060024.P6216530268530384553

`A026810(n+4)-A026811(n+4)`
-/

namespace A060024.P6216530268530384553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 (n + 4) - A026811 (n + 4)

end

end A060024.P6216530268530384553

noncomputable section

/-- A060024: Expansion of (1-x-x^N)/((1-x)(1-x^2)(1-x^3)...(1-x^N)) for N = 5.

Offset 0, canonical program `A060024.P6216530268530384553`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026811, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A060024 (n : ℕ) : ℤ :=
  A060024.P6216530268530384553.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026811, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A060024.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A060800.P2009094709202359605`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A036690, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A060800 (n : ℕ) : ℤ :=
  A060800.P2009094709202359605.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A036690, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A060800.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A061433.P17220235870629985150

`A049416(n+1)^2`
-/

namespace A061433.P17220235870629985150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049416 (n + 1) ^ 2

end

end A061433.P17220235870629985150

noncomputable section

/-- A061433: Largest n-digit square.

Offset 1, canonical program `A061433.P17220235870629985150`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A061433 (n : ℕ) : ℤ :=
  A061433.P17220235870629985150.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A061433.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061554.P3186504673658884258

`C(A003056(n), A004526(A025581(n)))`
-/

namespace A061554.P3186504673658884258
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n).toNat (A004526 (A025581 n).toNat).toNat

end

end A061554.P3186504673658884258

noncomputable section

/-- A061554: Square table read by antidiagonals: a(n,k) = binomial(n+k, floor(k/2)).

Offset 0, canonical program `A061554.P3186504673658884258`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061554 (n : ℕ) : ℤ :=
  (A061554.P3186504673658884258.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061554.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061557.P6533906729672181008

`A000782(n+2)`
-/

namespace A061557.P6533906729672181008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000782 (n + 2)

end

end A061557.P6533906729672181008

noncomputable section

/-- A061557: a(n) = (7*n+2)*C(n)/(n+2), where C(n) is the n-th Catalan number.

Offset 1, canonical program `A061557.P6533906729672181008`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A061557 (n : ℕ) : ℤ :=
  A061557.P6533906729672181008.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A061557.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061716.P11233107381761511017

`floor(log2(A037168(n+1)))`
-/

namespace A061716.P11233107381761511017
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A037168 (n + 1)).toNat

end

end A061716.P11233107381761511017

noncomputable section

/-- A061716: Binary order of n-th prime.

Offset 1, canonical program `A061716.P11233107381761511017`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061716 (n : ℕ) : ℤ :=
  (A061716.P11233107381761511017.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061716.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A062021.P15408236090391736309

`∑[(n+1)*A001248(n+1)-A024450(n+1)]`
-/

namespace A062021.P15408236090391736309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001248 (n + 1) - A024450 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062021.P15408236090391736309

noncomputable section

/-- A062021: a(n) = Sum_{i=1..n} Sum_{j=1..i} (prime(i)^2 - prime(j)^2).

Offset 1, canonical program `A062021.P15408236090391736309`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062021 (n : ℕ) : ℤ :=
  A062021.P15408236090391736309.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062021.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062269.P6653936082748876429

`eq[0, A053188(A038128(n))]`
-/

namespace A062269.P6653936082748876429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053188 (A038128 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A062269.P6653936082748876429

noncomputable section

/-- A062269: Numbers k such that floor(gamma * k) is a square, where gamma is the Euler-Mascheroni constant (A001620).

Offset 0, canonical program `A062269.P6653936082748876429`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A062269 (n : ℕ) : ℤ :=
  (A062269.P6653936082748876429.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A062269.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A000056.P3672351641528750621

`(n+1)*Δ[A321879(n)]`
-/

namespace A000056.P3672351641528750621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321879 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A000056.P3672351641528750621

noncomputable section

/-- A000056: Order of the group SL(2,Z_n).

Offset 1, canonical program `A000056.P3672351641528750621`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000056 (n : ℕ) : ℤ :=
  A000056.P3672351641528750621.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000056.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000095.P6344633483168979693

`(n%2+1)*A000089(n+1)`
-/

namespace A000095.P6344633483168979693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 + 1 : ℕ) : ℤ) * A000089 (n + 1)

end

end A000095.P6344633483168979693

noncomputable section

/-- A000095: Number of fixed points of Gamma_0 (n) of type i.

Offset 1, canonical program `A000095.P6344633483168979693`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000095 (n : ℕ) : ℤ :=
  A000095.P6344633483168979693.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000095.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A001401.P12728375563230237513

`A001400(n)+A026811(n)`
-/

namespace A001401.P12728375563230237513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001400 n + A026811 n

end

end A001401.P12728375563230237513

noncomputable section

/-- A001401: Number of partitions of n into at most 5 parts.

Offset 0, canonical program `A001401.P12728375563230237513`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026811, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A001401 (n : ℕ) : ℤ :=
  A001401.P12728375563230237513.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026811, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A001401.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A001656.P10933016233148360249

`A177727(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A001656.P10933016233148360249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A177727 n + 2 * a (n - 1)

end

end A001656.P10933016233148360249

noncomputable section

/-- A001656: Fibonomial coefficients.

Offset 0, canonical program `A001656.P10933016233148360249`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A001656 (n : ℕ) : ℤ :=
  A001656.P10933016233148360249.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A001656.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001704.P2802870690856380017

`A127421(n+2)`
-/

namespace A001704.P2802870690856380017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127421 (n + 2)

end

end A001704.P2802870690856380017

noncomputable section

/-- A001704: a(n) = n concatenated with n + 1.

Offset 1, canonical program `A001704.P2802870690856380017`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001704 (n : ℕ) : ℤ :=
  A001704.P2802870690856380017.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001704.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001826.P11405840805978784674

`A188169(n+1)+A188171(n+1)`
-/

namespace A001826.P11405840805978784674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188169 (n + 1) + A188171 (n + 1)

end

end A001826.P11405840805978784674

noncomputable section

/-- A001826: Number of divisors of n of the form 4k+1.

Offset 1, canonical program `A001826.P11405840805978784674`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A188169, A188171, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A001826 (n : ℕ) : ℤ :=
  A001826.P11405840805978784674.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A188169, A188171, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A001826.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A002059.P3521197572160926616

`(n+3)*A002696(n+3)`
-/

namespace A002059.P3521197572160926616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A002696 (n + 3)

end

end A002059.P3521197572160926616

noncomputable section

/-- A002059: Number of partitions of an n-gon into (n-4) parts.

Offset 6, canonical program `A002059.P3521197572160926616`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 162 terms. -/
def A002059 (n : ℕ) : ℤ :=
  A002059.P3521197572160926616.a (n - 6)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 162 terms. -/
def A002059.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A002175.P12639420198237532064

`A008441(3*n)`
-/

namespace A002175.P12639420198237532064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008441 (3 * n)

end

end A002175.P12639420198237532064

noncomputable section

/-- A002175: Excess of number of divisors of 12n+1 of form 4k+1 over those of form 4k+3.

Offset 0, canonical program `A002175.P12639420198237532064`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008441, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A002175 (n : ℕ) : ℤ :=
  A002175.P12639420198237532064.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008441, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A002175.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A002597.P13793033887542356936

`A029256(2*n)+∑[∑[A029256(2*n+1)]]`
-/

namespace A002597.P13793033887542356936
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029256 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029256 (2 * n) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002597.P13793033887542356936

noncomputable section

/-- A002597: Number of partitions into one kind of 1's, two kinds of 2's, and three kinds of 3's.

Offset 0, canonical program `A002597.P13793033887542356936`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4460 terms. -/
def A002597 (n : ℕ) : ℤ :=
  A002597.P13793033887542356936.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4460 terms. -/
def A002597.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A002738.P2427408757081123955

`3*A007744(n)`
-/

namespace A002738.P2427408757081123955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A007744 n

end

end A002738.P2427408757081123955

noncomputable section

/-- A002738: Coefficients for extrapolation.

Offset 0, canonical program `A002738.P2427408757081123955`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007744, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A002738 (n : ℕ) : ℤ :=
  A002738.P2427408757081123955.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007744, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A002738.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A003252.P10872519119112551421

`∑[A001468(A026272(n+1)+n)+1]`
-/

namespace A003252.P10872519119112551421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 (A026272 (n + 1) + (n : ℤ)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003252.P10872519119112551421

noncomputable section

/-- A003252: The number m such that A003251(m) = A003231(n).

Offset 1, canonical program `A003252.P10872519119112551421`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4197 terms. -/
def A003252 (n : ℕ) : ℤ :=
  A003252.P10872519119112551421.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4197 terms. -/
def A003252.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003714.P565032106299634425

`a(A193564(n+1))*2^(A003849(n)+1)+A003849(n)` with `a(0)=0`
-/

namespace A003714.P565032106299634425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (A193564 (n + 1)).toNat * (2 : ℚ) ^ (A003849 n + 1 : ℤ) + (A003849 n : ℚ)

end

end A003714.P565032106299634425

noncomputable section

/-- A003714: Fibbinary numbers: if n = F(i1) + F(i2) + ... + F(ik) is the Zeckendorf representation of n (i.e., write n in Fibonacci number system) then a(n) = 2^(i1 - 2) + 2^(i2 - 2) + ... + 2^(ik - 2). Also numbers whose binary representation contains no two adjacent 1's.

Offset 0, canonical program `A003714.P565032106299634425`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A193564, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A003714 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A003714.P565032106299634425.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A193564, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A003714.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A004020.P12808183263529079992

`2*A008441(n)`
-/

namespace A004020.P12808183263529079992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008441 n

end

end A004020.P12808183263529079992

noncomputable section

/-- A004020: Theta series of square lattice with respect to edge.

Offset 0, canonical program `A004020.P12808183263529079992`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008441, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A004020 (n : ℕ) : ℤ :=
  A004020.P12808183263529079992.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008441, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A004020.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A004331.P8053934310919869715

`(n+1)*A002293(n+1)`
-/

namespace A004331.P8053934310919869715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A002293 (n + 1)

end

end A004331.P8053934310919869715

noncomputable section

/-- A004331: Binomial coefficient C(4n,n-1).

Offset 1, canonical program `A004331.P8053934310919869715`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A004331 (n : ℕ) : ℤ :=
  A004331.P8053934310919869715.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A004331.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004431.P13089136488273060828

`eq[1, A353814(n+1)]+1`
-/

namespace A004431.P13089136488273060828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353814 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A004431.P13089136488273060828

noncomputable section

/-- A004431: Numbers that are the sum of 2 distinct nonzero squares.

Offset 1, canonical program `A004431.P13089136488273060828`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004431 (n : ℕ) : ℤ :=
  (A004431.P13089136488273060828.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004431.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A005080.P18153420546656100569

`A005067(n+1)-A005084(n+1)`
-/

namespace A005080.P18153420546656100569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005067 (n + 1) - A005084 (n + 1)

end

end A005080.P18153420546656100569

noncomputable section

/-- A005080: Sum of cubes of primes = 1 mod 4 dividing n.

Offset 1, canonical program `A005080.P18153420546656100569`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005080 (n : ℕ) : ℤ :=
  A005080.P18153420546656100569.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005080.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005081.P3775346567522156883

`A005068(n+1)-A005085(n+1)`
-/

namespace A005081.P3775346567522156883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005068 (n + 1) - A005085 (n + 1)

end

end A005081.P3775346567522156883

noncomputable section

/-- A005081: Sum of 4th powers of primes = 1 mod 4 dividing n.

Offset 1, canonical program `A005081.P3775346567522156883`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005081 (n : ℕ) : ℤ :=
  A005081.P3775346567522156883.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005081.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005554.P9832709042548983027

`A102071(n-1)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A005554.P9832709042548983027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A102071 (n - 1) + a (n - 1)

end

end A005554.P9832709042548983027

noncomputable section

/-- A005554: Sums of successive Motzkin numbers.

Offset 1, canonical program `A005554.P9832709042548983027`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. -/
def A005554 (n : ℕ) : ℤ :=
  A005554.P9832709042548983027.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. -/
def A005554.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A005883.P3734216093274140482

`4*A008441(n)`
-/

namespace A005883.P3734216093274140482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A008441 n

end

end A005883.P3734216093274140482

noncomputable section

/-- A005883: Theta series of square lattice with respect to deep hole.

Offset 0, canonical program `A005883.P3734216093274140482`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008441, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A005883 (n : ℕ) : ℤ :=
  A005883.P3734216093274140482.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008441, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A005883.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A007066.P6507236915827125132

`ceil(A288713(n+1)/2)`
-/

namespace A007066.P6507236915827125132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A288713 (n + 1) : ℚ) / 2⌉

end

end A007066.P6507236915827125132

noncomputable section

/-- A007066: a(n) = 1 + ceiling((n-1)*phi^2), phi = (1+sqrt(5))/2.

Offset 1, canonical program `A007066.P6507236915827125132`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007066 (n : ℕ) : ℤ :=
  A007066.P6507236915827125132.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007066.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007228.P14647912928645817974

`A006632(n+1)+A069271(n)+A002293(n)`
-/

namespace A007228.P14647912928645817974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006632 (n + 1) + (A069271 n + A002293 n)

end

end A007228.P14647912928645817974

noncomputable section

/-- A007228: a(n) = 3*binomial(4*n,n)/(n+1).

Offset 0, canonical program `A007228.P14647912928645817974`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A007228 (n : ℕ) : ℤ :=
  A007228.P14647912928645817974.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A007228.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007432.P16663120023730915232

`∑{d}[n+1, #*A007428((n+1)/#)]`
-/

namespace A007432.P16663120023730915232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A007428 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007432.P16663120023730915232

noncomputable section

/-- A007432: Moebius transform applied thrice to natural numbers.

Offset 1, canonical program `A007432.P16663120023730915232`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007432 (n : ℕ) : ℤ :=
  A007432.P16663120023730915232.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007432.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007436.P13094445126418984546

`∑{d}[n+1, A007427(#)*A007435((n+1)/#)]`
-/

namespace A007436.P13094445126418984546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A007435 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007436.P13094445126418984546

noncomputable section

/-- A007436: Moebius transform of Fibonacci numbers.

Offset 1, canonical program `A007436.P13094445126418984546`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A007436 (n : ℕ) : ℤ :=
  A007436.P13094445126418984546.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A007436.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A007971.P3280594718535611421

`A168055(n)%(3*(a(n-1)+a(n-2)))` with `a(0)=0, a(1)=1`
-/

namespace A007971.P3280594718535611421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  Int.tmod (A168055 n) (3 * (a (n - 1) + a (n - 2)))

end

end A007971.P3280594718535611421

noncomputable section

/-- A007971: INVERTi transform of central trinomial coefficients (A002426).

Offset 0, canonical program `A007971.P3280594718535611421`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A007971 (n : ℕ) : ℤ :=
  A007971.P3280594718535611421.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A007971.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A008335.P18003229356278695064

`∑{e}[A077066(n+1), #]`
-/

namespace A008335.P18003229356278695064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077066 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A008335.P18003229356278695064

noncomputable section

/-- A008335: Number of distinct primes dividing p+1 as p runs through the primes.

Offset 1, canonical program `A008335.P18003229356278695064`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008335 (n : ℕ) : ℤ :=
  (A008335.P18003229356278695064.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008335.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008489.P1328373766612975759

`A008499(n)+A059174(n)-A006261(n)`
-/

namespace A008489.P1328373766612975759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008499 n + (A059174 n - A006261 n)

end

end A008489.P1328373766612975759

noncomputable section

/-- A008489: Expansion of (1-x^7)/(1-x)^7.

Offset 0, canonical program `A008489.P1328373766612975759`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008489 (n : ℕ) : ℤ :=
  A008489.P1328373766612975759.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008489.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008491.P16801072305296013185

`∑[A008490(n)+A000579(A289207(n))]`
-/

namespace A008491.P16801072305296013185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008490 n + A000579 (A289207 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008491.P16801072305296013185

noncomputable section

/-- A008491: Expansion of (1-x^9 ) / (1-x)^9.

Offset 0, canonical program `A008491.P16801072305296013185`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008491 (n : ℕ) : ℤ :=
  A008491.P16801072305296013185.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008491.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A008507.P5510179153814837351`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067076, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A008507 (n : ℕ) : ℤ :=
  A008507.P5510179153814837351.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067076, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A008507.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A011007.P17255019870769386734

`A114322(A016813(n))%10`
-/

namespace A011007.P17255019870769386734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A114322 (A016813 n).toNat) 10

end

end A011007.P17255019870769386734

noncomputable section

/-- A011007: Decimal expansion of 4th root of 10.

Offset 1, canonical program `A011007.P17255019870769386734`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A011007 (n : ℕ) : ℤ :=
  A011007.P17255019870769386734.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A011007.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A013635.P304812487331570754

`A007917(n+2)+3+n`
-/

namespace A013635.P304812487331570754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 (n + 2) + 3 + (n : ℤ)

end

end A013635.P304812487331570754

noncomputable section

/-- A013635: a(n) = prevprime(n) + n.

Offset 3, canonical program `A013635.P304812487331570754`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A013635 (n : ℕ) : ℤ :=
  A013635.P304812487331570754.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A013635.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A013637.P7777134068398331679

`(n+3)*A007917(n+2)`
-/

namespace A013637.P7777134068398331679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A007917 (n + 2)

end

end A013637.P7777134068398331679

noncomputable section

/-- A013637: n*prevprime(n).

Offset 3, canonical program `A013637.P7777134068398331679`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A013637 (n : ℕ) : ℤ :=
  A013637.P7777134068398331679.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A013637.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A013920.P16885706931666390019

`A002808(A013919(n+1))`
-/

namespace A013920.P16885706931666390019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A013919 (n + 1)).toNat

end

end A013920.P16885706931666390019

noncomputable section

/-- A013920: Composite numbers k such that the sum of all composites <= k is composite.

Offset 1, canonical program `A013920.P16885706931666390019`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A013920 (n : ℕ) : ℤ :=
  A013920.P16885706931666390019.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A013920.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A013942.P4361914383121615099

`A091453(comp[n²])`
-/

namespace A013942.P4361914383121615099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091453 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A013942.P4361914383121615099

noncomputable section

/-- A013942: Triangle of numbers T(n,k) = floor(2n/k), k=1..2n, read by rows.

Offset 1, canonical program `A013942.P4361914383121615099`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A013942 (n : ℕ) : ℤ :=
  A013942.P4361914383121615099.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A013942.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014049.P6714396449392787227

`A014029(lcm(2, n)/2)`
-/

namespace A014049.P6714396449392787227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014029 (SequenceMachineLib.roundAway ((Nat.lcm 2 n : ℚ) / 2)).toNat

end

end A014049.P6714396449392787227

noncomputable section

/-- A014049: Inverse of 40th cyclotomic polynomial.

Offset 0, canonical program `A014049.P6714396449392787227`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014049 (n : ℕ) : ℤ :=
  A014049.P6714396449392787227.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014049.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A014301.P14936781629966404544

`Δ[A307349(n)-A000035(n)]`
-/

namespace A014301.P14936781629966404544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307349 n - A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A014301.P14936781629966404544

noncomputable section

/-- A014301: Number of internal nodes of even outdegree in all ordered rooted trees with n edges.

Offset 1, canonical program `A014301.P14936781629966404544`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A014301 (n : ℕ) : ℤ :=
  A014301.P14936781629966404544.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A014301.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014302.P12328736219954425993

`A005097(n+1)*A215848(n+1)`
-/

namespace A014302.P12328736219954425993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1) * A215848 (n + 1)

end

end A014302.P12328736219954425993

noncomputable section

/-- A014302: a(n) = prime(n)*(prime(n-1)-1)/2.

Offset 3, canonical program `A014302.P12328736219954425993`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014302 (n : ℕ) : ℤ :=
  A014302.P12328736219954425993.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014302.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A014303.P12243143900441004356`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A005097, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A014303 (n : ℕ) : ℤ :=
  A014303.P12243143900441004356.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A005097, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A014303.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A014393.P6651202141595648967

`A001218(2*n)`
-/

namespace A014393.P6651202141595648967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001218 (2 * n)

end

end A014393.P6651202141595648967

noncomputable section

/-- A014393: Final 2 digits of 9^n.

Offset 0, canonical program `A014393.P6651202141595648967`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A014393 (n : ℕ) : ℤ :=
  A014393.P6651202141595648967.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A014393.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A014567.P6675992213739059239

`eq[1, A325964(n+1)]+1`
-/

namespace A014567.P6675992213739059239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325964 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A014567.P6675992213739059239

noncomputable section

/-- A014567: Numbers k such that k and sigma(k) are relatively prime, where sigma(k) = sum of divisors of k (A000203).

Offset 1, canonical program `A014567.P6675992213739059239`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014567 (n : ℕ) : ℤ :=
  (A014567.P6675992213739059239.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014567.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A016008.P15707281332845573364

`ceil(A016001((n+1)²)/2)`
-/

namespace A016008.P15707281332845573364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A016001 ((n + 1) ^ 2) : ℚ) / 2⌉

end

end A016008.P15707281332845573364

noncomputable section

/-- A016008: a(n) = (tau(n^12)+11)/12.

Offset 1, canonical program `A016008.P15707281332845573364`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A016008 (n : ℕ) : ℤ :=
  A016008.P15707281332845573364.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A016008.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A018145.P3977841845538844577

`ceil(A018146(2*n)/A018146(n))`
-/

namespace A018145.P3977841845538844577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A018146 (2 * n) : ℚ) / (A018146 n : ℚ)⌉

end

end A018145.P3977841845538844577

noncomputable section

/-- A018145: Powers of fifth root of 11 rounded to nearest integer.

Offset 0, canonical program `A018145.P3977841845538844577`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. -/
def A018145 (n : ℕ) : ℤ :=
  A018145.P3977841845538844577.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. -/
def A018145.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A018820.P234269659203219396

`A341329(n+1)²`
-/

namespace A018820.P234269659203219396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341329 (n + 1) ^ 2

end

end A018820.P234269659203219396

noncomputable section

/-- A018820: Numbers k that are the sum of m nonzero squares for all 1 <= m <= k - 14.

Offset 1, canonical program `A018820.P234269659203219396`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A341329, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A018820 (n : ℕ) : ℤ :=
  A018820.P234269659203219396.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A341329, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A018820.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A020478.P7856246009125682883

`(n+1)*∑{d}[n+1, A341772(#)]`
-/

namespace A020478.P7856246009125682883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ d ∈ Nat.divisors (f1 n), A341772 d)

end

end A020478.P7856246009125682883

noncomputable section

/-- A020478: Number of singular 2 X 2 matrices over Z(n) (i.e., with determinant = 0).

Offset 1, canonical program `A020478.P7856246009125682883`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020478 (n : ℕ) : ℤ :=
  A020478.P7856246009125682883.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020478.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A020991.P16966038769123620304

`A020988(A000523(n+1))+A000695(n)`
-/

namespace A020991.P16966038769123620304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020988 (A000523 (n + 1)).toNat + A000695 n

end

end A020991.P16966038769123620304

noncomputable section

/-- A020991: Largest value of k for which Golay-Rudin-Shapiro sequence A020986(k) = n.

Offset 1, canonical program `A020991.P16966038769123620304`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020991 (n : ℕ) : ℤ :=
  A020991.P16966038769123620304.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020991.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A022334.P10690066324089854614

`∑[A061785(n+1)+1]-A061785(n+1)`
-/

namespace A022334.P10690066324089854614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061785 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A061785 (n + 1)

end

end A022334.P10690066324089854614

noncomputable section

/-- A022334: Index of 5^n within sequence of numbers of form 2^i * 5^j.

Offset 0, canonical program `A022334.P10690066324089854614`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022334 (n : ℕ) : ℤ :=
  A022334.P10690066324089854614.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022334.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A022449.P12153620208137609378`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2037 terms. -/
def A022449 (n : ℕ) : ℤ :=
  A022449.P12153620208137609378.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2037 terms. -/
def A022449.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022459.P8326610050266846684

`Δ[A077131(n+1)]%A000040(n+1)`
-/

namespace A022459.P8326610050266846684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077131 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A000040 (n + 1))

end

end A022459.P8326610050266846684

noncomputable section

/-- A022459: a(n) = prime(2n+1) mod prime(n).

Offset 1, canonical program `A022459.P8326610050266846684`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A022459 (n : ℕ) : ℤ :=
  A022459.P8326610050266846684.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A022459.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022460.P2951721969797138114

`A031336(n+1)%A000040(n+1)`
-/

namespace A022460.P2951721969797138114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031336 (n + 1)) (A000040 (n + 1))

end

end A022460.P2951721969797138114

noncomputable section

/-- A022460: a(n) = prime(3*n) mod prime(n).

Offset 1, canonical program `A022460.P2951721969797138114`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022460 (n : ℕ) : ℤ :=
  A022460.P2951721969797138114.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022460.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022461.P9076630821520375924

`A109805(n+1)%A000040(n+1)`
-/

namespace A022461.P9076630821520375924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109805 (n + 1)) (A000040 (n + 1))

end

end A022461.P9076630821520375924

noncomputable section

/-- A022461: a(n) = prime(n+1)*prime(n+2) mod prime(n).

Offset 1, canonical program `A022461.P9076630821520375924`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022461 (n : ℕ) : ℤ :=
  A022461.P9076630821520375924.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022461.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A022805.P11016993281980640326

`A022838(n+1)+A054406(n+1)`
-/

namespace A022805.P11016993281980640326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022838 (n + 1) + A054406 (n + 1)

end

end A022805.P11016993281980640326

noncomputable section

/-- A022805: a(n) = B(n) + C(n) where B(n) is Beatty sequence [ n*sqrt(3) ] and C is complement of B.

Offset 1, canonical program `A022805.P11016993281980640326`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022838, A054406, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A022805 (n : ℕ) : ℤ :=
  A022805.P11016993281980640326.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022838, A054406, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A022805.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A022806.P955735887301753164

`A022843(n+1)+A054385(n+1)`
-/

namespace A022806.P955735887301753164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 (n + 1) + A054385 (n + 1)

end

end A022806.P955735887301753164

noncomputable section

/-- A022806: a(n) = B(n) + c(n) where B(n) is Beatty sequence [ n*e ] and c is the complement of B.

Offset 1, canonical program `A022806.P955735887301753164`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054385, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A022806 (n : ℕ) : ℤ :=
  A022806.P955735887301753164.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054385, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A022806.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A022820.P10907069291744158179

`∑[A325937(n+3)]+1`
-/

namespace A022820.P10907069291744158179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325937 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A022820.P10907069291744158179

noncomputable section

/-- A022820: [ n/1 ] - [ (n-1)/2 ] + [ (n-2)/3 ] - ... + ((-1)^n)[ 2/(n-1) ].

Offset 2, canonical program `A022820.P10907069291744158179`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022820 (n : ℕ) : ℤ :=
  A022820.P10907069291744158179.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022820.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A023572.P12048512685201523807

`val(∑[A001223(n+2)], 2)`
-/

namespace A023572.P12048512685201523807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2

end

end A023572.P12048512685201523807

noncomputable section

/-- A023572: Exponent of 2 in prime factorization of prime(n) - 3.

Offset 3, canonical program `A023572.P12048512685201523807`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023572 (n : ℕ) : ℤ :=
  (A023572.P12048512685201523807.a (n - 3) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023572.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A023695.P1436911764056398350

`eq[2, gcd(n, A105203(n))]`
-/

namespace A023695.P1436911764056398350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A105203 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023695.P1436911764056398350

noncomputable section

/-- A023695: Numbers with exactly 4 1's in their ternary expansion.

Offset 1, canonical program `A023695.P1436911764056398350`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4032 terms. -/
def A023695 (n : ℕ) : ℤ :=
  (A023695.P1436911764056398350.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4032 terms. -/
def A023695.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A023741.P15770291979762274263

`∩[A023692(n+1), A226636(n+1)]`
-/

namespace A023741.P15770291979762274263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023692 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226636 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023741.P15770291979762274263

noncomputable section

/-- A023741: Ternary expansion uses each positive digit just once.

Offset 1, canonical program `A023741.P15770291979762274263`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A023741 (n : ℕ) : ℤ :=
  (A023741.P15770291979762274263.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A023741.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024469.P6946807686841820033

`∪[A027980(n), A061171(n)]`
-/

namespace A024469.P6946807686841820033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027980 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061171 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A024469.P6946807686841820033

noncomputable section

/-- A024469: a(n) = s(1)s(n) + s(2)s(n-1) + ... + s(k)s(n+1-k), where k = [ (n+1)/2 ], s = (Lucas numbers).

Offset 1, canonical program `A024469.P6946807686841820033`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 466 terms. -/
def A024469 (n : ℕ) : ℤ :=
  (A024469.P6946807686841820033.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 466 terms. -/
def A024469.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024496.P15472247577001934284

`A006632(n+1)+2*A069271(n)`
-/

namespace A024496.P15472247577001934284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006632 (n + 1) + 2 * A069271 n

end

end A024496.P15472247577001934284

noncomputable section

/-- A024496: a(n) = (3/(8n-4))*C(4n,n).

Offset 1, canonical program `A024496.P15472247577001934284`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A024496 (n : ℕ) : ℤ :=
  A024496.P15472247577001934284.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A024496.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A024548.P12287716097256940790

`floor(A194028(n+1)/A120864(n+1))`
-/

namespace A024548.P12287716097256940790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A194028 (n + 1) : ℚ) / (A120864 (n + 1) : ℚ)⌋

end

end A024548.P12287716097256940790

noncomputable section

/-- A024548: [ 1/{n*sqrt(3)} ], where {x} := x - [ x ].

Offset 1, canonical program `A024548.P12287716097256940790`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024548 (n : ℕ) : ℤ :=
  A024548.P12287716097256940790.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024548.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A024918.P7300264531747899281

`∑[record[A008475(n+1)]]+1`
-/

namespace A024918.P7300264531747899281
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A024918.P7300264531747899281

noncomputable section

/-- A024918: Partial sums of the sequence of prime powers (A000961).

Offset 1, canonical program `A024918.P7300264531747899281`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9701 terms. -/
def A024918 (n : ℕ) : ℤ :=
  A024918.P7300264531747899281.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9701 terms. -/
def A024918.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024931.P12137656920575684940

`∑[A008619(n)-A294015(A152271(n))]`
-/

namespace A024931.P12137656920575684940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n - A294015 (A152271 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024931.P12137656920575684940

noncomputable section

/-- A024931: a(n) = sum of remainders of n mod 2,4,6,...,2k, where k = [ n/2 ].

Offset 2, canonical program `A024931.P12137656920575684940`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024931 (n : ℕ) : ℤ :=
  A024931.P12137656920575684940.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024931.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025082.P11802128794640137597

`A024591(n+1)+A006498(n)`
-/

namespace A025082.P11802128794640137597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024591 (n + 1) + A006498 n

end

end A025082.P11802128794640137597

noncomputable section

/-- A025082: a(n) = s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n-k+1), where k = [ n/2 ], s = (Fibonacci numbers), t = (F(2), F(3), F(4), ...).

Offset 1, canonical program `A025082.P11802128794640137597`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 467 terms. -/
def A025082 (n : ℕ) : ℤ :=
  A025082.P11802128794640137597.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 467 terms. -/
def A025082.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025105.P5336838899730898867

`round(ϕ*A024591(n+1))`
-/

namespace A025105.P5336838899730898867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (A024591 (n + 1) : ℝ))

end

end A025105.P5336838899730898867

noncomputable section

/-- A025105: a(n) = s(1)s(n) + s(2)s(n-1) + ... + s(k)s(n-k+1), where k = [ n/2 ], s = (F(2), F(3), F(4), ...).

Offset 1, canonical program `A025105.P5336838899730898867`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 466 terms. -/
def A025105 (n : ℕ) : ℤ :=
  A025105.P5336838899730898867.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 466 terms. -/
def A025105.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025473.P15705116709201822488

`∏{p}[record[A008475(n+1)], #]`
-/

namespace A025473.P15705116709201822488
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A025473.P15705116709201822488

noncomputable section

/-- A025473: a(1) = 1; for n > 1, a(n) = prime root of n-th prime power (A000961).

Offset 1, canonical program `A025473.P15705116709201822488`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9701 terms. -/
def A025473 (n : ℕ) : ℤ :=
  (A025473.P15705116709201822488.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9701 terms. -/
def A025473.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A025785.P12688131732497984269

`A025821(abs(1-n))+A025816(n)`
-/

namespace A025785.P12688131732497984269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025821 |1 - (n : ℤ)|.toNat + A025816 n

end

end A025785.P12688131732497984269

noncomputable section

/-- A025785: Expansion of 1/((1-x)(1-x^7)(1-x^9)).

Offset 0, canonical program `A025785.P12688131732497984269`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025785 (n : ℕ) : ℤ :=
  A025785.P12688131732497984269.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025785.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025812.P2459836770074466205

`A025781(n)-a(n-1)` with `a(0)=1`
-/

namespace A025812.P2459836770074466205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025781 n - a (n - 1)

end

end A025812.P2459836770074466205

noncomputable section

/-- A025812: Expansion of 1/((1-x^2)*(1-x^5)*(1-x^12)).

Offset 0, canonical program `A025812.P2459836770074466205`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025812 (n : ℕ) : ℤ :=
  A025812.P2459836770074466205.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025812.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025838.P10390721907101932502

`A029042(n)+A029147(n)-A000008(n)`
-/

namespace A025838.P10390721907101932502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029042 n + (A029147 n - A000008 n)

end

end A025838.P10390721907101932502

noncomputable section

/-- A025838: Expansion of 1/((1-x^3)*(1-x^5)*(1-x^10)).

Offset 0, canonical program `A025838.P10390721907101932502`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025838 (n : ℕ) : ℤ :=
  A025838.P10390721907101932502.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025838.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025840.P13065083741714530508

`A025853(n)+A025882(n)-A025911(n)`
-/

namespace A025840.P13065083741714530508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025853 n + (A025882 n - A025911 n)

end

end A025840.P13065083741714530508

noncomputable section

/-- A025840: Expansion of 1/((1-x^3)*(1-x^5)*(1-x^12)).

Offset 0, canonical program `A025840.P13065083741714530508`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025840 (n : ℕ) : ℤ :=
  A025840.P13065083741714530508.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025840.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025842.P11522893818711735044

`A307018(A110657(n))+A025853(n)`
-/

namespace A025842.P11522893818711735044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307018 (A110657 n).toNat + A025853 n

end

end A025842.P11522893818711735044

noncomputable section

/-- A025842: Expansion of 1/((1-x^3)*(1-x^6)*(1-x^8)).

Offset 0, canonical program `A025842.P11522893818711735044`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025842 (n : ℕ) : ℤ :=
  A025842.P11522893818711735044.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025842.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025845.P2150213778566754961

`A025897(abs(3-n))+A025897(n)`
-/

namespace A025845.P2150213778566754961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025897 |3 - (n : ℤ)|.toNat + A025897 n

end

end A025845.P2150213778566754961

noncomputable section

/-- A025845: Expansion of 1/((1-x^3)*(1-x^7)*(1-x^8)).

Offset 0, canonical program `A025845.P2150213778566754961`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025845 (n : ℕ) : ℤ :=
  A025845.P2150213778566754961.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025845.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026005.P1831924511019717742

`(n+1)*A069271(n)`
-/

namespace A026005.P1831924511019717742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A069271 n

end

end A026005.P1831924511019717742

noncomputable section

/-- A026005: a(n) = T(4*n,n), where T = Catalan triangle (A008315).

Offset 0, canonical program `A026005.P1831924511019717742`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A026005 (n : ℕ) : ℤ :=
  A026005.P1831924511019717742.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A026005.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A026273.P13771585298488964922

`floor(A191403(n)/2)`
-/

namespace A026273.P13771585298488964922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A191403 n : ℚ) / 2⌋

end

end A026273.P13771585298488964922

noncomputable section

/-- A026273: a(n) = least k such that s(k) = n, where s = A026272.

Offset 1, canonical program `A026273.P13771585298488964922`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026273 (n : ℕ) : ℤ :=
  A026273.P13771585298488964922.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026273.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026288.P16717584627320479828

`Δ[A102071(n+2)%A102071(n+1)]`
-/

namespace A026288.P16717584627320479828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102071 (n + 2)) (A102071 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026288.P16717584627320479828

noncomputable section

/-- A026288: Number of (s(0), s(1), ..., s(n)) such that every s(i) is an integer, s(0) = 0, s(1) = 1, s(n) = 2, |s(i) - s(i-1)| <= 1 for i >= 2, |s(2) - s(1)| = 1, |s(3) - s(2)| = 1 if s(2) = 1. Also T(n,n-2), where T is the array in A026268.

Offset 2, canonical program `A026288.P16717584627320479828`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A026288 (n : ℕ) : ℤ :=
  A026288.P16717584627320479828.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A026288.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A026611.P12328329593331989993

`2-A026613(n+1)`
-/

namespace A026611.P12328329593331989993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A026613 (n + 1)

end

end A026611.P12328329593331989993

noncomputable section

/-- A026611: Number of 3's between n-th 2 and (n+1)st 2 in A026600.

Offset 1, canonical program `A026611.P12328329593331989993`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026611 (n : ℕ) : ℤ :=
  A026611.P12328329593331989993.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026611.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026617.P650469128402918254

`A053369(n)-A071721(n)`
-/

namespace A026617.P650469128402918254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053369 n - A071721 n

end

end A026617.P650469128402918254

noncomputable section

/-- A026617: a(n) = A026615(2*n, n-1).

Offset 1, canonical program `A026617.P650469128402918254`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A026617 (n : ℕ) : ℤ :=
  A026617.P650469128402918254.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A026617.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026618.P9524897013692992318

`A002694(n+3)-Δ[Δ[A048060(2*(n+1))]]`
-/

namespace A026618.P9524897013692992318
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048060 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002694 (n + 3) - (f1 (n + 1) - f1 n)

end

end A026618.P9524897013692992318

noncomputable section

/-- A026618: a(n) = A026618(2*n, n-2).

Offset 2, canonical program `A026618.P9524897013692992318`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A026618 (n : ℕ) : ℤ :=
  A026618.P9524897013692992318.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A026618.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A027172.P9065674503103710683

`A027175(n+1)+2`
-/

namespace A027172.P9065674503103710683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027175 (n + 1) + 2

end

end A027172.P9065674503103710683

noncomputable section

/-- A027172: a(n) = (1/2) * A027170(2n, n).

Offset 1, canonical program `A027172.P9065674503103710683`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A027175, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A027172 (n : ℕ) : ℤ :=
  A027172.P9065674503103710683.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A027175, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A027172.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A027305.P4063068465224588303

`A242172(n)-A093387(n+1)`
-/

namespace A027305.P4063068465224588303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242172 n - A093387 (n + 1)

end

end A027305.P4063068465224588303

noncomputable section

/-- A027305: a(n) = Sum_{k=0..floor((n+1)/2)} (k+1) * A008315(n, k).

Offset 0, canonical program `A027305.P4063068465224588303`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. -/
def A027305 (n : ℕ) : ℤ :=
  A027305.P4063068465224588303.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. -/
def A027305.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027822.P16244193656879862890

`2*(n+1)/10*A027821(n+4)`
-/

namespace A027822.P16244193656879862890
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℚ) / 10 * (A027821 (n + 4) : ℚ))

end

end A027822.P16244193656879862890

noncomputable section

/-- A027822: a(n) = 42*(n+1)*binomial(n+6,10).

Offset 4, canonical program `A027822.P16244193656879862890`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A027822 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A027822.P16244193656879862890.a (n - 4))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A027822.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027833.P2673229578852313683

`Δ[eq[2, A001223(n+1)]]`
-/

namespace A027833.P2673229578852313683
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A027833.P2673229578852313683

noncomputable section

/-- A027833: Distances between successive 2's in sequence A001223 of differences between consecutive primes.

Offset 1, canonical program `A027833.P2673229578852313683`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5422 terms. -/
def A027833 (n : ℕ) : ℤ :=
  A027833.P2673229578852313683.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5422 terms. -/
def A027833.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027952.P14487123218290733274

`A053309(record[n*n%2])`
-/

namespace A027952.P14487123218290733274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053309 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A027952.P14487123218290733274

noncomputable section

/-- A027952: a(n) = T(2n,n+4), T given by A027948.

Offset 4, canonical program `A027952.P14487123218290733274`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A027952 (n : ℕ) : ℤ :=
  A027952.P14487123218290733274.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A027952.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028334.P10406468168552607692

`A001281(A001223(n+2))`
-/

namespace A028334.P10406468168552607692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A001223 (n + 2)).toNat

end

end A028334.P10406468168552607692

noncomputable section

/-- A028334: Differences between consecutive odd primes, divided by 2.

Offset 2, canonical program `A028334.P10406468168552607692`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A028334 (n : ℕ) : ℤ :=
  A028334.P10406468168552607692.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A028334.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A028894.P10298057160581444621

`A050141(n+1)+4*a(n-1)` with `a(0)=1`
-/

namespace A028894.P10298057160581444621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A050141 (n + 1) + 4 * a (n - 1)

end

end A028894.P10298057160581444621

noncomputable section

/-- A028894: a(n) = either 4a(n-1)+1 or 4a(n-1)+3 depending on corresponding term of A005614, +1 for 0, +3 for 1.

Offset 1, canonical program `A028894.P10298057160581444621`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A028894 (n : ℕ) : ℤ :=
  A028894.P10298057160581444621.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A028894.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029055.P69612204024206493

`∑[A025851(n)]`
-/

namespace A029055.P69612204024206493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025851 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029055.P69612204024206493

noncomputable section

/-- A029055: Expansion of 1/((1-x)*(1-x^3)*(1-x^8)*(1-x^10)).

Offset 0, canonical program `A029055.P69612204024206493`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029055 (n : ℕ) : ℤ :=
  A029055.P69612204024206493.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029055.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029153.P17836664122249653159

`A029047(n)-a(n-1)` with `a(0)=1`
-/

namespace A029153.P17836664122249653159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029047 n - a (n - 1)

end

end A029153.P17836664122249653159

noncomputable section

/-- A029153: Expansion of 1/((1-x^2)*(1-x^3)*(1-x^6)*(1-x^10)).

Offset 0, canonical program `A029153.P17836664122249653159`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029153 (n : ℕ) : ℤ :=
  A029153.P17836664122249653159.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029153.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029709.P13486042084338906989

`eq[4, A001223(n+1)]+1`
-/

namespace A029709.P13486042084338906989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A029709.P13486042084338906989

noncomputable section

/-- A029709: Numbers k such that k-th and (k+1)-th primes differ by 4.

Offset 1, canonical program `A029709.P13486042084338906989`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5419 terms. -/
def A029709 (n : ℕ) : ℤ :=
  (A029709.P13486042084338906989.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5419 terms. -/
def A029709.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A029740.P619217809888464575`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3949 terms. -/
def A029740 (n : ℕ) : ℤ :=
  (A029740.P619217809888464575.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3949 terms. -/
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

Offset 1, canonical program `A029741.P12647028783667257905`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4350 terms. -/
def A029741 (n : ℕ) : ℤ :=
  (A029741.P12647028783667257905.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4350 terms. -/
def A029741.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A029883.P16402799982168113119

`2-A007413(n+1)`
-/

namespace A029883.P16402799982168113119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A007413 (n + 1)

end

end A029883.P16402799982168113119

noncomputable section

/-- A029883: First differences of Thue-Morse sequence A001285.

Offset 1, canonical program `A029883.P16402799982168113119`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007413, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A029883 (n : ℕ) : ℤ :=
  A029883.P16402799982168113119.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007413, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A029883.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A030513.P1414838510973468407

`A007422(n+2)`
-/

namespace A030513.P1414838510973468407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007422 (n + 2)

end

end A030513.P1414838510973468407

noncomputable section

/-- A030513: Numbers with 4 divisors.

Offset 1, canonical program `A030513.P1414838510973468407`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A030513 (n : ℕ) : ℤ :=
  A030513.P1414838510973468407.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A030513.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A030656.P12769284707998713729

`A127421(Δ[n²])`
-/

namespace A030656.P12769284707998713729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127421 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A030656.P12769284707998713729

noncomputable section

/-- A030656: Pair up the numbers.

Offset 0, canonical program `A030656.P12769284707998713729`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A030656 (n : ℕ) : ℤ :=
  A030656.P12769284707998713729.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A030656.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A031167.P10444615864616743603

`A031166(n+1)+A001223(n+5)`
-/

namespace A031167.P10444615864616743603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031166 (n + 1) + A001223 (n + 5)

end

end A031167.P10444615864616743603

noncomputable section

/-- A031167: a(n) = prime(n+5) - prime(n).

Offset 1, canonical program `A031167.P10444615864616743603`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A031167 (n : ℕ) : ℤ :=
  A031167.P10444615864616743603.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A031167.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A031215.P5770198321376253516

`A105720(n+1)-A161463(n+1)`
-/

namespace A031215.P5770198321376253516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105720 (n + 1) - A161463 (n + 1)

end

end A031215.P5770198321376253516

noncomputable section

/-- A031215: Even-indexed primes: a(n) = prime(2n).

Offset 1, canonical program `A031215.P5770198321376253516`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A105720, A161463, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A031215 (n : ℕ) : ℤ :=
  A031215.P5770198321376253516.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A105720, A161463, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A031215.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A031377.P12442272591123244915

`A031369(n+1)-A001223(3*n+1)`
-/

namespace A031377.P12442272591123244915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031369 (n + 1) - A001223 (3 * n + 1)

end

end A031377.P12442272591123244915

noncomputable section

/-- A031377: a(n) = prime(3n-2).

Offset 1, canonical program `A031377.P12442272591123244915`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A031377 (n : ℕ) : ℤ :=
  A031377.P12442272591123244915.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A031377.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A031948.P11177612134455942008

`eq[A290825(n)+A088917(n), A189820(n+1)]`
-/

namespace A031948.P11177612134455942008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290825 n + A088917 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189820 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031948.P11177612134455942008

noncomputable section

/-- A031948: Numbers with exactly two distinct base-3 digits.

Offset 1, canonical program `A031948.P11177612134455942008`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1274 terms. -/
def A031948 (n : ℕ) : ℤ :=
  (A031948.P11177612134455942008.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1274 terms. -/
def A031948.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A032094.P1520495427252306651

`4*A031164(n)`
-/

namespace A032094.P1520495427252306651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A031164 n

end

end A032094.P1520495427252306651

noncomputable section

/-- A032094: Number of reversible strings with n-1 beads of 2 colors. 7 beads are black. String is not palindromic.

Offset 9, canonical program `A032094.P1520495427252306651`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A031164, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A032094 (n : ℕ) : ℤ :=
  A032094.P1520495427252306651.a (n - 9)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A031164, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A032094.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A032966.P18319499413704476825

`lt[A188653(n+1), A217558(n)]`
-/

namespace A032966.P18319499413704476825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217558 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032966.P18319499413704476825

noncomputable section

/-- A032966: Numbers whose base-16 representation Sum_{i=0..m} d(i)*16^(m-i) has even d(i) for all odd i.

Offset 1, canonical program `A032966.P18319499413704476825`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A032966 (n : ℕ) : ℤ :=
  (A032966.P18319499413704476825.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A032966.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033287.P5066765549217672205

`A062357(n+1)+A001043(n+1)`
-/

namespace A033287.P5066765549217672205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062357 (n + 1) + A001043 (n + 1)

end

end A033287.P5066765549217672205

noncomputable section

/-- A033287: First differences of A033286.

Offset 0, canonical program `A033287.P5066765549217672205`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033287 (n : ℕ) : ℤ :=
  A033287.P5066765549217672205.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033287.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A034051.P2454860325690119983

`∩[A028889(n+1), A051806(n+1)]`
-/

namespace A034051.P2454860325690119983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051806 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034051.P2454860325690119983

noncomputable section

/-- A034051: Numbers with multiplicative digital root value 4.

Offset 1, canonical program `A034051.P2454860325690119983`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 894 terms. -/
def A034051 (n : ℕ) : ℤ :=
  (A034051.P2454860325690119983.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 894 terms. -/
def A034051.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034096.P8391659666020544807

`lt[9, A091453(n)]`
-/

namespace A034096.P8391659666020544807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091453 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A034096.P8391659666020544807

noncomputable section

/-- A034096: Fractional part of square root of n starts with digit 0 (squares excluded).

Offset 1, canonical program `A034096.P8391659666020544807`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 970 terms. -/
def A034096 (n : ℕ) : ℤ :=
  (A034096.P8391659666020544807.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 970 terms. -/
def A034096.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034678.P2173923683494407018

`∑{d}[n+1, A065827(#)*A334657((n+1)/#)]`
-/

namespace A034678.P2173923683494407018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A065827 d * A334657 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034678.P2173923683494407018

noncomputable section

/-- A034678: Sum of fourth powers of unitary divisors.

Offset 1, canonical program `A034678.P2173923683494407018`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034678 (n : ℕ) : ℤ :=
  A034678.P2173923683494407018.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034678.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A034754.P850414589168933379

`∑{d}[n+1, A007427(#)*A034753((n+1)/#)]`
-/

namespace A034754.P850414589168933379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A034753 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034754.P850414589168933379

noncomputable section

/-- A034754: Dirichlet convolution of 3^(n-1) with phi(n).

Offset 1, canonical program `A034754.P850414589168933379`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A034754 (n : ℕ) : ℤ :=
  A034754.P850414589168933379.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A034754.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A034784.P9791422119006832211

`lt[A010051(n+1), A101264(n)]`
-/

namespace A034784.P9791422119006832211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A034784.P9791422119006832211

noncomputable section

/-- A034784: Numbers n such that A034693(n) = 2.

Offset 1, canonical program `A034784.P9791422119006832211`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8919 terms. -/
def A034784 (n : ℕ) : ℤ :=
  (A034784.P9791422119006832211.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8919 terms. -/
def A034784.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A035181.P2688111840695593634

`∑{d}[n+1, A035184(#)*A154272((n+1)/#)]`
-/

namespace A035181.P2688111840695593634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035184 d * A154272 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A035181.P2688111840695593634

noncomputable section

/-- A035181: a(n) = Sum_{d|n} Kronecker(-9, d).

Offset 1, canonical program `A035181.P2688111840695593634`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035181 (n : ℕ) : ℤ :=
  A035181.P2688111840695593634.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035181.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A036263.P14888342997651084870

`A001223(n+2)-A001223(n+1)`
-/

namespace A036263.P14888342997651084870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 2) - A001223 (n + 1)

end

end A036263.P14888342997651084870

noncomputable section

/-- A036263: Second differences of primes.

Offset 1, canonical program `A036263.P14888342997651084870`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001223, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A036263 (n : ℕ) : ℤ :=
  A036263.P14888342997651084870.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001223, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A036263.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A036348.P10794029547459417967

`∩[2*n, A036347(n+1)]`
-/

namespace A036348.P10794029547459417967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036347 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036348.P10794029547459417967

noncomputable section

/-- A036348: Even numbers whose number of odd prime factors is odd (when counted with multiplicity).

Offset 1, canonical program `A036348.P10794029547459417967`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5133 terms. -/
def A036348 (n : ℕ) : ℤ :=
  (A036348.P10794029547459417967.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5133 terms. -/
def A036348.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A037862.P1436881661592222965`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037862 (n : ℕ) : ℤ :=
  A037862.P1436881661592222965.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037862.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A037863.P16838511849426806167`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037863 (n : ℕ) : ℤ :=
  A037863.P16838511849426806167.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037863.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A038109.P6956928196549594048

`lt[and(1, A295879(n+1)), 1]+1`
-/

namespace A038109.P6956928196549594048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A295879 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A038109.P6956928196549594048

noncomputable section

/-- A038109: Divisible exactly by the square of a prime.

Offset 1, canonical program `A038109.P6956928196549594048`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038109 (n : ℕ) : ℤ :=
  (A038109.P6956928196549594048.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038109.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038502.P9052466148922718173

`gcd(n+1, A327625(n+1))`
-/

namespace A038502.P9052466148922718173
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A327625 (n + 1))

end

end A038502.P9052466148922718173

noncomputable section

/-- A038502: Remove 3's from n.

Offset 1, canonical program `A038502.P9052466148922718173`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038502 (n : ℕ) : ℤ :=
  (A038502.P9052466148922718173.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038502.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A038529.P12826483427186246447`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A002808, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A038529 (n : ℕ) : ℤ :=
  A038529.P12826483427186246447.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A002808, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A038529.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A039276.P4466623649426209317

`∩[A031452(n+1), A081605(n+1)]`
-/

namespace A039276.P4466623649426209317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031452 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081605 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039276.P4466623649426209317

noncomputable section

/-- A039276: Numbers whose base-3 representation has the same nonzero number of 0's and 2's.

Offset 1, canonical program `A039276.P4466623649426209317`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1867 terms. -/
def A039276 (n : ℕ) : ℤ :=
  (A039276.P4466623649426209317.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1867 terms. -/
def A039276.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039660.P4420970072277421946

`∑[A045445(A065033(n))]`
-/

namespace A039660.P4420970072277421946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045445 (A065033 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039660.P4420970072277421946

noncomputable section

/-- A039660: Related to enumeration of edge-rooted catafusenes.

Offset 1, canonical program `A039660.P4420970072277421946`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 295 terms. -/
def A039660 (n : ℕ) : ℤ :=
  A039660.P4420970072277421946.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 295 terms. -/
def A039660.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A039790.P15010338616268529751

`A160668(n+1)+A100484(n+1)`
-/

namespace A039790.P15010338616268529751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160668 (n + 1) + A100484 (n + 1)

end

end A039790.P15010338616268529751

noncomputable section

/-- A039790: Prime numbers prefixed with a '1'.

Offset 1, canonical program `A039790.P15010338616268529751`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039790 (n : ℕ) : ℤ :=
  A039790.P15010338616268529751.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039790.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039973.P9002427176506476761

`(3-A039975(n+2))%3`
-/

namespace A039973.P9002427176506476761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (3 - A039975 (n + 2)) 3

end

end A039973.P9002427176506476761

noncomputable section

/-- A039973: An example of a d-perfect sequence: a(2*n) = 0, a(2*n-1) = A039965(n).

Offset 1, canonical program `A039973.P9002427176506476761`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039973 (n : ℕ) : ℤ :=
  A039973.P9002427176506476761.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039973.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A043287.P1481354817054238234

`A080225(lcm(30, A026491(n)))`
-/

namespace A043287.P1481354817054238234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080225 (Int.lcm 30 (A026491 n))

end

end A043287.P1481354817054238234

noncomputable section

/-- A043287: Maximal run length in base-13 representation of n.

Offset 1, canonical program `A043287.P1481354817054238234`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A043287 (n : ℕ) : ℤ :=
  A043287.P1481354817054238234.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A043287.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A045751.P2664961897306149397

`eq[0, A101264(2*n)]`
-/

namespace A045751.P2664961897306149397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045751.P2664961897306149397

noncomputable section

/-- A045751: Numbers k such that 4*k + 1 is not prime.

Offset 1, canonical program `A045751.P2664961897306149397`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045751 (n : ℕ) : ℤ :=
  (A045751.P2664961897306149397.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045751.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045752.P3490376513677938941

`eq[0, A101264(2*n+1)]+1`
-/

namespace A045752.P3490376513677938941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A045752.P3490376513677938941

noncomputable section

/-- A045752: 4n-1 is composite.

Offset 1, canonical program `A045752.P3490376513677938941`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045752 (n : ℕ) : ℤ :=
  (A045752.P3490376513677938941.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045752.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A046137.P13806103826788507979

`p?[A023202(n+1)-4]`
-/

namespace A046137.P13806103826788507979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023202 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046137.P13806103826788507979

noncomputable section

/-- A046137: Primes p such that p+4 and p+12 are also prime.

Offset 1, canonical program `A046137.P13806103826788507979`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1440 terms. -/
def A046137 (n : ℕ) : ℤ :=
  A046137.P13806103826788507979.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1440 terms. -/
def A046137.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046141.P14612882901117279201

`∩[A015915(n+1), A046133(n+1)]`
-/

namespace A046141.P14612882901117279201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046141.P14612882901117279201

noncomputable section

/-- A046141: p, p+8 and p+12 are primes.

Offset 1, canonical program `A046141.P14612882901117279201`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 912 terms. -/
def A046141 (n : ℕ) : ℤ :=
  (A046141.P14612882901117279201.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 912 terms. -/
def A046141.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046152.P17931852614987402425

`A046151(n+1)+2`
-/

namespace A046152.P17931852614987402425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046151 (n + 1) + 2

end

end A046152.P17931852614987402425

noncomputable section

/-- A046152: a(n) = n*phi(n) + 1.

Offset 1, canonical program `A046152.P17931852614987402425`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046152 (n : ℕ) : ℤ :=
  A046152.P17931852614987402425.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046152.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A046343.P14376199206218772197`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046343 (n : ℕ) : ℤ :=
  A046343.P14376199206218772197.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046343.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A046692.P2122140602833396605

`∑{d}[n+1, #*A327960((n+1)/#)]`
-/

namespace A046692.P2122140602833396605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A327960 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A046692.P2122140602833396605

noncomputable section

/-- A046692: Dirichlet inverse of sigma function (A000203).

Offset 1, canonical program `A046692.P2122140602833396605`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046692 (n : ℕ) : ℤ :=
  A046692.P2122140602833396605.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046692.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046790.P4041262412351420373

`lt[7, A065745(n+1)]+1`
-/

namespace A046790.P4041262412351420373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065745 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A046790.P4041262412351420373

noncomputable section

/-- A046790: Positive numbers divisible by 8 or by the square of an odd prime.

Offset 1, canonical program `A046790.P4041262412351420373`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046790 (n : ℕ) : ℤ :=
  (A046790.P4041262412351420373.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046790.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046886.P11639391878741176201

`∑{d}[n+1, A101264(#)]+1`
-/

namespace A046886.P11639391878741176201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A101264 d + 1

end

end A046886.P11639391878741176201

noncomputable section

/-- A046886: Number of divisors d of 2n satisfying (d+1) = prime or number of prime factors of the denominator of the even Bernoulli numbers.

Offset 1, canonical program `A046886.P11639391878741176201`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046886 (n : ℕ) : ℤ :=
  A046886.P11639391878741176201.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046886.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047075.P16391672911939574512

`record[A168256(n)-A000108(A025581(n))]`
-/

namespace A047075.P16391672911939574512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168256 n - A000108 (A025581 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047075.P16391672911939574512

noncomputable section

/-- A047075: All differences C(j)-C(i), j>i, of Catalan numbers A000108.

Offset 0, canonical program `A047075.P16391672911939574512`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9721 terms. -/
def A047075 (n : ℕ) : ℤ :=
  A047075.P16391672911939574512.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9721 terms. -/
def A047075.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A047845.P10472410554983521945

`eq[0, A101264(n)]`
-/

namespace A047845.P10472410554983521945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A047845.P10472410554983521945

noncomputable section

/-- A047845: a(n) = (m-1)/2, where m is the n-th odd nonprime (A014076(n)).

Offset 1, canonical program `A047845.P10472410554983521945`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047845 (n : ℕ) : ℤ :=
  (A047845.P10472410554983521945.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047845.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A048741.P2194570441843201245

`A007956(A002808(n+1))`
-/

namespace A048741.P2194570441843201245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007956 (A002808 (n + 1)).toNat

end

end A048741.P2194570441843201245

noncomputable section

/-- A048741: Product of aliquot divisors of composite n (1 and primes omitted).

Offset 1, canonical program `A048741.P2194570441843201245`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4363 terms. -/
def A048741 (n : ℕ) : ℤ :=
  A048741.P2194570441843201245.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4363 terms. -/
def A048741.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049070.P12552011053307575598

`(n+1)*(A100071(2*n+1)-A002054(n+1))`
-/

namespace A049070.P12552011053307575598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A100071 (2 * n + 1) - A002054 (n + 1))

end

end A049070.P12552011053307575598

noncomputable section

/-- A049070: a(n) = (n+1)^2*binomial(2*n+2,n-1)/2.

Offset 0, canonical program `A049070.P12552011053307575598`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A049070 (n : ℕ) : ℤ :=
  A049070.P12552011053307575598.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A049070.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049200.P11765190068328922936

`∏{p}[A005117(n+1), #-1]`
-/

namespace A049200.P11765190068328922936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((p : ℤ) - 1)

end

end A049200.P11765190068328922936

noncomputable section

/-- A049200: Euler totient function phi applied to the n-th squarefree number.

Offset 1, canonical program `A049200.P11765190068328922936`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049200 (n : ℕ) : ℤ :=
  A049200.P11765190068328922936.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049200.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049231.P1078354899549931316

`p?[A005117(n+1)+2]`
-/

namespace A049231.P1078354899549931316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049231.P1078354899549931316

noncomputable section

/-- A049231: Primes p such that p - 2 is squarefree.

Offset 1, canonical program `A049231.P1078354899549931316`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7175 terms. -/
def A049231 (n : ℕ) : ℤ :=
  A049231.P1078354899549931316.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7175 terms. -/
def A049231.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049233.P6371991846237013089

`p?[A005117(n+1)-2]`
-/

namespace A049233.P6371991846237013089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049233.P6371991846237013089

noncomputable section

/-- A049233: Primes p such that p + 2 is squarefree.

Offset 1, canonical program `A049233.P6371991846237013089`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7192 terms. -/
def A049233 (n : ℕ) : ℤ :=
  A049233.P6371991846237013089.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7192 terms. -/
def A049233.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A049579.P9136295119594597063

`lt[2, A001223(n+1)]+1`
-/

namespace A049579.P9136295119594597063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A049579.P9136295119594597063

noncomputable section

/-- A049579: Numbers k such that prime(k)+2 divides (prime(k)-1)!.

Offset 1, canonical program `A049579.P9136295119594597063`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049579 (n : ℕ) : ℤ :=
  (A049579.P9136295119594597063.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049579.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049591.P2776477659953961474

`A065091(lt[2, A001223(n+1)])`
-/

namespace A049591.P2776477659953961474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A049591.P2776477659953961474

noncomputable section

/-- A049591: Odd primes p such that p+2 is composite.

Offset 1, canonical program `A049591.P2776477659953961474`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8730 terms. -/
def A049591 (n : ℕ) : ℤ :=
  A049591.P2776477659953961474.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8730 terms. -/
def A049591.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049653.P6932272734946224347

`A049613(n+3)-2`
-/

namespace A049653.P6932272734946224347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049613 (n + 3) - 2

end

end A049653.P6932272734946224347

noncomputable section

/-- A049653: a(n) = 2*n - prevprime(2*n).

Offset 2, canonical program `A049653.P6932272734946224347`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049653 (n : ℕ) : ℤ :=
  A049653.P6932272734946224347.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049653.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A049716.P16933746543691876245

`A049711(2*n+3)`
-/

namespace A049716.P16933746543691876245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049711 (2 * n + 3)

end

end A049716.P16933746543691876245

noncomputable section

/-- A049716: a(n) = 2*n + 1 - prevprime(2*n + 1).

Offset 1, canonical program `A049716.P16933746543691876245`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049711, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A049716 (n : ℕ) : ℤ :=
  A049716.P16933746543691876245.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049711, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A049716.provenance : SequenceMachineLib.Provenance := .conditional

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
-/

namespace A050435.P14006746801944486327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A002808 (n + 1)).toNat

end

end A050435.P14006746801944486327

noncomputable section

/-- A050435: a(n) = composite(composite(n)), where composite = A002808, composite numbers.

Offset 1, canonical program `A050435.P14006746801944486327`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050435 (n : ℕ) : ℤ :=
  A050435.P14006746801944486327.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050435.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A050458.P15679077146658638176

`abs(A050450(n+1)-A050453(n+1))`
-/

namespace A050458.P15679077146658638176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A050450 (n + 1) - A050453 (n + 1)|

end

end A050458.P15679077146658638176

noncomputable section

/-- A050458: Difference between Sum_{d|n, d == 1 (mod 4)} d^2 and Sum_{d|n, d == 3 (mod 4)} d^2.

Offset 1, canonical program `A050458.P15679077146658638176`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050458 (n : ℕ) : ℤ :=
  A050458.P15679077146658638176.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050458.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A051144.P15705721184741371757

`comp[∪[A005117(n+1), n²]]`
-/

namespace A051144.P15705721184741371757
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A051144.P15705721184741371757

noncomputable section

/-- A051144: Nonsquarefree nonsquares: each term has a square factor but is not a perfect square itself.

Offset 1, canonical program `A051144.P15705721184741371757`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051144 (n : ℕ) : ℤ :=
  (A051144.P15705721184741371757.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051144.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A051552.P6713072613704973827

`A099634(A165367(n+1))`
-/

namespace A051552.P6713072613704973827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099634 (A165367 (n + 1)).toNat

end

end A051552.P6713072613704973827

noncomputable section

/-- A051552: Quotients of consecutive values of LCM {b(0), b(1) ...,b(n)}, b() = A016789.

Offset 1, canonical program `A051552.P6713072613704973827`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A051552 (n : ℕ) : ℤ :=
  A051552.P6713072613704973827.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A051552.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A053210.P657780142327635725

`2*(A001223(n)+a(n-1))` with `a(0)=2`
-/

namespace A053210.P657780142327635725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 * (A001223 n + a (n - 1))

end

end A053210.P657780142327635725

noncomputable section

/-- A053210: Row sums of A051599.

Offset 0, canonical program `A053210.P657780142327635725`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A053210 (n : ℕ) : ℤ :=
  A053210.P657780142327635725.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A053210.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A053471.P2656201411474916772

`A053470(A016035(n+1)+1)`
-/

namespace A053471.P2656201411474916772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053470 (A016035 (n + 1) + 1).toNat

end

end A053471.P2656201411474916772

noncomputable section

/-- A053471: a(n) is the cototient of n (A051953) iterated 3 times.

Offset 1, canonical program `A053471.P2656201411474916772`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053471 (n : ℕ) : ℤ :=
  A053471.P2656201411474916772.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053471.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053619.P10354207084326631963

`A053621(n+1)-∑[A010051(n+1)]`
-/

namespace A053619.P10354207084326631963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053621 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053619.P10354207084326631963

noncomputable section

/-- A053619: a(n) = round(n/(log(n)-1) - pi(n)).

Offset 1, canonical program `A053619.P10354207084326631963`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053619 (n : ℕ) : ℤ :=
  A053619.P10354207084326631963.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053619.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053622.P6965006876423191797

`A050499(n+2)-∑[A010051(n+2)]`
-/

namespace A053622.P6965006876423191797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050499 (n + 2) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053622.P6965006876423191797

noncomputable section

/-- A053622: a(n) = round( n/log(n) - pi(n) ).

Offset 2, canonical program `A053622.P6965006876423191797`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053622 (n : ℕ) : ℤ :=
  A053622.P6965006876423191797.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053622.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053694.P6109795769144306558

`∑{d}[n+1, A035207(#)*A275966((n+1)/#)]`
-/

namespace A053694.P6109795769144306558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035207 d * A275966 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A053694.P6109795769144306558

noncomputable section

/-- A053694: Number of self-conjugate 5-core partitions of n.

Offset 0, canonical program `A053694.P6109795769144306558`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053694 (n : ℕ) : ℤ :=
  A053694.P6109795769144306558.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053694.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053868.P14125084353672620264

`eq[n%2, A053866(n+1)]+1`
-/

namespace A053868.P14125084353672620264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053866 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A053868.P14125084353672620264

noncomputable section

/-- A053868: Numbers whose sum of proper divisors is odd.

Offset 1, canonical program `A053868.P14125084353672620264`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053868 (n : ℕ) : ℤ :=
  (A053868.P14125084353672620264.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053868.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A054023.P16419217150835548806

`comp[A054022(n+1)-1]+1`
-/

namespace A054023.P16419217150835548806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054022 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A054023.P16419217150835548806

noncomputable section

/-- A054023: Chowla function of n is not divisible by the number of divisors of n.

Offset 1, canonical program `A054023.P16419217150835548806`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054023 (n : ℕ) : ℤ :=
  (A054023.P16419217150835548806.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054023.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A054429.P15830505809377255820

`A063946(A117120(n+1))`
-/

namespace A054429.P15830505809377255820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063946 (A117120 (n + 1)).toNat

end

end A054429.P15830505809377255820

noncomputable section

/-- A054429: Simple self-inverse permutation of natural numbers: list each block of 2^n numbers (from 2^n to 2^(n+1) - 1) in reverse order.

Offset 1, canonical program `A054429.P15830505809377255820`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063946, A117120, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A054429 (n : ℕ) : ℤ :=
  A054429.P15830505809377255820.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063946, A117120, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A054429.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A055003.P16368500312500081187

`A175248(n+2)`
-/

namespace A055003.P16368500312500081187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175248 (n + 2)

end

end A055003.P16368500312500081187

noncomputable section

/-- A055003: a(n) = prime(prime(n)-1).

Offset 1, canonical program `A055003.P16368500312500081187`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A055003 (n : ℕ) : ℤ :=
  A055003.P16368500312500081187.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A055003.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A055377.P4852534291270494815

`A007917(floor(n/2)+2)`
-/

namespace A055377.P4852534291270494815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 (⌊(n : ℚ) / 2⌋ + 2).toNat

end

end A055377.P4852534291270494815

noncomputable section

/-- A055377: a(n) = largest prime <= n/2.

Offset 4, canonical program `A055377.P4852534291270494815`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055377 (n : ℕ) : ℤ :=
  A055377.P4852534291270494815.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055377.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055400.P8178279629635040158

`n-A048762(n)`
-/

namespace A055400.P8178279629635040158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A048762 n

end

end A055400.P8178279629635040158

noncomputable section

/-- A055400: Cube excess: difference between n and largest cube <= n.

Offset 0, canonical program `A055400.P8178279629635040158`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048762, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055400 (n : ℕ) : ℤ :=
  A055400.P8178279629635040158.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048762, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055400.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A055436.P5718012716904594171

`(n+1)*(A020338(n+1)-n)`
-/

namespace A055436.P5718012716904594171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A020338 (n + 1) - (n : ℤ))

end

end A055436.P5718012716904594171

noncomputable section

/-- A055436: a(n) = concatenation of n^2 and n.

Offset 1, canonical program `A055436.P5718012716904594171`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055436 (n : ℕ) : ℤ :=
  A055436.P5718012716904594171.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055436.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A055500.P10640790533868860470

`A007917(a(n-1)+a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A055500.P10640790533868860470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A007917 (a (n - 1) + a (n - 2)).toNat

end

end A055500.P10640790533868860470

noncomputable section

/-- A055500: a(0)=1, a(1)=1, a(n) = largest prime <= a(n-1) + a(n-2).

Offset 0, canonical program `A055500.P10640790533868860470`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007917, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055500 (n : ℕ) : ℤ :=
  A055500.P10640790533868860470.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007917, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055500.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A056221.P18096132233236866898

`A048852(n+1)-A000040(n+1)*A001223(n+2)`
-/

namespace A056221.P18096132233236866898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048852 (n + 1) - A000040 (n + 1) * A001223 (n + 2)

end

end A056221.P18096132233236866898

noncomputable section

/-- A056221: Image of primes (A000040) under "little Hankel" transform that sends [c_0, c_1, ...] to [d_0, d_1, ...] where d_n = c_n^2 - c_{n+1}*c_{n-1}.

Offset 1, canonical program `A056221.P18096132233236866898`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056221 (n : ℕ) : ℤ :=
  A056221.P18096132233236866898.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056221.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056311.P8895079700223021216

`2*(A028244(n+1)+A028244(A008619(n)))`
-/

namespace A056311.P8895079700223021216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A028244 (n + 1) + A028244 (A008619 n).toNat)

end

end A056311.P8895079700223021216

noncomputable section

/-- A056311: Number of reversible strings with n beads using exactly four different colors.

Offset 1, canonical program `A056311.P8895079700223021216`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A056311 (n : ℕ) : ℤ :=
  A056311.P8895079700223021216.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A056311.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A056329.P340607529314105081`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. -/
def A056329 (n : ℕ) : ℤ :=
  A056329.P340607529314105081.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. -/
def A056329.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056455.P4988112504372135428

`4*A028244(A008619(n))`
-/

namespace A056455.P4988112504372135428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A028244 (A008619 n).toNat

end

end A056455.P4988112504372135428

noncomputable section

/-- A056455: Palindromes using exactly four different symbols.

Offset 1, canonical program `A056455.P4988112504372135428`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A056455 (n : ℕ) : ℤ :=
  A056455.P4988112504372135428.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A056455.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056562.P16284294879331375478

`A101264(n+1)+A101264(A006370(n))`
-/

namespace A056562.P16284294879331375478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (n + 1) + A101264 (A006370 n).toNat

end

end A056562.P16284294879331375478

noncomputable section

/-- A056562: Number of primes which are the difference between two triangular numbers, where the smaller is the n-th triangular number.

Offset 0, canonical program `A056562.P16284294879331375478`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056562 (n : ℕ) : ℤ :=
  A056562.P16284294879331375478.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056562.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056615.P1407836327564812227

`(A099908(n+1)-1)%(n+1)²`
-/

namespace A056615.P1407836327564812227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099908 (n + 1) - 1) ((n + 1) ^ 2 : ℤ)

end

end A056615.P1407836327564812227

noncomputable section

/-- A056615: Binomial(2*n - 1, n - 1) - 1 (mod n^2).

Offset 1, canonical program `A056615.P1407836327564812227`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056615 (n : ℕ) : ℤ :=
  A056615.P1407836327564812227.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056615.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056789.P13500359394840350623

`(A068963(n+1)+1)/2`
-/

namespace A056789.P13500359394840350623
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068963 (n + 1) + 1 : ℚ) / 2

end

end A056789.P13500359394840350623

noncomputable section

/-- A056789: a(n) = Sum_{k=1..n} lcm(k,n)/gcd(k,n).

Offset 1, canonical program `A056789.P13500359394840350623`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A068963, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056789 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A056789.P13500359394840350623.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A068963, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056789.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A056835.P10679261030270007209

`lcm(a(n-1), A024619(n))` with `a(0)=1`
-/

namespace A056835.P10679261030270007209
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (A024619 n)

end

end A056835.P10679261030270007209

noncomputable section

/-- A056835: a(n) = lcm(s(1),...,s(n)) where {s(n)} = A024619 and a(0) = 1.

Offset 0, canonical program `A056835.P10679261030270007209`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 356 terms. -/
def A056835 (n : ℕ) : ℤ :=
  (A056835.P10679261030270007209.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 356 terms. -/
def A056835.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A057056.P3364605959562525484

`A057057(n+3)+1-A057055(n+3)`
-/

namespace A057056.P3364605959562525484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057057 (n + 3) + (1 - A057055 (n + 3))

end

end A057056.P3364605959562525484

noncomputable section

/-- A057056: Let R(i,j) be the rectangle with antidiagonals 1; 2,3; 4,5,6; ...; each k is an R(i(k),j(k)) and a(n) = j(C(n,3)).

Offset 3, canonical program `A057056.P3364605959562525484`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057056 (n : ℕ) : ℤ :=
  A057056.P3364605959562525484.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057056.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A057467.P16767717287509129443

`gcd(A001223(n+1), A031131(n+1))`
-/

namespace A057467.P16767717287509129443
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001223 (n + 1)) (A031131 (n + 1))

end

end A057467.P16767717287509129443

noncomputable section

/-- A057467: GCD of n-th and (n+1)-st term in the sequence of first differences between primes, A001223.

Offset 1, canonical program `A057467.P16767717287509129443`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057467 (n : ℕ) : ℤ :=
  (A057467.P16767717287509129443.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057467.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A058005.P11062398419695052549

`2*gcd(A061019(n+1), A099908(n+1))`
-/

namespace A058005.P11062398419695052549
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Int.gcd (A061019 (n + 1)) (A099908 (n + 1))

end

end A058005.P11062398419695052549

noncomputable section

/-- A058005: a(n) = gcd(2*n, binomial(2*n, n)).

Offset 1, canonical program `A058005.P11062398419695052549`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A058005 (n : ℕ) : ℤ :=
  (A058005.P11062398419695052549.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A058005.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A058957.P5083467042790607208

`lt[1, A325937(n+1)²]+1`
-/

namespace A058957.P5083467042790607208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325937 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A058957.P5083467042790607208

noncomputable section

/-- A058957: Numbers having at least two representations as b^2 - c^2 with b > c >= 0.

Offset 1, canonical program `A058957.P5083467042790607208`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A058957 (n : ℕ) : ℤ :=
  (A058957.P5083467042790607208.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A058957.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059288.P6667582842905046233

`(2*A099908(n+1))%(n+1)`
-/

namespace A059288.P6667582842905046233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A099908 (n + 1)) (n + 1 : ℤ)

end

end A059288.P6667582842905046233

noncomputable section

/-- A059288: a(n) = binomial(2*n,n) mod n.

Offset 1, canonical program `A059288.P6667582842905046233`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059288 (n : ℕ) : ℤ :=
  A059288.P6667582842905046233.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059288.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059939.P14472836675643454889

`A000523(n+2)-1`
-/

namespace A059939.P14472836675643454889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (n + 2) - 1

end

end A059939.P14472836675643454889

noncomputable section

/-- A059939: a(n) = floor(log_2(n+1) - 1).

Offset 1, canonical program `A059939.P14472836675643454889`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000523, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A059939 (n : ℕ) : ℤ :=
  A059939.P14472836675643454889.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000523, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A059939.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A059990.P17006573359253022065

`floor(A000225(n+1)/A060901(2*(n+1)))`
-/

namespace A059990.P17006573359253022065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000225 (n + 1) : ℚ) / (A060901 (2 * (n + 1)) : ℚ)⌋

end

end A059990.P17006573359253022065

noncomputable section

/-- A059990: Number of points of period n under the dual of the map x->2x on Z[1/6].

Offset 1, canonical program `A059990.P17006573359253022065`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A059990 (n : ℕ) : ℤ :=
  A059990.P17006573359253022065.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A059990.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060105.P4951254481858871071

`∑[A059602(n)+A059601(n)]-A059602(n)`
-/

namespace A060105.P4951254481858871071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059602 n + A059601 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A059602 n

end

end A060105.P4951254481858871071

noncomputable section

/-- A060105: Sixth column (m=5) of triangle A060102.

Offset 0, canonical program `A060105.P4951254481858871071`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060105 (n : ℕ) : ℤ :=
  A060105.P4951254481858871071.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060105.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060236.P15045569037773550193

`1+A080846(n+1)`
-/

namespace A060236.P15045569037773550193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A080846 (n + 1)

end

end A060236.P15045569037773550193

noncomputable section

/-- A060236: If n mod 3 = 0 then a(n) = a(n/3), otherwise a(n) = n mod 3.

Offset 1, canonical program `A060236.P15045569037773550193`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080846, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A060236 (n : ℕ) : ℤ :=
  A060236.P15045569037773550193.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080846, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A060236.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A060245.P1972279356398641003

`p?[A053782(n+1)]`
-/

namespace A060245.P1972279356398641003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A060245.P1972279356398641003

noncomputable section

/-- A060245: Primes p such that the sum of the first p composite numbers is itself prime.

Offset 1, canonical program `A060245.P1972279356398641003`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 883 terms. -/
def A060245 (n : ℕ) : ℤ :=
  A060245.P1972279356398641003.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 883 terms. -/
def A060245.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060308.P4368646436962365300

`A007917(A005843(n+1))`
-/

namespace A060308.P4368646436962365300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 (A005843 (n + 1)).toNat

end

end A060308.P4368646436962365300

noncomputable section

/-- A060308: Largest prime <= 2n.

Offset 1, canonical program `A060308.P4368646436962365300`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007917, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A060308 (n : ℕ) : ℤ :=
  A060308.P4368646436962365300.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007917, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A060308.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A060559.P18293250184439803468

`∑[(A059602(n)+A059601(n))/2]`
-/

namespace A060559.P18293250184439803468
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059602 n + A059601 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060559.P18293250184439803468

noncomputable section

/-- A060559: One half of sixth column (m=5) of triangle A060556.

Offset 0, canonical program `A060559.P18293250184439803468`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060559 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A060559.P18293250184439803468.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060559.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A060865.P587994599545776083

`A006519(A114375(n)+1)`
-/

namespace A060865.P587994599545776083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A114375 n + 1).toNat

end

end A060865.P587994599545776083

noncomputable section

/-- A060865: a(n) is the exact power of 2 that divides the n-th Fibonacci number (A000045).

Offset 1, canonical program `A060865.P587994599545776083`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060865 (n : ℕ) : ℤ :=
  A060865.P587994599545776083.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060865.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 2, canonical program `A061066.P10749500264969965576`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005097, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A061066 (n : ℕ) : ℤ :=
  A061066.P10749500264969965576.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005097, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A061066.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A061344.P3426383338707934505

`record[A008475(2*n+3)+1]`
-/

namespace A061344.P3426383338707934505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (2 * n + 3) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061344.P3426383338707934505

noncomputable section

/-- A061344: Numbers of form p^m + 1, p odd prime, m >= 1.

Offset 1, canonical program `A061344.P3426383338707934505`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9684 terms. -/
def A061344 (n : ℕ) : ℤ :=
  A061344.P3426383338707934505.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9684 terms. -/
def A061344.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A062379.P16391056778960294724

`A062378(A003557(n+1))`
-/

namespace A062379.P16391056778960294724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062378 (A003557 (n + 1)).toNat

end

end A062379.P16391056778960294724

noncomputable section

/-- A062379: n divided by largest 4th-power-free factor of n.

Offset 1, canonical program `A062379.P16391056778960294724`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062379 (n : ℕ) : ℤ :=
  A062379.P16391056778960294724.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062379.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000086.P3359847833353072450

`A065959(n+1)%9`
-/

namespace A000086.P3359847833353072450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065959 (n + 1)) 9

end

end A000086.P3359847833353072450

noncomputable section

/-- A000086: Number of solutions to x^2 - x + 1 == 0 (mod n).

Offset 1, canonical program `A000086.P3359847833353072450`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000086 (n : ℕ) : ℤ :=
  A000086.P3359847833353072450.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000086.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000260.P7752680408884611661

`gcd(A006632(n+1), A069271(n))`
-/

namespace A000260.P7752680408884611661
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006632 (n + 1)) (A069271 n)

end

end A000260.P7752680408884611661

noncomputable section

/-- A000260: Number of rooted simplicial 3-polytopes with n+3 nodes; or rooted 3-connected triangulations with 2n+2 faces; or rooted 3-connected trivalent maps with 2n+2 vertices.

Offset 0, canonical program `A000260.P7752680408884611661`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A000260 (n : ℕ) : ℤ :=
  (A000260.P7752680408884611661.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A000260.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A002173.P7206352416500240550

`A050450(n+1)-A050453(n+1)`
-/

namespace A002173.P7206352416500240550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050450 (n + 1) - A050453 (n + 1)

end

end A002173.P7206352416500240550

noncomputable section

/-- A002173: a(n) = Sum_{d|n, d == 1 mod 4} d^2 - Sum_{d|n, d == 3 mod 4} d^2.

Offset 1, canonical program `A002173.P7206352416500240550`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050450, A050453, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A002173 (n : ℕ) : ℤ :=
  A002173.P7206352416500240550.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050450, A050453, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A002173.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A002595.P16312294971091469907

`A046161(n)*A056617(n)`
-/

namespace A002595.P16312294971091469907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046161 n * A056617 n

end

end A002595.P16312294971091469907

noncomputable section

/-- A002595: Denominators of Taylor series expansion of arcsin(x). Also arises from arccos(x), arccsc(x), arcsec(x), arcsinh(x).

Offset 0, canonical program `A002595.P16312294971091469907`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A002595 (n : ℕ) : ℤ :=
  A002595.P16312294971091469907.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A002595.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003247.P11452999673818249551

`∑[A001950(n+1)-A003259(n+1)]`
-/

namespace A003247.P11452999673818249551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (n + 1) - A003259 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003247.P11452999673818249551

noncomputable section

/-- A003247: Complement of A003248.

Offset 1, canonical program `A003247.P11452999673818249551`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003247 (n : ℕ) : ℤ :=
  A003247.P11452999673818249551.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003247.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003605.P2942983274760748228

`n+A006166(n)`
-/

namespace A003605.P2942983274760748228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A006166 n

end

end A003605.P2942983274760748228

noncomputable section

/-- A003605: Unique monotonic sequence of nonnegative integers satisfying a(a(n)) = 3n.

Offset 0, canonical program `A003605.P2942983274760748228`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006166, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A003605 (n : ℕ) : ℤ :=
  A003605.P2942983274760748228.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006166, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A003605.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A003657.P3243846555462678354

`∪[A039957(n+1), A191483(n+1)]`
-/

namespace A003657.P3243846555462678354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191483 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A003657.P3243846555462678354

noncomputable section

/-- A003657: Discriminants of imaginary quadratic fields, negated.

Offset 1, canonical program `A003657.P3243846555462678354`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003657 (n : ℕ) : ℤ :=
  (A003657.P3243846555462678354.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003657.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003658.P12929696761515540924

`eq[1, A290098(n+1)]+1`
-/

namespace A003658.P12929696761515540924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290098 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A003658.P12929696761515540924

noncomputable section

/-- A003658: Fundamental discriminants of real quadratic fields; indices of primitive positive Dirichlet L-series.

Offset 1, canonical program `A003658.P12929696761515540924`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003658 (n : ℕ) : ℤ :=
  (A003658.P12929696761515540924.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003658.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A007491.P11939340284699720830

`A053000(n+1)+(n+1)²`
-/

namespace A007491.P11939340284699720830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053000 (n + 1) + ((n + 1) ^ 2 : ℤ)

end

end A007491.P11939340284699720830

noncomputable section

/-- A007491: Smallest prime > n^2.

Offset 1, canonical program `A007491.P11939340284699720830`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007491 (n : ℕ) : ℤ :=
  A007491.P11939340284699720830.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007491.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A011262.P4477044997236671341

`A007913(n+1)²*A003557(n+1)`
-/

namespace A011262.P4477044997236671341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1) ^ 2 * A003557 (n + 1)

end

end A011262.P4477044997236671341

noncomputable section

/-- A011262: In the prime factorization of n, increment odd powers and decrement even powers (multiplicative and self-inverse).

Offset 1, canonical program `A011262.P4477044997236671341`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A011262 (n : ℕ) : ℤ :=
  A011262.P4477044997236671341.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A011262.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A014491.P2932299001146374730

`gcd(n+1, A082495(n+1))`
-/

namespace A014491.P2932299001146374730
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A082495 (n + 1))

end

end A014491.P2932299001146374730

noncomputable section

/-- A014491: a(n) = gcd(n, 2^n - 1).

Offset 1, canonical program `A014491.P2932299001146374730`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014491 (n : ℕ) : ℤ :=
  (A014491.P2932299001146374730.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014491.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014613.P1114013819310587080

`∪[A030514(n+1), A307342(n+1)]`
-/

namespace A014613.P1114013819310587080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030514 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A014613.P1114013819310587080

noncomputable section

/-- A014613: Numbers that are products of 4 primes.

Offset 1, canonical program `A014613.P1114013819310587080`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014613 (n : ℕ) : ℤ :=
  (A014613.P1114013819310587080.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014613.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A015921.P682807466615567953

`record[gcd(A082494(n+1)+4, n+1)]`
-/

namespace A015921.P682807466615567953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A082494 (n + 1) + 4) (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015921.P682807466615567953

noncomputable section

/-- A015921: Positive integers n such that 2^n == 4 (mod n).

Offset 1, canonical program `A015921.P682807466615567953`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 710 terms. -/
def A015921 (n : ℕ) : ℤ :=
  (A015921.P682807466615567953.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 710 terms. -/
def A015921.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A015922.P5149582015775878103

`record[gcd(n+1, A082494(n+1)+8)]`
-/

namespace A015922.P5149582015775878103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A082494 (n + 1) + 8)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015922.P5149582015775878103

noncomputable section

/-- A015922: Numbers k such that 2^k == 8 (mod k).

Offset 1, canonical program `A015922.P5149582015775878103`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 513 terms. -/
def A015922 (n : ℕ) : ℤ :=
  (A015922.P5149582015775878103.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 513 terms. -/
def A015922.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A017666.P16572893466817104564

`A388283(n+1)-A390582(n+1)`
-/

namespace A017666.P16572893466817104564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388283 (n + 1) - A390582 (n + 1)

end

end A017666.P16572893466817104564

noncomputable section

/-- A017666: Denominator of sum of reciprocals of divisors of n.

Offset 1, canonical program `A017666.P16572893466817104564`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A017666 (n : ℕ) : ℤ :=
  A017666.P16572893466817104564.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A017666.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018120.P6271314406010207698

`floor(sqrt(A018138(n)))`
-/

namespace A018120.P6271314406010207698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A018138 n)

end

end A018120.P6271314406010207698

noncomputable section

/-- A018120: Powers of fifth root of 3 rounded down.

Offset 0, canonical program `A018120.P6271314406010207698`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 524 terms. -/
def A018120 (n : ℕ) : ℤ :=
  A018120.P6271314406010207698.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 524 terms. -/
def A018120.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A023250.P13940782783570891803

`p?[A192638(n+1)]`
-/

namespace A023250.P13940782783570891803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192638 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023250.P13940782783570891803

noncomputable section

/-- A023250: Primes that remain prime through 2 iterations of function f(x) = 4x + 3.

Offset 1, canonical program `A023250.P13940782783570891803`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1430 terms. -/
def A023250 (n : ℕ) : ℤ :=
  A023250.P13940782783570891803.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1430 terms. -/
def A023250.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A024361.P1146025692209475519

`A004526(abs(A317528(n+1)))`
-/

namespace A024361.P1146025692209475519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 |A317528 (n + 1)|.toNat

end

end A024361.P1146025692209475519

noncomputable section

/-- A024361: Number of primitive Pythagorean triangles with leg n.

Offset 1, canonical program `A024361.P1146025692209475519`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024361 (n : ℕ) : ℤ :=
  A024361.P1146025692209475519.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024361.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024459.P3562080791943648036

`2*A025078(n+1)-A024458(n+1)`
-/

namespace A024459.P3562080791943648036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025078 (n + 1) - A024458 (n + 1)

end

end A024459.P3562080791943648036

noncomputable section

/-- A024459: a(n) = s(1)*t(n) + s(2)*t(n-1) + ... + s(k)*t(n+1-k), where k = [ (n+1)/2 ], s = (Fibonacci numbers), t = (Lucas numbers).

Offset 1, canonical program `A024459.P3562080791943648036`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 467 terms. -/
def A024459 (n : ℕ) : ℤ :=
  A024459.P3562080791943648036.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 467 terms. -/
def A024459.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A026490.P17991794138142751536

`Δ[A284389(n+1)+and(1, A014689(n+1))]`
-/

namespace A026490.P17991794138142751536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284389 (n + 1) + Int.land 1 (A014689 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026490.P17991794138142751536

noncomputable section

/-- A026490: Length of n-th run of identical symbols in A026465.

Offset 1, canonical program `A026490.P17991794138142751536`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A026490 (n : ℕ) : ℤ :=
  A026490.P17991794138142751536.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A026490.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A031359.P2951281356129990427

`A001615(2*n+1)`
-/

namespace A031359.P2951281356129990427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (2 * n + 1)

end

end A031359.P2951281356129990427

noncomputable section

/-- A031359: Bisection of A001615.

Offset 1, canonical program `A031359.P2951281356129990427`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001615, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A031359 (n : ℕ) : ℤ :=
  A031359.P2951281356129990427.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001615, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A031359.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A033942.P4752248338100259006

`∪[A014612(n+1), A033987(n+1)]`
-/

namespace A033942.P4752248338100259006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033987 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A033942.P4752248338100259006

noncomputable section

/-- A033942: Positive integers with at least 3 prime factors (counted with multiplicity).

Offset 1, canonical program `A033942.P4752248338100259006`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033942 (n : ℕ) : ℤ :=
  (A033942.P4752248338100259006.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033942.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A034448.P17017727775393200719

`A064971(n+1)/(n+1)`
-/

namespace A034448.P17017727775393200719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064971 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A034448.P17017727775393200719

noncomputable section

/-- A034448: usigma(n) = sum of unitary divisors of n (divisors d such that gcd(d, n/d)=1); also called UnitarySigma(n).

Offset 1, canonical program `A034448.P17017727775393200719`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034448 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A034448.P17017727775393200719.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034448.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035292.P15683041574898853470

`A010684(n)*A045771(n+1)`
-/

namespace A035292.P15683041574898853470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 n * A045771 (n + 1)

end

end A035292.P15683041574898853470

noncomputable section

/-- A035292: Number of similar sublattices of Z^4 of index n^2.

Offset 1, canonical program `A035292.P15683041574898853470`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035292 (n : ℕ) : ℤ :=
  A035292.P15683041574898853470.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035292.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035928.P9372563706420647823

`A036044(n+1)+A253608(n+1)-A035327(n+1)`
-/

namespace A035928.P9372563706420647823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036044 (n + 1) + (A253608 (n + 1) - A035327 (n + 1))

end

end A035928.P9372563706420647823

noncomputable section

/-- A035928: Numbers n such that BCR(n) = n, where BCR = binary-complement-and-reverse = take one's complement then reverse bit order.

Offset 1, canonical program `A035928.P9372563706420647823`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035928 (n : ℕ) : ℤ :=
  A035928.P9372563706420647823.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035928.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036345.P12048830508452336379

`∩[2*A036349(n+1), A036844(n+1)]`
-/

namespace A036345.P12048830508452336379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A036349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036844 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036345.P12048830508452336379

noncomputable section

/-- A036345: Divisible by its 'even' sum of prime factors (counted with multiplicity).

Offset 1, canonical program `A036345.P12048830508452336379`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 339 terms. -/
def A036345 (n : ℕ) : ℤ :=
  (A036345.P12048830508452336379.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 339 terms. -/
def A036345.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036789.P17804873214700713588

`A022821(n+2)-(n+1)`
-/

namespace A036789.P17804873214700713588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022821 (n + 2) - (n + 1 : ℤ)

end

end A036789.P17804873214700713588

noncomputable section

/-- A036789: a(n) = Sum_{i=0..n} floor((2*i + 2)/(n - i + 1)).

Offset 0, canonical program `A036789.P17804873214700713588`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036789 (n : ℕ) : ℤ :=
  A036789.P17804873214700713588.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036789.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A037449.P5379136438379684916

`lcm(A014709(n)², A302138(A007913(n+1)))`
-/

namespace A037449.P5379136438379684916
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A014709 n ^ 2) (A302138 (A007913 (n + 1)).toNat)

end

end A037449.P5379136438379684916

noncomputable section

/-- A037449: Discriminant of quadratic field Q(sqrt(n)).

Offset 1, canonical program `A037449.P5379136438379684916`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037449 (n : ℕ) : ℤ :=
  (A037449.P5379136438379684916.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037449.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A038387.P4721270746372343696

`gcd(2*A007913(2*(n+1)), A000578(n+1))`
-/

namespace A038387.P4721270746372343696
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A007913 (2 * (n + 1))) (A000578 (n + 1))

end

end A038387.P4721270746372343696

noncomputable section

/-- A038387: a(n) is the smallest number such that the arithmetic mean (A) and geometric mean (G) of n and a(n) are both integers.

Offset 1, canonical program `A038387.P4721270746372343696`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038387 (n : ℕ) : ℤ :=
  (A038387.P4721270746372343696.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038387.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A038618.P11020339817933402000

`p?[A195943(n+1)]`
-/

namespace A038618.P11020339817933402000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195943 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038618.P11020339817933402000

noncomputable section

/-- A038618: Primes not containing the digit '0'.

Offset 1, canonical program `A038618.P11020339817933402000`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9905 terms. -/
def A038618 (n : ℕ) : ℤ :=
  A038618.P11020339817933402000.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9905 terms. -/
def A038618.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A043638.P8660108337525184615

`eq[2, A055640(A098488(n))]`
-/

namespace A043638.P8660108337525184615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (A098488 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043638.P8660108337525184615

noncomputable section

/-- A043638: Numbers whose base-10 representation has exactly 2 runs.

Offset 1, canonical program `A043638.P8660108337525184615`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 486 terms. -/
def A043638 (n : ℕ) : ℤ :=
  (A043638.P8660108337525184615.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 486 terms. -/
def A043638.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043639.P17311220086423612145

`eq[1, A055640(A098488(n))-2]`
-/

namespace A043639.P17311220086423612145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (A098488 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043639.P17311220086423612145

noncomputable section

/-- A043639: Numbers whose base-10 representation has exactly 3 runs.

Offset 1, canonical program `A043639.P17311220086423612145`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2916 terms. -/
def A043639 (n : ℕ) : ℤ :=
  (A043639.P17311220086423612145.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2916 terms. -/
def A043639.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A046072.P3486266862875082890

`∏{e}[A060594(n+1), #]`
-/

namespace A046072.P3486266862875082890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060594 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A046072.P3486266862875082890

noncomputable section

/-- A046072: Decompose multiplicative group of integers modulo n as a product of cyclic groups C_{k_1} x C_{k_2} x ... x C_{k_m}, where k_i divides k_j for i < j; then a(n) = m.

Offset 1, canonical program `A046072.P3486266862875082890`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046072 (n : ℕ) : ℤ :=
  (A046072.P3486266862875082890.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046072.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046522.P10567357501966836050

`A005843(A000196(n+1))-(A334954(n+1)-1)`
-/

namespace A046522.P10567357501966836050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A000196 (n + 1)).toNat - (A334954 (n + 1) - 1)

end

end A046522.P10567357501966836050

noncomputable section

/-- A046522: a(n) = 2*floor(sqrt(n)) - d(n), where d(n) is the number of divisors of n (A000005).

Offset 1, canonical program `A046522.P10567357501966836050`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046522 (n : ℕ) : ℤ :=
  A046522.P10567357501966836050.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046522.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A049457.P8929492737683068004

`A007913((n+5)*A007913(n+1))`
-/

namespace A049457.P8929492737683068004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 ((n + 5 : ℤ) * A007913 (n + 1)).toNat

end

end A049457.P8929492737683068004

noncomputable section

/-- A049457: Least positive integer k such that the number having periodic continued fraction [ 1,m,1,m,1,m,... ] is of form (a+b*sqrt(k))/c, where a,b,c are positive integers.

Offset 1, canonical program `A049457.P8929492737683068004`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 316 terms. -/
def A049457 (n : ℕ) : ℤ :=
  A049457.P8929492737683068004.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 316 terms. -/
def A049457.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049692.P17847140543767200427

`lt[A286628(n+2), 2]+2`
-/

namespace A049692.P17847140543767200427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286628 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A049692.P17847140543767200427

noncomputable section

/-- A049692: Numbers k such that the square of the number of divisors of k does not divide the sum of the divisors of k.

Offset 1, canonical program `A049692.P17847140543767200427`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7345 terms. -/
def A049692 (n : ℕ) : ℤ :=
  (A049692.P17847140543767200427.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7345 terms. -/
def A049692.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050165.P1175507688080023375

`A008315(A061885(n))`
-/

namespace A050165.P1175507688080023375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008315 (A061885 n).toNat

end

end A050165.P1175507688080023375

noncomputable section

/-- A050165: Triangle read by rows: T(n,k) = M(2n+1,k,-1), 0 <= k <= n, n >= 0, array M as in A050144.

Offset 0, canonical program `A050165.P1175507688080023375`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A050165 (n : ℕ) : ℤ :=
  A050165.P1175507688080023375.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A050165.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050270.P7432655952878419687

`comp[∑[A060594(n+1)]-1]-(n-1)`
-/

namespace A050270.P7432655952878419687
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060594 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - ((n : ℤ) - 1)

end

end A050270.P7432655952878419687

noncomputable section

/-- A050270: Largest value b for Diophantine 1-doubles (a,b) ordered by smallest b.

Offset 1, canonical program `A050270.P7432655952878419687`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050270 (n : ℕ) : ℤ :=
  A050270.P7432655952878419687.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050270.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050376.P5652592925068507923

`∪[A000040(n+1), A084400(n+2)]`
-/

namespace A050376.P5652592925068507923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084400 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A050376.P5652592925068507923

noncomputable section

/-- A050376: "Fermi-Dirac primes": numbers of the form p^(2^k) where p is prime and k >= 0.

Offset 1, canonical program `A050376.P5652592925068507923`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050376 (n : ℕ) : ℤ :=
  (A050376.P5652592925068507923.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050376.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A051831.P13276925425429206331

`A236395(n+1)%A000040(n+1)`
-/

namespace A051831.P13276925425429206331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A236395 (n + 1)) (A000040 (n + 1))

end

end A051831.P13276925425429206331

noncomputable section

/-- A051831: a(n) = Fibonacci(prime(n)) mod prime(n), where prime(n) is the n-th prime.

Offset 1, canonical program `A051831.P13276925425429206331`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051831 (n : ℕ) : ℤ :=
  A051831.P13276925425429206331.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051831.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053091.P8742769929826108326

`A239053(n+1)/2-A363291(n+1)`
-/

namespace A053091.P8742769929826108326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239053 (n + 1) : ℚ) / 2 - (A363291 (n + 1) : ℚ)

end

end A053091.P8742769929826108326

noncomputable section

/-- A053091: Number of F^3-convex polyominoes on the honeycomb lattice by number of cells.

Offset 1, canonical program `A053091.P8742769929826108326`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053091 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A053091.P8742769929826108326.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053091.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053858.P11786584042857971729

`2*A056913(n+2)`
-/

namespace A053858.P11786584042857971729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056913 (n + 2)

end

end A053858.P11786584042857971729

noncomputable section

/-- A053858: Squarefree even composite numbers with an odd number of prime factors.

Offset 1, canonical program `A053858.P11786584042857971729`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A053858 (n : ℕ) : ℤ :=
  A053858.P11786584042857971729.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A053858.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A055040.P4027519978801195908

`eq[6, dr(A007913(n+1))]+1`
-/

namespace A055040.P4027519978801195908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007913 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A055040.P4027519978801195908

noncomputable section

/-- A055040: Numbers of the form 3^(2i+1)*(3*j+2).

Offset 1, canonical program `A055040.P4027519978801195908`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6248 terms. -/
def A055040 (n : ℕ) : ℤ :=
  (A055040.P4027519978801195908.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6248 terms. -/
def A055040.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055050.P594376311552955695

`eq[3, and(3, A007913(n+1))]+1`
-/

namespace A055050.P594376311552955695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A007913 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A055050.P594376311552955695

noncomputable section

/-- A055050: Numbers of the form 4^i*(8*j+3) or 4^i*(8*j+7).

Offset 1, canonical program `A055050.P594376311552955695`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055050 (n : ℕ) : ℤ :=
  (A055050.P594376311552955695.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055050.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A055229.P9767021454256854735

`gcd(∑{p}[n+1, (n+1)/#], A007913(n+1))`
-/

namespace A055229.P9767021454256854735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway (∑ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))) (A007913 (n + 1))

end

end A055229.P9767021454256854735

noncomputable section

/-- A055229: Greatest common divisor of largest square dividing n and squarefree part of n.

Offset 1, canonical program `A055229.P9767021454256854735`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055229 (n : ℕ) : ℤ :=
  (A055229.P9767021454256854735.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055229.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055491.P10975517249915323208

`A007913(n+1)²`
-/

namespace A055491.P10975517249915323208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1) ^ 2

end

end A055491.P10975517249915323208

noncomputable section

/-- A055491: Smallest square divisible by n divided by largest square which divides n.

Offset 1, canonical program `A055491.P10975517249915323208`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007913, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055491 (n : ℕ) : ℤ :=
  A055491.P10975517249915323208.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007913, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055491.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A056839.P9485991888657918283

`A007913(A003418(n))`
-/

namespace A056839.P9485991888657918283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A003418 n).toNat

end

end A056839.P9485991888657918283

noncomputable section

/-- A056839: Squarefree part of lcm(1,...,n).

Offset 0, canonical program `A056839.P9485991888657918283`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007913, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056839 (n : ℕ) : ℤ :=
  A056839.P9485991888657918283.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007913, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056839.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A059591.P11025850722583355818

`A007913(n²+1)`
-/

namespace A059591.P11025850722583355818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n ^ 2 + 1)

end

end A059591.P11025850722583355818

noncomputable section

/-- A059591: Squarefree part of n^2+1.

Offset 0, canonical program `A059591.P11025850722583355818`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007913, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A059591 (n : ℕ) : ℤ :=
  A059591.P11025850722583355818.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007913, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A059591.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A059708.P17038311625249914196

`eq[0, A374097(n)]`
-/

namespace A059708.P17038311625249914196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374097 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A059708.P17038311625249914196

noncomputable section

/-- A059708: Numbers k such that all digits have same parity.

Offset 1, canonical program `A059708.P17038311625249914196`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1405 terms. -/
def A059708 (n : ℕ) : ℤ :=
  (A059708.P17038311625249914196.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1405 terms. -/
def A059708.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A059788.P10039921731127217333

`A065091(A020900(n+1)-1)`
-/

namespace A059788.P10039921731127217333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A020900 (n + 1) - 1).toNat

end

end A059788.P10039921731127217333

noncomputable section

/-- A059788: a(n) = largest prime < 2*prime(n).

Offset 1, canonical program `A059788.P10039921731127217333`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5353 terms. -/
def A059788 (n : ℕ) : ℤ :=
  A059788.P10039921731127217333.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5353 terms. -/
def A059788.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A061496.P7102702704020189861

`gcd(A005101(n+1), A125115(n+1))`
-/

namespace A061496.P7102702704020189861
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005101 (n + 1)) (A125115 (n + 1))

end

end A061496.P7102702704020189861

noncomputable section

/-- A061496: a(n) = gcd(abundant(n), abundant(n+1)) where abundant(n) is the n-th abundant number.

Offset 1, canonical program `A061496.P7102702704020189861`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061496 (n : ℕ) : ℤ :=
  (A061496.P7102702704020189861.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061496.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A062372.P14434391431021769466

`record[(n+1)*(1-A070923(A051801(n+1)))]`
-/

namespace A062372.P14434391431021769466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (1 - A070923 (A051801 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062372.P14434391431021769466

noncomputable section

/-- A062372: Numbers the product of whose nonzero digits is a cube.

Offset 1, canonical program `A062372.P14434391431021769466`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 525 terms. -/
def A062372 (n : ℕ) : ℤ :=
  A062372.P14434391431021769466.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 525 terms. -/
def A062372.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A002734.P9673155278749138376

`A007913(comp[n²])`
-/

namespace A002734.P9673155278749138376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A002734.P9673155278749138376

noncomputable section

/-- A002734: Remove squares!

Offset 1, canonical program `A002734.P9673155278749138376`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A002734 (n : ℕ) : ℤ :=
  A002734.P9673155278749138376.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A002734.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006532.P9061832762431259574

`lt[A007913(A000203(n+1)), 2]+1`
-/

namespace A006532.P9061832762431259574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A000203 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A006532.P9061832762431259574

noncomputable section

/-- A006532: Numbers whose sum of divisors is a square.

Offset 1, canonical program `A006532.P9061832762431259574`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 564 terms. -/
def A006532 (n : ℕ) : ℤ :=
  (A006532.P9061832762431259574.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 564 terms. -/
def A006532.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A020940.P2412854877094668045

`A038801(A000040(n+1))`
-/

namespace A020940.P2412854877094668045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038801 (A000040 (n + 1)).toNat

end

end A020940.P2412854877094668045

noncomputable section

/-- A020940: Greatest k such that (k-th prime) < (10 times n-th prime).

Offset 1, canonical program `A020940.P2412854877094668045`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A020940 (n : ℕ) : ℤ :=
  A020940.P2412854877094668045.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A020940.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A037904.P3734509193850289562

`A054055(n+1)-A054054(n+1)`
-/

namespace A037904.P3734509193850289562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (n + 1) - A054054 (n + 1)

end

end A037904.P3734509193850289562

noncomputable section

/-- A037904: Greatest digit of n - least digit of n.

Offset 1, canonical program `A037904.P3734509193850289562`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037904 (n : ℕ) : ℤ :=
  A037904.P3734509193850289562.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037904.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A048898.P8648144042409933418

`5^n-A048899(n)-A000007(n)`
-/

namespace A048898.P8648144042409933418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℤ) - A048899 n - A000007 n

end

end A048898.P8648144042409933418

noncomputable section

/-- A048898: One of the two successive approximations up to 5^n for the 5-adic integer sqrt(-1).

Offset 0, canonical program `A048898.P8648144042409933418`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A048898 (n : ℕ) : ℤ :=
  A048898.P8648144042409933418.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A048898.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A014198.P2354480518814049901

`a(n-1)+2*A105673(n)` with `a(0)=0`
-/

namespace A014198.P2354480518814049901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + 2 * A105673 n

end

end A014198.P2354480518814049901

noncomputable section

/-- A014198: Number of integer solutions to x^2 + y^2 <= n excluding (0,0).

Offset 0, canonical program `A014198.P2354480518814049901`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014198 (n : ℕ) : ℤ :=
  A014198.P2354480518814049901.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014198.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A024997.P7212347742338721382

`Δ[A025178(n+2)]`
-/

namespace A024997.P7212347742338721382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025178 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A024997.P7212347742338721382

noncomputable section

/-- A024997: a(n) = number of (s(0), s(1), ..., s(n)) such that every s(i) is an integer, s(0) = 0 = s(n), |s(i) - s(i-1)| = 1 for i = 1,2; |s(i) - s(i-1)| <= 1 for i >= 3. Also a(n) = T(n,n), where T is the array defined in A024996.

Offset 3, canonical program `A024997.P7212347742338721382`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A024997 (n : ℕ) : ℤ :=
  A024997.P7212347742338721382.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A024997.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A030140.P14038627342543171841

`A000037(n+1)²`
-/

namespace A030140.P14038627342543171841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (n + 1) ^ 2

end

end A030140.P14038627342543171841

noncomputable section

/-- A030140: The nonsquares squared.

Offset 1, canonical program `A030140.P14038627342543171841`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000037, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A030140 (n : ℕ) : ℤ :=
  A030140.P14038627342543171841.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000037, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A030140.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A033859.P9143334773756198897

`eq[2^A001221(n+1), A033831(n+1)]+1`
-/

namespace A033859.P9143334773756198897
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A001221 (n + 1) : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033831 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n + 1

end

end A033859.P9143334773756198897

noncomputable section

/-- A033859: Numbers k such that A033831(k) = A034444(k) where A034444(k) = number of unitary divisors of k.

Offset 1, canonical program `A033859.P9143334773756198897`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 770 terms. -/
def A033859 (n : ℕ) : ℤ :=
  (A033859.P9143334773756198897.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 770 terms. -/
def A033859.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A045932.P17507093528048832173

`A006073(eq[1, Δ[A006073(n+1)]]+1)`
-/

namespace A045932.P17507093528048832173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006073 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A045932.P17507093528048832173

noncomputable section

/-- A045932: Numbers n such that n through n+3 are divisible by the same number of distinct primes.

Offset 1, canonical program `A045932.P17507093528048832173`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3037 terms. -/
def A045932 (n : ℕ) : ℤ :=
  A045932.P17507093528048832173.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3037 terms. -/
def A045932.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046110.P1368238171005837857

`4*A046080(2*n+1)+2`
-/

namespace A046110.P1368238171005837857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A046080 (2 * n + 1) + 2

end

end A046110.P1368238171005837857

noncomputable section

/-- A046110: Number of lattice points on circumference of a circle of radius (2n+1)/2 with center at (1/2,0).

Offset 0, canonical program `A046110.P1368238171005837857`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046080, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A046110 (n : ℕ) : ℤ :=
  A046110.P1368238171005837857.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046080, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A046110.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A049084.P10934933317972537770`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A010051, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A049084 (n : ℕ) : ℤ :=
  A049084.P10934933317972537770.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A010051, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A049084.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A049510.P1870219258811543072

`A000720(A030433(n+1)+1)`
-/

namespace A049510.P1870219258811543072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A030433 (n + 1) + 1).toNat

end

end A049510.P1870219258811543072

noncomputable section

/-- A049510: Numbers k such that prime(k) == 9 (mod 10).

Offset 1, canonical program `A049510.P1870219258811543072`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A030433, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A049510 (n : ℕ) : ℤ :=
  A049510.P1870219258811543072.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A030433, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A049510.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A055670.P1490265546806468134

`A176628(n+1)-n`
-/

namespace A055670.P1490265546806468134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176628 (n + 1) - (n : ℤ)

end

end A055670.P1490265546806468134

noncomputable section

/-- A055670: a(n) = prime(n) - (-1)^prime(n).

Offset 1, canonical program `A055670.P1490265546806468134`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055670 (n : ℕ) : ℤ :=
  A055670.P1490265546806468134.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055670.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A056675.P16805316149492235292`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048656, A056672, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A056675 (n : ℕ) : ℤ :=
  A056675.P16805316149492235292.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048656, A056672, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A056675.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 0, canonical program `A061320.P9216718962236497877`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061320 (n : ℕ) : ℤ :=
  A061320.P9216718962236497877.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061320.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000091.P2909649729475731760

`A034444(n+1)*A097325(A253629(n+1))`
-/

namespace A000091.P2909649729475731760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) * A097325 (A253629 (n + 1)).toNat

end

end A000091.P2909649729475731760

noncomputable section

/-- A000091: Multiplicative with a(2^e) = 2 for k >= 1; a(3) = 2, a(3^e) = 0 for k >= 2; a(p^e) = 0 if p > 3 and p == -1 (mod 3); a(p^e) = 2 if p > 3 and p == 1 (mod 3).

Offset 1, canonical program `A000091.P2909649729475731760`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000091 (n : ℕ) : ℤ :=
  A000091.P2909649729475731760.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000091.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 0, canonical program `A000989.P3200241698253008454`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007949, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A000989 (n : ℕ) : ℤ :=
  A000989.P3200241698253008454.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007949, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A000989.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A001227.P15314215467539815540

`A099777(n+1)-A000005(n+1)`
-/

namespace A001227.P15314215467539815540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099777 (n + 1) - A000005 (n + 1)

end

end A001227.P15314215467539815540

noncomputable section

/-- A001227: Number of odd divisors of n.

Offset 1, canonical program `A001227.P15314215467539815540`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A099777, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A001227 (n : ℕ) : ℤ :=
  A001227.P15314215467539815540.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A099777, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A001227.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A002325.P14825616568919519912

`A188169(n+1)+A188170(n+1)-A188171(n+1)-A188172(n+1)`
-/

namespace A002325.P14825616568919519912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188169 (n + 1) + A188170 (n + 1) - A188171 (n + 1) - A188172 (n + 1)

end

end A002325.P14825616568919519912

noncomputable section

/-- A002325: Glaisher's J numbers.

Offset 1, canonical program `A002325.P14825616568919519912`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A188169, A188170, A188171, A188172, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A002325 (n : ℕ) : ℤ :=
  A002325.P14825616568919519912.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A188169, A188170, A188171, A188172, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A002325.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A003641.P13216667118483783135

`2^A319660(n+1)`
-/

namespace A003641.P13216667118483783135
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A319660 (n + 1) : ℤ)

end

end A003641.P13216667118483783135

noncomputable section

/-- A003641: Number of genera of imaginary quadratic field with discriminant -k, k = A039957(n).

Offset 1, canonical program `A003641.P13216667118483783135`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003641 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A003641.P13216667118483783135.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003641.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003642.P14855717082008427332

`A000005(lcm(2, A089269(n+1))/2)`
-/

namespace A003642.P14855717082008427332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((Int.lcm 2 (A089269 (n + 1)) : ℚ) / 2)).toNat

end

end A003642.P14855717082008427332

noncomputable section

/-- A003642: Number of genera of imaginary quadratic field with discriminant -k, k = A191483(n).

Offset 1, canonical program `A003642.P14855717082008427332`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003642 (n : ℕ) : ℤ :=
  A003642.P14855717082008427332.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003642.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003958.P196685604458257440

`abs(A125131(n+1))`
-/

namespace A003958.P196685604458257440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A125131 (n + 1)|

end

end A003958.P196685604458257440

noncomputable section

/-- A003958: If n = Product p(k)^e(k) then a(n) = Product (p(k)-1)^e(k).

Offset 1, canonical program `A003958.P196685604458257440`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A125131, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A003958 (n : ℕ) : ℤ :=
  A003958.P196685604458257440.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A125131, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A003958.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A004085.P11876971383816228899

`A007953(A000010(n+1))`
-/

namespace A004085.P11876971383816228899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A000010 (n + 1)).toNat

end

end A004085.P11876971383816228899

noncomputable section

/-- A004085: Sum of digits of Euler totient function of n.

Offset 1, canonical program `A004085.P11876971383816228899`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A004085 (n : ℕ) : ℤ :=
  A004085.P11876971383816228899.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A004085.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A005237.P9029700576997496255

`filter[A140128(n+1), A361022(#)]`
-/

namespace A005237.P9029700576997496255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140128 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361022 (f1 j).toNat = 1) n)

end

end A005237.P9029700576997496255

noncomputable section

/-- A005237: Numbers k such that k and k+1 have the same number of divisors.

Offset 1, canonical program `A005237.P9029700576997496255`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6947 terms. -/
def A005237 (n : ℕ) : ℤ :=
  A005237.P9029700576997496255.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6947 terms. -/
def A005237.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006590.P2074768882159636940

`a(n-1)+A000005(n)+1` with `a(0)=1`
-/

namespace A006590.P2074768882159636940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A000005 n + 1

end

end A006590.P2074768882159636940

noncomputable section

/-- A006590: a(n) = Sum_{k=1..n} ceiling(n/k).

Offset 1, canonical program `A006590.P2074768882159636940`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A006590 (n : ℕ) : ℤ :=
  A006590.P2074768882159636940.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A006590.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A007434.P3432859153295839493

`A000010(n+1)*A001615(n+1)`
-/

namespace A007434.P3432859153295839493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A001615 (n + 1)

end

end A007434.P3432859153295839493

noncomputable section

/-- A007434: Jordan function J_2(n) (a generalization of phi(n)).

Offset 1, canonical program `A007434.P3432859153295839493`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A001615, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A007434 (n : ℕ) : ℤ :=
  A007434.P3432859153295839493.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A001615, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A007434.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A007503.P13484425310514315912

`A000005(n+1)+A000203(n+1)`
-/

namespace A007503.P13484425310514315912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + A000203 (n + 1)

end

end A007503.P13484425310514315912

noncomputable section

/-- A007503: Number of subgroups of dihedral group: sigma(n) + d(n).

Offset 1, canonical program `A007503.P13484425310514315912`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A007503 (n : ℕ) : ℤ :=
  A007503.P13484425310514315912.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A007503.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A007517.P418508232218383814

`A000010(n+1)*A001065(n+1)`
-/

namespace A007517.P418508232218383814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A001065 (n + 1)

end

end A007517.P418508232218383814

noncomputable section

/-- A007517: a(n) = phi(n) * (sigma(n) - n).

Offset 1, canonical program `A007517.P418508232218383814`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A001065, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A007517 (n : ℕ) : ℤ :=
  A007517.P418508232218383814.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A001065, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A007517.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A007617.P12649734713111644015

`comp[A000010(n+1)-1]+1`
-/

namespace A007617.P12649734713111644015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A007617.P12649734713111644015

noncomputable section

/-- A007617: Values not in range of Euler phi function.

Offset 1, canonical program `A007617.P12649734713111644015`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007617 (n : ℕ) : ℤ :=
  (A007617.P12649734713111644015.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007617.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008331.P15472009837498515601

`A000010(A008864(n+1))`
-/

namespace A008331.P15472009837498515601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A008864 (n + 1)).toNat

end

end A008331.P15472009837498515601

noncomputable section

/-- A008331: a(n) = phi(prime(n)+1).

Offset 1, canonical program `A008331.P15472009837498515601`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9592 terms. -/
def A008331 (n : ℕ) : ℤ :=
  A008331.P15472009837498515601.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9592 terms. -/
def A008331.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A009177.P7792570887173754101

`lt[1, A046080(n+1)]+1`
-/

namespace A009177.P7792570887173754101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046080 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A009177.P7792570887173754101

noncomputable section

/-- A009177: Numbers that are the hypotenuses of more than one Pythagorean triangle.

Offset 1, canonical program `A009177.P7792570887173754101`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3975 terms. -/
def A009177 (n : ℕ) : ℤ :=
  (A009177.P7792570887173754101.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3975 terms. -/
def A009177.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A009262.P968093419327824865

`A000010(n+1)*A109395(n+1)`
-/

namespace A009262.P968093419327824865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A109395 (n + 1)

end

end A009262.P968093419327824865

noncomputable section

/-- A009262: a(n) = lcm(n, phi(n)).

Offset 1, canonical program `A009262.P968093419327824865`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A109395, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A009262 (n : ℕ) : ℤ :=
  A009262.P968093419327824865.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A109395, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A009262.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A015761.P5986724967069183809

`record[gcd(n+1, A001158(n+1)%A000010(n+1))]`
-/

namespace A015761.P5986724967069183809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (Int.tmod (A001158 (n + 1)) (A000010 (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015761.P5986724967069183809

noncomputable section

/-- A015761: Numbers k such that phi(k) | sigma_3(k).

Offset 1, canonical program `A015761.P5986724967069183809`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 266 terms. -/
def A015761 (n : ℕ) : ℤ :=
  (A015761.P5986724967069183809.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 266 terms. -/
def A015761.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A015763.P16867863019437908684

`lt[A001160(n+1)%A000010(n+1), 1]+1`
-/

namespace A015763.P16867863019437908684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001160 (n + 1)) (A000010 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A015763.P16867863019437908684

noncomputable section

/-- A015763: Numbers k such that phi(k) divides sigma_5(k).

Offset 1, canonical program `A015763.P16867863019437908684`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 195 terms. -/
def A015763 (n : ℕ) : ℤ :=
  (A015763.P16867863019437908684.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 195 terms. -/
def A015763.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A015814.P2308272231266712354

`record[gcd(n+1, A000203(n+1)%A000010(n+2))]`
-/

namespace A015814.P2308272231266712354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (Int.tmod (A000203 (n + 1)) (A000010 (n + 2)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015814.P2308272231266712354

noncomputable section

/-- A015814: Numbers k such that phi(k + 1) divides sigma(k).

Offset 1, canonical program `A015814.P2308272231266712354`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 311 terms. -/
def A015814 (n : ℕ) : ℤ :=
  (A015814.P2308272231266712354.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 311 terms. -/
def A015814.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A015820.P11788765630809446508

`lt[A000203(n+1)%A000010(n+5), 1]+1`
-/

namespace A015820.P11788765630809446508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (n + 1)) (A000010 (n + 5))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A015820.P11788765630809446508

noncomputable section

/-- A015820: Numbers k such that phi(k + 4) | sigma(k).

Offset 1, canonical program `A015820.P11788765630809446508`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 641 terms. -/
def A015820 (n : ℕ) : ℤ :=
  (A015820.P11788765630809446508.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 641 terms. -/
def A015820.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A015823.P14101664896886442128

`lt[A000203(n+1)%A000010(n+8), 1]+1`
-/

namespace A015823.P14101664896886442128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (n + 1)) (A000010 (n + 8))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A015823.P14101664896886442128

noncomputable section

/-- A015823: Numbers k such that phi(k + 7) | sigma(k).

Offset 1, canonical program `A015823.P14101664896886442128`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 946 terms. -/
def A015823 (n : ℕ) : ℤ :=
  (A015823.P14101664896886442128.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 946 terms. -/
def A015823.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A015834.P6187228522220576603

`record[gcd(n+1, A000203(n+2)%A000010(n+1))]`
-/

namespace A015834.P6187228522220576603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (Int.tmod (A000203 (n + 2)) (A000010 (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015834.P6187228522220576603

noncomputable section

/-- A015834: Numbers k such that phi(k) | sigma(k + 1).

Offset 1, canonical program `A015834.P6187228522220576603`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 275 terms. -/
def A015834 (n : ℕ) : ℤ :=
  (A015834.P6187228522220576603.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 275 terms. -/
def A015834.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A015837.P10061482123831038346

`lt[A000203(n+3)%A000010(n+1), 1]+1`
-/

namespace A015837.P10061482123831038346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (n + 3)) (A000010 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A015837.P10061482123831038346

noncomputable section

/-- A015837: Numbers k such that phi(k) | sigma(k + 2).

Offset 1, canonical program `A015837.P10061482123831038346`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 280 terms. -/
def A015837 (n : ℕ) : ℤ :=
  (A015837.P10061482123831038346.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 280 terms. -/
def A015837.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A015853.P2283416451843243793

`lt[A000203(n+10)%A000010(n+1), 1]+1`
-/

namespace A015853.P2283416451843243793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (n + 10)) (A000010 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A015853.P2283416451843243793

noncomputable section

/-- A015853: Numbers k such that phi(k) | sigma(k + 9).

Offset 1, canonical program `A015853.P2283416451843243793`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 269 terms. -/
def A015853 (n : ℕ) : ℤ :=
  (A015853.P2283416451843243793.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 269 terms. -/
def A015853.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A019590.P10517823757212113743

`A000035(A000010(n+1))`
-/

namespace A019590.P10517823757212113743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A000010 (n + 1)).toNat

end

end A019590.P10517823757212113743

noncomputable section

/-- A019590: Fermat's Last Theorem: a(n) = 1 if x^n + y^n = z^n has a nontrivial solution in integers, otherwise a(n) = 0.

Offset 1, canonical program `A019590.P10517823757212113743`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A019590 (n : ℕ) : ℤ :=
  A019590.P10517823757212113743.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A019590.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A022447.P13400589638145703350

`A062298(A288469(n+1)+A000007(n))`
-/

namespace A022447.P13400589638145703350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (A288469 (n + 1) + A000007 n).toNat

end

end A022447.P13400589638145703350

noncomputable section

/-- A022447: Fractal sequence of the dispersion of the primes.

Offset 1, canonical program `A022447.P13400589638145703350`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022447 (n : ℕ) : ℤ :=
  A022447.P13400589638145703350.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022447.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022823.P13984185268701905408

`A022822(n+2)+1+n`
-/

namespace A022823.P13984185268701905408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022822 (n + 2) + 1 + (n : ℤ)

end

end A022823.P13984185268701905408

noncomputable section

/-- A022823: a(n) = [ (2n+1)/(n-1) ] + [ (2n+2)/(n-2) ] + ... + [ (3n-1)/1 ].

Offset 2, canonical program `A022823.P13984185268701905408`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022823 (n : ℕ) : ℤ :=
  A022823.P13984185268701905408.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022823.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A023889.P17073280978498141665

`A023888(n+1)-1`
-/

namespace A023889.P17073280978498141665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023888 (n + 1) - 1

end

end A023889.P17073280978498141665

noncomputable section

/-- A023889: Sum of the prime power divisors of n (not including 1).

Offset 1, canonical program `A023889.P17073280978498141665`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023888, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023889 (n : ℕ) : ℤ :=
  A023889.P17073280978498141665.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023888, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023889.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A025302.P15766142837742096667

`eq[A000005(A002654(n+1)+1), A002654(n+1)]+1`
-/

namespace A025302.P15766142837742096667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A002654 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A025302.P15766142837742096667

noncomputable section

/-- A025302: Numbers that are the sum of 2 distinct nonzero squares in exactly 1 way.

Offset 1, canonical program `A025302.P15766142837742096667`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1707 terms. -/
def A025302 (n : ℕ) : ℤ :=
  (A025302.P15766142837742096667.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1707 terms. -/
def A025302.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A027423.P14066705804803784298

`A000005(A000142(n))`
-/

namespace A027423.P14066705804803784298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000142 n).toNat

end

end A027423.P14066705804803784298

noncomputable section

/-- A027423: Number of divisors of n!.

Offset 0, canonical program `A027423.P14066705804803784298`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A027423 (n : ℕ) : ℤ :=
  A027423.P14066705804803784298.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A027423.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A029939.P6455013968657218712

`∑{d}[n+1, A000010(#)²]`
-/

namespace A029939.P6455013968657218712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d ^ 2

end

end A029939.P6455013968657218712

noncomputable section

/-- A029939: a(n) = Sum_{d|n} phi(d)^2.

Offset 1, canonical program `A029939.P6455013968657218712`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029939 (n : ℕ) : ℤ :=
  A029939.P6455013968657218712.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029939.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029940.P9006398651141651236

`∏{d}[n+1, A000010(#)]`
-/

namespace A029940.P9006398651141651236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A000010 d

end

end A029940.P9006398651141651236

noncomputable section

/-- A029940: a(n) = Product_{d|n} phi(d).

Offset 1, canonical program `A029940.P9006398651141651236`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9239 terms. -/
def A029940 (n : ℕ) : ℤ :=
  A029940.P9006398651141651236.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9239 terms. -/
def A029940.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A030626.P13020075489056266396

`eq[8, A000005(n+1)]+1`
-/

namespace A030626.P13020075489056266396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030626.P13020075489056266396

noncomputable section

/-- A030626: Numbers with exactly 8 divisors.

Offset 1, canonical program `A030626.P13020075489056266396`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A030626 (n : ℕ) : ℤ :=
  (A030626.P13020075489056266396.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A030626.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A030630.P18236272023832021536

`eq[12, A000005(n+1)]+1`
-/

namespace A030630.P18236272023832021536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030630.P18236272023832021536

noncomputable section

/-- A030630: Numbers with 12 divisors.

Offset 1, canonical program `A030630.P18236272023832021536`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5091 terms. -/
def A030630 (n : ℕ) : ℤ :=
  (A030630.P18236272023832021536.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5091 terms. -/
def A030630.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033273.P18420659424697249895

`A000005(n+1)-A001221(n+1)`
-/

namespace A033273.P18420659424697249895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A001221 (n + 1)

end

end A033273.P18420659424697249895

noncomputable section

/-- A033273: Number of nonprime divisors of n.

Offset 1, canonical program `A033273.P18420659424697249895`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A001221, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A033273 (n : ℕ) : ℤ :=
  A033273.P18420659424697249895.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A001221, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A033273.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A033950.P9371750250849887585

`record[(n+1)/A002878((n+1)%A000005(n+1))]`
-/

namespace A033950.P9371750250849887585
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A002878 (Int.tmod (n + 1 : ℤ) (A000005 (n + 1))).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033950.P9371750250849887585

noncomputable section

/-- A033950: Refactorable numbers: number of divisors of k divides k. Also known as tau numbers.

Offset 1, canonical program `A033950.P9371750250849887585`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5257 terms. -/
def A033950 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A033950.P9371750250849887585.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5257 terms. -/
def A033950.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036434.P10301240313179279910

`comp[A000005(n+1)+n]+1`
-/

namespace A036434.P10301240313179279910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A036434.P10301240313179279910

noncomputable section

/-- A036434: Integers which cannot be written as k+tau(k) for some k.

Offset 1, canonical program `A036434.P10301240313179279910`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036434 (n : ℕ) : ℤ :=
  (A036434.P10301240313179279910.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036434.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036436.P3368658604629938610

`record[(n+1)*A010052(A000005(n+2))+1]`
-/

namespace A036436.P3368658604629938610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A010052 (A000005 (n + 2)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036436.P3368658604629938610

noncomputable section

/-- A036436: Numbers whose number of divisors is a square.

Offset 1, canonical program `A036436.P3368658604629938610`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036436 (n : ℕ) : ℤ :=
  A036436.P3368658604629938610.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036436.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036455.P9092321913124468015

`eq[3, A000005(a(A000005(n)))]` with `a(0)=1, a(1)=1, a(2)=12`
-/

namespace A036455.P9092321913124468015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 12] fun n f2 =>
  A000005 (f2 (A000005 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A036455.P9092321913124468015

noncomputable section

/-- A036455: Numbers n such that d(d(n)) is an odd prime, where d(k) is the number of divisors of k.

Offset 1, canonical program `A036455.P9092321913124468015`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036455 (n : ℕ) : ℤ :=
  (A036455.P9092321913124468015.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036455.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036456.P315112515821829930

`eq[3, A000005(a(A000005(n)))]` with `a(0)=4, a(1)=1, a(2)=1, a(3)=12`
-/

namespace A036456.P315112515821829930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 1, 1, 12] fun n f2 =>
  A000005 (f2 (A000005 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A036456.P315112515821829930

noncomputable section

/-- A036456: Numbers k for which exactly 4 applications of A000005 are needed to reach 2.

Offset 1, canonical program `A036456.P315112515821829930`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036456 (n : ℕ) : ℤ :=
  (A036456.P315112515821829930.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036456.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037198.P4959961532228558436

`eq[A000005(A001065(n+2)), A000005(n+2)]+2`
-/

namespace A037198.P4959961532228558436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A001065 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A037198.P4959961532228558436

noncomputable section

/-- A037198: Number of divisors of (sigma(n)-n) = number of divisors of n.

Offset 1, canonical program `A037198.P4959961532228558436`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2137 terms. -/
def A037198 (n : ℕ) : ℤ :=
  (A037198.P4959961532228558436.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2137 terms. -/
def A037198.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A039649.P16717312505280968063

`A000010(n+1)+1`
-/

namespace A039649.P16717312505280968063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

end

end A039649.P16717312505280968063

noncomputable section

/-- A039649: a(n) = phi(n)+1.

Offset 1, canonical program `A039649.P16717312505280968063`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A039649 (n : ℕ) : ℤ :=
  A039649.P16717312505280968063.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A039649.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A039743.P5829878164581489431

`eq[gcd(n, A000010(n+1)), A001221(n+1)]+1`
-/

namespace A039743.P5829878164581489431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A000010 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A039743.P5829878164581489431

noncomputable section

/-- A039743: Number k such that gcd(phi(k), k-1) = number of distinct prime factors of k.

Offset 1, canonical program `A039743.P5829878164581489431`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7107 terms. -/
def A039743 (n : ℕ) : ℤ :=
  (A039743.P5829878164581489431.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7107 terms. -/
def A039743.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039766.P771001418354876832

`eq[A000005(n+1), A049559(n+1)]+1`
-/

namespace A039766.P771001418354876832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049559 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A039766.P771001418354876832

noncomputable section

/-- A039766: Numbers k such that gcd(phi(k), k-1) = number of divisors of k.

Offset 1, canonical program `A039766.P771001418354876832`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 746 terms. -/
def A039766 (n : ℕ) : ℤ :=
  (A039766.P771001418354876832.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 746 terms. -/
def A039766.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039768.P18004626891334739463

`eq[A000005(abs(1-n)+1), A049559(n+1)]+1`
-/

namespace A039768.P18004626891334739463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (|1 - (n : ℤ)| + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049559 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A039768.P18004626891334739463

noncomputable section

/-- A039768: Numbers k such that gcd(phi(k), k-1) = number of divisors of (k-1).

Offset 1, canonical program `A039768.P18004626891334739463`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 197 terms. -/
def A039768 (n : ℕ) : ℤ :=
  (A039768.P18004626891334739463.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 197 terms. -/
def A039768.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039770.P5490955356181166614

`record[(n+1)/A007913(A000010(n+1))]`
-/

namespace A039770.P5490955356181166614
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A007913 (A000010 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039770.P5490955356181166614

noncomputable section

/-- A039770: Numbers k such that phi(k) is a perfect square.

Offset 1, canonical program `A039770.P5490955356181166614`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1890 terms. -/
def A039770 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A039770.P5490955356181166614.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1890 terms. -/
def A039770.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039771.P6000712686625976623

`eq[1, A010057(A000010(n+1))]+1`
-/

namespace A039771.P6000712686625976623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 (A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A039771.P6000712686625976623

noncomputable section

/-- A039771: Numbers k such that phi(k) is a perfect cube.

Offset 1, canonical program `A039771.P6000712686625976623`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 134 terms. -/
def A039771 (n : ℕ) : ℤ :=
  (A039771.P6000712686625976623.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 134 terms. -/
def A039771.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A045765.P13008518942715425430

`comp[1-A000005(n+1)+n]`
-/

namespace A045765.P13008518942715425430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000005 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A045765.P13008518942715425430

noncomputable section

/-- A045765: k - d(k) never takes these values, where d(k) = A000005(k).

Offset 1, canonical program `A045765.P13008518942715425430`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045765 (n : ℕ) : ℤ :=
  (A045765.P13008518942715425430.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045765.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046520.P408125302691526791

`A000203(n+1)-A000010(n+1)-A000005(n+1)`
-/

namespace A046520.P408125302691526791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A000010 (n + 1) - A000005 (n + 1)

end

end A046520.P408125302691526791

noncomputable section

/-- A046520: a(n) = (sum of divisors of n) - phi(n) - (number of divisors of n).

Offset 1, canonical program `A046520.P408125302691526791`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A000010, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A046520 (n : ℕ) : ℤ :=
  A046520.P408125302691526791.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A000010, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A046520.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A046798.P7458873546335195562

`A000005(A000051(n))`
-/

namespace A046798.P7458873546335195562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000051 n).toNat

end

end A046798.P7458873546335195562

noncomputable section

/-- A046798: Number of divisors of 2^n + 1.

Offset 0, canonical program `A046798.P7458873546335195562`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A046798 (n : ℕ) : ℤ :=
  A046798.P7458873546335195562.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A046798.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A046839.P16105332668956259502

`lt[A001158(n+1)%A000005(n+1), 1]+1`
-/

namespace A046839.P16105332668956259502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001158 (n + 1)) (A000005 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A046839.P16105332668956259502

noncomputable section

/-- A046839: Numbers k such that the number of divisors of k divides the sum of cubes of divisors of k.

Offset 1, canonical program `A046839.P16105332668956259502`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7812 terms. -/
def A046839 (n : ℕ) : ℤ :=
  (A046839.P16105332668956259502.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7812 terms. -/
def A046839.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046840.P11712278196667640381

`eq[0, A001159(n+1)%A000005(n+1)]+1`
-/

namespace A046840.P11712278196667640381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001159 (n + 1)) (A000005 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A046840.P11712278196667640381

noncomputable section

/-- A046840: Numbers k such that the number of divisors of k divides the sum of the 4th powers of the divisors of k.

Offset 1, canonical program `A046840.P11712278196667640381`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6066 terms. -/
def A046840 (n : ℕ) : ℤ :=
  (A046840.P11712278196667640381.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6066 terms. -/
def A046840.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046951.P3618498099021746421

`A000005(n+1)-A056595(n+1)`
-/

namespace A046951.P3618498099021746421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A056595 (n + 1)

end

end A046951.P3618498099021746421

noncomputable section

/-- A046951: a(n) is the number of squares dividing n.

Offset 1, canonical program `A046951.P3618498099021746421`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A056595, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A046951 (n : ℕ) : ℤ :=
  A046951.P3618498099021746421.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A056595, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A046951.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A048105.P14513846835403787716`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A034444, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A048105 (n : ℕ) : ℤ :=
  A048105.P14513846835403787716.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A034444, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A048105.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A048106.P2251062442645378634

`2^(1+A001221(n+1))-A000005(n+1)`
-/

namespace A048106.P2251062442645378634
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (1 + A001221 (n + 1) : ℤ) - (A000005 (n + 1) : ℚ)

end

end A048106.P2251062442645378634

noncomputable section

/-- A048106: Number of unitary divisors of n (A034444) - number of non-unitary divisors of n (A048105).

Offset 1, canonical program `A048106.P2251062442645378634`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A001221, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A048106 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A048106.P2251062442645378634.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A001221, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A048106.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A048166.P12188423200704413564

`lt[(n+1)%A000005(A007947(n+1)), 1]+1`
-/

namespace A048166.P12188423200704413564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A000005 (A007947 (n + 1)).toNat)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A048166.P12188423200704413564

noncomputable section

/-- A048166: Numbers k that are divisible by the number of unitary divisors of k (A034444).

Offset 1, canonical program `A048166.P12188423200704413564`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7090 terms. -/
def A048166 (n : ℕ) : ℤ :=
  (A048166.P12188423200704413564.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7090 terms. -/
def A048166.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048784.P252615845458894527

`A000005(A000984(n))`
-/

namespace A048784.P252615845458894527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000984 n).toNat

end

end A048784.P252615845458894527

noncomputable section

/-- A048784: a(n) = tau(binomial(2*n,n)), where tau = number of divisors (A000005).

Offset 0, canonical program `A048784.P252615845458894527`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A048784 (n : ℕ) : ℤ :=
  A048784.P252615845458894527.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A048784.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A048855.P1835815635312777100

`A000010(n!)`
-/

namespace A048855.P1835815635312777100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.factorial n)

end

end A048855.P1835815635312777100

noncomputable section

/-- A048855: Number of integers up to n! relatively prime to n!.

Offset 0, canonical program `A048855.P1835815635312777100`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A048855 (n : ℕ) : ℤ :=
  A048855.P1835815635312777100.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A048855.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A048866.P13275795640121407663

`A000010(n+1)-2*A000720(n+1)+2*A001221(n+1)`
-/

namespace A048866.P13275795640121407663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - 2 * A000720 (n + 1) + 2 * A001221 (n + 1)

end

end A048866.P13275795640121407663

noncomputable section

/-- A048866: Difference between number of nonprimes and primes in reduced residue system of n.

Offset 1, canonical program `A048866.P13275795640121407663`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A000720, A001221, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A048866 (n : ℕ) : ℤ :=
  A048866.P13275795640121407663.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A000720, A001221, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A048866.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A049149.P3106904862429449036

`record[(n+1)*A008966(A000010(n+1))]`
-/

namespace A049149.P3106904862429449036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A008966 (A000010 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049149.P3106904862429449036

noncomputable section

/-- A049149: Numbers k such that the Euler totient function phi(k) is squarefree.

Offset 1, canonical program `A049149.P3106904862429449036`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5590 terms. -/
def A049149 (n : ℕ) : ℤ :=
  A049149.P3106904862429449036.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5590 terms. -/
def A049149.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049225.P17979210083929373104

`eq[1, char[A000010(A005117(n+1))]]`
-/

namespace A049225.P17979210083929373104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A005117 (n + 1)).toNat

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A049225.P17979210083929373104

noncomputable section

/-- A049225: Values of totient function applied to squarefree numbers; or numbers of form Product (p_i-1) where p_i are distinct primes.

Offset 1, canonical program `A049225.P17979210083929373104`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2342 terms. -/
def A049225 (n : ℕ) : ℤ :=
  (A049225.P17979210083929373104.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2342 terms. -/
def A049225.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049234.P3422205690596115663

`A000005(A052147(n+1))`
-/

namespace A049234.P3422205690596115663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A052147 (n + 1)).toNat

end

end A049234.P3422205690596115663

noncomputable section

/-- A049234: Number of divisors of prime(n) + 2.

Offset 1, canonical program `A049234.P3422205690596115663`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9592 terms. -/
def A049234 (n : ℕ) : ℤ :=
  A049234.P3422205690596115663.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9592 terms. -/
def A049234.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049238.P8563202278368188876

`A000005(p?[2*n+1]-2)`
-/

namespace A049238.P8563202278368188876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) - 2)

end

end A049238.P8563202278368188876

noncomputable section

/-- A049238: a(n) is the number of divisors of prime(n) - 2.

Offset 2, canonical program `A049238.P8563202278368188876`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9591 terms. -/
def A049238 (n : ℕ) : ℤ :=
  A049238.P8563202278368188876.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9591 terms. -/
def A049238.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049454.P18198278345640105493

`a(n-1)+A000010(n)²` with `a(0)=1`
-/

namespace A049454.P18198278345640105493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A000010 n ^ 2

end

end A049454.P18198278345640105493

noncomputable section

/-- A049454: a(n) = 1 + Sum_{i=1..n} phi(i)^2.

Offset 0, canonical program `A049454.P18198278345640105493`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049454 (n : ℕ) : ℤ :=
  A049454.P18198278345640105493.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049454.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049482.P14194032820589337229

`p?[n+1-C(10, A000005(n+1)²)]`
-/

namespace A049482.P14194032820589337229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (Nat.choose 10 (A000005 (n + 1) ^ 2).toNat : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049482.P14194032820589337229

noncomputable section

/-- A049482: Primes p such that p + 210 is also prime.

Offset 1, canonical program `A049482.P14194032820589337229`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3923 terms. -/
def A049482 (n : ℕ) : ℤ :=
  A049482.P14194032820589337229.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3923 terms. -/
def A049482.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049645.P576075873221011945

`lt[A000203(n+1)%A000005(n+1)², 1]+1`
-/

namespace A049645.P576075873221011945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (n + 1)) (A000005 (n + 1) ^ 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A049645.P576075873221011945

noncomputable section

/-- A049645: Numbers k such that the square of the number of divisors of k divides the sum of the divisors of k.

Offset 1, canonical program `A049645.P576075873221011945`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049645 (n : ℕ) : ℤ :=
  (A049645.P576075873221011945.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049645.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049820.P16592162141590330811

`A076627(n+1)/A000005(n+1)`
-/

namespace A049820.P16592162141590330811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076627 (n + 1) : ℚ) / (A000005 (n + 1) : ℚ)

end

end A049820.P16592162141590330811

noncomputable section

/-- A049820: a(n) = n - d(n), where d(n) is the number of divisors of n (A000005).

Offset 1, canonical program `A049820.P16592162141590330811`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A076627, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A049820 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A049820.P16592162141590330811.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A076627, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A049820.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A050463.P8490343933617840382

`A050468(n+1)+A050467(n+1)`
-/

namespace A050463.P8490343933617840382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050468 (n + 1) + A050467 (n + 1)

end

end A050463.P8490343933617840382

noncomputable section

/-- A050463: a(n) = Sum_{d|n, n/d=1 mod 4} d^4.

Offset 1, canonical program `A050463.P8490343933617840382`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050467, A050468, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A050463 (n : ℕ) : ℤ :=
  A050463.P8490343933617840382.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050467, A050468, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A050463.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A051612.P4135239823752248514

`A000203(n+1)-A000010(n+1)`
-/

namespace A051612.P4135239823752248514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A000010 (n + 1)

end

end A051612.P4135239823752248514

noncomputable section

/-- A051612: a(n) = sigma(n) - phi(n).

Offset 1, canonical program `A051612.P4135239823752248514`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A051612 (n : ℕ) : ℤ :=
  A051612.P4135239823752248514.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A051612.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A051897.P8902770767646687647

`∩[A224854(n+1), A224855(n+1)]`
-/

namespace A051897.P8902770767646687647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051897.P8902770767646687647

noncomputable section

/-- A051897: Values of n such that 90n+11, 90n+13, 90n+17, 90n+19 are all primes.

Offset 1, canonical program `A051897.P8902770767646687647`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 421 terms. -/
def A051897 (n : ℕ) : ℤ :=
  (A051897.P8902770767646687647.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 421 terms. -/
def A051897.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052100.P2889348781162524991

`lcm(A000010(n+1), A052106(n+1))`
-/

namespace A052100.P2889348781162524991
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000010 (n + 1)) (A052106 (n + 1))

end

end A052100.P2889348781162524991

noncomputable section

/-- A052100: a(n) = lcm(n, phi(n), n - phi(n)).

Offset 1, canonical program `A052100.P2889348781162524991`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A052100 (n : ℕ) : ℤ :=
  (A052100.P2889348781162524991.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A052100.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053285.P954365959707190211

`A000010(A000051(n))`
-/

namespace A053285.P954365959707190211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000051 n).toNat

end

end A053285.P954365959707190211

noncomputable section

/-- A053285: Totient of 2^n+1.

Offset 0, canonical program `A053285.P954365959707190211`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053285 (n : ℕ) : ℤ :=
  A053285.P954365959707190211.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053285.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A053578.P11254634058092319616

`A053577(n+1)-A000010(A053577(n+1))`
-/

namespace A053578.P11254634058092319616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053577 (n + 1) - A000010 (A053577 (n + 1)).toNat

end

end A053578.P11254634058092319616

noncomputable section

/-- A053578: Values of cototient function for A053577.

Offset 1, canonical program `A053578.P11254634058092319616`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9658 terms. -/
def A053578 (n : ℕ) : ℤ :=
  A053578.P11254634058092319616.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9658 terms. -/
def A053578.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055035.P5639412930833085548

`ceil(A000010(n+1)/gcd(n+1, C(n, 2)))`
-/

namespace A055035.P5639412930833085548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000010 (n + 1) : ℚ) / (Nat.gcd (n + 1) (Nat.choose n 2) : ℚ)⌉

end

end A055035.P5639412930833085548

noncomputable section

/-- A055035: Degree of minimal polynomial of sin(Pi/n) over the rationals.

Offset 1, canonical program `A055035.P5639412930833085548`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055035 (n : ℕ) : ℤ :=
  A055035.P5639412930833085548.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055035.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055654.P18161837612058524834

`1-A055653(n+1)+n`
-/

namespace A055654.P18161837612058524834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A055653 (n + 1) + (n : ℤ)

end

end A055654.P18161837612058524834

noncomputable section

/-- A055654: Difference between n and the result of "Phi-summation" over unitary divisors of n.

Offset 1, canonical program `A055654.P18161837612058524834`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055654 (n : ℕ) : ℤ :=
  A055654.P18161837612058524834.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055654.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055720.P4153619795851742296

`eq[1, (n+2)%(A000005(n+1)+1)]+1`
-/

namespace A055720.P4153619795851742296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 2 : ℤ) (A000005 (n + 1) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A055720.P4153619795851742296

noncomputable section

/-- A055720: Numbers k such that d(k)+1 | k.

Offset 1, canonical program `A055720.P4153619795851742296`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3364 terms. -/
def A055720 (n : ℕ) : ℤ :=
  (A055720.P4153619795851742296.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3364 terms. -/
def A055720.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055741.P7823549928393762310

`lt[A001221(n+1), A001221(A000010(n+1))]+1`
-/

namespace A055741.P7823549928393762310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A055741.P7823549928393762310

noncomputable section

/-- A055741: Phi(n) has more distinct prime factors than n.

Offset 1, canonical program `A055741.P7823549928393762310`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055741 (n : ℕ) : ℤ :=
  (A055741.P7823549928393762310.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055741.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055742.P14231494332674757041

`eq[A001221(A000010(n+1)), A001221(n+1)]+1`
-/

namespace A055742.P14231494332674757041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000010 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A055742.P14231494332674757041

noncomputable section

/-- A055742: Numbers k such that k and EulerPhi(k) have same number of prime factors, counted without multiplicity.

Offset 1, canonical program `A055742.P14231494332674757041`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055742 (n : ℕ) : ℤ :=
  (A055742.P14231494332674757041.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055742.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055743.P3181542319350071640

`lt[A001221(A000010(n+1)), A001221(n+1)]+1`
-/

namespace A055743.P3181542319350071640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000010 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A055743.P3181542319350071640

noncomputable section

/-- A055743: Phi(n) has fewer distinct prime divisors than n.

Offset 1, canonical program `A055743.P3181542319350071640`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8484 terms. -/
def A055743 (n : ℕ) : ℤ :=
  (A055743.P3181542319350071640.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8484 terms. -/
def A055743.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056135.P12959323583391419454

`(A008966(n+1)+1)²*A007913(n+1)`
-/

namespace A056135.P12959323583391419454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008966 (n + 1) + 1) ^ 2 * A007913 (n + 1)

end

end A056135.P12959323583391419454

noncomputable section

/-- A056135: Smallest positive integer other than n where geometric mean of n and a(n) is an integer.

Offset 1, canonical program `A056135.P12959323583391419454`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056135 (n : ℕ) : ℤ :=
  A056135.P12959323583391419454.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056135.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056224.P11237647721291882159

`A000005(n+2)²-A000005(n+1)*A000005(n+3)`
-/

namespace A056224.P11237647721291882159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 2) ^ 2 - A000005 (n + 1) * A000005 (n + 3)

end

end A056224.P11237647721291882159

noncomputable section

/-- A056224: Image of number of divisors sequence (A000005) under "little Hankel" transform that sends [c_0, c_1, ...] to [d_0, d_1, ...] where d_n = c_n^2 - c_{n+1}*c_{n-1}.

Offset 1, canonical program `A056224.P11237647721291882159`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056224 (n : ℕ) : ℤ :=
  A056224.P11237647721291882159.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056224.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056228.P17826182728079616557

`A000010(n+2)²-A000010(n+1)*A000010(n+3)`
-/

namespace A056228.P17826182728079616557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 2) ^ 2 - A000010 (n + 1) * A000010 (n + 3)

end

end A056228.P17826182728079616557

noncomputable section

/-- A056228: Image of Euler totient function (A000010) under "little Hankel" transform that sends [c_0, c_1, ...] to [d_0, d_1, ...] where d_n = c_n^2 - c_{n+1}*c_{n-1}.

Offset 1, canonical program `A056228.P17826182728079616557`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056228 (n : ℕ) : ℤ :=
  A056228.P17826182728079616557.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056228.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056757.P10338499769578600041

`lt[n+1, A000005(n+1)^3]+1`
-/

namespace A056757.P10338499769578600041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A056757.P10338499769578600041

noncomputable section

/-- A056757: Cube of number of divisors is larger than the number.

Offset 1, canonical program `A056757.P10338499769578600041`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4259 terms. -/
def A056757 (n : ℕ) : ℤ :=
  (A056757.P10338499769578600041.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4259 terms. -/
def A056757.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056793.P6070072605803302043

`∏[A000005(n+1)/A000005(A048671(n+1))]`
-/

namespace A056793.P6070072605803302043
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) / (A000005 (A048671 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A056793.P6070072605803302043

noncomputable section

/-- A056793: Number of divisors of lcm(1..n).

Offset 1, canonical program `A056793.P6070072605803302043`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2128 terms. -/
def A056793 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A056793.P6070072605803302043.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2128 terms. -/
def A056793.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056820.P6967666015395470887

`A000010(A002064(n))`
-/

namespace A056820.P6967666015395470887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A002064 n).toNat

end

end A056820.P6967666015395470887

noncomputable section

/-- A056820: Euler totient function of Cullen numbers (A002064), n*2^n +1.

Offset 0, canonical program `A056820.P6967666015395470887`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056820 (n : ℕ) : ℤ :=
  A056820.P6967666015395470887.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056820.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A056924.P8846060015044098494

`floor(A000005(n+1)/2)`
-/

namespace A056924.P8846060015044098494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000005 (n + 1) : ℚ) / 2⌋

end

end A056924.P8846060015044098494

noncomputable section

/-- A056924: Number of divisors of n that are smaller than sqrt(n).

Offset 1, canonical program `A056924.P8846060015044098494`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056924 (n : ℕ) : ℤ :=
  A056924.P8846060015044098494.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056924.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A057021.P14859402968036356371`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A009205, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A057021 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A057021.P14859402968036356371.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A009205, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A057021.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A057022.P12449521830501119084`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A054025, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A057022 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A057022.P12449521830501119084.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A054025, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A057022.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A057859.P5441024818850006693

`A000010(n+1)+A001221(n+1)`
-/

namespace A057859.P5441024818850006693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + A001221 (n + 1)

end

end A057859.P5441024818850006693

noncomputable section

/-- A057859: Number of residue classes modulo n which contain a prime.

Offset 1, canonical program `A057859.P5441024818850006693`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A001221, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A057859 (n : ℕ) : ℤ :=
  A057859.P5441024818850006693.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A001221, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A057859.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A057919.P11397683448699479986

`record[gcd(n+1, A000010(n+2)%A000010(n+1))]`
-/

namespace A057919.P11397683448699479986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (Int.tmod (A000010 (n + 2)) (A000010 (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057919.P11397683448699479986

noncomputable section

/-- A057919: Numbers k such that phi(k) divides phi(k+1), where phi(k) is the Euler totient function A000010.

Offset 1, canonical program `A057919.P11397683448699479986`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A057919 (n : ℕ) : ℤ :=
  (A057919.P11397683448699479986.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A057919.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057920.P5459412885655340721

`lt[A000010(n+1)%A000010(n+2), 1]+1`
-/

namespace A057920.P5459412885655340721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (n + 1)) (A000010 (n + 2))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A057920.P5459412885655340721

noncomputable section

/-- A057920: Numbers k such that phi(k+1) divides phi(k), where phi is A000010.

Offset 1, canonical program `A057920.P5459412885655340721`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 433 terms. -/
def A057920 (n : ℕ) : ℤ :=
  (A057920.P5459412885655340721.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 433 terms. -/
def A057920.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057922.P11387328956576665709

`eq[1, A361022(n+1)]+1`
-/

namespace A057922.P11387328956576665709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361022 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A057922.P11387328956576665709

noncomputable section

/-- A057922: d(n) divides d(n+1), where d(n) is number of positive divisors of n.

Offset 0, canonical program `A057922.P11387328956576665709`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057922 (n : ℕ) : ℤ :=
  (A057922.P11387328956576665709.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057922.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A058074.P81869804986245876

`record[(n+1)/gcd(A000005(n+2), A000005(n+1))]`
-/

namespace A058074.P81869804986245876
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (A000005 (n + 2)) (A000005 (n + 1)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058074.P81869804986245876

noncomputable section

/-- A058074: Integers m such that gcd(d(m),d(m+1)) = 1, where d(m) is number of positive divisors of m.

Offset 1, canonical program `A058074.P81869804986245876`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 511 terms. -/
def A058074 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A058074.P81869804986245876.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 511 terms. -/
def A058074.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A059893.P16523172349964782449

`floor(A145341(n+2)/2)`
-/

namespace A059893.P16523172349964782449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A145341 (n + 2) : ℚ) / 2⌋

end

end A059893.P16523172349964782449

noncomputable section

/-- A059893: Reverse the order of all but the most significant bit in binary expansion of n: if n = 1ab..yz then a(n) = 1zy..ba.

Offset 1, canonical program `A059893.P16523172349964782449`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059893 (n : ℕ) : ℤ :=
  A059893.P16523172349964782449.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059893.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062011.P17525320077853469406

`2*A000005(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A062011.P17525320077853469406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000005 (n + 1)

end

end A062011.P17525320077853469406

noncomputable section

/-- A062011: a(n) = 2*tau(n) = 2*A000005(n).

Offset 1, canonical program `A062011.P17525320077853469406`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062011 (n : ℕ) : ℤ :=
  A062011.P17525320077853469406.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062011.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A062355.P11902626262927596143

`A000005(n+1)*A000010(n+1)`
-/

namespace A062355.P11902626262927596143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A000010 (n + 1)

end

end A062355.P11902626262927596143

noncomputable section

/-- A062355: a(n) = d(n) * phi(n), where d(n) is the number of divisors function.

Offset 1, canonical program `A062355.P11902626262927596143`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A000010, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A062355 (n : ℕ) : ℤ :=
  A062355.P11902626262927596143.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A000010, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A062355.provenance : SequenceMachineLib.Provenance := .conditional

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

