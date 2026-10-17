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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
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

/-! ## A357568.P6443723048829714892

`9*A002894(n)-8*A005809(n)`
-/

namespace A357568.P6443723048829714892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A002894 n - 8 * A005809 n

end

end A357568.P6443723048829714892

noncomputable section

/-- A357568: a(n) = 9*binomial(2*n,n)^2 - 8*binomial(3*n,n).

Offset 0, canonical program `A357568.P6443723048829714892`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A357568 (n : ℕ) : ℤ :=
  A357568.P6443723048829714892.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A357568.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A357569.P737790063412539277

`A188662(n)-27*A000984(n)`
-/

namespace A357569.P737790063412539277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188662 n - 27 * A000984 n

end

end A357569.P737790063412539277

noncomputable section

/-- A357569: a(n) = binomial(3*n,n)^2 - 27*binomial(2*n,n).

Offset 0, canonical program `A357569.P737790063412539277`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A357569 (n : ℕ) : ℤ :=
  A357569.P737790063412539277.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A357569.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A359647.P17524220049966486840

`A000108(n)*A001448(n)`
-/

namespace A359647.P17524220049966486840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A001448 n

end

end A359647.P17524220049966486840

noncomputable section

/-- A359647: a(n) = [x^n] hypergeom([1/4, 3/4], [2], 64*x). The central terms of the Motzkin triangle A359364 without zeros.

Offset 0, canonical program `A359647.P17524220049966486840`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359647 (n : ℕ) : ℤ :=
  A359647.P17524220049966486840.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359647.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A359761.P4485789682696231522

`A001448(n)*A001147(n)`
-/

namespace A359761.P4485789682696231522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001448 n * A001147 n

end

end A359761.P4485789682696231522

noncomputable section

/-- A359761: a(n) = binomial(4*n, 2*n)*(2*n)!/(2^n*n!).

Offset 0, canonical program `A359761.P4485789682696231522`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359761 (n : ℕ) : ℤ :=
  A359761.P4485789682696231522.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359761.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A359844.P3476761026987481568

`16*A359498(n)+1`
-/

namespace A359844.P3476761026987481568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A359498 n + 1

end

end A359844.P3476761026987481568

noncomputable section

/-- A359844: a(n) = ((2*n+1)^8 + 1)/2.

Offset 0, canonical program `A359844.P3476761026987481568`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359844 (n : ℕ) : ℤ :=
  A359844.P3476761026987481568.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359844.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A362194.P824322354515658544

`A008859(n)-n`
-/

namespace A362194.P824322354515658544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008859 n - (n : ℤ)

end

end A362194.P824322354515658544

noncomputable section

/-- A362194: Number of Grassmannian permutations of size n that avoid a pattern, sigma, where sigma is a pattern of size 7 with exactly one descent.

Offset 0, canonical program `A362194.P824322354515658544`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A362194 (n : ℕ) : ℤ :=
  A362194.P824322354515658544.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A362194.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A365089.P12422093480538307180

`A010060(n^3)`
-/

namespace A365089.P12422093480538307180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (n ^ 3)

end

end A365089.P12422093480538307180

noncomputable section

/-- A365089: The Thue-Morse sequence along the sequence of cubes.

Offset 0, canonical program `A365089.P12422093480538307180`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365089 (n : ℕ) : ℤ :=
  A365089.P12422093480538307180.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365089.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A378778.P3667161725199278276

`n²*A228484(n)`
-/

namespace A378778.P3667161725199278276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A228484 n

end

end A378778.P3667161725199278276

noncomputable section

/-- A378778: a(n) = n^2 * 2^n * binomial(3*n, n).

Offset 0, canonical program `A378778.P3667161725199278276`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378778 (n : ℕ) : ℤ :=
  A378778.P3667161725199278276.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378778.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A378779.P3225827329424791518

`n²*A006588(n)`
-/

namespace A378779.P3225827329424791518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A006588 n

end

end A378779.P3225827329424791518

noncomputable section

/-- A378779: a(n) = n^2 * 4^n * binomial(3*n, n).

Offset 0, canonical program `A378779.P3225827329424791518`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378779 (n : ℕ) : ℤ :=
  A378779.P3225827329424791518.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378779.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A378780.P13564199033729833604

`n*A228484(n)`
-/

namespace A378780.P13564199033729833604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A228484 n

end

end A378780.P13564199033729833604

noncomputable section

/-- A378780: a(n) = n * 2^n * binomial(3*n, n).

Offset 0, canonical program `A378780.P13564199033729833604`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378780 (n : ℕ) : ℤ :=
  A378780.P13564199033729833604.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378780.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A378992.P17019904258361970119

`A011371(n)-A048881(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A378992.P17019904258361970119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 n - A048881 n

end

end A378992.P17019904258361970119

noncomputable section

/-- A378992: a(n) = A011371(n) - A048881(n); The exponent of the highest power of 2 dividing the n-th factorial minus the exponent of the highest power of 2 dividing n-th Catalan number.

Offset 0, canonical program `A378992.P17019904258361970119`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378992 (n : ℕ) : ℤ :=
  A378992.P17019904258361970119.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378992.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A380122.P11414663002027706338

`A001316(A184617(n))`
-/

namespace A380122.P11414663002027706338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A184617 n).toNat

end

end A380122.P11414663002027706338

noncomputable section

/-- A380122: a(n) is the number of integers m (possibly negative) such that the nonzero digits in the nonadjacent form for m appear in the nonadjacent form for n.

Offset 0, canonical program `A380122.P11414663002027706338`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380122 (n : ℕ) : ℤ :=
  A380122.P11414663002027706338.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380122.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390921.P4802921319269334055

`a(n-1)+A098658(n)` with `a(0)=1`
-/

namespace A390921.P4802921319269334055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A098658 n

end

end A390921.P4802921319269334055

noncomputable section

/-- A390921: Expansion of 1/((1-x) * sqrt(1-12*x)).

Offset 0, canonical program `A390921.P4802921319269334055`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390921 (n : ℕ) : ℤ :=
  A390921.P4802921319269334055.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390921.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390923.P6565390993815220059

`3*a(n-1)+A059304(n)` with `a(0)=1`
-/

namespace A390923.P6565390993815220059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) + A059304 n

end

end A390923.P6565390993815220059

noncomputable section

/-- A390923: Expansion of 1/((1-3*x) * sqrt(1-8*x)).

Offset 0, canonical program `A390923.P6565390993815220059`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390923 (n : ℕ) : ℤ :=
  A390923.P6565390993815220059.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390923.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390924.P5803395581487017869

`2*a(n-1)+A098658(n)` with `a(0)=1`
-/

namespace A390924.P5803395581487017869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + A098658 n

end

end A390924.P5803395581487017869

noncomputable section

/-- A390924: Expansion of 1/((1-2*x) * sqrt(1-12*x)).

Offset 0, canonical program `A390924.P5803395581487017869`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390924 (n : ℕ) : ℤ :=
  A390924.P5803395581487017869.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390924.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A367559.P9738199333979596161

`2^A002262(n)-A025581(n)`
-/

namespace A367559.P9738199333979596161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A002262 n : ℤ) - (A025581 n : ℚ)

end

end A367559.P9738199333979596161

noncomputable section

/-- A367559: Square array T(n, k) = 2^k - n, read by ascending antidiagonals.

Offset 0, canonical program `A367559.P9738199333979596161`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A367559 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A367559.P9738199333979596161.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A367559.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373536.P14270159377679087246

`A000262(n)*A053601(n)`
-/

namespace A373536.P14270159377679087246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000262 n * A053601 n

end

end A373536.P14270159377679087246

noncomputable section

/-- A373536: Number of ways to form a direct sum decomposition of the vector space GF(2)^n and then choose a basis for each subspace in the decomposition.

Offset 0, canonical program `A373536.P14270159377679087246`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373536 (n : ℕ) : ℤ :=
  A373536.P14270159377679087246.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373536.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A391537.P17399763610097051380

`A192447(n+3)/2-1`
-/

namespace A391537.P17399763610097051380
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192447 (n + 3) : ℚ) / 2 - 1

end

end A391537.P17399763610097051380

noncomputable section

/-- A391537: Guaranteed win if opponent chooses one of two baskets and the player chooses the coins with values from 1 to n (see Comments for details).

Offset 1, canonical program `A391537.P17399763610097051380`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391537 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A391537.P17399763610097051380.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391537.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A356054.P4602359117676996858

`∩[A001952(n+1), A137803(n+1)]`
-/

namespace A356054.P4602359117676996858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137803 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356054.P4602359117676996858

noncomputable section

/-- A356054: Intersection of A001952 and A137803.

Offset 1, canonical program `A356054.P4602359117676996858`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2850 terms. -/
def A356054 (n : ℕ) : ℤ :=
  (A356054.P4602359117676996858.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2850 terms. -/
def A356054.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356055.P14237862659545009933

`∩[A001952(n+1), A137804(n+1)]`
-/

namespace A356055.P14237862659545009933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137804 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356055.P14237862659545009933

noncomputable section

/-- A356055: Intersection of A001952 and A137804.

Offset 1, canonical program `A356055.P14237862659545009933`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3013 terms. -/
def A356055 (n : ℕ) : ℤ :=
  (A356055.P14237862659545009933.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3013 terms. -/
def A356055.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356056.P16192935099357345067

`A001951(A137803(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A356056.P16192935099357345067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (A137803 (n + 1)).toNat

end

end A356056.P16192935099357345067

noncomputable section

/-- A356056: a(n) = A001951(A137803(n)).

Offset 1, canonical program `A356056.P16192935099357345067`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A137803, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A356056 (n : ℕ) : ℤ :=
  A356056.P16192935099357345067.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A137803, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A356056.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A356059.P13119210401044396042

`A356057(n+1)+2*A137804(n+1)`
-/

namespace A356059.P13119210401044396042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356057 (n + 1) + 2 * A137804 (n + 1)

end

end A356059.P13119210401044396042

noncomputable section

/-- A356059: a(n) = A001952(A137804(n)).

Offset 1, canonical program `A356059.P13119210401044396042`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356059 (n : ℕ) : ℤ :=
  A356059.P13119210401044396042.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356059.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356085.P6656696348996247790

`∩[A054406(n+1), floor(n*sqrt(2))]`
-/

namespace A356085.P6656696348996247790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054406 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356085.P6656696348996247790

noncomputable section

/-- A356085: Intersection of A001951 and A054406.

Offset 1, canonical program `A356085.P6656696348996247790`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4228 terms. -/
def A356085 (n : ℕ) : ℤ :=
  (A356085.P6656696348996247790.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4228 terms. -/
def A356085.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356086.P6900622435396786446

`∩[A001952(n+1), A022838(n+1)]`
-/

namespace A356086.P6900622435396786446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022838 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356086.P6900622435396786446

noncomputable section

/-- A356086: Intersection of A001952 and A022838.

Offset 1, canonical program `A356086.P6900622435396786446`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2925 terms. -/
def A356086 (n : ℕ) : ℤ :=
  (A356086.P6900622435396786446.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2925 terms. -/
def A356086.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356087.P14576151142047705197

`∩[A001952(n+1), A054406(n+1)]`
-/

namespace A356087.P14576151142047705197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054406 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356087.P14576151142047705197

noncomputable section

/-- A356087: Intersection of A001952 and A054406.

Offset 1, canonical program `A356087.P14576151142047705197`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2942 terms. -/
def A356087 (n : ℕ) : ℤ :=
  (A356087.P14576151142047705197.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2942 terms. -/
def A356087.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356089.P15539664326383864454

`A001951(A054406(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A356089.P15539664326383864454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (A054406 (n + 1)).toNat

end

end A356089.P15539664326383864454

noncomputable section

/-- A356089: a(n) = A001951(A054406(n)).

Offset 1, canonical program `A356089.P15539664326383864454`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054406, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A356089 (n : ℕ) : ℤ :=
  A356089.P15539664326383864454.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054406, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A356089.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A356090.P8845591119723714573

`A356088(n+1)+2*A022838(n+1)`
-/

namespace A356090.P8845591119723714573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356088 (n + 1) + 2 * A022838 (n + 1)

end

end A356090.P8845591119723714573

noncomputable section

/-- A356090: a(n) = A001952(A022838(n)).

Offset 1, canonical program `A356090.P8845591119723714573`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356090 (n : ℕ) : ℤ :=
  A356090.P8845591119723714573.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356090.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356093.P9988673686569387336

`A006093(n+1)/A077063(n+1)`
-/

namespace A356093.P9988673686569387336
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 1) : ℚ) / (A077063 (n + 1) : ℚ)

end

end A356093.P9988673686569387336

noncomputable section

/-- A356093: a(n) = numerator((prime(n)-1)/prime(n)#), where prime(n)# = A002110(n) is the n-th primorial.

Offset 1, canonical program `A356093.P9988673686569387336`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356093 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A356093.P9988673686569387336.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356093.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356102.P2897082102380948719

`∩[A001950(n+1), A022839(n+1)]`
-/

namespace A356102.P2897082102380948719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022839 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356102.P2897082102380948719

noncomputable section

/-- A356102: Intersection of A001950 and A022839.

Offset 1, canonical program `A356102.P2897082102380948719`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3416 terms. -/
def A356102 (n : ℕ) : ℤ :=
  (A356102.P2897082102380948719.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3416 terms. -/
def A356102.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356122.P4438334120915066052

`A304092(A000032(n))`
-/

namespace A356122.P4438334120915066052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304092 (A000032 n).toNat

end

end A356122.P4438334120915066052

noncomputable section

/-- A356122: Number of Lucas divisors of the n-th Lucas number.

Offset 0, canonical program `A356122.P4438334120915066052`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A304092, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A356122 (n : ℕ) : ℤ :=
  A356122.P4438334120915066052.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A304092, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A356122.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A356138.P14453790873251859773

`A137803(A001951(n+1))%A001952(n+1)`
-/

namespace A356138.P14453790873251859773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137803 (A001951 (n + 1)).toNat) (A001952 (n + 1))

end

end A356138.P14453790873251859773

noncomputable section

/-- A356138: a(n) = A137803(A001951(n)).

Offset 1, canonical program `A356138.P14453790873251859773`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7071 terms. -/
def A356138 (n : ℕ) : ℤ :=
  A356138.P14453790873251859773.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7071 terms. -/
def A356138.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356140.P10530833762878787268

`and(-1, A137803(A001952(n+1)))`
-/

namespace A356140.P10530833762878787268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A137803 (A001952 (n + 1)).toNat)

end

end A356140.P10530833762878787268

noncomputable section

/-- A356140: a(n) = A137803(A001952(n)).

Offset 1, canonical program `A356140.P10530833762878787268`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2929 terms. -/
def A356140 (n : ℕ) : ℤ :=
  A356140.P10530833762878787268.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2929 terms. -/
def A356140.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356141.P12331716285267801949

`and(-1, A137804(A001952(n+1)))`
-/

namespace A356141.P12331716285267801949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A137804 (A001952 (n + 1)).toNat)

end

end A356141.P12331716285267801949

noncomputable section

/-- A356141: a(n) = A137804(A001952(n)).

Offset 1, canonical program `A356141.P12331716285267801949`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2929 terms. -/
def A356141 (n : ℕ) : ℤ :=
  A356141.P12331716285267801949.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2929 terms. -/
def A356141.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356181.P10406966497409016216

`record[A054406(n+1)*A080764(n)]`
-/

namespace A356181.P10406966497409016216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054406 (n + 1) * A080764 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A356181.P10406966497409016216

noncomputable section

/-- A356181: a(n) = A054406(A001951(n)).

Offset 1, canonical program `A356181.P10406966497409016216`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7071 terms. -/
def A356181 (n : ℕ) : ℤ :=
  A356181.P10406966497409016216.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7071 terms. -/
def A356181.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356182.P15047035620206315556

`floor(A001952(n+1)/3*sqrt(27))`
-/

namespace A356182.P15047035620206315556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A001952 (n + 1) : ℚ) / 3 : ℝ) * Real.sqrt (27 : ℝ)⌋

end

end A356182.P15047035620206315556

noncomputable section

/-- A356182: a(n) = A022838(A001952(n)).

Offset 1, canonical program `A356182.P15047035620206315556`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356182 (n : ℕ) : ℤ :=
  A356182.P15047035620206315556.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356182.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356183.P710160472945653519

`and(-1, A054406(A001952(n+1)))`
-/

namespace A356183.P710160472945653519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A054406 (A001952 (n + 1)).toNat)

end

end A356183.P710160472945653519

noncomputable section

/-- A356183: a(n) = A054406(A001952(n)).

Offset 1, canonical program `A356183.P710160472945653519`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2929 terms. -/
def A356183 (n : ℕ) : ℤ :=
  A356183.P710160472945653519.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2929 terms. -/
def A356183.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356288.P582442813498813054

`A079824(n+1)+A093005(n+1)`
-/

namespace A356288.P582442813498813054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079824 (n + 1) + A093005 (n + 1)

end

end A356288.P582442813498813054

noncomputable section

/-- A356288: Sum of numbers in n-th upward diagonal of triangle the sum of {1; 2,3; 4,5,6; 7,8,9,10; ...} and {1; 2,3; 3,4,5; 4,5,6,7; ...}.

Offset 1, canonical program `A356288.P582442813498813054`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079824, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A356288 (n : ℕ) : ℤ :=
  A356288.P582442813498813054.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079824, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A356288.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A356360.P18222975235672550744

`or(1, A128059(∑[2-4/a(n-1)]))` with `a(0)=3, a(1)=1`
-/

namespace A356360.P18222975235672550744
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [3, 1] fun n f1 =>
  2 - 4 / f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A128059 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat)

end

end A356360.P18222975235672550744

noncomputable section

/-- A356360: Denominator of the continued fraction 1/(2-3/(3-4/(4-5/(...(n-1)-n/(n+1))))).

Offset 3, canonical program `A356360.P18222975235672550744`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5032 terms. -/
def A356360 (n : ℕ) : ℤ :=
  A356360.P18222975235672550744.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5032 terms. -/
def A356360.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356382.P3347831406250475257

`filter[A088827(n+1), A325964(#)]`
-/

namespace A356382.P3347831406250475257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088827 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A325964 (f1 j).toNat = 1) n)

end

end A356382.P3347831406250475257

noncomputable section

/-- A356382: Even terms in A014567.

Offset 1, canonical program `A356382.P3347831406250475257`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A356382 (n : ℕ) : ℤ :=
  A356382.P3347831406250475257.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A356382.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356447.P15206919094827022873

`3*A096304(n+1)-1`
-/

namespace A356447.P15206919094827022873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A096304 (n + 1) - 1

end

end A356447.P15206919094827022873

noncomputable section

/-- A356447: Integers k such that (k+1)*(2*k-1) does not divide the central binomial coefficient B(k) = binomial(2*k,k) = A000984(k).

Offset 1, canonical program `A356447.P15206919094827022873`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A096304, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A356447 (n : ℕ) : ℤ :=
  A356447.P15206919094827022873.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A096304, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A356447.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A356489.P7698722128362908516

`ceil(A077063(n+1)/2)`
-/

namespace A356489.P7698722128362908516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A077063 (n + 1) : ℚ) / 2⌉

end

end A356489.P7698722128362908516

noncomputable section

/-- A356489: a(n) = A000265(rad(prime(n)-1)), rad = A007947.

Offset 1, canonical program `A356489.P7698722128362908516`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356489 (n : ℕ) : ℤ :=
  A356489.P7698722128362908516.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356489.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A357014.P2212409832347884879

`filter[A197680(n+1), A000035(#)]`
-/

namespace A357014.P2212409832347884879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197680 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A357014.P2212409832347884879

noncomputable section

/-- A357014: Numbers whose sum of exponential divisors (A051377) is odd.

Offset 1, canonical program `A357014.P2212409832347884879`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4101 terms. -/
def A357014 (n : ℕ) : ℤ :=
  A357014.P2212409832347884879.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4101 terms. -/
def A357014.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A357282.P13157617072613635839

`∑[A340849(A057428(n)+n)]`
-/

namespace A357282.P13157617072613635839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340849 (A057428 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A357282.P13157617072613635839

noncomputable section

/-- A357282: a(n) = number of subsets S of {1,2,...,n} having more than 1 element such that (difference between least two elements of S) = difference between greatest two elements of S.

Offset 0, canonical program `A357282.P13157617072613635839`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A357282 (n : ℕ) : ℤ :=
  A357282.P13157617072613635839.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A357282.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A357284.P2693136668523446039

`1/2*A357283(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A357284.P2693136668523446039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A357283 n : ℚ)

end

end A357284.P2693136668523446039

noncomputable section

/-- A357284: a(n) = (1/2)*A357283(n).

Offset 0, canonical program `A357284.P2693136668523446039`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A357283, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A357284 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A357284.P2693136668523446039.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A357283, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A357284.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A357508.P15053977513581267992

`A001448(n)-2*A005810(n)`
-/

namespace A357508.P15053977513581267992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001448 n - 2 * A005810 n

end

end A357508.P15053977513581267992

noncomputable section

/-- A357508: a(n) = binomial(4*n,2*n) - 2*binomial(4*n,n).

Offset 0, canonical program `A357508.P15053977513581267992`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005810, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A357508 (n : ℕ) : ℤ :=
  A357508.P15053977513581267992.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005810, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A357508.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A357679.P3103708975997377997

`A109805(n+1)+A069486(n+1)`
-/

namespace A357679.P3103708975997377997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109805 (n + 1) + A069486 (n + 1)

end

end A357679.P3103708975997377997

noncomputable section

/-- A357679: a(n) = prime(n)*(prime(n-1) + prime(n+1)).

Offset 2, canonical program `A357679.P3103708975997377997`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A357679 (n : ℕ) : ℤ :=
  A357679.P3103708975997377997.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A357679.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A357731.P9040152959614539463

`A010056(A194029(n+2))`
-/

namespace A357731.P9040152959614539463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010056 (A194029 (n + 2)).toNat

end

end A357731.P9040152959614539463

noncomputable section

/-- A357731: Number of partitions of n into 2 distinct positive Fibonacci numbers (with a single type of 1).

Offset 3, canonical program `A357731.P9040152959614539463`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A357731 (n : ℕ) : ℤ :=
  A357731.P9040152959614539463.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A357731.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358396.P11595349240715137252

`∩[2*n, A053229(n+1)]`
-/

namespace A358396.P11595349240715137252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A358396.P11595349240715137252

noncomputable section

/-- A358396: Even numbers k such that sigma(k) + sigma(k+2) < 2*sigma(k+1); even terms in A053229.

Offset 1, canonical program `A358396.P11595349240715137252`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A358396 (n : ℕ) : ℤ :=
  (A358396.P11595349240715137252.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A358396.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358591.P6447892904110936173

`A002457(A289207(n+1))-A026641(n)`
-/

namespace A358591.P6447892904110936173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002457 (A289207 (n + 1)).toNat - A026641 n

end

end A358591.P6447892904110936173

noncomputable section

/-- A358591: Number of 2n-node rooted trees whose height, number of leaves, and number of internal (non-leaf) nodes are all equal.

Offset 1, canonical program `A358591.P6447892904110936173`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A358591 (n : ℕ) : ℤ :=
  A358591.P6447892904110936173.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A358591.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358768.P8130297315426671572

`comp[A358767(n+1)-1]+1`
-/

namespace A358768.P8130297315426671572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358767 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A358768.P8130297315426671572

noncomputable section

/-- A358768: Numbers k with an odd number of prime factors (when counted with multiplicity) in sigma(k), the sum of divisors of k.

Offset 1, canonical program `A358768.P8130297315426671572`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358768 (n : ℕ) : ℤ :=
  (A358768.P8130297315426671572.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358768.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358975.P7383163706299752423

`eq[1, gcd(n, A230641(n))]`
-/

namespace A358975.P7383163706299752423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A230641 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A358975.P7383163706299752423

noncomputable section

/-- A358975: Numbers that are coprime to their digital sum in base 3 (A053735).

Offset 1, canonical program `A358975.P7383163706299752423`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4032 terms. -/
def A358975 (n : ℕ) : ℤ :=
  (A358975.P7383163706299752423.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4032 terms. -/
def A358975.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359176.P7905553972309239511

`A045992(n)-1`
-/

namespace A359176.P7905553972309239511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045992 n - 1

end

end A359176.P7905553972309239511

noncomputable section

/-- A359176: a(n) = binomial(2*n-2,n-1) - n.

Offset 1, canonical program `A359176.P7905553972309239511`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A359176 (n : ℕ) : ℤ :=
  A359176.P7905553972309239511.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A359176.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359212.P16228497027408349592

`A293895(3*n+1)+1`
-/

namespace A359212.P16228497027408349592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293895 (3 * n + 1) + 1

end

end A359212.P16228497027408349592

noncomputable section

/-- A359212: Number of divisors of 3*n-2 of form 3*k+1.

Offset 1, canonical program `A359212.P16228497027408349592`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6667 terms. -/
def A359212 (n : ℕ) : ℤ :=
  A359212.P16228497027408349592.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6667 terms. -/
def A359212.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359217.P5863385716239077035

`A180714(floor(n/2))`
-/

namespace A359217.P5863385716239077035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180714 ⌊(n : ℚ) / 2⌋.toNat

end

end A359217.P5863385716239077035

noncomputable section

/-- A359217: Y-coordinates of a point moving along a counterclockwise undulating spiral on a square grid.

Offset 0, canonical program `A359217.P5863385716239077035`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359217 (n : ℕ) : ℤ :=
  A359217.P5863385716239077035.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359217.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359484.P7918762155448628384

`∑{d}[n+1, A230074(#)*A327278((n+1)/#)]`
-/

namespace A359484.P7918762155448628384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A230074 d * A327278 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A359484.P7918762155448628384

noncomputable section

/-- A359484: a(n) = n * mu(n) if n is odd, otherwise n * mu(n) - (n/2) * mu(n/2).

Offset 1, canonical program `A359484.P7918762155448628384`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359484 (n : ℕ) : ℤ :=
  A359484.P7918762155448628384.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359484.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360010.P17961547097730859062

`A056556(n)+1`
-/

namespace A360010.P17961547097730859062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 n + 1

end

end A360010.P17961547097730859062

noncomputable section

/-- A360010: First part of the n-th weakly decreasing triple of positive integers sorted lexicographically. Each n > 0 is repeated A000217(n) times.

Offset 1, canonical program `A360010.P17961547097730859062`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056556, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A360010 (n : ℕ) : ℤ :=
  A360010.P17961547097730859062.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056556, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A360010.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A360394.P3572718822950874198

`A285980(n+1)+1+n`
-/

namespace A360394.P3572718822950874198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285980 (n + 1) + 1 + (n : ℤ)

end

end A360394.P3572718822950874198

noncomputable section

/-- A360394: Intersection of A026430 and A360392.

Offset 1, canonical program `A360394.P3572718822950874198`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360394 (n : ℕ) : ℤ :=
  A360394.P3572718822950874198.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360394.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360430.P11552111043147388928

`∑{d}[n+1, A174466(#)*A271102((n+1)/#)]`
-/

namespace A360430.P11552111043147388928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A174466 d * A271102 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A360430.P11552111043147388928

noncomputable section

/-- A360430: Dirichlet convolution of Dedekind psi by A038040.

Offset 1, canonical program `A360430.P11552111043147388928`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360430 (n : ℕ) : ℤ :=
  A360430.P11552111043147388928.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360430.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360723.P6263523856395818707

`lt[3, A080400(A329601(n+1))]+1`
-/

namespace A360723.P6263523856395818707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080400 (A329601 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A360723.P6263523856395818707

noncomputable section

/-- A360723: Numbers that have at least one exponent in their canonical prime factorization that is neither 2 nor of the form 2^k-1, k>=1.

Offset 1, canonical program `A360723.P6263523856395818707`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1437 terms. -/
def A360723 (n : ℕ) : ℤ :=
  (A360723.P6263523856395818707.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1437 terms. -/
def A360723.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360790.P1191159988977339540

`A001248(n+1)+A076821(n+2)`
-/

namespace A360790.P1191159988977339540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) + A076821 (n + 2)

end

end A360790.P1191159988977339540

noncomputable section

/-- A360790: Squared length of diagonal of right trapezoid with three consecutive prime length sides.

Offset 1, canonical program `A360790.P1191159988977339540`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001248, A076821, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A360790 (n : ℕ) : ℤ :=
  A360790.P1191159988977339540.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001248, A076821, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A360790.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A360861.P15419195558037140472

`A005654(n+1)+C(A210736(n+1), 2)`
-/

namespace A360861.P15419195558037140472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005654 (n + 1) + (Nat.choose (A210736 (n + 1)).toNat 2 : ℤ)

end

end A360861.P15419195558037140472

noncomputable section

/-- A360861: a(n) = Sum_{k=0..n} binomial(n, ceiling(k/2)) * binomial(n, floor(k/2)).

Offset 0, canonical program `A360861.P15419195558037140472`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A360861 (n : ℕ) : ℤ :=
  A360861.P15419195558037140472.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A360861.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361116.P7100103913625895617

`1-A361115(n)`
-/

namespace A361116.P7100103913625895617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A361115 n

end

end A361116.P7100103913625895617

noncomputable section

/-- A361116: a(n)=0 if A361102(n) is divisible by 3, otherwise 1.

Offset 0, canonical program `A361116.P7100103913625895617`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361116 (n : ℕ) : ℤ :=
  A361116.P7100103913625895617.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361116.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361338.P12830044282010602030

`A122856(C(floor(n/2), 56))`
-/

namespace A361338.P12830044282010602030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122856 (Nat.choose ⌊(n : ℚ) / 2⌋.toNat 56)

end

end A361338.P12830044282010602030

noncomputable section

/-- A361338: Number of different single-digit numbers that can be reached from n by any permissible sequence of split-and-multiply operations.

Offset 0, canonical program `A361338.P12830044282010602030`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A361338 (n : ℕ) : ℤ :=
  A361338.P12830044282010602030.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A361338.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361463.P2469529019636673647

`4%A361462(n+1)`
-/

namespace A361463.P2469529019636673647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 4 (A361462 (n + 1))

end

end A361463.P2469529019636673647

noncomputable section

/-- A361463: a(n) = 1 if A135506(n) == 3 (mod 4), otherwise 0.

Offset 1, canonical program `A361463.P2469529019636673647`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361463 (n : ℕ) : ℤ :=
  A361463.P2469529019636673647.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361463.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361627.P2747137712555199260

`lt[A301274(n+1), n]+1`
-/

namespace A361627.P2747137712555199260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301274 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A361627.P2747137712555199260

noncomputable section

/-- A361627: Positive integers such that GCD(A007504(n),n) != 1.

Offset 1, canonical program `A361627.P2747137712555199260`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 511 terms. -/
def A361627 (n : ℕ) : ℤ :=
  (A361627.P2747137712555199260.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 511 terms. -/
def A361627.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361631.P4568243048912634249

`gcd(n, A215480(n+2)+1)`
-/

namespace A361631.P4568243048912634249
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A215480 (n + 2) + 1)

end

end A361631.P4568243048912634249

noncomputable section

/-- A361631: a(n) is the denominator of the median of the distinct prime factors of n.

Offset 2, canonical program `A361631.P4568243048912634249`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A361631 (n : ℕ) : ℤ :=
  (A361631.P4568243048912634249.a (n - 2) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A361631.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361709.P5681278177641899572

`∑{d}[n+1, A007427(#)*A361708((n+1)/#)]`
-/

namespace A361709.P5681278177641899572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A361708 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A361709.P5681278177641899572

noncomputable section

/-- A361709: Moebius transform of nonprimes.

Offset 1, canonical program `A361709.P5681278177641899572`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361709 (n : ℕ) : ℤ :=
  A361709.P5681278177641899572.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361709.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361982.P1969307350692837118

`∑[A332793(n+1)]`
-/

namespace A361982.P1969307350692837118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A361982.P1969307350692837118

noncomputable section

/-- A361982: a(n) = 1 + Sum_{k=2..n} (-1)^k * k * a(floor(n/k)).

Offset 1, canonical program `A361982.P1969307350692837118`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361982 (n : ℕ) : ℤ :=
  A361982.P1969307350692837118.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361982.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361983.P15191376049012557876

`∑[(n+1)*A332793(n+1)]`
-/

namespace A361983.P15191376049012557876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A332793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A361983.P15191376049012557876

noncomputable section

/-- A361983: a(n) = 1 + Sum_{k=2..n} (-1)^k * k^2 * a(floor(n/k)).

Offset 1, canonical program `A361983.P15191376049012557876`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361983 (n : ℕ) : ℤ :=
  A361983.P15191376049012557876.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361983.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361984.P10115388884131320115

`∑{d}[n+1, A006519(#)*A007427((n+1)/#)]`
-/

namespace A361984.P10115388884131320115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A006519 d * A007427 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A361984.P10115388884131320115

noncomputable section

/-- A361984: a(1) = 1, a(2) = 0; a(n) = Sum_{d|n, d < n} (-1)^(n/d) a(d).

Offset 1, canonical program `A361984.P10115388884131320115`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361984 (n : ℕ) : ℤ :=
  A361984.P10115388884131320115.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361984.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361987.P26249262648997249

`(n+1)*A332793(n+1)`
-/

namespace A361987.P26249262648997249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A332793 (n + 1)

end

end A361987.P26249262648997249

noncomputable section

/-- A361987: a(1) = 1; a(n) = n^2 * Sum_{d|n, d < n} (-1)^(n/d) a(d) / d^2.

Offset 1, canonical program `A361987.P26249262648997249`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361987 (n : ℕ) : ℤ :=
  A361987.P26249262648997249.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361987.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A362227.P57805626971450803

`lcm(-a(and(n, n-1)), A057335(n))` with `a(0)=1`
-/

namespace A362227.P57805626971450803
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (-(a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat : ℤ)) (A057335 n)

end

end A362227.P57805626971450803

noncomputable section

/-- A362227: a(n) = Product_{k=1..w(n)} p(k)^(S(n,k)-1), where set S(n,k) = row n of A272011 and w(n) = A000120(n) is the binary weight of n.

Offset 0, canonical program `A362227.P57805626971450803`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A362227 (n : ℕ) : ℤ :=
  (A362227.P57805626971450803.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A362227.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A362596.P425571288444165629

`A258431(n)-A276666(n)`
-/

namespace A362596.P425571288444165629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258431 n - A276666 n

end

end A362596.P425571288444165629

noncomputable section

/-- A362596: Number of parking functions of size n avoiding the patterns 213 and 321.

Offset 0, canonical program `A362596.P425571288444165629`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A362596 (n : ℕ) : ℤ :=
  A362596.P425571288444165629.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A362596.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A362934.P14523891753937293196

`2*(A002620(n)-A132345(n+1))`
-/

namespace A362934.P14523891753937293196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A002620 n - A132345 (n + 1))

end

end A362934.P14523891753937293196

noncomputable section

/-- A362934: a(n) = A000982(n) - A132188(n).

Offset 1, canonical program `A362934.P14523891753937293196`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A362934 (n : ℕ) : ℤ :=
  A362934.P14523891753937293196.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A362934.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363037.P17593486041959232839

`A188169(n+1)-A188171(n+1)`
-/

namespace A363037.P17593486041959232839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188169 (n + 1) - A188171 (n + 1)

end

end A363037.P17593486041959232839

noncomputable section

/-- A363037: Expansion of Sum_{k>0} x^k / (1 + x^(4*k)).

Offset 1, canonical program `A363037.P17593486041959232839`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A363037 (n : ℕ) : ℤ :=
  A363037.P17593486041959232839.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A363037.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363514.P3877467463108557052

`A293897(3*n+2)`
-/

namespace A363514.P3877467463108557052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293897 (3 * n + 2)

end

end A363514.P3877467463108557052

noncomputable section

/-- A363514: Sum of divisors of 3*n-1 of form 3*k+1.

Offset 1, canonical program `A363514.P3877467463108557052`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6667 terms. -/
def A363514 (n : ℕ) : ℤ :=
  A363514.P3877467463108557052.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6667 terms. -/
def A363514.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363617.P14474920783089210373

`A320901(n+1)-A321543(n+1)`
-/

namespace A363617.P14474920783089210373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320901 (n + 1) - A321543 (n + 1)

end

end A363617.P14474920783089210373

noncomputable section

/-- A363617: Expansion of Sum_{k>0} x^(3*k)/(1+x^k)^4.

Offset 1, canonical program `A363617.P14474920783089210373`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A363617 (n : ℕ) : ℤ :=
  A363617.P14474920783089210373.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A363617.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363674.P14481479446995928057

`A035327(A233280(n+1))`
-/

namespace A363674.P14481479446995928057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (A233280 (n + 1)).toNat

end

end A363674.P14481479446995928057

noncomputable section

/-- A363674: T(n,k) is the decimal equivalent of the n-bit inverted Gray code for k; triangle T(n,k), n>=0, 0<=k<=2^n-1, read by rows.

Offset 0, canonical program `A363674.P14481479446995928057`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9471 terms. -/
def A363674 (n : ℕ) : ℤ :=
  A363674.P14481479446995928057.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9471 terms. -/
def A363674.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363827.P5433554095545495330

`A006519(A072504(n+1))`
-/

namespace A363827.P5433554095545495330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A072504 (n + 1)).toNat

end

end A363827.P5433554095545495330

noncomputable section

/-- A363827: Highest power of 2 dividing n which is <= sqrt(n).

Offset 1, canonical program `A363827.P5433554095545495330`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4468 terms. -/
def A363827 (n : ℕ) : ℤ :=
  A363827.P5433554095545495330.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4468 terms. -/
def A363827.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363888.P18254920220913849060

`A363806(A017005(n))`
-/

namespace A363888.P18254920220913849060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363806 (A017005 n).toNat

end

end A363888.P18254920220913849060

noncomputable section

/-- A363888: Number of divisors of 7*n-5 of form 7*k+4.

Offset 1, canonical program `A363888.P18254920220913849060`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1429 terms. -/
def A363888 (n : ℕ) : ℤ :=
  A363888.P18254920220913849060.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1429 terms. -/
def A363888.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363891.P3580145014683779225

`A078182(3*n+1)`
-/

namespace A363891.P3580145014683779225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078182 (3 * n + 1)

end

end A363891.P3580145014683779225

noncomputable section

/-- A363891: Sum of divisors of 3*n-2 of form 3*k+2.

Offset 1, canonical program `A363891.P3580145014683779225`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078182, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363891 (n : ℕ) : ℤ :=
  A363891.P3580145014683779225.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078182, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363891.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A364045.P12201197628638156281

`A001878((n+1)/A006519(n+1))-A001899(A152271(n))`
-/

namespace A364045.P12201197628638156281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001878 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006519 (n + 1) : ℚ))).toNat - A001899 (A152271 n).toNat

end

end A364045.P12201197628638156281

noncomputable section

/-- A364045: Expansion of Sum_{k>0} x^(3*k) / (1 + x^(5*k)).

Offset 1, canonical program `A364045.P12201197628638156281`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364045 (n : ℕ) : ℤ :=
  A364045.P12201197628638156281.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364045.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364204.P12516854949562588598

`∑{d}[n+1, A117212(#)*A326399((n+1)/#)]`
-/

namespace A364204.P12516854949562588598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A117212 d * A326399 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A364204.P12516854949562588598

noncomputable section

/-- A364204: Expansion of Sum_{k>=0} x^(3*k+1) / (1 + x^(3*k+1)).

Offset 1, canonical program `A364204.P12516854949562588598`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364204 (n : ℕ) : ℤ :=
  A364204.P12516854949562588598.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364204.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365007.P1620271574737912530

`∑{d}[n+1, A057661(#)*A193356((n+1)/#)]`
-/

namespace A365007.P1620271574737912530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057661 d * A193356 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A365007.P1620271574737912530

noncomputable section

/-- A365007: a(n) = Sum_{d|n} (-1)^(n/d-1) * binomial(d+1,2).

Offset 1, canonical program `A365007.P1620271574737912530`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365007 (n : ℕ) : ℤ :=
  A365007.P1620271574737912530.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365007.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A365347.P4718588141798913282

`A000203(A340774(n+1)/A069290(n+1))`
-/

namespace A365347.P4718588141798913282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((A340774 (n + 1) : ℚ) / (A069290 (n + 1) : ℚ))).toNat

end

end A365347.P4718588141798913282

noncomputable section

/-- A365347: The sum of divisors of the smallest number whose square is divisible by n.

Offset 1, canonical program `A365347.P4718588141798913282`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365347 (n : ℕ) : ℤ :=
  A365347.P4718588141798913282.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365347.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365605.P6705090862699678483

`C(2, A097974(n+1))`
-/

namespace A365605.P6705090862699678483
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A097974 (n + 1)).toNat

end

end A365605.P6705090862699678483

noncomputable section

/-- A365605: Characteristic function of numbers without an inferior odd divisor > 1.

Offset 1, canonical program `A365605.P6705090862699678483`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365605 (n : ℕ) : ℤ :=
  (A365605.P6705090862699678483.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365605.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365649.P18263235050208563119

`∑{d}[n+1, A034761(#)*A271102((n+1)/#)]`
-/

namespace A365649.P18263235050208563119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034761 d * A271102 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A365649.P18263235050208563119

noncomputable section

/-- A365649: Dirichlet convolution of sigma with Dedekind psi function.

Offset 1, canonical program `A365649.P18263235050208563119`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365649 (n : ℕ) : ℤ :=
  A365649.P18263235050208563119.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365649.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366256.P9552359015136623183

`eq[1, A366255(n)]`
-/

namespace A366256.P9552359015136623183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366255 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A366256.P9552359015136623183

noncomputable section

/-- A366256: Positions of odd numbers in May code (A303767).

Offset 1, canonical program `A366256.P9552359015136623183`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366256 (n : ℕ) : ℤ :=
  (A366256.P9552359015136623183.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366256.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366257.P194233725417520756

`eq[0, A366255(n)]`
-/

namespace A366257.P194233725417520756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366255 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A366257.P194233725417520756

noncomputable section

/-- A366257: Positions of even numbers in May code (A303767).

Offset 1, canonical program `A366257.P194233725417520756`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366257 (n : ℕ) : ℤ :=
  (A366257.P194233725417520756.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366257.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366371.P15492993876669342531

`∑{d}[n+1, A000034(#-1)*A174275((n+1)/#)]`
-/

namespace A366371.P15492993876669342531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000034 (d - 1) * A174275 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A366371.P15492993876669342531

noncomputable section

/-- A366371: Number of divisors of n that are either an odd prime power > 1 or twice such a number.

Offset 1, canonical program `A366371.P15492993876669342531`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366371 (n : ℕ) : ℤ :=
  A366371.P15492993876669342531.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366371.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366509.P1275813043773061125

`A002024(n+1)-A123578(A025581(n))`
-/

namespace A366509.P1275813043773061125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) - A123578 (A025581 n).toNat

end

end A366509.P1275813043773061125

noncomputable section

/-- A366509: a(n) is the maximum number of dots on the slope of a Ferrers diagram of a partition of n into distinct parts.

Offset 1, canonical program `A366509.P1275813043773061125`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366509 (n : ℕ) : ℤ :=
  A366509.P1275813043773061125.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366509.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366901.P8397804292858311364

`∏{e}[n+1, A115384(#)+1]`
-/

namespace A366901.P8397804292858311364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (A115384 (Nat.factorization (f1 n) p) + 1)

end

end A366901.P8397804292858311364

noncomputable section

/-- A366901: The number of exponentially odious divisors of n.

Offset 1, canonical program `A366901.P8397804292858311364`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366901 (n : ℕ) : ℤ :=
  A366901.P8397804292858311364.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366901.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366938.P18390479391884880701

`∑[A320901(n+1)]`
-/

namespace A366938.P18390479391884880701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320901 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366938.P18390479391884880701

noncomputable section

/-- A366938: a(n) = Sum_{k=1..n} (-1)^(k-1) * binomial(k+2,3) * floor(n/k).

Offset 1, canonical program `A366938.P18390479391884880701`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366938 (n : ℕ) : ℤ :=
  A366938.P18390479391884880701.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366938.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A367055.P714048659223113584

`A000120(A002262(n))+A000120(A003056(n))`
-/

namespace A367055.P714048659223113584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A002262 n).toNat + A000120 (A003056 n).toNat

end

end A367055.P714048659223113584

noncomputable section

/-- A367055: Triangle read by rows: T(n, k) = A000120(n) + A000120(k), 0 <= k <= n.

Offset 0, canonical program `A367055.P714048659223113584`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A367055 (n : ℕ) : ℤ :=
  A367055.P714048659223113584.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A367055.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A367573.P17333785257537184699

`∑[4*A138383(n)]`
-/

namespace A367573.P17333785257537184699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A138383 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A367573.P17333785257537184699

noncomputable section

/-- A367573: Long legs of the only primitive Pythagorean triple whose inradius is the n-th prime and whose short leg is an odd number.

Offset 1, canonical program `A367573.P17333785257537184699`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A367573 (n : ℕ) : ℤ :=
  A367573.P17333785257537184699.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A367573.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A367964.P1387178061800525478

`C(A002262(n), 2)+n`
-/

namespace A367964.P1387178061800525478
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002262 n).toNat 2 + n

end

end A367964.P1387178061800525478

noncomputable section

/-- A367964: Triangle of 2-parameter triangular numbers, read by rows. T(n, k) = (n*(n + 1) + k*(k + 1)) / 2.

Offset 0, canonical program `A367964.P1387178061800525478`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A367964 (n : ℕ) : ℤ :=
  (A367964.P1387178061800525478.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A367964.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368043.P12961776038135060938

`2*a(n-A144112(n))` with `a(0)=1`
-/

namespace A368043.P12961776038135060938
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * a ((n : ℤ) - A144112 n).toNat

end

end A368043.P12961776038135060938

noncomputable section

/-- A368043: Triangle read by rows: T(n, k) = 2^(n + k).

Offset 0, canonical program `A368043.P12961776038135060938`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368043 (n : ℕ) : ℤ :=
  (A368043.P12961776038135060938.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368043.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368050.P9877690928199603770

`A193564(2*n+3)`
-/

namespace A368050.P9877690928199603770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193564 (2 * n + 3)

end

end A368050.P9877690928199603770

noncomputable section

/-- A368050: Main diagonal of the array where row n=0 lists the natural numbers and each new row n=1,2,... is found by taking the number n in the previous row, and "leaping" it over the next n terms to its right, keeping the other numbers fixed (see example).

Offset 1, canonical program `A368050.P9877690928199603770`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5472 terms. -/
def A368050 (n : ℕ) : ℤ :=
  A368050.P9877690928199603770.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5472 terms. -/
def A368050.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368363.P14659399016946543767

`∑[A136107(n+1)]`
-/

namespace A368363.P14659399016946543767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136107 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368363.P14659399016946543767

noncomputable section

/-- A368363: Partial sums of A136107.

Offset 1, canonical program `A368363.P14659399016946543767`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368363 (n : ℕ) : ℤ :=
  A368363.P14659399016946543767.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368363.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368403.P10694540058155907726

`∩[A368402(n+1)-1, A368402(n+1)]`
-/

namespace A368403.P10694540058155907726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368402 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368403.P10694540058155907726

noncomputable section

/-- A368403: Starts of runs of 3 consecutive integers in A268375.

Offset 1, canonical program `A368403.P10694540058155907726`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 558 terms. -/
def A368403 (n : ℕ) : ℤ :=
  (A368403.P10694540058155907726.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 558 terms. -/
def A368403.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368474.P7960031431284467080

`∏{e}[A197680(n+1), #]`
-/

namespace A368474.P7960031431284467080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197680 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A368474.P7960031431284467080

noncomputable section

/-- A368474: Product of exponents of prime factorization of the numbers whose exponents in their prime power factorization are squares (A197680).

Offset 1, canonical program `A368474.P7960031431284467080`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368474 (n : ℕ) : ℤ :=
  (A368474.P7960031431284467080.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368474.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368929.P5346765697596700696

`∑{d}[n+1, A063445(#)*A326238((n+1)/#)]`
-/

namespace A368929.P5346765697596700696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A063445 d * A326238 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A368929.P5346765697596700696

noncomputable section

/-- A368929: Dirichlet g.f.: zeta(s-2)^2 * (1 - 2^(3-s)) / zeta(s).

Offset 1, canonical program `A368929.P5346765697596700696`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368929 (n : ℕ) : ℤ :=
  A368929.P5346765697596700696.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368929.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369179.P633880592290612495

`filter[A048881(n), A011655(#)]`
-/

namespace A369179.P633880592290612495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011655 (f1 j).toNat = 1) n)

end

end A369179.P633880592290612495

noncomputable section

/-- A369179: Irregular triangle read by rows: row n lists the number of I characters for each of the distinct derivable strings in the MIU formal system that are n characters long.

Offset 2, canonical program `A369179.P633880592290612495`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6666 terms. -/
def A369179 (n : ℕ) : ℤ :=
  A369179.P633880592290612495.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6666 terms. -/
def A369179.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369188.P13376849897377668468

`A007862(∏{p}[n+1, #])`
-/

namespace A369188.P13376849897377668468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007862 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A369188.P13376849897377668468

noncomputable section

/-- A369188: Number of squarefree triangular divisors of n.

Offset 1, canonical program `A369188.P13376849897377668468`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369188 (n : ℕ) : ℤ :=
  A369188.P13376849897377668468.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369188.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369736.P2745609336317517813

`A130194(n+1)%2`
-/

namespace A369736.P2745609336317517813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130194 (n + 1)) 2

end

end A369736.P2745609336317517813

noncomputable section

/-- A369736: Triangle read by rows. T(n, k) = 0 if n - k is odd otherwise if 4 divides n - k then 1 otherwise -1.

Offset 0, canonical program `A369736.P2745609336317517813`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369736 (n : ℕ) : ℤ :=
  A369736.P2745609336317517813.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369736.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369870.P16679001750172927295

`∑[A004593(n+2)]`
-/

namespace A369870.P16679001750172927295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004593 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369870.P16679001750172927295

noncomputable section

/-- A369870: Cumulative sum of digits of base-2 representation of Euler number "e".

Offset 1, canonical program `A369870.P16679001750172927295`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369870 (n : ℕ) : ℤ :=
  A369870.P16679001750172927295.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369870.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369900.P17764208855534967289

`a(n-1)+2*A004593(n+1)-1` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A369900.P17764208855534967289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0] fun n a =>
  a (n - 1) + 2 * A004593 (n + 1) - 1

end

end A369900.P17764208855534967289

noncomputable section

/-- A369900: a(n) is twice the sum of the first n binary digits of e minus n.

Offset 0, canonical program `A369900.P17764208855534967289`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004593, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369900 (n : ℕ) : ℤ :=
  A369900.P17764208855534967289.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004593, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369900.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A370304.P8445468617132036536

`A129707(n)+A055243(n)`
-/

namespace A370304.P8445468617132036536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129707 n + A055243 n

end

end A370304.P8445468617132036536

noncomputable section

/-- A370304: Number of multiplex juggling cards with n balls and capacity 2.

Offset 0, canonical program `A370304.P8445468617132036536`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 457 terms. -/
def A370304 (n : ℕ) : ℤ :=
  A370304.P8445468617132036536.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 457 terms. -/
def A370304.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370427.P3544381458467413037

`A175298(n)-n`
-/

namespace A370427.P3544381458467413037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175298 n - (n : ℤ)

end

end A370427.P3544381458467413037

noncomputable section

/-- A370427: a(n) is the least k >= 0 such that n OR k is a binary palindrome (where OR denotes the bitwise OR operator).

Offset 0, canonical program `A370427.P3544381458467413037`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370427 (n : ℕ) : ℤ :=
  A370427.P3544381458467413037.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370427.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370487.P3496478294062338609

`abs(2-A029651(n))`
-/

namespace A370487.P3496478294062338609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A029651 n|

end

end A370487.P3496478294062338609

noncomputable section

/-- A370487: Number of partitions of [3n] into 3 sets of size n having at least one set of consecutive numbers whose maximum (if n>0) is a multiple of n.

Offset 0, canonical program `A370487.P3496478294062338609`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A370487 (n : ℕ) : ℤ :=
  A370487.P3496478294062338609.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A370487.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370905.P18397358388152539286

`∑[A206369(n+1)]`
-/

namespace A370905.P18397358388152539286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370905.P18397358388152539286

noncomputable section

/-- A370905: Partial sums of the alternating sum of divisors function (A206369).

Offset 1, canonical program `A370905.P18397358388152539286`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370905 (n : ℕ) : ℤ :=
  A370905.P18397358388152539286.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370905.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370906.P14316792219775904459

`∑[(-1)^n*A206369(n+1)]`
-/

namespace A370906.P14316792219775904459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A206369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370906.P14316792219775904459

noncomputable section

/-- A370906: Partial alternating sums of the alternating sum of divisors function (A206369).

Offset 1, canonical program `A370906.P14316792219775904459`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370906 (n : ℕ) : ℤ :=
  A370906.P14316792219775904459.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370906.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A371036.P3088427061520026793

`A134759(n)-A141351(n)`
-/

namespace A371036.P3088427061520026793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134759 n - A141351 n

end

end A371036.P3088427061520026793

noncomputable section

/-- A371036: a(n) is the number of ways to place n indistinguishable balls into n distinguishable boxes with at least one box remaining empty and not all balls placed in a single box.

Offset 1, canonical program `A371036.P3088427061520026793`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A371036 (n : ℕ) : ℤ :=
  A371036.P3088427061520026793.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A371036.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A371210.P12332570680869873613

`A324225(A087811(n+2))`
-/

namespace A371210.P12332570680869873613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324225 (A087811 (n + 2)).toNat

end

end A371210.P12332570680869873613

noncomputable section

/-- A371210: Number of minimum vertex colorings in the complement of the path graph on n nodes.

Offset 1, canonical program `A371210.P12332570680869873613`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A371210 (n : ℕ) : ℤ :=
  A371210.P12332570680869873613.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A371210.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A371388.P17118686884510190265

`2*A026271(n+1)+n+1`
-/

namespace A371388.P17118686884510190265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026271 (n + 1) + (n + 1 : ℤ)

end

end A371388.P17118686884510190265

noncomputable section

/-- A371388: a(n) = 2*n*floor(n*(1 + sqrt(5))/2) - n^2. Main diagonal of A340429.

Offset 1, canonical program `A371388.P17118686884510190265`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A371388 (n : ℕ) : ℤ :=
  A371388.P17118686884510190265.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A371388.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A371627.P7388867108596461691

`A003231(n+1)%A186516(n+1)`
-/

namespace A371627.P7388867108596461691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003231 (n + 1)) (A186516 (n + 1))

end

end A371627.P7388867108596461691

noncomputable section

/-- A371627: The x-coordinate of the point where x + y = n, x is an integer and x/y is as close as possible to 1/phi.

Offset 1, canonical program `A371627.P7388867108596461691`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A371627 (n : ℕ) : ℤ :=
  A371627.P7388867108596461691.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A371627.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A371873.P10849458440002664897

`∑[A114121(n)]`
-/

namespace A371873.P10849458440002664897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114121 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A371873.P10849458440002664897

noncomputable section

/-- A371873: a(n) = Sum_{k=0..floor(n/3)} binomial(2*n+1,n-3*k).

Offset 0, canonical program `A371873.P10849458440002664897`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A371873 (n : ℕ) : ℤ :=
  A371873.P10849458440002664897.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A371873.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A371964.P14450817847367118499

`A279561(n)%A275324(A004275(n))`
-/

namespace A371964.P14450817847367118499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A279561 n) (A275324 (A004275 n).toNat)

end

end A371964.P14450817847367118499

noncomputable section

/-- A371964: a(n) is the sum of all symmetric valleys in the set of Catalan words of length n.

Offset 0, canonical program `A371964.P14450817847367118499`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A371964 (n : ℕ) : ℤ :=
  A371964.P14450817847367118499.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A371964.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372258.P5304101874703348284

`A372257(n)%2`
-/

namespace A372258.P5304101874703348284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A372257 n) 2

end

end A372258.P5304101874703348284

noncomputable section

/-- A372258: An infinite sequence over {0,1} with no palindromes of length > 12.

Offset 0, canonical program `A372258.P5304101874703348284`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372258 (n : ℕ) : ℤ :=
  A372258.P5304101874703348284.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372258.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372420.P2955460865026778528

`2*a(n-1)+A028270(n)` with `a(0)=1`
-/

namespace A372420.P2955460865026778528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + A028270 n

end

end A372420.P2955460865026778528

noncomputable section

/-- A372420: Expansion of (1 + x) / ((1 - 2*x)*sqrt(1 - 4*x)).

Offset 0, canonical program `A372420.P2955460865026778528`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A028270, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372420 (n : ℕ) : ℤ :=
  A372420.P2955460865026778528.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A028270, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372420.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A372727.P4784361531490275736

`A003056(n)%A130270(n+1)`
-/

namespace A372727.P4784361531490275736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003056 n) (A130270 (n + 1))

end

end A372727.P4784361531490275736

noncomputable section

/-- A372727: Triangle read by rows: T(n, k) = n if k = 0, otherwise n - k*floor(n/k). The binary modulo operation.

Offset 0, canonical program `A372727.P4784361531490275736`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372727 (n : ℕ) : ℤ :=
  A372727.P4784361531490275736.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372727.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372928.P5952424482190733790

`∑{d}[n+1, A338165(#)]`
-/

namespace A372928.P5952424482190733790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A338165 d

end

end A372928.P5952424482190733790

noncomputable section

/-- A372928: a(n) = Sum_{1 <= x_1, x_2, x_3 <= n} gcd(x_1, x_2, x_3, n)^3.

Offset 1, canonical program `A372928.P5952424482190733790`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372928 (n : ℕ) : ℤ :=
  A372928.P5952424482190733790.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372928.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A372930.P5262437990481401182

`∑{d}[n+1, A053191(#)*A372927((n+1)/#)]`
-/

namespace A372930.P5262437990481401182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053191 d * A372927 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A372930.P5262437990481401182

noncomputable section

/-- A372930: a(n) = Sum_{1 <= x_1, x_2, x_3 <= n} gcd(x_1, x_2, x_3, n)^5.

Offset 1, canonical program `A372930.P5262437990481401182`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372930 (n : ℕ) : ℤ :=
  A372930.P5262437990481401182.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372930.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373039.P3502463588210789433

`(A372966(n+1)-1)/240`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A373039.P3502463588210789433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A372966 (n + 1) - 1 : ℚ) / 240

end

end A373039.P3502463588210789433

noncomputable section

/-- A373039: a(n) = (A372966(n) - 1)/240.

Offset 1, canonical program `A373039.P3502463588210789433`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A372966, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373039 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A373039.P3502463588210789433.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A372966, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373039.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373061.P4996465783766224626

`∑{d}[n+1, #*A341772(#)]`
-/

namespace A373061.P4996465783766224626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A341772 d

end

end A373061.P4996465783766224626

noncomputable section

/-- A373061: a(n) = Sum_{1 <= x_1, x_2, x_3 <= n} gcd(x_1, x_2, n)/gcd(x_1, x_2, x_3, n).

Offset 1, canonical program `A373061.P4996465783766224626`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373061 (n : ℕ) : ℤ :=
  A373061.P4996465783766224626.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373061.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373095.P265184573945990704

`A000045((2*n)%A324400(2*n+1))`
-/

namespace A373095.P265184573945990704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.tmod (2 * n : ℤ) (A324400 (2 * n + 1))).toNat

end

end A373095.P265184573945990704

noncomputable section

/-- A373095: a(n) = a[n/4] + a[n/8] + a[n/16] + ..., where a(0) = 0, a(1) = 1, and [ ] = floor.

Offset 0, canonical program `A373095.P265184573945990704`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373095 (n : ℕ) : ℤ :=
  A373095.P265184573945990704.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373095.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373184.P13347508952625175779

`A168570(n+1)+A327625(n+1)+A284413(n+1)`
-/

namespace A373184.P13347508952625175779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168570 (n + 1) + (A327625 (n + 1) + A284413 (n + 1))

end

end A373184.P13347508952625175779

noncomputable section

/-- A373184: G.f. A(x) satisfies A(x) = 1/(1 - x)^2 - 1 + A(x^3).

Offset 1, canonical program `A373184.P13347508952625175779`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373184 (n : ℕ) : ℤ :=
  A373184.P13347508952625175779.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373184.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373186.P9548359750285709063

`∑{d}[n+1, A057661(#)*A195459((n+1)/#)]`
-/

namespace A373186.P9548359750285709063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057661 d * A195459 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A373186.P9548359750285709063

noncomputable section

/-- A373186: Expansion of Sum_{k>=0} x^(3^k) / (1 - x^(3^k))^3.

Offset 1, canonical program `A373186.P9548359750285709063`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1835 terms. -/
def A373186 (n : ℕ) : ℤ :=
  A373186.P9548359750285709063.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1835 terms. -/
def A373186.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373188.P5716519306742437807

`A373185(n+1)-A115362(n)`
-/

namespace A373188.P5716519306742437807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373185 (n + 1) - A115362 n

end

end A373188.P5716519306742437807

noncomputable section

/-- A373188: Expansion of Sum_{k>=0} x^(4^k) / (1 - x^(4^k))^2.

Offset 1, canonical program `A373188.P5716519306742437807`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373188 (n : ℕ) : ℤ :=
  A373188.P5716519306742437807.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373188.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373249.P6478375395125739437

`A181819(n+1)/A373246(n+1)`
-/

namespace A373249.P6478375395125739437
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181819 (n + 1) : ℚ) / (A373246 (n + 1) : ℚ)

end

end A373249.P6478375395125739437

noncomputable section

/-- A373249: a(n) = A181819(n) / gcd(n, A181819(n)), where A181819(n) is the prime shadow of n.

Offset 1, canonical program `A373249.P6478375395125739437`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A181819, A373246, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A373249 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A373249.P6478375395125739437.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A181819, A373246, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A373249.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373276.P13345099495360078170

`∑{d}[n+1, A117212(#)*A359189((n+1)/#)]`
-/

namespace A373276.P13345099495360078170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A117212 d * A359189 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A373276.P13345099495360078170

noncomputable section

/-- A373276: a(n) = Sum_{d|n} (-1)^(d-1) * 3^(n/d-1).

Offset 1, canonical program `A373276.P13345099495360078170`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A373276 (n : ℕ) : ℤ :=
  A373276.P13345099495360078170.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A373276.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373384.P16359986176221474190

`filter[A008486(n), A373383(#)]`
-/

namespace A373384.P16359986176221474190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373383 (f1 j).toNat = 1) n)

end

end A373384.P16359986176221474190

noncomputable section

/-- A373384: Numbers k that are multiples of 3 and also A059975(k) is a multiple of 3, where A059975 is fully additive with a(p) = p-1.

Offset 1, canonical program `A373384.P16359986176221474190`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3616 terms. -/
def A373384 (n : ℕ) : ℤ :=
  A373384.P16359986176221474190.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3616 terms. -/
def A373384.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373699.P4733375539581305537

`∑[A024675(n+1)]`
-/

namespace A373699.P4733375539581305537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A373699.P4733375539581305537

noncomputable section

/-- A373699: a(n) is the area of the (n+1)-gon having vertices coordinates (2,0), (2,prime(2)), ..., (n,prime(n)), (n,0).

Offset 3, canonical program `A373699.P4733375539581305537`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373699 (n : ℕ) : ℤ :=
  A373699.P4733375539581305537.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373699.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374198.P8695164487489042083

`record[(n+1)*A374197(n+1)]`
-/

namespace A374198.P8695164487489042083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A374197 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A374198.P8695164487489042083

noncomputable section

/-- A374198: After initial 1, numbers k such that at least one of their divisors is a multiply-perfect number (A007691) larger than one.

Offset 1, canonical program `A374198.P8695164487489042083`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374198 (n : ℕ) : ℤ :=
  A374198.P8695164487489042083.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374198.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374326.P8962171448566803801

`sqrt(A374325(n+1))`
-/

namespace A374326.P8962171448566803801
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A374325 (n + 1) : ℝ)

end

end A374326.P8962171448566803801

noncomputable section

/-- A374326: The square root of the maximal exponent in the prime factorization of the numbers whose maximal exponent in their prime factorization is a square.

Offset 1, canonical program `A374326.P8962171448566803801`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A374325, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374326 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A374326.P8962171448566803801.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A374325, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374326.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A374327.P9816410102867330981

`A051903(A369938(n+1))`
-/

namespace A374327.P9816410102867330981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A369938 (n + 1)).toNat

end

end A374327.P9816410102867330981

noncomputable section

/-- A374327: The maximal exponent in the prime factorization of the numbers whose maximal exponent in their prime factorization is a power of 2.

Offset 1, canonical program `A374327.P9816410102867330981`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374327 (n : ℕ) : ℤ :=
  A374327.P9816410102867330981.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374327.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374534.P17728637451671606639

`∑[A111938(n+1)]-A111938(n+1)`
-/

namespace A374534.P17728637451671606639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111938 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A111938 (n + 1)

end

end A374534.P17728637451671606639

noncomputable section

/-- A374534: Expansion of (x/(4 * (1-x))) * d/dx(theta_3(x)^2).

Offset 0, canonical program `A374534.P17728637451671606639`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374534 (n : ℕ) : ℤ :=
  A374534.P17728637451671606639.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374534.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375177.P17845045903573206518

`A037966(n)+A037965(n+1)`
-/

namespace A375177.P17845045903573206518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037966 n + A037965 (n + 1)

end

end A375177.P17845045903573206518

noncomputable section

/-- A375177: a(n) = 1/(n + 1)^2 * Sum_{k = 1..n+1} (k^4)*binomial(n+1, k)^2.

Offset 1, canonical program `A375177.P17845045903573206518`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 162 terms. -/
def A375177 (n : ℕ) : ℤ :=
  A375177.P17845045903573206518.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 162 terms. -/
def A375177.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375707.P16340562935949203801

`A078147(n+1)-1`
-/

namespace A375707.P16340562935949203801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078147 (n + 1) - 1

end

end A375707.P16340562935949203801

noncomputable section

/-- A375707: First differences minus 1 of nonsquarefree numbers.

Offset 1, canonical program `A375707.P16340562935949203801`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375707 (n : ℕ) : ℤ :=
  A375707.P16340562935949203801.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375707.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376355.P7755162109576139838

`eq[2, a(A002262(n))!]` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A376355.P7755162109576139838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1] fun n f2 =>
  Nat.factorial (f2 (A002262 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376355.P7755162109576139838

noncomputable section

/-- A376355: Numbers that end in 1 when written in base of triangular numbers (cf. A000462).

Offset 1, canonical program `A376355.P7755162109576139838`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3197 terms. -/
def A376355 (n : ℕ) : ℤ :=
  (A376355.P7755162109576139838.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3197 terms. -/
def A376355.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376356.P4105760595979517289

`eq[1, 2-a(A002262(n))]` with `a(0)=6, a(1)=3, a(2)=1, a(3)=0, a(4)=-5`
-/

namespace A376356.P4105760595979517289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [6, 3, 1, 0, -5] fun n f2 =>
  2 - f2 (A002262 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A376356.P4105760595979517289

noncomputable section

/-- A376356: Positions of numbers in A000462 that end in 2.

Offset 1, canonical program `A376356.P4105760595979517289`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2834 terms. -/
def A376356 (n : ℕ) : ℤ :=
  (A376356.P4105760595979517289.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2834 terms. -/
def A376356.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376593.P2696437491636906986

`Δ[A078147(n+1)]`
-/

namespace A376593.P2696437491636906986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078147 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A376593.P2696437491636906986

noncomputable section

/-- A376593: Second differences of consecutive nonsquarefree numbers (A013929). First differences of A078147.

Offset 1, canonical program `A376593.P2696437491636906986`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A376593 (n : ℕ) : ℤ :=
  A376593.P2696437491636906986.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A376593.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376645.P10778335862260633849

`A051903((n+1)*A006519(n+1))`
-/

namespace A376645.P10778335862260633849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 ((n + 1 : ℤ) * A006519 (n + 1)).toNat

end

end A376645.P10778335862260633849

noncomputable section

/-- A376645: The maximum exponent in the factorization of n into powers of Gaussian primes.

Offset 1, canonical program `A376645.P10778335862260633849`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 511 terms. -/
def A376645 (n : ℕ) : ℤ :=
  A376645.P10778335862260633849.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 511 terms. -/
def A376645.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A377565.P6598366915608265280

`A109940(n+1)+1+n`
-/

namespace A377565.P6598366915608265280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109940 (n + 1) + 1 + (n : ℤ)

end

end A377565.P6598366915608265280

noncomputable section

/-- A377565: a(n) is the least multiple of n with more decimal digits than n.

Offset 1, canonical program `A377565.P6598366915608265280`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A377565 (n : ℕ) : ℤ :=
  A377565.P6598366915608265280.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A377565.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378384.P16639726357393477

`dr(A112661(n))`
-/

namespace A378384.P16639726357393477
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A112661 n)

end

end A378384.P16639726357393477

noncomputable section

/-- A378384: Digital root of the sum of the previous 3 terms; a(0) = a(1) = a(2) = 1.

Offset 0, canonical program `A378384.P16639726357393477`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378384 (n : ℕ) : ℤ :=
  (A378384.P16639726357393477.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378384.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378802.P6102746320096904477

`A374522(n)+n`
-/

namespace A378802.P6102746320096904477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374522 n + (n : ℤ)

end

end A378802.P6102746320096904477

noncomputable section

/-- A378802: a(n) = n * binomial(4*n, n).

Offset 0, canonical program `A378802.P6102746320096904477`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A374522, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378802 (n : ℕ) : ℤ :=
  A378802.P6102746320096904477.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A374522, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378802.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379100.P14159065626236665285

`A000984(A002262(n))*A168256(n)`
-/

namespace A379100.P14159065626236665285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (A002262 n).toNat * A168256 n

end

end A379100.P14159065626236665285

noncomputable section

/-- A379100: Triangle read by rows: T(n, k) = binomial(2*k, k) * binomial(2*n, n) / (n + 1).

Offset 0, canonical program `A379100.P14159065626236665285`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3915 terms. -/
def A379100 (n : ℕ) : ℤ :=
  A379100.P14159065626236665285.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3915 terms. -/
def A379100.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379222.P16799102987765888211

`A378999(2*n+1)`
-/

namespace A379222.P16799102987765888211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378999 (2 * n + 1)

end

end A379222.P16799102987765888211

noncomputable section

/-- A379222: Number of trailing 1-bits in the binary representation of the sum of the divisors of the n-th odd square: a(n) = sigma((2*n-1)^2).

Offset 1, canonical program `A379222.P16799102987765888211`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A378999, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379222 (n : ℕ) : ℤ :=
  A379222.P16799102987765888211.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A378999, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379222.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379225.P17910529871844759288

`A010874(A374124(n+1))`
-/

namespace A379225.P17910529871844759288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010874 (A374124 (n + 1)).toNat

end

end A379225.P17910529871844759288

noncomputable section

/-- A379225: a(n) = A113177(n) mod 5, where A113177 is fully additive with a(p) = Fibonacci(p).

Offset 1, canonical program `A379225.P17910529871844759288`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A374124, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379225 (n : ℕ) : ℤ :=
  A379225.P17910529871844759288.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A374124, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379225.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379739.P13853497522422973330

`A193564(2*(n+2))`
-/

namespace A379739.P13853497522422973330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193564 (2 * (n + 2))

end

end A379739.P13853497522422973330

noncomputable section

/-- A379739: Subdiagonal of the Hurt-Sada array.

Offset 1, canonical program `A379739.P13853497522422973330`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5472 terms. -/
def A379739 (n : ℕ) : ℤ :=
  A379739.P13853497522422973330.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5472 terms. -/
def A379739.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379833.P7514059028076193467

`(n+1)²*Δ[A321879(n)]`
-/

namespace A379833.P7514059028076193467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321879 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * (f1 (n + 1) - f1 n)

end

end A379833.P7514059028076193467

noncomputable section

/-- A379833: The second Jordan totient function applied to the squares.

Offset 1, canonical program `A379833.P7514059028076193467`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379833 (n : ℕ) : ℤ :=
  A379833.P7514059028076193467.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379833.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380079.P368606423001304580

`A026272(A022342(n+2))`
-/

namespace A380079.P368606423001304580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026272 (A022342 (n + 2)).toNat

end

end A380079.P368606423001304580

noncomputable section

/-- A380079: Start with a list of the positive integers L in increasing order. Then, at turn n>=1, element n jumps from its current position, m, to position m+n. Then a(n) = L(m+1).

Offset 1, canonical program `A380079.P368606423001304580`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. -/
def A380079 (n : ℕ) : ℤ :=
  A380079.P368606423001304580.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. -/
def A380079.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380161.P13122317623640221819

`A206369(A197863(n+1)/(n+1))`
-/

namespace A380161.P13122317623640221819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206369 (SequenceMachineLib.roundAway ((A197863 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A380161.P13122317623640221819

noncomputable section

/-- A380161: a(n) is the value of the Euler totient function when applied to the powerfree part of n.

Offset 1, canonical program `A380161.P13122317623640221819`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A380161 (n : ℕ) : ℤ :=
  A380161.P13122317623640221819.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A380161.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380192.P1180676149005535308

`A010879(A007605(n+1))`
-/

namespace A380192.P1180676149005535308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A007605 (n + 1)).toNat

end

end A380192.P1180676149005535308

noncomputable section

/-- A380192: Sum mod(10) of digits of n-th prime.

Offset 1, canonical program `A380192.P1180676149005535308`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007605, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380192 (n : ℕ) : ℤ :=
  A380192.P1180676149005535308.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007605, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380192.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A380249.P8951733476338430714

`A380024(n)+3^n`
-/

namespace A380249.P8951733476338430714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380024 n + (3 ^ n : ℤ)

end

end A380249.P8951733476338430714

noncomputable section

/-- A380249: a(n) = 4^n - binomial(n,2)*3^(n-2).

Offset 0, canonical program `A380249.P8951733476338430714`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A380249 (n : ℕ) : ℤ :=
  A380249.P8951733476338430714.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A380249.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380397.P18209740756317370687

`A061704(n+1)-A380395(n+1)`
-/

namespace A380397.P18209740756317370687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061704 (n + 1) - A380395 (n + 1)

end

end A380397.P18209740756317370687

noncomputable section

/-- A380397: The number of nonunitary divisors of n that are cubes.

Offset 1, canonical program `A380397.P18209740756317370687`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061704, A380395, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A380397 (n : ℕ) : ℤ :=
  A380397.P18209740756317370687.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061704, A380395, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A380397.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A380824.P13615658694511402789

`A000032(n)*A380823(n)`
-/

namespace A380824.P13615658694511402789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n * A380823 n

end

end A380824.P13615658694511402789

noncomputable section

/-- A380824: Area of the unique primitive Pythagorean triple whose inradius is A000032(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A380824.P13615658694511402789`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A380824 (n : ℕ) : ℤ :=
  A380824.P13615658694511402789.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A380824.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381101.P6112073308414063635

`A010060(eq[0, A048730(n)])`
-/

namespace A381101.P6112073308414063635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048730 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A381101.P6112073308414063635

noncomputable section

/-- A381101: Allouche-Johnson binary sequence based on the Narayana's cows sequence A000930.

Offset 0, canonical program `A381101.P6112073308414063635`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. -/
def A381101 (n : ℕ) : ℤ :=
  A381101.P6112073308414063635.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. -/
def A381101.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381721.P5166114087018402941

`A380823(n)+A000032(n)`
-/

namespace A381721.P5166114087018402941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380823 n + A000032 n

end

end A381721.P5166114087018402941

noncomputable section

/-- A381721: Sum of the legs of the unique primitive Pythagorean triple whose inradius is A000032(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A381721.P5166114087018402941`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A381721 (n : ℕ) : ℤ :=
  A381721.P5166114087018402941.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A381721.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381862.P16203957392250455110

`A105939(n)-A027790(n+2)/2`
-/

namespace A381862.P16203957392250455110
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105939 n : ℚ) - (A027790 (n + 2) : ℚ) / 2

end

end A381862.P16203957392250455110

noncomputable section

/-- A381862: Number of pairs of triangles that are pairwise edge-disjoint in the complete graph K_n.

Offset 5, canonical program `A381862.P16203957392250455110`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A381862 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A381862.P16203957392250455110.a (n - 5))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A381862.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382070.P14318405017331208150

`C(A089241(n+1), 2)`
-/

namespace A382070.P14318405017331208150
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A089241 (n + 1)).toNat 2

end

end A382070.P14318405017331208150

noncomputable section

/-- A382070: Semiperimeter of the unique primitive Pythagorean triple whose inradius is the n-th prime and whose short leg is an odd number.

Offset 1, canonical program `A382070.P14318405017331208150`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382070 (n : ℕ) : ℤ :=
  (A382070.P14318405017331208150.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382070.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382097.P16883226550991024872

`2*A110833(n+1)-1`
-/

namespace A382097.P16883226550991024872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A110833 (n + 1) - 1

end

end A382097.P16883226550991024872

noncomputable section

/-- A382097: Sum of the legs of the unique primitive Pythagorean triple whose inradius is the n-th prime and whose short leg is an odd number.

Offset 1, canonical program `A382097.P16883226550991024872`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382097 (n : ℕ) : ℤ :=
  A382097.P16883226550991024872.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382097.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382416.P15268872696336261264

`comp[A248910(n+1)]`
-/

namespace A382416.P15268872696336261264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248910 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A382416.P15268872696336261264

noncomputable section

/-- A382416: Numbers with at least one zero in their base-6 representation.

Offset 1, canonical program `A382416.P15268872696336261264`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382416 (n : ℕ) : ℤ :=
  (A382416.P15268872696336261264.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382416.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382503.P4051252001946034417

`A072929(n+1)/2`
-/

namespace A382503.P4051252001946034417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072929 (n + 1) : ℚ) / 2

end

end A382503.P4051252001946034417

noncomputable section

/-- A382503: a(n) = Sum_{d|n} binomial(2*d-1,d).

Offset 1, canonical program `A382503.P4051252001946034417`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072929, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382503 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A382503.P4051252001946034417.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072929, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382503.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A382875.P17273073748173241581

`A080425(3*n)+comp[A161790(n+1)]`
-/

namespace A382875.P17273073748173241581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161790 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 (3 * n) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A382875.P17273073748173241581

noncomputable section

/-- A382875: Numbers which are a multiple of 2^k - 1 for some k > 1.

Offset 1, canonical program `A382875.P17273073748173241581`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A382875 (n : ℕ) : ℤ :=
  A382875.P17273073748173241581.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A382875.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383078.P12298779047005222962

`A373568(n+1)+A373568(n+1)-A006357(n)`
-/

namespace A383078.P12298779047005222962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373568 (n + 1) + (A373568 (n + 1) - A006357 n)

end

end A383078.P12298779047005222962

noncomputable section

/-- A383078: Number of n-digit positive integers where all pairs of consecutive digits have a difference of at least 6.

Offset 1, canonical program `A383078.P12298779047005222962`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. -/
def A383078 (n : ℕ) : ℤ :=
  A383078.P12298779047005222962.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. -/
def A383078.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383425.P7132039530282739650

`filter[A022342(n+1), A383422(#)]`
-/

namespace A383425.P7132039530282739650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A383422 (f1 j).toNat = 1) n)

end

end A383425.P7132039530282739650

noncomputable section

/-- A383425: Indices k such that A003849(k) = 0 and A383422(k) = 1.

Offset 1, canonical program `A383425.P7132039530282739650`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3234 terms. -/
def A383425 (n : ℕ) : ℤ :=
  A383425.P7132039530282739650.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3234 terms. -/
def A383425.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383426.P17980230647925148357

`lt[A383422(n), A003849(n)]`
-/

namespace A383426.P17980230647925148357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383422 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A383426.P17980230647925148357

noncomputable section

/-- A383426: Indices k such that A003849(k) = 1 and A383422(k) = 0.

Offset 1, canonical program `A383426.P17980230647925148357`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1526 terms. -/
def A383426 (n : ℕ) : ℤ :=
  (A383426.P17980230647925148357.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1526 terms. -/
def A383426.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383451.P5284204674195403316

`A000217(n+1)*A025174(n+2)`
-/

namespace A383451.P5284204674195403316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) * A025174 (n + 2)

end

end A383451.P5284204674195403316

noncomputable section

/-- A383451: 3rd diagonal (from right) in A104978.

Offset 0, canonical program `A383451.P5284204674195403316`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. -/
def A383451 (n : ℕ) : ℤ :=
  A383451.P5284204674195403316.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. -/
def A383451.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383593.P18009256936053025423

`A004760(A266341(n)+2)`
-/

namespace A383593.P18009256936053025423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004760 (A266341 n + 2).toNat

end

end A383593.P18009256936053025423

noncomputable section

/-- A383593: In the binary expansion of n, change the most significant 0 bit to 1, if there is any 0 bit.

Offset 0, canonical program `A383593.P18009256936053025423`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383593 (n : ℕ) : ℤ :=
  A383593.P18009256936053025423.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383593.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383657.P13992406352732443113

`∏{e}[n+1, A001803(#)]`
-/

namespace A383657.P13992406352732443113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A001803 (Nat.factorization (f1 n) p)

end

end A383657.P13992406352732443113

noncomputable section

/-- A383657: Numerator of Dirichlet g.f.: Sum_{n>=1} a(n)/n^s = zeta(s)^(3/2).

Offset 1, canonical program `A383657.P13992406352732443113`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383657 (n : ℕ) : ℤ :=
  A383657.P13992406352732443113.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383657.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383832.P14484919071808481643

`(n+1)*A076025(n+1)`
-/

namespace A383832.P14484919071808481643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A076025 (n + 1)

end

end A383832.P14484919071808481643

noncomputable section

/-- A383832: a(n) = Sum_{k=0..n} (k+1) * 3^k * binomial(2*n+2,n-k).

Offset 0, canonical program `A383832.P14484919071808481643`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A383832 (n : ℕ) : ℤ :=
  A383832.P14484919071808481643.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A383832.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384667.P10362112052039593468

`A354353(n+1)+A010055(n+1)`
-/

namespace A384667.P10362112052039593468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354353 (n + 1) + A010055 (n + 1)

end

end A384667.P10362112052039593468

noncomputable section

/-- A384667: Characteristic function of powers of squarefree numbers (A072774).

Offset 1, canonical program `A384667.P10362112052039593468`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384667 (n : ℕ) : ℤ :=
  A384667.P10362112052039593468.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384667.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384955.P6172935050039872195

`A269221(n)/A066459(n)`
-/

namespace A384955.P6172935050039872195
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269221 n : ℚ) / (A066459 n : ℚ)

end

end A384955.P6172935050039872195

noncomputable section

/-- A384955: a(n) is the multinomial coefficient of the digits of n.

Offset 0, canonical program `A384955.P6172935050039872195`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066459, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A384955 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A384955.P6172935050039872195.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066459, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A384955.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A384956.P1572791689955752356

`xor(A000120(n), A023416(n))`
-/

namespace A384956.P1572791689955752356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000120 n) (A023416 n)

end

end A384956.P1572791689955752356

noncomputable section

/-- A384956: Binary XOR of number of 1-bits in the binary representation of n and number of 0-bits in the binary representation of n, a(0) = 1.

Offset 0, canonical program `A384956.P1572791689955752356`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384956 (n : ℕ) : ℤ :=
  A384956.P1572791689955752356.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384956.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385435.P8381468024742294352

`A051638(A032766(n))`
-/

namespace A385435.P8381468024742294352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051638 (A032766 n).toNat

end

end A385435.P8381468024742294352

noncomputable section

/-- A385435: Row sums of A385434.

Offset 0, canonical program `A385435.P8381468024742294352`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 998 terms. -/
def A385435 (n : ℕ) : ℤ :=
  A385435.P8381468024742294352.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 998 terms. -/
def A385435.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385507.P8812681663359870477

`A089309(3*n+2)`
-/

namespace A385507.P8812681663359870477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (3 * n + 2)

end

end A385507.P8812681663359870477

noncomputable section

/-- A385507: a(n) = v(1 + F(2*n - 1)), where F(x) = (3*x + 1)/2^v(3*x + 1), x is any odd natural number, and v(y) is the 2-adic valuation of y.

Offset 1, canonical program `A385507.P8812681663359870477`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5461 terms. -/
def A385507 (n : ℕ) : ℤ :=
  A385507.P8812681663359870477.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5461 terms. -/
def A385507.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385641.P16422059336115816604

`A211278(n)+A247287(n)`
-/

namespace A385641.P16422059336115816604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211278 n + A247287 n

end

end A385641.P16422059336115816604

noncomputable section

/-- A385641: Partial sums of A097893.

Offset 0, canonical program `A385641.P16422059336115816604`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A211278, A247287, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A385641 (n : ℕ) : ℤ :=
  A385641.P16422059336115816604.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A211278, A247287, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A385641.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A385656.P8934032101623162455

`lt[(n+1)²%A004159(n+1), 1]+1`
-/

namespace A385656.P8934032101623162455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1) ^ 2 : ℤ) (A004159 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A385656.P8934032101623162455

noncomputable section

/-- A385656: Numbers k such that the sum of the decimal digits of k^2 divides k^2.

Offset 1, canonical program `A385656.P8934032101623162455`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1769 terms. -/
def A385656 (n : ℕ) : ℤ :=
  (A385656.P8934032101623162455.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1769 terms. -/
def A385656.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387263.P12544637405152836524

`∑[A247287(n)]`
-/

namespace A387263.P12544637405152836524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247287 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387263.P12544637405152836524

noncomputable section

/-- A387263: Partial sums of A247287.

Offset 0, canonical program `A387263.P12544637405152836524`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A387263 (n : ℕ) : ℤ :=
  A387263.P12544637405152836524.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A387263.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387858.P204577345225276622

`A008670(A042948(3*n+4)+1)`
-/

namespace A387858.P204577345225276622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008670 (A042948 (3 * n + 4) + 1).toNat

end

end A387858.P204577345225276622

noncomputable section

/-- A387858: Sum of squares of the multiplicities of pairwise distances among the vertices of a regular n-gon.

Offset 3, canonical program `A387858.P204577345225276622`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1666 terms. -/
def A387858 (n : ℕ) : ℤ :=
  A387858.P204577345225276622.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1666 terms. -/
def A387858.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387913.P14282635771981914480

`A359435(n+3)+1`
-/

namespace A387913.P14282635771981914480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359435 (n + 3) + 1

end

end A387913.P14282635771981914480

noncomputable section

/-- A387913: Hodge number h^{1,n-1} of a smooth hypersurface of degree n+2 in P^{n+1}.

Offset 1, canonical program `A387913.P14282635771981914480`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A387913 (n : ℕ) : ℤ :=
  A387913.P14282635771981914480.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A387913.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A388067.P9453088931527127366

`∑{d}[n+1, A369308(#)]`
-/

namespace A388067.P9453088931527127366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A369308 d

end

end A388067.P9453088931527127366

noncomputable section

/-- A388067: Multiplicative sequence a(n) with a(p^e) = (1+floor(e/2)) * (2+floor(e/2)) / 2 for prime p and e >= 0.

Offset 1, canonical program `A388067.P9453088931527127366`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A388067 (n : ℕ) : ℤ :=
  A388067.P9453088931527127366.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A388067.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A388973.P9138127869321454466

`filter[A049419(n+1), A010060(#)]`
-/

namespace A388973.P9138127869321454466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010060 (f1 j).toNat = 1) n)

end

end A388973.P9138127869321454466

noncomputable section

/-- A388973: The number of exponential divisors of the numbers whose number of exponential divisors is a power of 2.

Offset 1, canonical program `A388973.P9138127869321454466`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9581 terms. -/
def A388973 (n : ℕ) : ℤ :=
  A388973.P9138127869321454466.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9581 terms. -/
def A388973.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389648.P661621194831941048

`A000194(A340172(n+1)*A340172(n))`
-/

namespace A389648.P661621194831941048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A340172 (n + 1) * A340172 n).toNat

end

end A389648.P661621194831941048

noncomputable section

/-- A389648: Y coordinate of point n while traversing the half plane by integer points in rectangular layers starting from n=1 at the origin.

Offset 1, canonical program `A389648.P661621194831941048`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389648 (n : ℕ) : ℤ :=
  A389648.P661621194831941048.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389648.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390258.P5353601345552815747

`∑{d}[n+1, A007427(#)*A174466((n+1)/#)]`
-/

namespace A390258.P5353601345552815747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A174466 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A390258.P5353601345552815747

noncomputable section

/-- A390258: Multiplicative sequence a(n) with a(p^e) = p^(e-1) * (e + 1) * (p * (2 + e) - e) / 2 for prime p and e > 0.

Offset 1, canonical program `A390258.P5353601345552815747`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390258 (n : ℕ) : ℤ :=
  A390258.P5353601345552815747.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390258.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390262.P9624603092470050995

`∑{d}[n+1, #*A140697((n+1)/#)]`
-/

namespace A390262.P9624603092470050995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A140697 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A390262.P9624603092470050995

noncomputable section

/-- A390262: Multiplicative sequence a(n) with a(p^e) = ((p + 1)^2 * p^(e-1) - 2) * p^(e-1) for prime p and e > 0.

Offset 1, canonical program `A390262.P9624603092470050995`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390262 (n : ℕ) : ℤ :=
  A390262.P9624603092470050995.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390262.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390524.P6174133227094776359

`A000045(A025581(n))*A002262(n)`
-/

namespace A390524.P6174133227094776359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A025581 n).toNat * A002262 n

end

end A390524.P6174133227094776359

noncomputable section

/-- A390524: Array read by ascending antidiagonals: A(n, k) = k * Fibonacci(n).

Offset 0, canonical program `A390524.P6174133227094776359`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390524 (n : ℕ) : ℤ :=
  A390524.P6174133227094776359.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390524.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390804.P16802379119078038910

`∑{d}[n+1, A057661(#)*A067856((n+1)/#)]`
-/

namespace A390804.P16802379119078038910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057661 d * A067856 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A390804.P16802379119078038910

noncomputable section

/-- A390804: The sum of the integers k from 1 to n such that gcd(n, k) is a power of 2.

Offset 1, canonical program `A390804.P16802379119078038910`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390804 (n : ℕ) : ℤ :=
  A390804.P16802379119078038910.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390804.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390809.P1718216856557359556

`∑{d}[n+1, A057661(#)*A086831((n+1)/#)]`
-/

namespace A390809.P1718216856557359556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057661 d * A086831 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A390809.P1718216856557359556

noncomputable section

/-- A390809: The sum of the integers k from 1 to n such that gcd(n, k) is either 1 or 2.

Offset 1, canonical program `A390809.P1718216856557359556`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390809 (n : ℕ) : ℤ :=
  A390809.P1718216856557359556.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390809.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390965.P17095960951919550593

`A070857(n)-A070031(n)`
-/

namespace A390965.P17095960951919550593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070857 n - A070031 n

end

end A390965.P17095960951919550593

noncomputable section

/-- A390965: a(n) = (1/(n+1)) * Sum_{k=0..n} k^2 * (k+1) * binomial(2*n-k,n-k).

Offset 0, canonical program `A390965.P17095960951919550593`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A390965 (n : ℕ) : ℤ :=
  A390965.P17095960951919550593.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A390965.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391026.P7612980702264081441

`filter[A332785(n+1), A354034(#)]`
-/

namespace A391026.P7612980702264081441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332785 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354034 (f1 j).toNat = 1) n)

end

end A391026.P7612980702264081441

noncomputable section

/-- A391026: Even numbers that are neither powerful nor squarefree.

Offset 1, canonical program `A391026.P7612980702264081441`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7629 terms. -/
def A391026 (n : ℕ) : ℤ :=
  A391026.P7612980702264081441.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7629 terms. -/
def A391026.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391134.P1699678046192407440

`A030238(n+1)-A132364(n+1)`
-/

namespace A391134.P1699678046192407440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030238 (n + 1) - A132364 (n + 1)

end

end A391134.P1699678046192407440

noncomputable section

/-- A391134: Expansion of g^2/(1 - x^2*g), where g = 1+x*g^2 is the g.f. of A000108.

Offset 0, canonical program `A391134.P1699678046192407440`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A391134 (n : ℕ) : ℤ :=
  A391134.P1699678046192407440.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A391134.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392537.P5789005694378708755

`∩[A332785(n+1), A382967(n+1)]`
-/

namespace A392537.P5789005694378708755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382967 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392537.P5789005694378708755

noncomputable section

/-- A392537: Biquadratefree numbers that are neither squareful nor squarefree.

Offset 1, canonical program `A392537.P5789005694378708755`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8135 terms. -/
def A392537 (n : ℕ) : ℤ :=
  (A392537.P5789005694378708755.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8135 terms. -/
def A392537.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A393203.P1946104728594455480

`A393202(n+2)/2`
-/

namespace A393203.P1946104728594455480
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A393202 (n + 2) : ℚ) / 2

end

end A393203.P1946104728594455480

noncomputable section

/-- A393203: a(n) = (1/2)*(prime(n + 2)^2 - prime(n + 1)*prime(n)).

Offset 2, canonical program `A393203.P1946104728594455480`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A393203 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A393203.P1946104728594455480.a (n - 2))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A393203.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A393292.P14481508653223136911

`1-A362248(n+1)+n`
-/

namespace A393292.P14481508653223136911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A362248 (n + 1) + (n : ℤ)

end

end A393292.P14481508653223136911

noncomputable section

/-- A393292: Number computed by Wolfram's 2-state 2-symbol Turing machine 2205 when started with n on the tape.

Offset 1, canonical program `A393292.P14481508653223136911`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393292 (n : ℕ) : ℤ :=
  A393292.P14481508653223136911.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393292.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A394426.P7725940493784829555

`A049419(A197680(n+1))`
-/

namespace A394426.P7725940493784829555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 (A197680 (n + 1)).toNat

end

end A394426.P7725940493784829555

noncomputable section

/-- A394426: The number of exponential divisors of the numbers whose exponents in their prime factorization are squares (A197680).

Offset 1, canonical program `A394426.P7725940493784829555`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6417 terms. -/
def A394426 (n : ℕ) : ℤ :=
  A394426.P7725940493784829555.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6417 terms. -/
def A394426.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A394529.P4813404703482126856

`(n²*A000108(n)+A008549(n))/2`
-/

namespace A394529.P4813404703482126856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) * A000108 n + A008549 n : ℚ) / 2

end

end A394529.P4813404703482126856

noncomputable section

/-- A394529: Total number of cells under all Dyck paths of semilength n in the first quadrant of the square grid.

Offset 0, canonical program `A394529.P4813404703482126856`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008549, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A394529 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A394529.P4813404703482126856.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008549, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A394529.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A394927.P16215032132539986639

`∑[A099375(n)]-A099375(n)`
-/

namespace A394927.P16215032132539986639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A099375 n

end

end A394927.P16215032132539986639

noncomputable section

/-- A394927: a(n) is the minimal sum of squares over partitions of n into distinct parts.

Offset 0, canonical program `A394927.P16215032132539986639`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A394927 (n : ℕ) : ℤ :=
  A394927.P16215032132539986639.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A394927.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A395251.P13720670033681036438

`eq[A288997(2*n+3)+1, A288997(n+1)]`
-/

namespace A395251.P13720670033681036438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288997 (2 * n + 3) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288997 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A395251.P13720670033681036438

noncomputable section

/-- A395251: a(n) gives positions k >= 1 where the equation b(b(k)+b(k-1)) = k fails, for b(k) = floor(k/sqrt(2) + 2*(sqrt(2)-1)).

Offset 1, canonical program `A395251.P13720670033681036438`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1034 terms. -/
def A395251 (n : ℕ) : ℤ :=
  (A395251.P13720670033681036438.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1034 terms. -/
def A395251.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A395768.P1059238046107922784

`∑{d}[n+1, #*A374367((n+1)/#)]`
-/

namespace A395768.P1059238046107922784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A374367 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A395768.P1059238046107922784

noncomputable section

/-- A395768: The twisted Euler phi-function for the Dirichlet character kronecker(-4,.) mod 4.

Offset 1, canonical program `A395768.P1059238046107922784`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A395768 (n : ℕ) : ℤ :=
  A395768.P1059238046107922784.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A395768.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A396269.P4590932951071944405

`filter[A386684(n+1), A379958(#)]`
-/

namespace A396269.P4590932951071944405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386684 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379958 (f1 j).toNat = 1) n)

end

end A396269.P4590932951071944405

noncomputable section

/-- A396269: Cubefree k that are neither squarefree nor squareful that have more than 2 distinct prime factors.

Offset 1, canonical program `A396269.P4590932951071944405`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7193 terms. -/
def A396269 (n : ℕ) : ℤ :=
  A396269.P4590932951071944405.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7193 terms. -/
def A396269.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A396336.P13045972141286078433

`∑{d}[n+1, A055615(#)*A333645((n+1)/#)]`
-/

namespace A396336.P13045972141286078433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A333645 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A396336.P13045972141286078433

noncomputable section

/-- A396336: Dirichlet convolution of A047994 with A023900.

Offset 1, canonical program `A396336.P13045972141286078433`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A396336 (n : ℕ) : ℤ :=
  A396336.P13045972141286078433.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A396336.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397467.P13568654563015753494

`A000040(A001952(n+1))`
-/

namespace A397467.P13568654563015753494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A001952 (n + 1)).toNat

end

end A397467.P13568654563015753494

noncomputable section

/-- A397467: a(n) = prime(2n + floor(n*sqrt(2))).

Offset 1, canonical program `A397467.P13568654563015753494`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2929 terms. -/
def A397467 (n : ℕ) : ℤ :=
  A397467.P13568654563015753494.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2929 terms. -/
def A397467.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397469.P12444766347461370515

`A065091(A054406(n+1)-1)`
-/

namespace A397469.P12444766347461370515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A054406 (n + 1) - 1).toNat

end

end A397469.P12444766347461370515

noncomputable section

/-- A397469: a(n) = prime(floor(n*r)), where r = (3 + sqrt(3))/2.

Offset 1, canonical program `A397469.P12444766347461370515`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4227 terms. -/
def A397469 (n : ℕ) : ℤ :=
  A397469.P12444766347461370515.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4227 terms. -/
def A397469.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397495.P2362568275880317952

`A074149(A102781(n+2))`
-/

namespace A397495.P2362568275880317952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074149 (A102781 (n + 2)).toNat

end

end A397495.P2362568275880317952

noncomputable section

/-- A397495: Number of quadruples (a,b,c,d) of nonzero quadratic residues modulo prime(n) such that a + b == c + d (mod prime(n)).

Offset 2, canonical program `A397495.P2362568275880317952`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2261 terms. -/
def A397495 (n : ℕ) : ℤ :=
  A397495.P2362568275880317952.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2261 terms. -/
def A397495.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397615.P13045808474031281948

`A065091(A190511(n+1))`
-/

namespace A397615.P13045808474031281948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A190511 (n + 1)).toNat

end

end A397615.P13045808474031281948

noncomputable section

/-- A397615: a(n) = prime(floor(n*sqrt(5))).

Offset 1, canonical program `A397615.P13045808474031281948`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4473 terms. -/
def A397615 (n : ℕ) : ℤ :=
  A397615.P13045808474031281948.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4473 terms. -/
def A397615.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398167.P15155754403201331677

`filter[A340152(n+1), A295316(#)]`
-/

namespace A398167.P15155754403201331677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340152 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A398167.P15155754403201331677

noncomputable section

/-- A398167: Squarefree numbers k such that k+1 is cubefree.

Offset 1, canonical program `A398167.P15155754403201331677`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7076 terms. -/
def A398167 (n : ℕ) : ℤ :=
  A398167.P15155754403201331677.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7076 terms. -/
def A398167.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356876.P10198726897312415874

`A000120(A002808(n+1))`
-/

namespace A356876.P10198726897312415874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A002808 (n + 1)).toNat

end

end A356876.P10198726897312415874

noncomputable section

/-- A356876: Binary weight of the composite numbers (A002808).

Offset 1, canonical program `A356876.P10198726897312415874`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A356876 (n : ℕ) : ℤ :=
  A356876.P10198726897312415874.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A356876.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A357531.P3489620701216592602

`A082495(n+1)+1`
-/

namespace A357531.P3489620701216592602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082495 (n + 1) + 1

end

end A357531.P3489620701216592602

noncomputable section

/-- A357531: Final value obtained by traveling clockwise around a circular array with positions numbered clockwise from 1 to n. Each move consists of traveling clockwise k places, where k is the position at the beginning of the move. The first move begins at position 1. a(n) is the position at the end of the n-th move.

Offset 1, canonical program `A357531.P3489620701216592602`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A082495, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A357531 (n : ℕ) : ℤ :=
  A357531.P3489620701216592602.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A082495, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A357531.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A357686.P10772089169183460672

`∩[A081770(n+1), A224907(n+1)]`
-/

namespace A357686.P10772089169183460672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224907 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357686.P10772089169183460672

noncomputable section

/-- A357686: Nonsquarefree numbers k such that A293228(k) > k.

Offset 1, canonical program `A357686.P10772089169183460672`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2194 terms. -/
def A357686 (n : ℕ) : ℤ :=
  (A357686.P10772089169183460672.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2194 terms. -/
def A357686.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A357817.P15892236306854979366

`∑[(A306927(n+1)+1+n)*(-1)^n]`
-/

namespace A357817.P15892236306854979366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A306927 (n + 1) + 1 + (n : ℤ)) * (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A357817.P15892236306854979366

noncomputable section

/-- A357817: Partial alternating sums of the Dedekind psi function (A001615): a(n) = Sum_{k=1..n} (-1)^(k+1) * psi(k).

Offset 1, canonical program `A357817.P15892236306854979366`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A357817 (n : ℕ) : ℤ :=
  A357817.P15892236306854979366.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A357817.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358038.P4241872684734010829

`∑[A004709(n+1)]`
-/

namespace A358038.P4241872684734010829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A358038.P4241872684734010829

noncomputable section

/-- A358038: Partial sums of the cubefree numbers.

Offset 1, canonical program `A358038.P4241872684734010829`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358038 (n : ℕ) : ℤ :=
  A358038.P4241872684734010829.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358038.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358039.P5793780128867569828

`A078429(A004709(2*n+1-n))`
-/

namespace A358039.P5793780128867569828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078429 (A004709 (2 * n + 1 - n)).toNat

end

end A358039.P5793780128867569828

noncomputable section

/-- A358039: a(n) is the Euler totient function phi applied to the n-th cubefree number.

Offset 1, canonical program `A358039.P5793780128867569828`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8319 terms. -/
def A358039 (n : ℕ) : ℤ :=
  A358039.P5793780128867569828.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8319 terms. -/
def A358039.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358040.P9514283553072358568

`∏{e}[A004709(n+1), #+1]`
-/

namespace A358040.P9514283553072358568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A358040.P9514283553072358568

noncomputable section

/-- A358040: a(n) is the number of divisors of the n-th cubefree number.

Offset 1, canonical program `A358040.P9514283553072358568`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358040 (n : ℕ) : ℤ :=
  (A358040.P9514283553072358568.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358040.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358272.P12217916716295113487

`∑{d}[n+1, A007427(#)*A035316((n+1)/#)]`
-/

namespace A358272.P12217916716295113487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A035316 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A358272.P12217916716295113487

noncomputable section

/-- A358272: Multiplicative sequence with a(p^e) = (-1)^e * p^(2*floor(e/2)) for prime p and e >= 0.

Offset 1, canonical program `A358272.P12217916716295113487`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358272 (n : ℕ) : ℤ :=
  A358272.P12217916716295113487.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358272.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359058.P3007470535350621719

`A329116(round(n/2))²+A180714(A004526(n))²`
-/

namespace A359058.P3007470535350621719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329116 (SequenceMachineLib.roundAway ((n : ℚ) / 2)).toNat ^ 2 + A180714 (A004526 n).toNat ^ 2

end

end A359058.P3007470535350621719

noncomputable section

/-- A359058: a(n) = squared distance to the origin of the n-th vertex on a counterclockwise undulating spiral in a square grid.

Offset 0, canonical program `A359058.P3007470535350621719`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359058 (n : ℕ) : ℤ :=
  A359058.P3007470535350621719.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359058.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359171.P3277398292893305348

`lt[0, A359170(n+1)]+1`
-/

namespace A359171.P3277398292893305348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359170 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A359171.P3277398292893305348

noncomputable section

/-- A359171: Nonmultiples of 3 that have an even number of prime factors (with multiplicity).

Offset 1, canonical program `A359171.P3277398292893305348`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359171 (n : ℕ) : ℤ :=
  (A359171.P3277398292893305348.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359171.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359216.P4210649419407419379

`A329116(ceil(n/2))`
-/

namespace A359216.P4210649419407419379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329116 ⌈(n : ℚ) / 2⌉.toNat

end

end A359216.P4210649419407419379

noncomputable section

/-- A359216: X-coordinates of a point moving in a counterclockwise undulating spiral in a square grid.

Offset 0, canonical program `A359216.P4210649419407419379`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359216 (n : ℕ) : ℤ :=
  A359216.P4210649419407419379.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359216.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359378.P8655727792828051139

`A359170(n+1)-A359172(n+1)`
-/

namespace A359378.P8655727792828051139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359170 (n + 1) - A359172 (n + 1)

end

end A359378.P8655727792828051139

noncomputable section

/-- A359378: Dirichlet inverse of A359377, where A359377(n) = 1 if 3*n is squarefree, otherwise 0.

Offset 1, canonical program `A359378.P8655727792828051139`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359170, A359172, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A359378 (n : ℕ) : ℤ :=
  A359378.P8655727792828051139.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359170, A359172, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A359378.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A359840.P15365432037314695994

`∩[A004678(n+1), A004679(n+1)]`
-/

namespace A359840.P15365432037314695994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004678 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004679 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359840.P15365432037314695994

noncomputable section

/-- A359840: Numbers k that are the representation of primes in base 4 and in base 5.

Offset 1, canonical program `A359840.P15365432037314695994`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. -/
def A359840 (n : ℕ) : ℤ :=
  (A359840.P15365432037314695994.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. -/
def A359840.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360159.P13468530059512545607

`(A035316(n+1)+A344300(n+1))/2`
-/

namespace A360159.P13468530059512545607
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035316 (n + 1) + A344300 (n + 1) : ℚ) / 2

end

end A360159.P13468530059512545607

noncomputable section

/-- A360159: a(n) is the sum of divisors of n that are odd squares.

Offset 1, canonical program `A360159.P13468530059512545607`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035316, A344300, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A360159 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A360159.P13468530059512545607.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035316, A344300, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A360159.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A360658.P8856125276444949721

`∑[A359531(n+1)]`
-/

namespace A360658.P8856125276444949721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359531 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360658.P8856125276444949721

noncomputable section

/-- A360658: a(1) = 1; a(n) = -Sum_{k=2..n} k^3 * a(floor(n/k)).

Offset 1, canonical program `A360658.P8856125276444949721`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360658 (n : ℕ) : ℤ :=
  A360658.P8856125276444949721.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360658.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A362414.P4486932704696848405

`gcd((n+1)/∏{p}[n+1, #], A109395(n+1))`
-/

namespace A362414.P4486932704696848405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))) (A109395 (n + 1))

end

end A362414.P4486932704696848405

noncomputable section

/-- A362414: a(n) = gcd(n, phi(n)^2) / gcd(n, phi(n)).

Offset 1, canonical program `A362414.P4486932704696848405`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A362414 (n : ℕ) : ℤ :=
  (A362414.P4486932704696848405.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A362414.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363359.P5230627804508222493

`A239053(n+1)-A363291(n+1)`
-/

namespace A363359.P5230627804508222493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239053 (n + 1) - A363291 (n + 1)

end

end A363359.P5230627804508222493

noncomputable section

/-- A363359: Sum of divisors of 4*n-1 of form 4*k+3.

Offset 1, canonical program `A363359.P5230627804508222493`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A363359 (n : ℕ) : ℤ :=
  A363359.P5230627804508222493.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A363359.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363878.P8371790707819796797

`A363795(A017017(n))`
-/

namespace A363878.P8371790707819796797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363795 (A017017 n).toNat

end

end A363878.P8371790707819796797

noncomputable section

/-- A363878: Number of divisors of 7*n-4 of form 7*k+2.

Offset 1, canonical program `A363878.P8371790707819796797`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1429 terms. -/
def A363878 (n : ℕ) : ℤ :=
  A363878.P8371790707819796797.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1429 terms. -/
def A363878.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363879.P16011273899818667065

`A363795(7*n+1)`
-/

namespace A363879.P16011273899818667065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363795 (7 * n + 1)

end

end A363879.P16011273899818667065

noncomputable section

/-- A363879: Number of divisors of 7*n-6 of form 7*k+2.

Offset 1, canonical program `A363879.P16011273899818667065`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A363795, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363879 (n : ℕ) : ℤ :=
  A363879.P16011273899818667065.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A363795, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363879.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A364101.P8101475272647103884

`A284103(A016885(n))`
-/

namespace A364101.P8101475272647103884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284103 (A016885 n).toNat

end

end A364101.P8101475272647103884

noncomputable section

/-- A364101: Sum of divisors of 5*n-2 of form 5*k+4.

Offset 1, canonical program `A364101.P8101475272647103884`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A364101 (n : ℕ) : ℤ :=
  A364101.P8101475272647103884.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A364101.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364102.P1311447742625880746

`A284103(5*n+2)`
-/

namespace A364102.P1311447742625880746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284103 (5 * n + 2)

end

end A364102.P1311447742625880746

noncomputable section

/-- A364102: Sum of divisors of 5*n-3 of form 5*k+4.

Offset 1, canonical program `A364102.P1311447742625880746`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A364102 (n : ℕ) : ℤ :=
  A364102.P1311447742625880746.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A364102.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364103.P12973535211442151015

`A284103(5*n+1)`
-/

namespace A364103.P12973535211442151015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284103 (5 * n + 1)

end

end A364103.P12973535211442151015

noncomputable section

/-- A364103: Sum of divisors of 5*n-4 of form 5*k+4.

Offset 1, canonical program `A364103.P12973535211442151015`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284103, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364103 (n : ℕ) : ℤ :=
  A364103.P12973535211442151015.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284103, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364103.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A364657.P15328827667515436307

`A053226(eq[1, A053238(n+1)]+1)`
-/

namespace A364657.P15328827667515436307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053238 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053226 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A364657.P15328827667515436307

noncomputable section

/-- A364657: Numbers k such that sigma(k) > sigma(k+1) > sigma(k+2).

Offset 1, canonical program `A364657.P15328827667515436307`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 958 terms. -/
def A364657 (n : ℕ) : ℤ :=
  A364657.P15328827667515436307.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 958 terms. -/
def A364657.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364868.P4386631434435275963

`(A055025(n+2)-1)/4`
-/

namespace A364868.P4386631434435275963
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055025 (n + 2) - 1 : ℚ) / 4

end

end A364868.P4386631434435275963

noncomputable section

/-- A364868: Numbers k such that 4*k+1 is the norm of a Gaussian prime.

Offset 1, canonical program `A364868.P4386631434435275963`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055025, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364868 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A364868.P4386631434435275963.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055025, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364868.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A365346.P14965157267831599017

`A001001(n+1)/A035316(n+1)`
-/

namespace A365346.P14965157267831599017
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001001 (n + 1) : ℚ) / (A035316 (n + 1) : ℚ)

end

end A365346.P14965157267831599017

noncomputable section

/-- A365346: The sum of divisors of the smallest square divisible by n.

Offset 1, canonical program `A365346.P14965157267831599017`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365346 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A365346.P14965157267831599017.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365346.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365349.P12075249378079664485

`A035316(n+1)*A048250(n+1)`
-/

namespace A365349.P12075249378079664485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035316 (n + 1) * A048250 (n + 1)

end

end A365349.P12075249378079664485

noncomputable section

/-- A365349: The sum of divisors of the smallest exponentially odd number divisible by n.

Offset 1, canonical program `A365349.P12075249378079664485`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365349 (n : ℕ) : ℤ :=
  A365349.P12075249378079664485.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365349.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366440.P6271611183992687533

`∑{d}[A004709(n+1), #]`
-/

namespace A366440.P6271611183992687533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A366440.P6271611183992687533

noncomputable section

/-- A366440: The sum of divisors of the cubefree numbers (A004709).

Offset 1, canonical program `A366440.P6271611183992687533`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366440 (n : ℕ) : ℤ :=
  (A366440.P6271611183992687533.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366440.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A367590.P9698586962873086711

`filter[A085156(n+1), A354353(#)]`
-/

namespace A367590.P9698586962873086711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085156 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354353 (f1 j).toNat = 1) n)

end

end A367590.P9698586962873086711

noncomputable section

/-- A367590: Numbers with exactly two distinct prime factors, both appearing with the same exponent.

Offset 1, canonical program `A367590.P9698586962873086711`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6916 terms. -/
def A367590 (n : ℕ) : ℤ :=
  A367590.P9698586962873086711.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6916 terms. -/
def A367590.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368172.P4167666603619871638

`A325837(n+1)*A368248(n+1)`
-/

namespace A368172.P4167666603619871638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325837 (n + 1) * A368248 (n + 1)

end

end A368172.P4167666603619871638

noncomputable section

/-- A368172: The number of divisors of the largest cubefull exponentially odd divisor of n (A368170).

Offset 1, canonical program `A368172.P4167666603619871638`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368172 (n : ℕ) : ℤ :=
  A368172.P4167666603619871638.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368172.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368249.P9478047494338687151

`A002378(A005117(n+1)-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A368249.P9478047494338687151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (A005117 (n + 1) - 1).toNat

end

end A368249.P9478047494338687151

noncomputable section

/-- A368249: a(n) = A002378(A005117(n)-1).

Offset 1, canonical program `A368249.P9478047494338687151`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005117, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368249 (n : ℕ) : ℤ :=
  A368249.P9478047494338687151.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005117, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368249.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A368473.P1957910570903881523

`∏{e}[A138302(n+1), #]`
-/

namespace A368473.P1957910570903881523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138302 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A368473.P1957910570903881523

noncomputable section

/-- A368473: Product of exponents of prime factorization of the exponentially 2^n-numbers (A138302).

Offset 1, canonical program `A368473.P1957910570903881523`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368473 (n : ℕ) : ℤ :=
  (A368473.P1957910570903881523.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368473.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368712.P1920383267127000560

`A051903(A004709(n+1))`
-/

namespace A368712.P1920383267127000560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A004709 (n + 1)).toNat

end

end A368712.P1920383267127000560

noncomputable section

/-- A368712: The maximal exponent in the prime factorization of the cubefree numbers.

Offset 1, canonical program `A368712.P1920383267127000560`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368712 (n : ℕ) : ℤ :=
  A368712.P1920383267127000560.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368712.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368736.P13188846224572175554

`A000034(n)*A255655(n+1)`
-/

namespace A368736.P13188846224572175554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A255655 (n + 1)

end

end A368736.P13188846224572175554

noncomputable section

/-- A368736: a(n) = Sum_{k = 1..n} gcd(2*k+1, n).

Offset 1, canonical program `A368736.P13188846224572175554`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368736 (n : ℕ) : ℤ :=
  A368736.P13188846224572175554.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368736.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368779.P6782396106653723939

`∑{e}[A004709(n+1), #]`
-/

namespace A368779.P6782396106653723939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A368779.P6782396106653723939

noncomputable section

/-- A368779: The number of prime factors of the cubefree numbers, counted with multiplicity.

Offset 1, canonical program `A368779.P6782396106653723939`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368779 (n : ℕ) : ℤ :=
  (A368779.P6782396106653723939.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368779.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368827.P6800860820109245478

`eq[1, A368825(n+1)]+1`
-/

namespace A368827.P6800860820109245478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368825 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A368827.P6800860820109245478

noncomputable section

/-- A368827: Indices k where A368825(k) = 1.

Offset 1, canonical program `A368827.P6800860820109245478`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A368827 (n : ℕ) : ℤ :=
  (A368827.P6800860820109245478.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A368827.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A369610.P10507155967084453302

`A014689(n+1)-A079952(n+1)`
-/

namespace A369610.P10507155967084453302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 (n + 1) - A079952 (n + 1)

end

end A369610.P10507155967084453302

noncomputable section

/-- A369610: a(n) is the number of nonprime numbers < prime(n) which are not equal to twice a prime.

Offset 1, canonical program `A369610.P10507155967084453302`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014689, A079952, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A369610 (n : ℕ) : ℤ :=
  A369610.P10507155967084453302.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014689, A079952, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A369610.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A369869.P1984379103473463166

`∑{d}[n+1, A010051(#)*A128913((n+1)/#)]`
-/

namespace A369869.P1984379103473463166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010051 d * A128913 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369869.P1984379103473463166

noncomputable section

/-- A369869: a(n) = n * Sum_{p|n, p prime} pi(n/p) / p.

Offset 1, canonical program `A369869.P1984379103473463166`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369869 (n : ℕ) : ℤ :=
  A369869.P1984379103473463166.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369869.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369889.P11562785539832949155

`∏{p}[A004709(n+1), #+1]`
-/

namespace A369889.P11562785539832949155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (p + 1)

end

end A369889.P11562785539832949155

noncomputable section

/-- A369889: The sum of squarefree divisors of the cubefree numbers.

Offset 1, canonical program `A369889.P11562785539832949155`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369889 (n : ℕ) : ℤ :=
  (A369889.P11562785539832949155.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369889.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369907.P5930433476128637546

`∑{d}[n+1, A010051(#)*A328260((n+1)/#)]`
-/

namespace A369907.P5930433476128637546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010051 d * A328260 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369907.P5930433476128637546

noncomputable section

/-- A369907: a(n) = n * Sum_{p|n, p prime} omega(n/p) / p.

Offset 1, canonical program `A369907.P5930433476128637546`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369907 (n : ℕ) : ℤ :=
  A369907.P5930433476128637546.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369907.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369909.P1517418894271741417

`∑{d}[n+1, A010051(#)*A066959((n+1)/#)]`
-/

namespace A369909.P1517418894271741417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010051 d * A066959 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369909.P1517418894271741417

noncomputable section

/-- A369909: a(n) = n * Sum_{p|n, p prime} Omega(n/p) / p.

Offset 1, canonical program `A369909.P1517418894271741417`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369909 (n : ℕ) : ℤ :=
  A369909.P1517418894271741417.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369909.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369933.P7451183302863307938

`A051903(A138302(n+1))`
-/

namespace A369933.P7451183302863307938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A138302 (n + 1)).toNat

end

end A369933.P7451183302863307938

noncomputable section

/-- A369933: The maximal exponent in the prime factorization of the exponentially 2^n numbers (A138302).

Offset 1, canonical program `A369933.P7451183302863307938`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369933 (n : ℕ) : ℤ :=
  A369933.P7451183302863307938.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369933.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369934.P5147520502276734309

`A051903(A051903(A138302(n+2)))`
-/

namespace A369934.P5147520502276734309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A051903 (A138302 (n + 2)).toNat).toNat

end

end A369934.P5147520502276734309

noncomputable section

/-- A369934: a(n) = log_2(A369933(n)).

Offset 2, canonical program `A369934.P5147520502276734309`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A369934 (n : ℕ) : ℤ :=
  A369934.P5147520502276734309.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A369934.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370058.P6107118682366647322

`A000142(n)*A002293(n+1)`
-/

namespace A370058.P6107118682366647322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A002293 (n + 1)

end

end A370058.P6107118682366647322

noncomputable section

/-- A370058: a(n) = 4*(4*n+3)!/(3*n+4)!.

Offset 0, canonical program `A370058.P6107118682366647322`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002293, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A370058 (n : ℕ) : ℤ :=
  A370058.P6107118682366647322.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002293, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A370058.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A370477.P17615523648201337073

`A000588(n)+A071718(n)-A000245(n)`
-/

namespace A370477.P17615523648201337073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000588 n + (A071718 n - A000245 n)

end

end A370477.P17615523648201337073

noncomputable section

/-- A370477: G.f. satisfies A(x) = ( 1 + x * (A(x)^(1/2) / (1-x))^(3/2) )^2.

Offset 0, canonical program `A370477.P17615523648201337073`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A370477 (n : ℕ) : ℤ :=
  A370477.P17615523648201337073.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A370477.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370495.P17576673129975267883

`A002378(A030229(n+1)-1)`
-/

namespace A370495.P17576673129975267883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (A030229 (n + 1) - 1).toNat

end

end A370495.P17576673129975267883

noncomputable section

/-- A370495: Oblong numbers of the form (k-1)*k where k is the product of an even number of distinct primes.

Offset 1, canonical program `A370495.P17576673129975267883`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030229, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A370495 (n : ℕ) : ℤ :=
  A370495.P17576673129975267883.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030229, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A370495.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A370566.P3913357575439077810

`(n+1)*A370181(n+1)`
-/

namespace A370566.P3913357575439077810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A370181 (n + 1)

end

end A370566.P3913357575439077810

noncomputable section

/-- A370566: Size of the group Q_5*/(Q_5*)^n, where Q_5 is the field of 5-adic numbers.

Offset 1, canonical program `A370566.P3913357575439077810`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370566 (n : ℕ) : ℤ :=
  A370566.P3913357575439077810.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370566.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A372433.P16694252056645757235

`A000120(A005117(n+1))`
-/

namespace A372433.P16694252056645757235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A005117 (n + 1)).toNat

end

end A372433.P16694252056645757235

noncomputable section

/-- A372433: Binary weight (number of ones in binary expansion) of the n-th squarefree number.

Offset 1, canonical program `A372433.P16694252056645757235`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005117, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372433 (n : ℕ) : ℤ :=
  A372433.P16694252056645757235.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005117, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372433.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A372472.P1229961914939345524

`A023416(A005117(n+1))`
-/

namespace A372472.P1229961914939345524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A005117 (n + 1)).toNat

end

end A372472.P1229961914939345524

noncomputable section

/-- A372472: Number of zeros in the binary expansion of the n-th squarefree number.

Offset 1, canonical program `A372472.P1229961914939345524`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005117, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372472 (n : ℕ) : ℤ :=
  A372472.P1229961914939345524.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005117, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372472.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373058.P3606180917974794404

`A057723(A013929(n+1))-sqrt(A062320(n+1))`
-/

namespace A373058.P3606180917974794404
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A057723 (A013929 (n + 1)).toNat : ℝ) - Real.sqrt (A062320 (n + 1) : ℝ)

end

end A373058.P3606180917974794404

noncomputable section

/-- A373058: The sum of the aliquot coreful divisors of the nonsquarefree numbers.

Offset 1, canonical program `A373058.P3606180917974794404`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3917 terms. -/
def A373058 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A373058.P3606180917974794404.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3917 terms. -/
def A373058.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373473.P12116904307053985547

`eq[1, A373472(n+1)]+1`
-/

namespace A373473.P12116904307053985547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373472 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A373473.P12116904307053985547

noncomputable section

/-- A373473: Numbers k such that A001414(k) and A059975(k) are both multiples of 3, where A001414 and A059975 are fully additive with a(p) = p and a(p) = p-1, respectively.

Offset 1, canonical program `A373473.P12116904307053985547`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5648 terms. -/
def A373473 (n : ℕ) : ℤ :=
  (A373473.P12116904307053985547.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5648 terms. -/
def A373473.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A373550.P1857788289834885928

`A000035(A005117(n+1))`
-/

namespace A373550.P1857788289834885928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A005117 (n + 1)).toNat

end

end A373550.P1857788289834885928

noncomputable section

/-- A373550: a(n) is the parity of the n-th squarefree number.

Offset 1, canonical program `A373550.P1857788289834885928`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005117, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373550 (n : ℕ) : ℤ :=
  A373550.P1857788289834885928.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005117, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373550.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373575.P9664136363461684318

`record[A048671(A024619(n+1)+1)]`
-/

namespace A373575.P9664136363461684318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048671 (A024619 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A373575.P9664136363461684318

noncomputable section

/-- A373575: Numbers k such that k and k-1 both have at least two distinct prime factors. First element of the n-th maximal antirun of non-prime-powers.

Offset 1, canonical program `A373575.P9664136363461684318`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A373575 (n : ℕ) : ℤ :=
  A373575.P9664136363461684318.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A373575.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373586.P5907604992002336986

`record[gcd(n+1, A374206(2*(n+1)))]`
-/

namespace A373586.P5907604992002336986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A374206 (2 * (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A373586.P5907604992002336986

noncomputable section

/-- A373586: Numbers k for which A373149(k) is even, where A373149 is fully additive with a(2) = 1 and a(p) = prevprime(p) for odd primes p.

Offset 1, canonical program `A373586.P5907604992002336986`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373586 (n : ℕ) : ℤ :=
  (A373586.P5907604992002336986.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373586.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373924.P1751910803727075377

`∑{d}[n+1, A007427(#)*A373923((n+1)/#)]`
-/

namespace A373924.P1751910803727075377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A373923 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A373924.P1751910803727075377

noncomputable section

/-- A373924: a(n) = Sum_{d|n} (-1)^pi(d) * mu(n/d).

Offset 1, canonical program `A373924.P1751910803727075377`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373924 (n : ℕ) : ℤ :=
  A373924.P1751910803727075377.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373924.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374051.P11949177030714316836

`A079978(A374124(n+1))`
-/

namespace A374051.P11949177030714316836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A374124 (n + 1)).toNat

end

end A374051.P11949177030714316836

noncomputable section

/-- A374051: a(n) = 1 if A113177(n) is a multiple of 3, otherwise 0, where A113177 is fully additive with a(p) = Fibonacci(p).

Offset 1, canonical program `A374051.P11949177030714316836`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374051 (n : ℕ) : ℤ :=
  A374051.P11949177030714316836.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374051.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374180.P6463857009267516425

`eq[A040351(n), A090678(n)]`
-/

namespace A374180.P6463857009267516425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040351 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090678 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374180.P6463857009267516425

noncomputable section

/-- A374180: Numbers k such that K(3 / k) != K((-1)^floor(k/2)*k / 3), where K(a/b) is the Kronecker symbol. Row 1 of A374188.

Offset 1, canonical program `A374180.P6463857009267516425`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1662 terms. -/
def A374180 (n : ℕ) : ℤ :=
  (A374180.P6463857009267516425.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1662 terms. -/
def A374180.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374460.P17083838947933679680

`lt[1, A368711(n+1)]+1`
-/

namespace A374460.P17083838947933679680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368711 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A374460.P17083838947933679680

noncomputable section

/-- A374460: Indices of the nonsquarefree terms in the sequence of exponentially odd numbers (A268335).

Offset 1, canonical program `A374460.P17083838947933679680`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1380 terms. -/
def A374460 (n : ℕ) : ℤ :=
  (A374460.P17083838947933679680.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1380 terms. -/
def A374460.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374587.P4037298411033951044

`A051903(A368715(n+1))`
-/

namespace A374587.P4037298411033951044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A368715 (n + 1)).toNat

end

end A374587.P4037298411033951044

noncomputable section

/-- A374587: The maximum exponent in the prime factorization of the numbers that are not coprime to the maximum exponent in their prime factorization.

Offset 1, canonical program `A374587.P4037298411033951044`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374587 (n : ℕ) : ℤ :=
  A374587.P4037298411033951044.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374587.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375156.P5944505907265701600

`and(A003188(A374625(n)), A374625(n))`
-/

namespace A375156.P5944505907265701600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003188 (A374625 n).toNat) (A374625 n)

end

end A375156.P5944505907265701600

noncomputable section

/-- A375156: In the binary expansion of n: expand bits 1 -> 01 and 0 -> x0 from most to least significant, where x is the complement of the previous bit from n.

Offset 0, canonical program `A375156.P5944505907265701600`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 256 terms. -/
def A375156 (n : ℕ) : ℤ :=
  A375156.P5944505907265701600.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 256 terms. -/
def A375156.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375339.P15531892333472399892

`A005361(n+1)*A359466(n+1)`
-/

namespace A375339.P15531892333472399892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1) * A359466 (n + 1)

end

end A375339.P15531892333472399892

noncomputable section

/-- A375339: If n has exactly one non-unitary prime factor then a(n) is the exponent of the highest power of this prime that divides n, otherwise a(n) = 0.

Offset 1, canonical program `A375339.P15531892333472399892`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, A359466, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A375339 (n : ℕ) : ℤ :=
  A375339.P15531892333472399892.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, A359466, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A375339.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A375341.P17579810654147350083

`∏{e}[eq[1, A359466(n+1)]+1, #]`
-/

namespace A375341.P17579810654147350083
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359466 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A375341.P17579810654147350083

noncomputable section

/-- A375341: The maximum exponent in the prime factorization of the numbers that have exactly one non-unitary prime factor.

Offset 1, canonical program `A375341.P17579810654147350083`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375341 (n : ℕ) : ℤ :=
  (A375341.P17579810654147350083.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375341.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375349.P12087631011185153804

`A000035(A004709(n+1))`
-/

namespace A375349.P12087631011185153804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A004709 (n + 1)).toNat

end

end A375349.P12087631011185153804

noncomputable section

/-- A375349: a(n) is the parity of the n-th cubefree number.

Offset 1, canonical program `A375349.P12087631011185153804`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375349 (n : ℕ) : ℤ :=
  A375349.P12087631011185153804.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375349.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A375708.P8231475400569183047

`A024619(n+1)-A361102(n+1)`
-/

namespace A375708.P8231475400569183047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1) - A361102 (n + 1)

end

end A375708.P8231475400569183047

noncomputable section

/-- A375708: First differences of non-prime-powers (exclusive, so 1 is not a prime-power).

Offset 1, canonical program `A375708.P8231475400569183047`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375708 (n : ℕ) : ℤ :=
  A375708.P8231475400569183047.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375708.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A375847.P17445799609961011630`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375847 (n : ℕ) : ℤ :=
  A375847.P17445799609961011630.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375847.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376047.P566063180146395764

`comp[A092433(n+1)-1]+1`
-/

namespace A376047.P566063180146395764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092433 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A376047.P566063180146395764

noncomputable section

/-- A376047: Complement of A092433.

Offset 1, canonical program `A376047.P566063180146395764`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A376047 (n : ℕ) : ℤ :=
  (A376047.P566063180146395764.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A376047.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376604.P10742585192256069386

`Δ[A054354(n+1)]`
-/

namespace A376604.P10742585192256069386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054354 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A376604.P10742585192256069386

noncomputable section

/-- A376604: Second differences of the Kolakoski sequence (A000002). First differences of A054354.

Offset 1, canonical program `A376604.P10742585192256069386`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A376604 (n : ℕ) : ℤ :=
  A376604.P10742585192256069386.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A376604.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A377029.P15592168475021674256

`A374625(a(n-1))` with `a(0)=0`
-/

namespace A377029.P15592168475021674256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A374625 (a (n - 1)).toNat

end

end A377029.P15592168475021674256

noncomputable section

/-- A377029: a(1) = 0; thereafter in the binary expansion of a(n-1), expand bits: 1->01 and 0->10.

Offset 1, canonical program `A377029.P15592168475021674256`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A374625, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A377029 (n : ℕ) : ℤ :=
  A377029.P15592168475021674256.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A374625, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A377029.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A377783.P9497838708436341752

`A120327(A000040(n+1))`
-/

namespace A377783.P9497838708436341752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120327 (A000040 (n + 1)).toNat

end

end A377783.P9497838708436341752

noncomputable section

/-- A377783: Least nonsquarefree number > prime(n).

Offset 1, canonical program `A377783.P9497838708436341752`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A377783 (n : ℕ) : ℤ :=
  A377783.P9497838708436341752.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A377783.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A377902.P10934479624454164712

`Δ[comp[(n%2)^n*A002808(n+1)]]`
-/

namespace A377902.P10934479624454164712
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n % 2) ^ n : ℕ) : ℤ) * A002808 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A377902.P10934479624454164712

noncomputable section

/-- A377902: First differences of A377898.

Offset 1, canonical program `A377902.P10934479624454164712`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. -/
def A377902 (n : ℕ) : ℤ :=
  A377902.P10934479624454164712.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. -/
def A377902.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378756.P8685349970917417550

`∑{d}[n+1, A055615(#)*A297111((n+1)/#)]`
-/

namespace A378756.P8685349970917417550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A297111 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378756.P8685349970917417550

noncomputable section

/-- A378756: Dirichlet convolution of A046692 and A005187, where A046692 is the Dirichlet inverse of sigma.

Offset 1, canonical program `A378756.P8685349970917417550`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378756 (n : ℕ) : ℤ :=
  A378756.P8685349970917417550.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378756.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379055.P2266250960866040724

`Δ[A099861(n+1)]`
-/

namespace A379055.P2266250960866040724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099861 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A379055.P2266250960866040724

noncomputable section

/-- A379055: a(n) = composite(2*n+3) - composite(2*n+1).

Offset 0, canonical program `A379055.P2266250960866040724`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379055 (n : ℕ) : ℤ :=
  A379055.P2266250960866040724.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379055.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379108.P285787528398136253

`∑{d}[n+1, A000203(#)*A359579((n+1)/#)]`
-/

namespace A379108.P285787528398136253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A359579 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A379108.P285787528398136253

noncomputable section

/-- A379108: Dirichlet convolution of sigma with A359579.

Offset 1, canonical program `A379108.P285787528398136253`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379108 (n : ℕ) : ℤ :=
  A379108.P285787528398136253.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379108.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379218.P1688385068240384279

`∑{d}[n+1, #*A359579((n+1)/#)]`
-/

namespace A379218.P1688385068240384279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A359579 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A379218.P1688385068240384279

noncomputable section

/-- A379218: Möbius transform of A379108.

Offset 1, canonical program `A379218.P1688385068240384279`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379218 (n : ℕ) : ℤ :=
  A379218.P1688385068240384279.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379218.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379655.P8370440045132566259

`∩[A002191(n+1), ∑[A083531(n+1)]]`
-/

namespace A379655.P8370440045132566259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002191 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083531 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379655.P8370440045132566259

noncomputable section

/-- A379655: Numbers k such that k and k+1 are both possible values of the sum of divisors function (A000203).

Offset 1, canonical program `A379655.P8370440045132566259`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 222 terms. -/
def A379655 (n : ℕ) : ℤ :=
  (A379655.P8370440045132566259.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 222 terms. -/
def A379655.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380323.P8581538773879394551

`A366438(n+1)/A366534(n+1)`
-/

namespace A380323.P8581538773879394551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A366438 (n + 1) : ℚ) / (A366534 (n + 1) : ℚ)

end

end A380323.P8581538773879394551

noncomputable section

/-- A380323: The number of squares dividing the n-th exponentially odd number.

Offset 1, canonical program `A380323.P8581538773879394551`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A380323 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A380323.P8581538773879394551.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A380323.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380325.P11001594925613090436

`A069290(A268335(n+1))`
-/

namespace A380325.P11001594925613090436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069290 (A268335 (n + 1)).toNat

end

end A380325.P11001594925613090436

noncomputable section

/-- A380325: The sum of the square roots of the squares that divide the n-th exponentially odd number.

Offset 1, canonical program `A380325.P11001594925613090436`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7055 terms. -/
def A380325 (n : ℕ) : ℤ :=
  A380325.P11001594925613090436.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7055 terms. -/
def A380325.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381122.P9181683385261929794

`eq[n, A110146(n)]`
-/

namespace A381122.P9181683385261929794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110146 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A381122.P9181683385261929794

noncomputable section

/-- A381122: Numbers k such that k^(k+1) == k (mod k+2).

Offset 1, canonical program `A381122.P9181683385261929794`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 703 terms. -/
def A381122 (n : ℕ) : ℤ :=
  (A381122.P9181683385261929794.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 703 terms. -/
def A381122.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381401.P17306812054606808102

`∑{e}[n+1, A010051(#)+1]`
-/

namespace A381401.P17306812054606808102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (A010051 (Nat.factorization (f1 n) p) + 1)

end

end A381401.P17306812054606808102

noncomputable section

/-- A381401: a(n) is the number of (possibly non-distinct) prime elements in the multiset of bases and exponents in the prime factorization of n.

Offset 1, canonical program `A381401.P17306812054606808102`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A381401 (n : ℕ) : ℤ :=
  A381401.P17306812054606808102.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A381401.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381950.P2231247661708583555

`filter[A381956(n+1), A379952(#)]`
-/

namespace A381950.P2231247661708583555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381956 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379952 (f1 j).toNat = 1) n)

end

end A381950.P2231247661708583555

noncomputable section

/-- A381950: Odd numbers whose prime factorization has an even maximum exponent.

Offset 1, canonical program `A381950.P2231247661708583555`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2014 terms. -/
def A381950 (n : ℕ) : ℤ :=
  A381950.P2231247661708583555.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2014 terms. -/
def A381950.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381951.P16929426520888599023

`∩[A053850(n+1), A376142(n+1)]`
-/

namespace A381951.P16929426520888599023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053850 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381951.P16929426520888599023

noncomputable section

/-- A381951: Nonsquarefree odd numbers whose prime factorization has an odd maximum exponent.

Offset 1, canonical program `A381951.P16929426520888599023`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1644 terms. -/
def A381951 (n : ℕ) : ℤ :=
  (A381951.P16929426520888599023.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1644 terms. -/
def A381951.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382418.P11791072874298517319

`eq[0, A309788(n)]`
-/

namespace A382418.P11791072874298517319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309788 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A382418.P11791072874298517319

noncomputable section

/-- A382418: Numbers with at least one zero in their base-9 representation.

Offset 1, canonical program `A382418.P11791072874298517319`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3440 terms. -/
def A382418 (n : ℕ) : ℤ :=
  (A382418.P11791072874298517319.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3440 terms. -/
def A382418.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382662.P17606153397219342384

`A047994(A004709(n+1))`
-/

namespace A382662.P17606153397219342384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (A004709 (n + 1)).toNat

end

end A382662.P17606153397219342384

noncomputable section

/-- A382662: The unitary totient function applied to the cubefree numbers (A004709).

Offset 1, canonical program `A382662.P17606153397219342384`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8319 terms. -/
def A382662 (n : ℕ) : ℤ :=
  A382662.P17606153397219342384.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8319 terms. -/
def A382662.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382903.P3640793045968779557

`A050985(A046100(n+1))`
-/

namespace A382903.P3640793045968779557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050985 (A046100 (n + 1)).toNat

end

end A382903.P3640793045968779557

noncomputable section

/-- A382903: The largest cubefree unitary divisor of the n-th biquadratefree number.

Offset 1, canonical program `A382903.P3640793045968779557`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9240 terms. -/
def A382903 (n : ℕ) : ℤ :=
  A382903.P3640793045968779557.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9240 terms. -/
def A382903.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382904.P11117046503439024476

`∏{p}[A046100(n+1), #]`
-/

namespace A382904.P11117046503439024476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046100 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A382904.P11117046503439024476

noncomputable section

/-- A382904: The squarefree kernel of the n-th biquadratefree number.

Offset 1, canonical program `A382904.P11117046503439024476`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382904 (n : ℕ) : ℤ :=
  (A382904.P11117046503439024476.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382904.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383004.P4962837952077071409

`val(A004709(n+1), 2)`
-/

namespace A383004.P4962837952077071409
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A004709 (n + 1)).toNat 2

end

end A383004.P4962837952077071409

noncomputable section

/-- A383004: Exponent of the highest power of 2 dividing the n-th cubefree number.

Offset 1, canonical program `A383004.P4962837952077071409`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383004 (n : ℕ) : ℤ :=
  (A383004.P4962837952077071409.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383004.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383005.P17181854654335499102

`val(A046100(n+1), 2)`
-/

namespace A383005.P17181854654335499102
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A046100 (n + 1)).toNat 2

end

end A383005.P17181854654335499102

noncomputable section

/-- A383005: Exponent of the highest power of 2 dividing the n-th biquadratefree number.

Offset 1, canonical program `A383005.P17181854654335499102`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383005 (n : ℕ) : ℤ :=
  (A383005.P17181854654335499102.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383005.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383009.P8779910049877826587

`lt[val((A004709(n+1)+1)², 2), 1]+1`
-/

namespace A383009.P8779910049877826587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((A004709 (n + 1) + 1) ^ 2).toNat 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A383009.P8779910049877826587

noncomputable section

/-- A383009: Indices of the even terms in the sequence of cubefree numbers.

Offset 1, canonical program `A383009.P8779910049877826587`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4286 terms. -/
def A383009 (n : ℕ) : ℤ :=
  (A383009.P8779910049877826587.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4286 terms. -/
def A383009.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383031.P8911448093977400013

`eq[1, A368472(n+1)]+1`
-/

namespace A383031.P8911448093977400013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368472 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A383031.P8911448093977400013

noncomputable section

/-- A383031: Indices of the squarefree terms in the sequence of exponentially odd numbers.

Offset 1, canonical program `A383031.P8911448093977400013`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8620 terms. -/
def A383031 (n : ℕ) : ℤ :=
  (A383031.P8911448093977400013.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8620 terms. -/
def A383031.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383241.P16746588854587445145

`A001223(n+1)*A006094(n+1)-1`
-/

namespace A383241.P16746588854587445145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1) * A006094 (n + 1) - 1

end

end A383241.P16746588854587445145

noncomputable section

/-- A383241: a(n) = p(n)*p(n+1)*(p(n+1) - p(n)) - 1, where p(n) = prime(n).

Offset 1, canonical program `A383241.P16746588854587445145`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383241 (n : ℕ) : ℤ :=
  A383241.P16746588854587445145.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383241.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383641.P12370481159656482094

`∑[(A010051(n+1)-1)*A131738(n)]`
-/

namespace A383641.P12370481159656482094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A010051 (n + 1) - 1) * A131738 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A383641.P12370481159656482094

noncomputable section

/-- A383641: a(n) is the difference between the sum of even composites and the sum of the odd composites in the first n positive integers.

Offset 1, canonical program `A383641.P12370481159656482094`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383641 (n : ℕ) : ℤ :=
  A383641.P12370481159656482094.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383641.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383976.P7510107597376292456

`A374625(n)+A062880(n)`
-/

namespace A383976.P7510107597376292456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374625 n + A062880 n

end

end A383976.P7510107597376292456

noncomputable section

/-- A383976: In the binary expansion of n, expand bits 1 -> 11 and 0 -> 10.

Offset 0, canonical program `A383976.P7510107597376292456`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383976 (n : ℕ) : ℤ :=
  A383976.P7510107597376292456.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383976.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A385130.P7942154568102987716

`A000203(n+1)-A385131(n+1)`
-/

namespace A385130.P7942154568102987716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A385131 (n + 1)

end

end A385130.P7942154568102987716

noncomputable section

/-- A385130: The sum of divisors of n whose maximum exponent in their prime factorization is even.

Offset 1, canonical program `A385130.P7942154568102987716`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A385131, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A385130 (n : ℕ) : ℤ :=
  A385130.P7942154568102987716.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A385131, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A385130.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A385532.P17146396601814636055

`n-∑[char[A140101(n)]]`
-/

namespace A385532.P17146396601814636055
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140101 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A385532.P17146396601814636055

noncomputable section

/-- A385532: Second prepended column of the tribonacci array of the second kind, A385436.

Offset 1, canonical program `A385532.P17146396601814636055`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385532 (n : ℕ) : ℤ :=
  A385532.P17146396601814636055.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385532.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385660.P17485724804406826863

`lt[(n+1)%A001223(n+1), 1]+1`
-/

namespace A385660.P17485724804406826863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A001223 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A385660.P17485724804406826863

noncomputable section

/-- A385660: Numbers k such that prime(k+1)-prime(k) divides k.

Offset 1, canonical program `A385660.P17485724804406826863`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A385660 (n : ℕ) : ℤ :=
  (A385660.P17485724804406826863.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A385660.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386537.P14727264445905401175

`val(A138302(n+1), 2)`
-/

namespace A386537.P14727264445905401175
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A138302 (n + 1)).toNat 2

end

end A386537.P14727264445905401175

noncomputable section

/-- A386537: Exponent of the highest power of 2 dividing the n-th number whose prime factorization exponents are all powers of 2 (A138302).

Offset 1, canonical program `A386537.P14727264445905401175`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386537 (n : ℕ) : ℤ :=
  (A386537.P14727264445905401175.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386537.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386685.P10921872709597016548

`4*A010051(4*n+1)+2*A010051(4*n+2)+A010051(4*n+3)`
-/

namespace A386685.P10921872709597016548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A010051 (4 * n + 1) + 2 * A010051 (4 * n + 2) + A010051 (4 * n + 3)

end

end A386685.P10921872709597016548

noncomputable section

/-- A386685: Classification of the interval [4*n+1, 4*n+2, 4*n+3] according to positions of primes.

Offset 0, canonical program `A386685.P10921872709597016548`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A386685 (n : ℕ) : ℤ :=
  A386685.P10921872709597016548.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A386685.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A387001.P16811340479551848930

`A224880(n+1)+1`
-/

namespace A387001.P16811340479551848930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224880 (n + 1) + 1

end

end A387001.P16811340479551848930

noncomputable section

/-- A387001: Number of vertices in the diagram called "symmetric representation of sigma(n)" where its "parts" or polygons are dissected into unit squares (see the example).

Offset 1, canonical program `A387001.P16811340479551848930`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A224880, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A387001 (n : ℕ) : ℤ :=
  A387001.P16811340479551848930.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A224880, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A387001.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A387335.P18233147024188934057

`∪[A024619(n+1), A000123(n)]`
-/

namespace A387335.P18233147024188934057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000123 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A387335.P18233147024188934057

noncomputable section

/-- A387335: 1, 2, 4, along with numbers divisible by at least two distinct primes.

Offset 1, canonical program `A387335.P18233147024188934057`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387335 (n : ℕ) : ℤ :=
  (A387335.P18233147024188934057.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387335.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387892.P11437669347664042803

`lt[A306927(n+1), n+1]+1`
-/

namespace A387892.P11437669347664042803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306927 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A387892.P11437669347664042803

noncomputable section

/-- A387892: Psi-deficient numbers: numbers k such that psi(k) < 2*k.

Offset 1, canonical program `A387892.P11437669347664042803`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8197 terms. -/
def A387892 (n : ℕ) : ℤ :=
  (A387892.P11437669347664042803.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8197 terms. -/
def A387892.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387893.P4630578512810266503

`A014681(lt[A014681(n), A306927(n+1)])`
-/

namespace A387893.P4630578512810266503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306927 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A387893.P4630578512810266503

noncomputable section

/-- A387893: Psi-abundant numbers: numbers k such that psi(k) > 2*k.

Offset 1, canonical program `A387893.P4630578512810266503`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1758 terms. -/
def A387893 (n : ℕ) : ℤ :=
  A387893.P4630578512810266503.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1758 terms. -/
def A387893.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A388011.P2434188042193603591

`comp[A388012(n+1)-1]+1`
-/

namespace A388011.P2434188042193603591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388012 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A388011.P2434188042193603591

noncomputable section

/-- A388011: Numbers k such that sigma(k)/k < 5/3.

Offset 1, canonical program `A388011.P2434188042193603591`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A388011 (n : ℕ) : ℤ :=
  (A388011.P2434188042193603591.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A388011.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389446.P10095306458237006129

`gcd(A000203(n+1), A057723(n+1))`
-/

namespace A389446.P10095306458237006129
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (n + 1)) (A057723 (n + 1))

end

end A389446.P10095306458237006129

noncomputable section

/-- A389446: a(n) = gcd(sigma(n), A057723(n)), where A057723 is sum of positive divisors of n that are divisible by every prime that divides n and sigma is the sum of divisors function.

Offset 1, canonical program `A389446.P10095306458237006129`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389446 (n : ℕ) : ℤ :=
  (A389446.P10095306458237006129.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389446.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389810.P16776173714572326767

`A008578(A175969(n+1)-n)`
-/

namespace A389810.P16776173714572326767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A175969 (n + 1) - (n : ℤ)).toNat

end

end A389810.P16776173714572326767

noncomputable section

/-- A389810: Prime(k)-1 copies of prime(k) ordered by increasing k.

Offset 1, canonical program `A389810.P16776173714572326767`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389810 (n : ℕ) : ℤ :=
  A389810.P16776173714572326767.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389810.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390289.P3249589091214432495

`∩[A004709(n+1), A024619(n+1)]`
-/

namespace A390289.P3249589091214432495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390289.P3249589091214432495

noncomputable section

/-- A390289: Cubefree numbers that are not prime powers.

Offset 1, canonical program `A390289.P3249589091214432495`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8106 terms. -/
def A390289 (n : ℕ) : ℤ :=
  (A390289.P3249589091214432495.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8106 terms. -/
def A390289.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390379.P7564342032490603690

`∪[A389947(n+1), A392564(n+1)]`
-/

namespace A390379.P7564342032490603690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389947 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392564 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A390379.P7564342032490603690

noncomputable section

/-- A390379: Powers k^m, 2 <= m <= 3, with k neither squarefree nor squareful.

Offset 1, canonical program `A390379.P7564342032490603690`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390379 (n : ℕ) : ℤ :=
  (A390379.P7564342032490603690.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390379.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391711.P7269243793553933826

`A000045(A046470(n+1))`
-/

namespace A391711.P7269243793553933826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A046470 (n + 1)).toNat

end

end A391711.P7269243793553933826

noncomputable section

/-- A391711: Fibonacci numbers whose indices are even positive numbers with an odd number of prime factors (counted with multiplicity).

Offset 1, canonical program `A391711.P7269243793553933826`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046470, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A391711 (n : ℕ) : ℤ :=
  A391711.P7269243793553933826.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046470, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A391711.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A391712.P957787148813764837

`A000045(A063745(n+1))`
-/

namespace A391712.P957787148813764837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A063745 (n + 1)).toNat

end

end A391712.P957787148813764837

noncomputable section

/-- A391712: Fibonacci numbers whose indices are even positive numbers with an even number of prime factors (counted with multiplicity).

Offset 1, canonical program `A391712.P957787148813764837`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063745, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A391712 (n : ℕ) : ℤ :=
  A391712.P957787148813764837.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063745, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A391712.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A391733.P1683383338998513801

`eq[1, A005590(n)]`
-/

namespace A391733.P1683383338998513801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005590 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A391733.P1683383338998513801

noncomputable section

/-- A391733: Numbers in whose binary expansion there is exactly one run of 1-bits with an odd length, while all other run of 1-bits are of an even length (or absent).

Offset 1, canonical program `A391733.P1683383338998513801`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1664 terms. -/
def A391733 (n : ℕ) : ℤ :=
  (A391733.P1683383338998513801.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1664 terms. -/
def A391733.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392012.P18374582958621527053

`A057723(A004709(2*n+1-n))`
-/

namespace A392012.P18374582958621527053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057723 (A004709 (2 * n + 1 - n)).toNat

end

end A392012.P18374582958621527053

noncomputable section

/-- A392012: The sum of the exponential divisors of the cubefree numbers.

Offset 1, canonical program `A392012.P18374582958621527053`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8319 terms. -/
def A392012 (n : ℕ) : ℤ :=
  A392012.P18374582958621527053.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8319 terms. -/
def A392012.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392365.P14078290519509760206

`A004709(n+1)²`
-/

namespace A392365.P14078290519509760206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (n + 1) ^ 2

end

end A392365.P14078290519509760206

noncomputable section

/-- A392365: The cubefree numbers squared.

Offset 1, canonical program `A392365.P14078290519509760206`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A392365 (n : ℕ) : ℤ :=
  A392365.P14078290519509760206.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A392365.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A392597.P12125127422441468717

`A006519(n+1)*A038500(n+1)*A060904(n+1)*A268354(n+1)`
-/

namespace A392597.P12125127422441468717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1) * A038500 (n + 1) * A060904 (n + 1) * A268354 (n + 1)

end

end A392597.P12125127422441468717

noncomputable section

/-- A392597: The largest 7-smooth divisor of n.

Offset 1, canonical program `A392597.P12125127422441468717`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038500, A060904, A268354, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A392597 (n : ℕ) : ℤ :=
  A392597.P12125127422441468717.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038500, A060904, A268354, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A392597.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A392670.P14366886065038149397

`A002487(A046699(n+2))`
-/

namespace A392670.P14366886065038149397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A046699 (n + 2)).toNat

end

end A392670.P14366886065038149397

noncomputable section

/-- A392670: Triangle read by rows where row n is the numerators of the node values in a preorder traversal of the Calkin-Wilf tree with n levels, columns 0 <= k < 2^n-1.

Offset 1, canonical program `A392670.P14366886065038149397`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392670 (n : ℕ) : ℤ :=
  A392670.P14366886065038149397.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392670.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A393655.P13127005554135425931

`A393662(n+3)+A008776(n)`
-/

namespace A393655.P13127005554135425931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393662 (n + 3) + A008776 n

end

end A393655.P13127005554135425931

noncomputable section

/-- A393655: Total number of descents over all paths from a fixed vertex on level 2*(n+1) to level 1 in the 3-Bratteli diagram, a(n) = 3^(n-3)*(16*n-13), n>=3.

Offset 3, canonical program `A393655.P13127005554135425931`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 203 terms. -/
def A393655 (n : ℕ) : ℤ :=
  A393655.P13127005554135425931.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 203 terms. -/
def A393655.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A394471.P5852096907617755890

`∩[A000040(n+1), A048448(n+4)-1]`
-/

namespace A394471.P5852096907617755890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048448 (n + 4) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A394471.P5852096907617755890

noncomputable section

/-- A394471: Primes of the form prime(k) + prime(k+2) - 1, where prime(k) is the k-th prime.

Offset 1, canonical program `A394471.P5852096907617755890`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1187 terms. -/
def A394471 (n : ℕ) : ℤ :=
  (A394471.P5852096907617755890.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1187 terms. -/
def A394471.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A395089.P12188725371683441728

`1-A395088(n)`
-/

namespace A395089.P12188725371683441728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A395088 n

end

end A395089.P12188725371683441728

noncomputable section

/-- A395089: Binary complement of A395088.

Offset 0, canonical program `A395089.P12188725371683441728`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A395088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A395089 (n : ℕ) : ℤ :=
  A395089.P12188725371683441728.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A395088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A395089.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A395114.P18219317400035454050

`A005590(A103354(n+2))`
-/

namespace A395114.P18219317400035454050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005590 (A103354 (n + 2)).toNat

end

end A395114.P18219317400035454050

noncomputable section

/-- A395114: Irregular triangle, next row is the previous row with the difference between consecutive numbers inserted between, starting with row 1 1.

Offset 1, canonical program `A395114.P18219317400035454050`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A395114 (n : ℕ) : ℤ :=
  A395114.P18219317400035454050.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A395114.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A395700.P10863328374740441814

`eq[n, A181859(n)]`
-/

namespace A395700.P10863328374740441814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181859 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A395700.P10863328374740441814

noncomputable section

/-- A395700: k is term if and only if k = gcd(k^2, k!) / gcd(k^2, k!/floor(k/2)!^2).

Offset 1, canonical program `A395700.P10863328374740441814`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 552 terms. -/
def A395700 (n : ℕ) : ℤ :=
  (A395700.P10863328374740441814.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 552 terms. -/
def A395700.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397136.P9058078001182760132

`lcm(A007427(n+1), A347291(n+1))`
-/

namespace A397136.P9058078001182760132
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007427 (n + 1)) (A347291 (n + 1))

end

end A397136.P9058078001182760132

noncomputable section

/-- A397136: Dirichlet g.f.: Product_{p prime} (1 + 2/p^s + 1/p^(2*s-1)).

Offset 1, canonical program `A397136.P9058078001182760132`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397136 (n : ℕ) : ℤ :=
  (A397136.P9058078001182760132.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397136.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397466.P11172842824194226049

`A008578(A087057(n+1))`
-/

namespace A397466.P11172842824194226049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A087057 (n + 1)).toNat

end

end A397466.P11172842824194226049

noncomputable section

/-- A397466: a(n) = prime(floor(n*sqrt(2))).

Offset 1, canonical program `A397466.P11172842824194226049`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7071 terms. -/
def A397466 (n : ℕ) : ℤ :=
  A397466.P11172842824194226049.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7071 terms. -/
def A397466.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398165.P11536307954340140639

`∩[A138302(n+1)-1, A138302(n+1)]`
-/

namespace A398165.P11536307954340140639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138302 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138302 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398165.P11536307954340140639

noncomputable section

/-- A398165: Numbers k such that all the exponents in the prime factorizations of k and k+1 are powers of 2.

Offset 1, canonical program `A398165.P11536307954340140639`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8631 terms. -/
def A398165 (n : ℕ) : ℤ :=
  (A398165.P11536307954340140639.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8631 terms. -/
def A398165.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398168.P16108428066764494187

`eq[(n+1)/∏{p}[n+1, #], char[A004709(n+1)]]`
-/

namespace A398168.P16108428066764494187
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (n + 1)

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f3 j : ℚ)) n

end

end A398168.P16108428066764494187

noncomputable section

/-- A398168: Cubefree numbers k such that k+1 is squarefree.

Offset 1, canonical program `A398168.P16108428066764494187`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4800 terms. -/
def A398168 (n : ℕ) : ℤ :=
  (A398168.P16108428066764494187.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4800 terms. -/
def A398168.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398324.P4813511843978568844

`eq[A088570(A216345(n+1)), A157928(n)]`
-/

namespace A398324.P4813511843978568844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088570 (A216345 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A398324.P4813511843978568844

noncomputable section

/-- A398324: Positions k such that the prefix of length k of the Kolakoski sequence contains an even number of 1's and an even number of 2's.

Offset 1, canonical program `A398324.P4813511843978568844`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1657 terms. -/
def A398324 (n : ℕ) : ℤ :=
  (A398324.P4813511843978568844.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1657 terms. -/
def A398324.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359102.P3385098872197372675

`A372678(A026741(n+1))`
-/

namespace A359102.P3385098872197372675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372678 (A026741 (n + 1)).toNat

end

end A359102.P3385098872197372675

noncomputable section

/-- A359102: a(n) = phi(7 * n)/6.

Offset 1, canonical program `A359102.P3385098872197372675`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359102 (n : ℕ) : ℤ :=
  A359102.P3385098872197372675.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359102.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363917.P8803550997163744915

`A363923(n+1)*A005361(n+1)`
-/

namespace A363917.P8803550997163744915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363923 (n + 1) * A005361 (n + 1)

end

end A363917.P8803550997163744915

noncomputable section

/-- A363917: a(n) = Product_{p in Factors(n)} mult(p) * n^mult(p) / p, where Factors(n) is the integer factorization of n and mult(p) the multiplicity of the prime factor p.

Offset 1, canonical program `A363917.P8803550997163744915`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, A363923, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A363917 (n : ℕ) : ℤ :=
  A363917.P8803550997163744915.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, A363923, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A363917.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363919.P4187681008665275197

`A363923(n+1)/A205959(n+1)`
-/

namespace A363919.P4187681008665275197
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A363923 (n + 1) : ℚ) / (A205959 (n + 1) : ℚ)

end

end A363919.P4187681008665275197

noncomputable section

/-- A363919: a(n) = n^excess(n), where excess(n) = A046660(n).

Offset 1, canonical program `A363919.P4187681008665275197`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A205959, A363923, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A363919 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A363919.P4187681008665275197.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A205959, A363923, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A363919.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A364900.P10521200387080380125

`A007913(A022998(n+1))`
-/

namespace A364900.P10521200387080380125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A022998 (n + 1)).toNat

end

end A364900.P10521200387080380125

noncomputable section

/-- A364900: The n-volume of the unit regular n-simplex is sqrt(a(n))/A364901(n), with a(n) being squarefree.

Offset 0, canonical program `A364900.P10521200387080380125`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364900 (n : ℕ) : ℤ :=
  A364900.P10521200387080380125.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364900.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364999.P3621329991387479077

`2*A039956(n+2)`
-/

namespace A364999.P3621329991387479077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A039956 (n + 2)

end

end A364999.P3621329991387479077

noncomputable section

/-- A364999: Numbers k neither squarefree nor prime power such that both rad(k)*A119288(k) > k and rad(k)*A053669(k) > k.

Offset 1, canonical program `A364999.P3621329991387479077`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A039956, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364999 (n : ℕ) : ℤ :=
  A364999.P3621329991387479077.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A039956, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364999.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366959.P2192269047836251233

`eq[A054054(n)+2, A054055(n)]`
-/

namespace A366959.P2192269047836251233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A366959.P2192269047836251233

noncomputable section

/-- A366959: Numbers whose difference between the largest and smallest digits is equal to 2.

Offset 1, canonical program `A366959.P2192269047836251233`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 487 terms. -/
def A366959 (n : ℕ) : ℤ :=
  (A366959.P2192269047836251233.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 487 terms. -/
def A366959.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366962.P16010517358609303097

`eq[A054054(n)+2, A054055(n)-3]`
-/

namespace A366962.P16010517358609303097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n - 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A366962.P16010517358609303097

noncomputable section

/-- A366962: Numbers whose difference between the largest and smallest digits is equal to 5.

Offset 1, canonical program `A366962.P16010517358609303097`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1567 terms. -/
def A366962 (n : ℕ) : ℤ :=
  (A366962.P16010517358609303097.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1567 terms. -/
def A366962.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370182.P18244523135590086717

`A370567(n+1)/(n+1)`
-/

namespace A370182.P18244523135590086717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A370567 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A370182.P18244523135590086717

noncomputable section

/-- A370182: Size of the group Z_7*/(Z_7*)^n, where Z_7 is the ring of 7-adic integers.

Offset 1, canonical program `A370182.P18244523135590086717`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370182 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A370182.P18244523135590086717.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370182.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373935.P5688816994832969295

`A373936(n+2)-A373936(n+1)`
-/

namespace A373935.P5688816994832969295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373936 (n + 2) - A373936 (n + 1)

end

end A373935.P5688816994832969295

noncomputable section

/-- A373935: Number of compositions of 7*n-3 into parts 6 and 7.

Offset 1, canonical program `A373935.P5688816994832969295`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373936, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373935 (n : ℕ) : ℤ :=
  A373935.P5688816994832969295.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373936, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373935.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373962.P14560065925070970160

`A373963(n+2)-A373963(n+1)`
-/

namespace A373962.P14560065925070970160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373963 (n + 2) - A373963 (n + 1)

end

end A373962.P14560065925070970160

noncomputable section

/-- A373962: Number of compositions of 6*n-2 into parts 5 and 6.

Offset 1, canonical program `A373962.P14560065925070970160`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373963, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373962 (n : ℕ) : ℤ :=
  A373962.P14560065925070970160.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373963, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373962.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A374457.P2386240306145347940

`A001615(A268335(n+1))`
-/

namespace A374457.P2386240306145347940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (A268335 (n + 1)).toNat

end

end A374457.P2386240306145347940

noncomputable section

/-- A374457: The Dedekind psi function values of the exponentially odd numbers (A268335).

Offset 1, canonical program `A374457.P2386240306145347940`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7055 terms. -/
def A374457 (n : ℕ) : ℤ :=
  A374457.P2386240306145347940.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7055 terms. -/
def A374457.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380324.P1092347728231557211

`A366439(n+1)/A380326(n+1)`
-/

namespace A380324.P1092347728231557211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A366439 (n + 1) : ℚ) / (A380326 (n + 1) : ℚ)

end

end A380324.P1092347728231557211

noncomputable section

/-- A380324: The sum of the squares dividing the n-th exponentially odd number.

Offset 1, canonical program `A380324.P1092347728231557211`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A380324 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A380324.P1092347728231557211.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A380324.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381579.P9755719263119690810

`A007089(A381608(n))`
-/

namespace A381579.P9755719263119690810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A381608 n).toNat

end

end A381579.P9755719263119690810

noncomputable section

/-- A381579: The Chung-Graham representation of n: representation of n in base of even-indexed Fibonacci numbers.

Offset 0, canonical program `A381579.P9755719263119690810`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4267 terms. -/
def A381579 (n : ℕ) : ℤ :=
  A381579.P9755719263119690810.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4267 terms. -/
def A381579.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386253.P11103916408010267952

`A054054(n)^A054055(n)+n`
-/

namespace A386253.P11103916408010267952
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054054 n : ℚ) ^ (A054055 n : ℤ) + (n : ℚ)

end

end A386253.P11103916408010267952

noncomputable section

/-- A386253: a(n) = (smallest digit of n)^(largest digit of n) + n.

Offset 0, canonical program `A386253.P11103916408010267952`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054054, A054055, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A386253 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A386253.P11103916408010267952.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054054, A054055, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A386253.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A389888.P10709983666780608653

`record[A007913(n+1)*A007913(n+5)]`
-/

namespace A389888.P10709983666780608653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1) * A007913 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A389888.P10709983666780608653

noncomputable section

/-- A389888: Discriminants of real quadratic fields in which every additively indecomposable element is a unit.

Offset 1, canonical program `A389888.P10709983666780608653`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389888 (n : ℕ) : ℤ :=
  A389888.P10709983666780608653.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389888.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A390806.P15664857902583542656

`∑{d}[n+1, A000082(#)*A125287((n+1)/#)]`
-/

namespace A390806.P15664857902583542656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000082 d * A125287 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A390806.P15664857902583542656

noncomputable section

/-- A390806: The sum of the integers k from 1 to n such that gcd(n, k) is squarefree (A005117).

Offset 1, canonical program `A390806.P15664857902583542656`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390806 (n : ℕ) : ℤ :=
  A390806.P15664857902583542656.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390806.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392170.P12620417341188067993

`A000082(n+1)/A057521(n+1)`
-/

namespace A392170.P12620417341188067993
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000082 (n + 1) : ℚ) / (A057521 (n + 1) : ℚ)

end

end A392170.P12620417341188067993

noncomputable section

/-- A392170: The Dedekind psi function value of the smallest powerful number that is a multiple of n.

Offset 1, canonical program `A392170.P12620417341188067993`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392170 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A392170.P12620417341188067993.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392170.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392171.P5450474207520868520

`A001615(n+1)*A360541(n+1)`
-/

namespace A392171.P5450474207520868520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (n + 1) * A360541 (n + 1)

end

end A392171.P5450474207520868520

noncomputable section

/-- A392171: The Dedekind psi function value of the smallest cubefull number that is a multiple of n.

Offset 1, canonical program `A392171.P5450474207520868520`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392171 (n : ℕ) : ℤ :=
  A392171.P5450474207520868520.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392171.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392569.P15058182535622603523

`a(n-1)+A000788(n)` with `a(0)=0`
-/

namespace A392569.P15058182535622603523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A000788 n

end

end A392569.P15058182535622603523

noncomputable section

/-- A392569: Partial sums of A000788.

Offset 0, canonical program `A392569.P15058182535622603523`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000788, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A392569 (n : ℕ) : ℤ :=
  A392569.P15058182535622603523.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000788, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A392569.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A396203.P15910022281224477011

`p?[A396279(n+1)]`
-/

namespace A396203.P15910022281224477011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396279 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A396203.P15910022281224477011

noncomputable section

/-- A396203: Primes p such that the gap to the next prime is floor(log_2(p)).

Offset 1, canonical program `A396203.P15910022281224477011`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1369 terms. -/
def A396203 (n : ℕ) : ℤ :=
  A396203.P15910022281224477011.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1369 terms. -/
def A396203.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A355928.P15397702869236603100

`A007913(∑{d}[n+1, #])`
-/

namespace A355928.P15397702869236603100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A355928.P15397702869236603100

noncomputable section

/-- A355928: Squarefree part of the sum of divisors of n.

Offset 1, canonical program `A355928.P15397702869236603100`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A355928 (n : ℕ) : ℤ :=
  A355928.P15397702869236603100.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A355928.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356191.P16753681922814889908

`A064549(n+1)/A007913(n+1)`
-/

namespace A356191.P16753681922814889908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064549 (n + 1) : ℚ) / (A007913 (n + 1) : ℚ)

end

end A356191.P16753681922814889908

noncomputable section

/-- A356191: a(n) is the smallest exponentially odd number that is divisible by n.

Offset 1, canonical program `A356191.P16753681922814889908`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007913, A064549, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A356191 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A356191.P16753681922814889908.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007913, A064549, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A356191.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A356448.P2647750679895605834

`eq[n%2, A074465(n+1)]+1`
-/

namespace A356448.P2647750679895605834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074465 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A356448.P2647750679895605834

noncomputable section

/-- A356448: Even numbers k such that k^2 is in A014567.

Offset 1, canonical program `A356448.P2647750679895605834`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356448 (n : ℕ) : ℤ :=
  (A356448.P2647750679895605834.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356448.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356452.P6260513560774199967

`2*(lt[1, A074465(2*(n+1))]+1)`
-/

namespace A356452.P6260513560774199967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074465 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A356452.P6260513560774199967

noncomputable section

/-- A356452: Even numbers k such that k^2 is not in A014567; complement of A356448 in the even numbers.

Offset 1, canonical program `A356452.P6260513560774199967`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9961 terms. -/
def A356452 (n : ℕ) : ℤ :=
  (A356452.P6260513560774199967.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9961 terms. -/
def A356452.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359150.P10846391432532706989

`A066829(n+1)*A121262(n)`
-/

namespace A359150.P10846391432532706989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066829 (n + 1) * A121262 n

end

end A359150.P10846391432532706989

noncomputable section

/-- A359150: a(n) = 1 if n is a number of the form 4u+1 with an odd number of prime factors (counted with multiplicity), otherwise 0.

Offset 1, canonical program `A359150.P10846391432532706989`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066829, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359150 (n : ℕ) : ℤ :=
  A359150.P10846391432532706989.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066829, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359150.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A359162.P13529402606392842985

`A353557(n+1)-A359160(n+1)`
-/

namespace A359162.P13529402606392842985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353557 (n + 1) - A359160 (n + 1)

end

end A359162.P13529402606392842985

noncomputable section

/-- A359162: a(n) = 1 if n is a number of the form 4u+3 with an even number of prime factors (counted with multiplicity), otherwise 0.

Offset 1, canonical program `A359162.P13529402606392842985`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353557, A359160, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A359162 (n : ℕ) : ℤ :=
  A359162.P13529402606392842985.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353557, A359160, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A359162.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A359233.P9492225823150764849

`A083912(8*(n+1)+2*n)`
-/

namespace A359233.P9492225823150764849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083912 (8 * (n + 1) + 2 * n)

end

end A359233.P9492225823150764849

noncomputable section

/-- A359233: Number of divisors of 5*n-1 of form 5*k+1.

Offset 1, canonical program `A359233.P9492225823150764849`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6553 terms. -/
def A359233 (n : ℕ) : ℤ :=
  A359233.P9492225823150764849.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6553 terms. -/
def A359233.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359236.P806532948451903826

`A083912(A017341(n))`
-/

namespace A359236.P806532948451903826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083912 (A017341 n).toNat

end

end A359236.P806532948451903826

noncomputable section

/-- A359236: Number of divisors of 5*n-2 of form 5*k+1.

Offset 1, canonical program `A359236.P806532948451903826`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6554 terms. -/
def A359236 (n : ℕ) : ℤ :=
  A359236.P806532948451903826.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6554 terms. -/
def A359236.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359237.P16442343101245776050

`A083912(10*n+4)`
-/

namespace A359237.P16442343101245776050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083912 (10 * n + 4)

end

end A359237.P16442343101245776050

noncomputable section

/-- A359237: Number of divisors of 5*n-3 of form 5*k+1.

Offset 1, canonical program `A359237.P16442343101245776050`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6554 terms. -/
def A359237 (n : ℕ) : ℤ :=
  A359237.P16442343101245776050.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6554 terms. -/
def A359237.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359238.P16673350838103141104

`A083912(10*n+2)`
-/

namespace A359238.P16673350838103141104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083912 (10 * n + 2)

end

end A359238.P16673350838103141104

noncomputable section

/-- A359238: Number of divisors of 5*n-4 of form 5*k+1.

Offset 1, canonical program `A359238.P16673350838103141104`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6554 terms. -/
def A359238 (n : ℕ) : ℤ :=
  A359238.P16673350838103141104.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6554 terms. -/
def A359238.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359433.P4608172396385939507

`(-1)^∑{e}[n+1, #]*A125131(∏{p}[n+1, #^val(n+1, #²)])`
-/

namespace A359433.P4608172396385939507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) * A125131 (∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2))

end

end A359433.P4608172396385939507

noncomputable section

/-- A359433: Dirichlet inverse of A071773.

Offset 1, canonical program `A359433.P4608172396385939507`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359433 (n : ℕ) : ℤ :=
  A359433.P4608172396385939507.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359433.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A359769.P3510413858819511961

`A353557(n+1)-A353556(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A359769.P3510413858819511961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353557 (n + 1) - A353556 (n + 1)

end

end A359769.P3510413858819511961

noncomputable section

/-- A359769: a(n) = A353557(n) - A353556(n).

Offset 1, canonical program `A359769.P3510413858819511961`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353556, A353557, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A359769 (n : ℕ) : ℤ :=
  A359769.P3510413858819511961.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353556, A353557, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A359769.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A362225.P17099261379294199932

`(2*A175255(n+2)+1)/3`
-/

namespace A362225.P17099261379294199932
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A175255 (n + 2) + 1 : ℚ) / 3

end

end A362225.P17099261379294199932

noncomputable section

/-- A362225: Primes of the form (2*p^2 + 1)/3 where p is a prime > 3.

Offset 1, canonical program `A362225.P17099261379294199932`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A175255, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A362225 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A362225.P17099261379294199932.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A175255, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A362225.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363317.P7308368219269641597

`A050449(4*n+1)`
-/

namespace A363317.P7308368219269641597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050449 (4 * n + 1)

end

end A363317.P7308368219269641597

noncomputable section

/-- A363317: Sum of divisors of 4*n-3 of form 4*k+1.

Offset 1, canonical program `A363317.P7308368219269641597`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050449, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363317 (n : ℕ) : ℤ :=
  A363317.P7308368219269641597.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050449, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363317.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363902.P1501377666903482060

`(A001822(n+1)+A078182(n+1))/3`
-/

namespace A363902.P1501377666903482060
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001822 (n + 1) + A078182 (n + 1) : ℚ) / 3

end

end A363902.P1501377666903482060

noncomputable section

/-- A363902: Expansion of Sum_{k>0} x^(2*k) / (1 - x^(3*k))^2.

Offset 1, canonical program `A363902.P1501377666903482060`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001822, A078182, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A363902 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A363902.P1501377666903482060.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001822, A078182, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A363902.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A364044.P10488358763832644211

`A083912(n+1)-A083917(n+1)`
-/

namespace A364044.P10488358763832644211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083912 (n + 1) - A083917 (n + 1)

end

end A364044.P10488358763832644211

noncomputable section

/-- A364044: Expansion of Sum_{k>0} x^(2*k) / (1 + x^(5*k)).

Offset 1, canonical program `A364044.P10488358763832644211`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364044 (n : ℕ) : ℤ :=
  A364044.P10488358763832644211.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364044.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364046.P38530903623635105

`A083914(n+1)-A083919(n+1)`
-/

namespace A364046.P38530903623635105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083914 (n + 1) - A083919 (n + 1)

end

end A364046.P38530903623635105

noncomputable section

/-- A364046: Expansion of Sum_{k>0} x^(4*k) / (1 + x^(5*k)).

Offset 1, canonical program `A364046.P38530903623635105`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364046 (n : ℕ) : ℤ :=
  A364046.P38530903623635105.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364046.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364064.P14026189382415134399

`A363901(3*n+1)`
-/

namespace A364064.P14026189382415134399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363901 (3 * n + 1)

end

end A364064.P14026189382415134399

noncomputable section

/-- A364064: Expansion of Sum_{k>0} k * x^k / (1 - x^(3*k-2)).

Offset 1, canonical program `A364064.P14026189382415134399`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A364064 (n : ℕ) : ℤ :=
  A364064.P14026189382415134399.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A364064.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364065.P7626182441879628720

`A363901(3*n+2)`
-/

namespace A364065.P7626182441879628720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363901 (3 * n + 2)

end

end A364065.P7626182441879628720

noncomputable section

/-- A364065: Expansion of Sum_{k>0} k * x^(2*k-1) / (1 - x^(3*k-2)).

Offset 1, canonical program `A364065.P7626182441879628720`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A364065 (n : ℕ) : ℤ :=
  A364065.P7626182441879628720.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A364065.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364429.P6142064425586013053

`A008414(n)/A034444(A034444(n+1))`
-/

namespace A364429.P6142064425586013053
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008414 n : ℚ) / (A034444 (A034444 (n + 1)).toNat : ℚ)

end

end A364429.P6142064425586013053

noncomputable section

/-- A364429: a(0) = 1, a(n) = (2*n^5 + 20*n^3 + 23*n) * 2/15 for n>=1.

Offset 0, canonical program `A364429.P6142064425586013053`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364429 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A364429.P6142064425586013053.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364429.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365767.P15208878086350137943

`Δ[A086688(n+1)]`
-/

namespace A365767.P15208878086350137943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086688 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A365767.P15208878086350137943

noncomputable section

/-- A365767: a(n) is the number of primes between (prime(n))^3 and (prime(n+1))^3.

Offset 1, canonical program `A365767.P15208878086350137943`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 134 terms. -/
def A365767 (n : ℕ) : ℤ :=
  A365767.P15208878086350137943.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 134 terms. -/
def A365767.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365968.P14045950726560360185

`A124757(n+1)-A359400(n+1)`
-/

namespace A365968.P14045950726560360185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124757 (n + 1) - A359400 (n + 1)

end

end A365968.P14045950726560360185

noncomputable section

/-- A365968: Irregular triangle read by rows: T(n,k) (0 <= n, 0 <= k < 2^n). An infinite binary tree with root node 0 in row n = 0. Each node then has left child (2*j) - k - 1 and right child (2*j) - k + 1, where j and k are the values of the parent and grandparent nodes respectively.

Offset 0, canonical program `A365968.P14045950726560360185`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A365968 (n : ℕ) : ℤ :=
  A365968.P14045950726560360185.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A365968.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A367418.P8234545043169317715

`A268335(n+1)/A367417(n+1)`
-/

namespace A367418.P8234545043169317715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268335 (n + 1) : ℚ) / (A367417 (n + 1) : ℚ)

end

end A367418.P8234545043169317715

noncomputable section

/-- A367418: The exponentially odd numbers (A268335) divided by their squarefree kernels (A007947).

Offset 1, canonical program `A367418.P8234545043169317715`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, A367417, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A367418 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A367418.P8234545043169317715.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, A367417, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A367418.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A368613.P1521130662845117134

`A368611(n+1)-A013939(n+1)`
-/

namespace A368613.P1521130662845117134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368611 (n + 1) - A013939 (n + 1)

end

end A368613.P1521130662845117134

noncomputable section

/-- A368613: a(n) = Sum_{k=2..n} pi(k-1) * floor(n/k).

Offset 1, canonical program `A368613.P1521130662845117134`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013939, A368611, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368613 (n : ℕ) : ℤ :=
  A368613.P1521130662845117134.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013939, A368611, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368613.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A368641.P10387616186859536638

`A368616(n+1)-A048865(n+1)`
-/

namespace A368641.P10387616186859536638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368616 (n + 1) - A048865 (n + 1)

end

end A368641.P10387616186859536638

noncomputable section

/-- A368641: a(n) = Sum_{k=2..n} pi(k-1) * (ceiling(n/k) - floor(n/k)).

Offset 1, canonical program `A368641.P10387616186859536638`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048865, A368616, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368641 (n : ℕ) : ℤ :=
  A368641.P10387616186859536638.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048865, A368616, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368641.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A369935.P16814839049346386395

`A051903(A197680(n+1))`
-/

namespace A369935.P16814839049346386395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A197680 (n + 1)).toNat

end

end A369935.P16814839049346386395

noncomputable section

/-- A369935: The maximal exponent in the prime factorization of the numbers whose all exponents are squares (A197680).

Offset 1, canonical program `A369935.P16814839049346386395`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369935 (n : ℕ) : ℤ :=
  A369935.P16814839049346386395.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369935.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372468.P6450285876399632341

`filter[A366438(n+1), A010055(#)]`
-/

namespace A372468.P6450285876399632341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366438 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010055 (f1 j).toNat = 1) n)

end

end A372468.P6450285876399632341

noncomputable section

/-- A372468: The number of divisors of the numbers whose number of divisors is a power of 2 (A036537).

Offset 1, canonical program `A372468.P6450285876399632341`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9763 terms. -/
def A372468 (n : ℕ) : ℤ :=
  A372468.P6450285876399632341.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9763 terms. -/
def A372468.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374092.P5550982574403605617

`A088534(n)-A195198(n)`
-/

namespace A374092.P5550982574403605617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088534 n - A195198 n

end

end A374092.P5550982574403605617

noncomputable section

/-- A374092: Number of solutions to n = x^2 + x*y + y^2 with 0 < x < y.

Offset 0, canonical program `A374092.P5550982574403605617`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A374092 (n : ℕ) : ℤ :=
  A374092.P5550982574403605617.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A374092.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374099.P14562873253265136696

`A088534(n²)-1`
-/

namespace A374099.P14562873253265136696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088534 (n ^ 2) - 1

end

end A374099.P14562873253265136696

noncomputable section

/-- A374099: Number of solutions to n^2 = x^2 + x*y + y^2 with 0 < x < y.

Offset 0, canonical program `A374099.P14562873253265136696`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A374099 (n : ℕ) : ℤ :=
  A374099.P14562873253265136696.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A374099.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A377844.P397277366577125668

`eq[1, A295662(n+1)]+1`
-/

namespace A377844.P397277366577125668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295662 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A377844.P397277366577125668

noncomputable section

/-- A377844: Numbers that have a single odd exponent larger than 1 in their prime factorization.

Offset 1, canonical program `A377844.P397277366577125668`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5748 terms. -/
def A377844 (n : ℕ) : ℤ :=
  (A377844.P397277366577125668.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5748 terms. -/
def A377844.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378548.P15962703755857081892

`∑{d}[n+1, #*A353557((n+1)/#)]`
-/

namespace A378548.P15962703755857081892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A353557 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378548.P15962703755857081892

noncomputable section

/-- A378548: Sum of divisors d of n such that n/d is odd with an even number of prime factors (counted with multiplicity).

Offset 1, canonical program `A378548.P15962703755857081892`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378548 (n : ℕ) : ℤ :=
  A378548.P15962703755857081892.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378548.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380101.P1884681769082390554

`eq[2, A069903(n+1)]+1`
-/

namespace A380101.P1884681769082390554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069903 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A380101.P1884681769082390554

noncomputable section

/-- A380101: Numbers k such that omega(k-th triangular number) = 2, where omega = A001221.

Offset 1, canonical program `A380101.P1884681769082390554`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 266 terms. -/
def A380101 (n : ℕ) : ℤ :=
  (A380101.P1884681769082390554.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 266 terms. -/
def A380101.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381316.P10823107300725866756

`filter[A375145(n+1), A359466(#)]`
-/

namespace A381316.P10823107300725866756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375145 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359466 (f1 j).toNat = 1) n)

end

end A381316.P10823107300725866756

noncomputable section

/-- A381316: Numbers whose powerful part (A057521) is a power of a prime with an exponent >= 3 (A246549).

Offset 1, canonical program `A381316.P10823107300725866756`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8345 terms. -/
def A381316 (n : ℕ) : ℤ :=
  A381316.P10823107300725866756.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8345 terms. -/
def A381316.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382422.P8806912149024037837

`∏{e}[A046100(n+1), #]`
-/

namespace A382422.P8806912149024037837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046100 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A382422.P8806912149024037837

noncomputable section

/-- A382422: The product of exponents in the prime factorization of the biquadratefree numbers.

Offset 1, canonical program `A382422.P8806912149024037837`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382422 (n : ℕ) : ℤ :=
  (A382422.P8806912149024037837.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382422.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382424.P10698664269751577665

`A295659(A046100(n+1))`
-/

namespace A382424.P10698664269751577665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295659 (A046100 (n + 1)).toNat

end

end A382424.P10698664269751577665

noncomputable section

/-- A382424: The number of exponents in the prime factorization of n-th biquadratefree number that are equal to 3.

Offset 1, canonical program `A382424.P10698664269751577665`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382424 (n : ℕ) : ℤ :=
  A382424.P10698664269751577665.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382424.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382888.P4028555918391675271

`∏{p}[A004709(n+1), #]`
-/

namespace A382888.P4028555918391675271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A382888.P4028555918391675271

noncomputable section

/-- A382888: The squarefree kernel of the n-th cubefree number.

Offset 1, canonical program `A382888.P4028555918391675271`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382888 (n : ℕ) : ℤ :=
  (A382888.P4028555918391675271.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382888.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382905.P13634783915817260642

`A055231(A046100(n+1))`
-/

namespace A382905.P13634783915817260642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (A046100 (n + 1)).toNat

end

end A382905.P13634783915817260642

noncomputable section

/-- A382905: The powerfree part of the n-th biquadratefree number.

Offset 1, canonical program `A382905.P13634783915817260642`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382905 (n : ℕ) : ℤ :=
  A382905.P13634783915817260642.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382905.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383278.P11664526587919339867

`∑[A383277(n+1)]`
-/

namespace A383278.P11664526587919339867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A383278.P11664526587919339867

noncomputable section

/-- A383278: The number of integers k such that A034444(k) * k <= n.

Offset 1, canonical program `A383278.P11664526587919339867`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383278 (n : ℕ) : ℤ :=
  A383278.P11664526587919339867.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383278.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385137.P2568860053888881347

`∑{d}[n+1, A372671(#)]`
-/

namespace A385137.P2568860053888881347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A372671 d

end

end A385137.P2568860053888881347

noncomputable section

/-- A385137: The sum of divisors d of n such that n/d is a 3-smooth number (A003586).

Offset 1, canonical program `A385137.P2568860053888881347`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385137 (n : ℕ) : ℤ :=
  A385137.P2568860053888881347.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385137.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385859.P8395933161954360156

`A227428(3*n+1)+A227428(A000027(3*n+2))`
-/

namespace A385859.P8395933161954360156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227428 (3 * n + 1) + A227428 (A000027 (3 * n + 2)).toNat

end

end A385859.P8395933161954360156

noncomputable section

/-- A385859: a(n) = Sum_{k=0..n} (C(n,k) mod 3)^2.

Offset 0, canonical program `A385859.P8395933161954360156`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. -/
def A385859 (n : ℕ) : ℤ :=
  A385859.P8395933161954360156.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. -/
def A385859.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389836.P17345097124898425646

`log2(A278908(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A389836.P17345097124898425646
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A278908 (n + 1) : ℝ)

end

end A389836.P17345097124898425646

noncomputable section

/-- A389836: a(n) = log_2(A278908(n)).

Offset 1, canonical program `A389836.P17345097124898425646`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A278908, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A389836 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A389836.P17345097124898425646.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A278908, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A389836.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A393336.P13809973050334025134

`A029931(n)-A359400(n)`
-/

namespace A393336.P13809973050334025134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 n - A359400 n

end

end A393336.P13809973050334025134

noncomputable section

/-- A393336: a(n) is the sum of positions of 1's minus sum of positions of 0's in the binary expansion of n.

Offset 0, canonical program `A393336.P13809973050334025134`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A029931, A359400, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A393336 (n : ℕ) : ℤ :=
  A393336.P13809973050334025134.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A029931, A359400, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A393336.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A396548.P9291011898899936861

`A005361(n+1)-A278908(n+1)`
-/

namespace A396548.P9291011898899936861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1) - A278908 (n + 1)

end

end A396548.P9291011898899936861

noncomputable section

/-- A396548: The number of coreful divisors of n that are not exponential unitary divisors of n.

Offset 1, canonical program `A396548.P9291011898899936861`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, A278908, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A396548 (n : ℕ) : ℤ :=
  A396548.P9291011898899936861.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, A278908, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A396548.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A357669.P7459688075800984872

`A000005(n+1)/A056671(n+1)`
-/

namespace A357669.P7459688075800984872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) / (A056671 (n + 1) : ℚ)

end

end A357669.P7459688075800984872

noncomputable section

/-- A357669: a(n) is the number of divisors of the powerful part of n.

Offset 1, canonical program `A357669.P7459688075800984872`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A056671, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A357669 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A357669.P7459688075800984872.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A056671, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A357669.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A358714.P18170188776639681660

`A000010(n+1)^3`
-/

namespace A358714.P18170188776639681660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) ^ 3

end

end A358714.P18170188776639681660

noncomputable section

/-- A358714: a(n) = phi(n)^3.

Offset 1, canonical program `A358714.P18170188776639681660`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358714 (n : ℕ) : ℤ :=
  A358714.P18170188776639681660.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358714.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A359465.P15801582525117201442

`A008966(n+1)*A353557(n+1)`
-/

namespace A359465.P15801582525117201442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) * A353557 (n + 1)

end

end A359465.P15801582525117201442

noncomputable section

/-- A359465: a(n) = 1 if n is an odd squarefree number with an even number of prime factors, otherwise 0.

Offset 1, canonical program `A359465.P15801582525117201442`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, A353557, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A359465 (n : ℕ) : ℤ :=
  A359465.P15801582525117201442.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, A353557, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A359465.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A359473.P5174824545835334631

`A209229(A000005(n+1))`
-/

namespace A359473.P5174824545835334631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A000005 (n + 1)).toNat

end

end A359473.P5174824545835334631

noncomputable section

/-- A359473: a(n) = 1 if the number of divisors of n is a power of 2, otherwise 0.

Offset 1, canonical program `A359473.P5174824545835334631`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A209229, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A359473 (n : ℕ) : ℤ :=
  A359473.P5174824545835334631.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A209229, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A359473.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A359475.P18265481206150499370

`A049240(n+1)*A359474(n+1)`
-/

namespace A359475.P18265481206150499370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049240 (n + 1) * A359474 (n + 1)

end

end A359475.P18265481206150499370

noncomputable section

/-- A359475: a(n) = 1 if n is a cubefree nonsquare whose factorization into a product of primes contains exactly one square, otherwise 0.

Offset 1, canonical program `A359475.P18265481206150499370`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049240, A359474, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A359475 (n : ℕ) : ℤ :=
  A359475.P18265481206150499370.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049240, A359474, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A359475.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A360522.P14036774965634784311

`∑{d}[n+1, A055653(#)]`
-/

namespace A360522.P14036774965634784311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055653 d

end

end A360522.P14036774965634784311

noncomputable section

/-- A360522: a(n) = Sum_{d|n} Max({d'; d'|n, gcd(d, d') = 1}).

Offset 1, canonical program `A360522.P14036774965634784311`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360522 (n : ℕ) : ℤ :=
  A360522.P14036774965634784311.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360522.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360902.P6311258266522548843

`eq[A000005(A007947(n+1)), A005361(n+1)]+1`
-/

namespace A360902.P6311258266522548843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A007947 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A360902.P6311258266522548843

noncomputable section

/-- A360902: Numbers with the same number of squarefree divisors and powerful divisors.

Offset 1, canonical program `A360902.P6311258266522548843`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 954 terms. -/
def A360902 (n : ℕ) : ℤ :=
  (A360902.P6311258266522548843.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 954 terms. -/
def A360902.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A362296.P9810890298712702943

`A000010(gcd(p?[2*n+1]+2, p?[2*n+5]))`
-/

namespace A362296.P9810890298712702943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.gcd (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 2) (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)))

end

end A362296.P9810890298712702943

noncomputable section

/-- A362296: Greatest common divisor of composite numbers between the n-th and (n+1)st primes.

Offset 2, canonical program `A362296.P9810890298712702943`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9600 terms. -/
def A362296 (n : ℕ) : ℤ :=
  A362296.P9810890298712702943.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9600 terms. -/
def A362296.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A362334.P13106116435762041529

`A000010(n+1)+A000010(n+3)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A362334.P13106116435762041529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + A000010 (n + 3)

end

end A362334.P13106116435762041529

noncomputable section

/-- A362334: a(n) = A000010(n) + A000010(n+2), where A000010 is the Euler phi-function.

Offset 1, canonical program `A362334.P13106116435762041529`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A362334 (n : ℕ) : ℤ :=
  A362334.P13106116435762041529.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A362334.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363097.P13840407431328399285

`A000010(a(n-1))+n` with `a(0)=1`
-/

namespace A363097.P13840407431328399285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000010 (a (n - 1)).toNat + (n : ℤ)

end

end A363097.P13840407431328399285

noncomputable section

/-- A363097: a(0) = 1, a(n) = n + phi(a(n-1)), where phi is Euler totient function.

Offset 0, canonical program `A363097.P13840407431328399285`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A363097 (n : ℕ) : ℤ :=
  A363097.P13840407431328399285.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A363097.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364932.P6679838922947751694

`A000010(A001615(n+1))`
-/

namespace A364932.P6679838922947751694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A001615 (n + 1)).toNat

end

end A364932.P6679838922947751694

noncomputable section

/-- A364932: a(n) = phi(psi(n)).

Offset 1, canonical program `A364932.P6679838922947751694`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364932 (n : ℕ) : ℤ :=
  A364932.P6679838922947751694.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364932.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366579.P9157288590479731262

`A000010(A034472(n))`
-/

namespace A366579.P9157288590479731262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A034472 n).toNat

end

end A366579.P9157288590479731262

noncomputable section

/-- A366579: a(n) = phi(3^n+1), where phi is Euler's totient function (A000010).

Offset 0, canonical program `A366579.P9157288590479731262`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366579 (n : ℕ) : ℤ :=
  A366579.P9157288590479731262.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366579.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366630.P5479247099964849779

`A000010(A062394(n))`
-/

namespace A366630.P5479247099964849779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A062394 n).toNat

end

end A366630.P5479247099964849779

noncomputable section

/-- A366630: a(n) = phi(6^n+1), where phi is Euler's totient function (A000010).

Offset 0, canonical program `A366630.P5479247099964849779`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366630 (n : ℕ) : ℤ :=
  A366630.P5479247099964849779.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366630.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366639.P16325030738299286529

`A000010(A034491(n))`
-/

namespace A366639.P16325030738299286529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A034491 n).toNat

end

end A366639.P16325030738299286529

noncomputable section

/-- A366639: a(n) = phi(7^n+1), where phi is Euler's totient function (A000010).

Offset 0, canonical program `A366639.P16325030738299286529`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366639 (n : ℕ) : ℤ :=
  A366639.P16325030738299286529.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366639.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366669.P7554268896085898891

`A000010(A062397(n))`
-/

namespace A366669.P7554268896085898891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A062397 n).toNat

end

end A366669.P7554268896085898891

noncomputable section

/-- A366669: a(n) = phi(10^n+1), where phi is Euler's totient function (A000010).

Offset 0, canonical program `A366669.P7554268896085898891`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366669 (n : ℕ) : ℤ :=
  A366669.P7554268896085898891.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366669.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366690.P10786875140119176482

`A000010(A034524(n))`
-/

namespace A366690.P10786875140119176482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A034524 n).toNat

end

end A366690.P10786875140119176482

noncomputable section

/-- A366690: a(n) = phi(11^n+1), where phi is Euler's totient function (A000010).

Offset 0, canonical program `A366690.P10786875140119176482`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366690 (n : ℕ) : ℤ :=
  A366690.P10786875140119176482.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366690.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366716.P7239533415179572660

`A000010(A178248(n))`
-/

namespace A366716.P7239533415179572660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A178248 n).toNat

end

end A366716.P7239533415179572660

noncomputable section

/-- A366716: a(n) = phi(12^n+1), where phi is Euler's totient function (A000010).

Offset 0, canonical program `A366716.P7239533415179572660`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366716 (n : ℕ) : ℤ :=
  A366716.P7239533415179572660.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366716.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366760.P5989951023419071794

`A000010(A038507(n))`
-/

namespace A366760.P5989951023419071794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A038507 n).toNat

end

end A366760.P5989951023419071794

noncomputable section

/-- A366760: a(n) = phi(n!+1), where phi is Euler's totient function (A000010).

Offset 0, canonical program `A366760.P5989951023419071794`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366760 (n : ℕ) : ℤ :=
  A366760.P5989951023419071794.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366760.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366822.P15760949706707559430

`A000010(A014566(n))`
-/

namespace A366822.P15760949706707559430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A014566 n).toNat

end

end A366822.P15760949706707559430

noncomputable section

/-- A366822: a(n) is phi(n^n + 1) where phi is the Euler totient function.

Offset 0, canonical program `A366822.P15760949706707559430`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366822 (n : ℕ) : ℤ :=
  A366822.P15760949706707559430.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366822.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366872.P9213635915992081364

`A000005(8+4*n)`
-/

namespace A366872.P9213635915992081364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (8 + 4 * n)

end

end A366872.P9213635915992081364

noncomputable section

/-- A366872: Number of closed chains of identical regular polygons with connecting inner vertices lying n vertices apart.

Offset 0, canonical program `A366872.P9213635915992081364`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366872 (n : ℕ) : ℤ :=
  A366872.P9213635915992081364.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366872.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A367132.P13460630829077045525

`A000010(A000058(n))`
-/

namespace A367132.P13460630829077045525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000058 n).toNat

end

end A367132.P13460630829077045525

noncomputable section

/-- A367132: a(n) = phi(A000058(n)) where phi is the Euler totient function and A000058 is Sylvester's sequence.

Offset 0, canonical program `A367132.P13460630829077045525`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367132 (n : ℕ) : ℤ :=
  A367132.P13460630829077045525.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367132.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A367406.P6026648702494217252

`A268335(n+1)*A367417(n+1)`
-/

namespace A367406.P6026648702494217252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268335 (n + 1) * A367417 (n + 1)

end

end A367406.P6026648702494217252

noncomputable section

/-- A367406: The exponentially odd numbers (A268335) multiplied by their squarefree kernels (A007947).

Offset 1, canonical program `A367406.P6026648702494217252`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, A367417, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A367406 (n : ℕ) : ℤ :=
  A367406.P6026648702494217252.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, A367417, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A367406.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A368541.P5221315555374862960

`∏{e}[A013929(n+1), A000005(#)]`
-/

namespace A368541.P5221315555374862960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000005 (Nat.factorization (f1 n).natAbs p)

end

end A368541.P5221315555374862960

noncomputable section

/-- A368541: The number of exponential divisors of the nonsquarefree numbers.

Offset 1, canonical program `A368541.P5221315555374862960`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368541 (n : ℕ) : ℤ :=
  A368541.P5221315555374862960.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368541.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368610.P12539630653234803959

`A368616(n+1)+A368611(n+1)`
-/

namespace A368610.P12539630653234803959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368616 (n + 1) + A368611 (n + 1)

end

end A368610.P12539630653234803959

noncomputable section

/-- A368610: a(n) = Sum_{k=1..n} pi(k) * ceiling(n/k).

Offset 1, canonical program `A368610.P12539630653234803959`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368610 (n : ℕ) : ℤ :=
  A368610.P12539630653234803959.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368610.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368673.P18187719419902595963

`A368642(n+1)-A064608(n+1)`
-/

namespace A368673.P18187719419902595963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368642 (n + 1) - A064608 (n + 1)

end

end A368673.P18187719419902595963

noncomputable section

/-- A368673: Number of squarefree numbers less than n that do not divide n.

Offset 1, canonical program `A368673.P18187719419902595963`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064608, A368642, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368673 (n : ℕ) : ℤ :=
  A368673.P18187719419902595963.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064608, A368642, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368673.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A371241.P3336735415354653583

`A000010(A032924(n+1))`
-/

namespace A371241.P3336735415354653583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A032924 (n + 1)).toNat

end

end A371241.P3336735415354653583

noncomputable section

/-- A371241: Euler totient function applied to the zeroless numbers in base 3 (A032924).

Offset 1, canonical program `A371241.P3336735415354653583`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2558 terms. -/
def A371241 (n : ℕ) : ℤ :=
  A371241.P3336735415354653583.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2558 terms. -/
def A371241.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372676.P9580076397016658994

`A000010(A008593(n+1))/10`
-/

namespace A372676.P9580076397016658994
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A008593 (n + 1)).toNat : ℚ) / 10

end

end A372676.P9580076397016658994

noncomputable section

/-- A372676: a(n) = phi(11 * n)/10.

Offset 1, canonical program `A372676.P9580076397016658994`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9090 terms. -/
def A372676 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A372676.P9580076397016658994.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9090 terms. -/
def A372676.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372715.P12208428737339877040

`A000005(3*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A372715.P12208428737339877040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (3 * n + 1)

end

end A372715.P12208428737339877040

noncomputable section

/-- A372715: a(n) = tau(3*n-2) = A000005(3*n-2).

Offset 1, canonical program `A372715.P12208428737339877040`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372715 (n : ℕ) : ℤ :=
  A372715.P12208428737339877040.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372715.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373041.P13050874201656265355

`A006370(A346758(n+5)-A000010(n+5))`
-/

namespace A373041.P13050874201656265355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A346758 (n + 5) - A000010 (n + 5)).toNat

end

end A373041.P13050874201656265355

noncomputable section

/-- A373041: 2*a(n) is the number of triangles with integer sides (x, y, n), x < y < n, and gcd(x, y, n) = 1.

Offset 5, canonical program `A373041.P13050874201656265355`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 204 terms. -/
def A373041 (n : ℕ) : ℤ :=
  A373041.P13050874201656265355.a (n - 5)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 204 terms. -/
def A373041.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373925.P11654832793373106341

`A000005(n+1)-(3-(-1)^n)`
-/

namespace A373925.P11654832793373106341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - (3 - (-1) ^ n)

end

end A373925.P11654832793373106341

noncomputable section

/-- A373925: a(n) = Sum_{d|n} (-1)^phi(d).

Offset 1, canonical program `A373925.P11654832793373106341`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373925 (n : ℕ) : ℤ :=
  A373925.P11654832793373106341.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373925.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373993.P16686830910054354384

`C(n, lcm(n, A000005(n+1)))`
-/

namespace A373993.P16686830910054354384
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (Int.lcm (n : ℤ) (A000005 (n + 1)))

end

end A373993.P16686830910054354384

noncomputable section

/-- A373993: a(n) = 1 if the number of divisors of n divides n-1, otherwise 0.

Offset 1, canonical program `A373993.P16686830910054354384`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373993 (n : ℕ) : ℤ :=
  (A373993.P16686830910054354384.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373993.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374352.P10560180475903247223

`∑[A061884(n+1)]`
-/

namespace A374352.P10560180475903247223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061884 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A374352.P10560180475903247223

noncomputable section

/-- A374352: a(n) = [n>1] * a(n-1) + Sum_{d|n} phi(lcm(d,n/d)) where [] is an Iverson bracket.

Offset 1, canonical program `A374352.P10560180475903247223`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374352 (n : ℕ) : ℤ :=
  A374352.P10560180475903247223.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374352.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A377121.P11187764455851854479

`record[(n+1)/A090387(A000010(n+1))]`
-/

namespace A377121.P11187764455851854479
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A090387 (A000010 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A377121.P11187764455851854479

noncomputable section

/-- A377121: Numbers whose totient is refactorable.

Offset 1, canonical program `A377121.P11187764455851854479`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A377121 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A377121.P11187764455851854479.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A377121.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A377562.P10117225115385376914

`eq[2, A159918(A000005(n+1))]+1`
-/

namespace A377562.P10117225115385376914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159918 (A000005 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A377562.P10117225115385376914

noncomputable section

/-- A377562: Numbers that have twice as many infinitary divisors as noninfinitary divisors.

Offset 1, canonical program `A377562.P10117225115385376914`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A377562 (n : ℕ) : ℤ :=
  (A377562.P10117225115385376914.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A377562.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378216.P4619166357507459087

`2-A000005(n+1)`
-/

namespace A378216.P4619166357507459087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A000005 (n + 1)

end

end A378216.P4619166357507459087

noncomputable section

/-- A378216: Dirichlet inverse of A174725.

Offset 1, canonical program `A378216.P4619166357507459087`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378216 (n : ℕ) : ℤ :=
  A378216.P4619166357507459087.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378216.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378508.P9814380838425537592

`eq[1, char[A000010(A000010(n+1))]]`
-/

namespace A378508.P9814380838425537592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000010 (n + 1)).toNat

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A378508.P9814380838425537592

noncomputable section

/-- A378508: Values taken by phi(phi(m)) (A010554).

Offset 1, canonical program `A378508.P9814380838425537592`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1260 terms. -/
def A378508 (n : ℕ) : ℤ :=
  (A378508.P9814380838425537592.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1260 terms. -/
def A378508.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378878.P16615356718433646277

`filter[A048108(n+1), A355447(#)]`
-/

namespace A378878.P16615356718433646277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048108 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A378878.P16615356718433646277

noncomputable section

/-- A378878: Products m*k such that k is composite and squarefree and m is composite such that rad(m) | k, where rad = A007947.

Offset 1, canonical program `A378878.P16615356718433646277`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9963 terms. -/
def A378878 (n : ℕ) : ℤ :=
  A378878.P16615356718433646277.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9963 terms. -/
def A378878.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379771.P2244188807561407627

`∑[A355447(n+1)]`
-/

namespace A379771.P2244188807561407627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355447 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A379771.P2244188807561407627

noncomputable section

/-- A379771: Number of k <= n that are neither squarefree nor prime powers.

Offset 1, canonical program `A379771.P2244188807561407627`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379771 (n : ℕ) : ℤ :=
  A379771.P2244188807561407627.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379771.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381740.P15547761009824729862

`filter[A363171(n+1), A008966(#)]`
-/

namespace A381740.P15547761009824729862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363171 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A381740.P15547761009824729862

noncomputable section

/-- A381740: Squarefree numbers k such that k^2 is abundant.

Offset 1, canonical program `A381740.P15547761009824729862`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3068 terms. -/
def A381740 (n : ℕ) : ℤ :=
  A381740.P15547761009824729862.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3068 terms. -/
def A381740.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382999.P5519289136988691999

`∑{d}[n+1, A000010(#)*A122803((n+1)/#-1)]`
-/

namespace A382999.P5519289136988691999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A122803 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A382999.P5519289136988691999

noncomputable section

/-- A382999: a(n) = Sum_{d|n} phi(n/d) * (-2)^(d-1).

Offset 1, canonical program `A382999.P5519289136988691999`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A382999 (n : ℕ) : ℤ :=
  A382999.P5519289136988691999.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A382999.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383000.P9620831116770953657

`∑{d}[n+1, A000010(#)*A352779((n+1)/#-1)]`
-/

namespace A383000.P9620831116770953657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A352779 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A383000.P9620831116770953657

noncomputable section

/-- A383000: a(n) = Sum_{d|n} phi(n/d) * (-3)^(d-1).

Offset 1, canonical program `A383000.P9620831116770953657`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A383000 (n : ℕ) : ℤ :=
  A383000.P9620831116770953657.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A383000.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383276.P8145180257487964334

`filter[n+1, A383277(#)]`
-/

namespace A383276.P8145180257487964334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A383277 (f1 j) = 1) n)

end

end A383276.P8145180257487964334

noncomputable section

/-- A383276: Numbers of the form A034444(k) * k.

Offset 1, canonical program `A383276.P8145180257487964334`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2247 terms. -/
def A383276 (n : ℕ) : ℤ :=
  (A383276.P8145180257487964334.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2247 terms. -/
def A383276.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384421.P5102326397673208716

`log2(A383762(n+1))`
-/

namespace A384421.P5102326397673208716
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A383762 (n + 1) : ℝ)

end

end A384421.P5102326397673208716

noncomputable section

/-- A384421: The number of exponentially squarefree prime powers (not including 1) that unitarily divide n.

Offset 1, canonical program `A384421.P5102326397673208716`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384421 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A384421.P5102326397673208716.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384421.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384422.P13713361955298330699

`∑{e}[n+1, A000010(#)]`
-/

namespace A384422.P13713361955298330699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A000010 (Nat.factorization (f1 n) p)

end

end A384422.P13713361955298330699

noncomputable section

/-- A384422: The number of prime powers (not including 1) p^e that divide n such that e is coprime to the p-adic valuation of n.

Offset 1, canonical program `A384422.P13713361955298330699`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384422 (n : ℕ) : ℤ :=
  A384422.P13713361955298330699.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384422.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384655.P11515566326129581330

`∑{d}[n+1, A000010(#)*A051903((n+1)/#)]`
-/

namespace A384655.P11515566326129581330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A051903 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A384655.P11515566326129581330

noncomputable section

/-- A384655: a(n) = Sum_{k=1..n} A051903(gcd(n,k)).

Offset 1, canonical program `A384655.P11515566326129581330`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384655 (n : ℕ) : ℤ :=
  A384655.P11515566326129581330.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384655.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384763.P13786111190154472342

`A000010(n+1)^(A034444(n+1)/2)`
-/

namespace A384763.P13786111190154472342
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℝ) ^ ((A034444 (n + 1) : ℚ) / 2 : ℝ)

end

end A384763.P13786111190154472342

noncomputable section

/-- A384763: Product of the Euler totients of the unitary divisors of n.

Offset 1, canonical program `A384763.P13786111190154472342`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A034444, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A384763 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A384763.P13786111190154472342.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A034444, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A384763.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A385113.P9615886296806253472

`A106469(A309307(n+1))-A008966(n+1)`
-/

namespace A385113.P9615886296806253472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106469 (A309307 (n + 1)).toNat - A008966 (n + 1)

end

end A385113.P9615886296806253472

noncomputable section

/-- A385113: a(1) = 0, a(n) = 1 + 2*[omega(n) > 1] + [bigomega(n) > omega(n)], Iverson brackets, where omega = A001221 and bigomega = A001222.

Offset 1, canonical program `A385113.P9615886296806253472`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385113 (n : ℕ) : ℤ :=
  A385113.P9615886296806253472.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385113.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385128.P3222418224828136052

`A000005(n+1)-A385129(n+1)`
-/

namespace A385128.P3222418224828136052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A385129 (n + 1)

end

end A385128.P3222418224828136052

noncomputable section

/-- A385128: The number of divisors of n whose maximum exponent in their prime factorization is even.

Offset 1, canonical program `A385128.P3222418224828136052`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A385129, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A385128 (n : ℕ) : ℤ :=
  A385128.P3222418224828136052.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A385129, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A385128.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A385133.P8884467150607010099

`∑{d}[n+1, A000010(#)*A381955((n+1)/#)]`
-/

namespace A385133.P8884467150607010099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A381955 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A385133.P8884467150607010099

noncomputable section

/-- A385133: The number of integers k from 1 to n such that gcd(n, k) has an odd maximum exponent in its prime factorization.

Offset 1, canonical program `A385133.P8884467150607010099`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385133 (n : ℕ) : ℤ :=
  A385133.P8884467150607010099.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385133.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385212.P9842174822720494087

`abs(A055615(n+1))+A107078(n+1)`
-/

namespace A385212.P9842174822720494087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A055615 (n + 1)| + A107078 (n + 1)

end

end A385212.P9842174822720494087

noncomputable section

/-- A385212: a(n) = n^(mu(n)^2), where mu is the Möbius function (A008683).

Offset 1, canonical program `A385212.P9842174822720494087`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055615, A107078, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A385212 (n : ℕ) : ℤ :=
  A385212.P9842174822720494087.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055615, A107078, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A385212.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A388270.P10233009455192801401

`A000005(n+1)*A009194(n+1)`
-/

namespace A388270.P10233009455192801401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A009194 (n + 1)

end

end A388270.P10233009455192801401

noncomputable section

/-- A388270: a(n) = d(n) * gcd(n, sigma(n)), where d is the number of divisors function (A000005), and sigma is the sum of divisors.

Offset 1, canonical program `A388270.P10233009455192801401`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A009194, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A388270 (n : ℕ) : ℤ :=
  A388270.P10233009455192801401.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A009194, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A388270.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A389905.P14127833197963390982

`A107078(n+1)*(1-A112526(n+1))`
-/

namespace A389905.P14127833197963390982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107078 (n + 1) * (1 - A112526 (n + 1))

end

end A389905.P14127833197963390982

noncomputable section

/-- A389905: a(n) = 1 if n is neither squarefree nor powerful, otherwise 0.

Offset 1, canonical program `A389905.P14127833197963390982`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A107078, A112526, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A389905 (n : ℕ) : ℤ :=
  A389905.P14127833197963390982.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A107078, A112526, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A389905.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A390225.P7477734311538200322

`∩[A037310(n+1), A037312(n+1)]`
-/

namespace A390225.P7477734311538200322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037310 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390225.P7477734311538200322

noncomputable section

/-- A390225: Positive numbers whose base-3, base-5, and base-7 expansions have the same digit sum.

Offset 1, canonical program `A390225.P7477734311538200322`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 934 terms. -/
def A390225 (n : ℕ) : ℤ :=
  (A390225.P7477734311538200322.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 934 terms. -/
def A390225.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390608.P15575497196567576275

`A000010(n+1)*A001221(n+1)`
-/

namespace A390608.P15575497196567576275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A001221 (n + 1)

end

end A390608.P15575497196567576275

noncomputable section

/-- A390608: a(n) = phi(n) * omega(n).

Offset 1, canonical program `A390608.P15575497196567576275`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A001221, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A390608 (n : ℕ) : ℤ :=
  A390608.P15575497196567576275.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A001221, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A390608.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A390756.P17287549449389241774

`A000010(n+1)*A360541(n+1)`
-/

namespace A390756.P17287549449389241774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A360541 (n + 1)

end

end A390756.P17287549449389241774

noncomputable section

/-- A390756: The Euler totient of the smallest cubefull number divisible by n.

Offset 1, canonical program `A390756.P17287549449389241774`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390756 (n : ℕ) : ℤ :=
  A390756.P17287549449389241774.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390756.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390957.P13897140593149333572

`A000005(n+1)-A286324(n+1)`
-/

namespace A390957.P13897140593149333572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A286324 (n + 1)

end

end A390957.P13897140593149333572

noncomputable section

/-- A390957: The number of non-bi-unitary divisors of n.

Offset 1, canonical program `A390957.P13897140593149333572`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A286324, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A390957 (n : ℕ) : ℤ :=
  A390957.P13897140593149333572.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A286324, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A390957.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A391023.P14661047719889867302

`filter[A067259(n+1), A355447(#)]`
-/

namespace A391023.P14661047719889867302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067259 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A391023.P14661047719889867302

noncomputable section

/-- A391023: Numbers with more than 1 distinct prime factor and whose largest prime factor exponent is 2.

Offset 1, canonical program `A391023.P14661047719889867302`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9953 terms. -/
def A391023 (n : ℕ) : ℤ :=
  A391023.P14661047719889867302.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9953 terms. -/
def A391023.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391713.P12918001386924230058

`A000005(n+1)-A005361(n+1)-2^A001221(n+1)+1`
-/

namespace A391713.P12918001386924230058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) - A005361 (n + 1) : ℚ) - (2 : ℚ) ^ (A001221 (n + 1) : ℤ) + 1

end

end A391713.P12918001386924230058

noncomputable section

/-- A391713: Number of divisors d | n such that d is neither squarefree nor powerful (in A332785).

Offset 1, canonical program `A391713.P12918001386924230058`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A001221, A005361, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A391713 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A391713.P12918001386924230058.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A001221, A005361, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A391713.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A394651.P12518876512393771500

`A000005(n+1)+A063956(n+1)-A056169(n+1)`
-/

namespace A394651.P12518876512393771500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + A063956 (n + 1) - A056169 (n + 1)

end

end A394651.P12518876512393771500

noncomputable section

/-- A394651: a(n) = tau(n) + Sum_{p|n, p prime, gcd(p,n/p) = 1} (p-1).

Offset 1, canonical program `A394651.P12518876512393771500`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A056169, A063956, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A394651 (n : ℕ) : ℤ :=
  A394651.P12518876512393771500.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A056169, A063956, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A394651.provenance : SequenceMachineLib.Provenance := .conditional

