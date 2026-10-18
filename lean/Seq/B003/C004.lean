import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
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

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A319528.P15910586286940725723

`2*A239050(n+1)`
-/

namespace A319528.P15910586286940725723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A239050 (n + 1)

end

end A319528.P15910586286940725723

noncomputable section

/-- A319528: a(n) = 8 * sigma(n).

Offset 1, canonical program `A319528.P15910586286940725723`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A319528 (n : ℕ) : ℤ :=
  A319528.P15910586286940725723.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A319528.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A324151.P8438879174853104262

`A006480(n)/A000217(n+1)`
-/

namespace A324151.P8438879174853104262
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006480 n : ℚ) / (A000217 (n + 1) : ℚ)

end

end A324151.P8438879174853104262

noncomputable section

/-- A324151: a(n) = (2/((n+1)*(n+2)))*multinomial(3*n;n,n,n).

Offset 0, canonical program `A324151.P8438879174853104262`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A324151 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A324151.P8438879174853104262.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A324151.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A327327.P333352576343243044

`A024916(n+1)-A080277(n+1)`
-/

namespace A327327.P333352576343243044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (n + 1) - A080277 (n + 1)

end

end A327327.P333352576343243044

noncomputable section

/-- A327327: Partial sums of the sum of nonpowers of 2 dividing n.

Offset 1, canonical program `A327327.P333352576343243044`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A327327 (n : ℕ) : ℤ :=
  A327327.P333352576343243044.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A327327.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A327329.P5185755489289824233

`2*A024916(n+1)`
-/

namespace A327329.P5185755489289824233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024916 (n + 1)

end

end A327329.P5185755489289824233

noncomputable section

/-- A327329: Twice the sum of all divisors of all positive integers <= n.

Offset 1, canonical program `A327329.P5185755489289824233`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A327329 (n : ℕ) : ℤ :=
  A327329.P5185755489289824233.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A327329.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A329598.P6468722656511072461

`A000217(n+1)+A060432(n+1)`
-/

namespace A329598.P6468722656511072461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + A060432 (n + 1)

end

end A329598.P6468722656511072461

noncomputable section

/-- A329598: Partial sums of the nontriangular numbers (A014132).

Offset 1, canonical program `A329598.P6468722656511072461`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A329598 (n : ℕ) : ℤ :=
  A329598.P6468722656511072461.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A329598.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A330082.P17333305925167713200

`5*A064038(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A330082.P17333305925167713200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A064038 (n + 1)

end

end A330082.P17333305925167713200

noncomputable section

/-- A330082: a(n) = 5*A064038(n+1).

Offset 0, canonical program `A330082.P17333305925167713200`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A330082 (n : ℕ) : ℤ :=
  A330082.P17333305925167713200.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A330082.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A331322.P7040374156949271354

`(3*n+1)*A006480(n)`
-/

namespace A331322.P7040374156949271354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 1 : ℤ) * A006480 n

end

end A331322.P7040374156949271354

noncomputable section

/-- A331322: a(n) = (3*n + 1)!/(n!)^3.

Offset 0, canonical program `A331322.P7040374156949271354`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A331322 (n : ℕ) : ℤ :=
  A331322.P7040374156949271354.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A331322.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A332027.P851931631810263331

`A060432(n+1)+A002024(n+1)+n+1`
-/

namespace A332027.P851931631810263331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060432 (n + 1) + A002024 (n + 1) + (n + 1 : ℤ)

end

end A332027.P851931631810263331

noncomputable section

/-- A332027: Savannah problem: number of distinct possible populations after n weeks, allowing populations after the empty set.

Offset 1, canonical program `A332027.P851931631810263331`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A332027 (n : ℕ) : ℤ :=
  A332027.P851931631810263331.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A332027.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A335063.P16493843771175373892

`n*A001316(n)/2`
-/

namespace A335063.P16493843771175373892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A001316 n : ℚ) / 2

end

end A335063.P16493843771175373892

noncomputable section

/-- A335063: a(n) = Sum_{k=0..n} (binomial(n,k) mod 2) * k.

Offset 0, canonical program `A335063.P16493843771175373892`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A335063 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A335063.P16493843771175373892.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A335063.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A341392.P13730857091903265772

`A284005(n)/(1+A000120(n))!`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A341392.P13730857091903265772
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284005 n : ℚ) / (Nat.factorial (1 + A000120 n).toNat : ℚ)

end

end A341392.P13730857091903265772

noncomputable section

/-- A341392: a(n) = A284005(n) / (1 + A000120(n))!.

Offset 0, canonical program `A341392.P13730857091903265772`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A341392 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A341392.P13730857091903265772.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A341392.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A342983.P12634421261340305584

`A001246(n)*A001448(n)`
-/

namespace A342983.P12634421261340305584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001246 n * A001448 n

end

end A342983.P12634421261340305584

noncomputable section

/-- A342983: Number of tree-rooted planar maps with n+1 vertices and n+1 faces.

Offset 0, canonical program `A342983.P12634421261340305584`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A342983 (n : ℕ) : ℤ :=
  A342983.P12634421261340305584.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A342983.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A345887.P10524329361228166936

`A193657(n+1)-1`
-/

namespace A345887.P10524329361228166936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193657 (n + 1) - 1

end

end A345887.P10524329361228166936

noncomputable section

/-- A345887: Number of tilings of an n-cell circular array with rectangular tiles of any size, and where the number of possible colors of a tile is given by the largest cell covered.

Offset 1, canonical program `A345887.P10524329361228166936`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A345887 (n : ℕ) : ℤ :=
  A345887.P10524329361228166936.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A345887.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A348367.P5134569712884376342

`A000120(A092391(n+1))`
-/

namespace A348367.P5134569712884376342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A092391 (n + 1)).toNat

end

end A348367.P5134569712884376342

noncomputable section

/-- A348367: a(n) = w(n + w(n)), where w(n) is the binary weight of n, A000120(n).

Offset 1, canonical program `A348367.P5134569712884376342`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A348367 (n : ℕ) : ℤ :=
  A348367.P5134569712884376342.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A348367.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A349468.P13649440491470996391

`A001448(n)*A001813(n)`
-/

namespace A349468.P13649440491470996391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001448 n * A001813 n

end

end A349468.P13649440491470996391

noncomputable section

/-- A349468: a(n) = (4*n)! / (n! * (2*n)!).

Offset 0, canonical program `A349468.P13649440491470996391`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A349468 (n : ℕ) : ℤ :=
  A349468.P13649440491470996391.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A349468.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A350637.P14576691412698149744

`A024916(A004736(n+1))`
-/

namespace A350637.P14576691412698149744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (A004736 (n + 1)).toNat

end

end A350637.P14576691412698149744

noncomputable section

/-- A350637: Triangle read by rows: T(n,k) in which row n lists the first n terms of A024916 in reverse order, 1 <= k <= n.

Offset 1, canonical program `A350637.P14576691412698149744`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A350637 (n : ℕ) : ℤ :=
  A350637.P14576691412698149744.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A350637.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A352784.P5385045809583543400

`A280700(floor(n/2))`
-/

namespace A352784.P5385045809583543400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280700 ⌊(n : ℚ) / 2⌋.toNat

end

end A352784.P5385045809583543400

noncomputable section

/-- A352784: a(n) = w(n - w(n)), where w(n) is the binary weight of n, A000120(n).

Offset 0, canonical program `A352784.P5385045809583543400`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A352784 (n : ℕ) : ℤ :=
  A352784.P5385045809583543400.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A352784.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A376132.P3293630522299707843

`A000295(A376116(n+2)-A376116(n+1)+1)`
-/

namespace A376132.P3293630522299707843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000295 (A376116 (n + 2) - A376116 (n + 1) + 1).toNat

end

end A376132.P3293630522299707843

noncomputable section

/-- A376132: First differences of A376131.

Offset 1, canonical program `A376132.P3293630522299707843`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A376132 (n : ℕ) : ℤ :=
  A376132.P3293630522299707843.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A376132.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A381841.P11592063328882471830

`A136495(n+1)+A136496(n+1)`
-/

namespace A381841.P11592063328882471830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136495 (n + 1) + A136496 (n + 1)

end

end A381841.P11592063328882471830

noncomputable section

/-- A381841: Position of the n-th occurrence of the digit 3 in A105083(n-1) for n>=1.

Offset 1, canonical program `A381841.P11592063328882471830`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A381841 (n : ℕ) : ℤ :=
  A381841.P11592063328882471830.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A381841.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A328203.P2998697781727387960

`((n+1)*A001227(n+1)+A002131(n+1))/2`
-/

namespace A328203.P2998697781727387960
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A001227 (n + 1) + A002131 (n + 1) : ℚ) / 2

end

end A328203.P2998697781727387960

noncomputable section

/-- A328203: Expansion of Sum_{k>=1} k * x^k / (1 - x^(2*k))^2.

Offset 1, canonical program `A328203.P2998697781727387960`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A328203 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A328203.P2998697781727387960.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A328203.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A330033.P2038939147782472114

`A080891(n)*A330025(n)`
-/

namespace A330033.P2038939147782472114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080891 n * A330025 n

end

end A330033.P2038939147782472114

noncomputable section

/-- A330033: a(n) = Kronecker(n, 5) * (-1)^floor(n/5).

Offset 0, canonical program `A330033.P2038939147782472114`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A330033 (n : ℕ) : ℤ :=
  A330033.P2038939147782472114.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A330033.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A337303.P13600975029511963536

`A337302(n)*n!`
-/

namespace A337303.P13600975029511963536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337302 n * (Nat.factorial n : ℤ)

end

end A337303.P13600975029511963536

noncomputable section

/-- A337303: Number of X-based filling of diagonals in a diagonal Latin square of order n.

Offset 0, canonical program `A337303.P13600975029511963536`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A337303 (n : ℕ) : ℤ :=
  A337303.P13600975029511963536.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A337303.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A339597.P9563907949436141931

`2*(n+1)-A006519(n+1)`
-/

namespace A339597.P9563907949436141931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A006519 (n + 1)

end

end A339597.P9563907949436141931

noncomputable section

/-- A339597: When 2*n+1 first appears in A086799.

Offset 0, canonical program `A339597.P9563907949436141931`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A339597 (n : ℕ) : ℤ :=
  A339597.P9563907949436141931.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A339597.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A341691.P6028495003635313432

`n-a(n-A006519(n))` with `a(0)=0`
-/

namespace A341691.P6028495003635313432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - a ((n : ℤ) - A006519 n).toNat

end

end A341691.P6028495003635313432

noncomputable section

/-- A341691: a(0) = 0, and for any n > 0, a(n) = n - a(k) where k is the greatest number < n such that n AND a(k) = a(k) (where AND denotes the bitwise AND operator).

Offset 0, canonical program `A341691.P6028495003635313432`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A341691 (n : ℕ) : ℤ :=
  A341691.P6028495003635313432.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A341691.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A344902.P10574121006049351700

`A000120(n)!*(1+A000120(n))^(A023416(n)+1)`
-/

namespace A344902.P10574121006049351700
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A000120 n).toNat : ℚ) * (1 + A000120 n : ℚ) ^ (A023416 n + 1 : ℤ)

end

end A344902.P10574121006049351700

noncomputable section

/-- A344902: Number of open tours by a biased rook on a specific f(n) X 1 board, where f(n) = A070941(n) and cells are colored white or black according to the binary representation of 2n.

Offset 0, canonical program `A344902.P10574121006049351700`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A344902 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A344902.P10574121006049351700.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A344902.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A350229.P11009245759150690287

`n+A065363(n)`
-/

namespace A350229.P11009245759150690287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A065363 n

end

end A350229.P11009245759150690287

noncomputable section

/-- A350229: a(n) is the sum of n and the balanced ternary digits in n.

Offset 0, canonical program `A350229.P11009245759150690287`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A350229 (n : ℕ) : ℤ :=
  A350229.P11009245759150690287.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A350229.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A352047.P11793424880118639784

`A000593(n+1)*A006519(n+1)-A000035(n+1)`
-/

namespace A352047.P11793424880118639784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1) * A006519 (n + 1) - A000035 (n + 1)

end

end A352047.P11793424880118639784

noncomputable section

/-- A352047: Sum of the divisor complements of the odd proper divisors of n.

Offset 1, canonical program `A352047.P11793424880118639784`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A352047 (n : ℕ) : ℤ :=
  A352047.P11793424880118639784.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A352047.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A355582.P2103007522092691824

`A006519(n+1)*A038500(n+1)*A060904(n+1)`
-/

namespace A355582.P2103007522092691824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1) * A038500 (n + 1) * A060904 (n + 1)

end

end A355582.P2103007522092691824

noncomputable section

/-- A355582: a(n) is the largest 5-smooth divisor of n.

Offset 1, canonical program `A355582.P2103007522092691824`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A355582 (n : ℕ) : ℤ :=
  A355582.P2103007522092691824.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A355582.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A356106.P5529735893034461739

`A001950(A022839(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A356106.P5529735893034461739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (A022839 (n + 1)).toNat

end

end A356106.P5529735893034461739

noncomputable section

/-- A356106: a(n) = A001950(A022839(n)).

Offset 1, canonical program `A356106.P5529735893034461739`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A356106 (n : ℕ) : ℤ :=
  A356106.P5529735893034461739.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A356106.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A356107.P133630603064443981

`A001950(A108598(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A356107.P133630603064443981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (A108598 (n + 1)).toNat

end

end A356107.P133630603064443981

noncomputable section

/-- A356107: a(n) = A001950(A108598(n)).

Offset 1, canonical program `A356107.P133630603064443981`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A356107 (n : ℕ) : ℤ :=
  A356107.P133630603064443981.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A356107.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A356220.P15439042730488977339

`A108598(A001950(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A356220.P15439042730488977339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108598 (A001950 (n + 1)).toNat

end

end A356220.P15439042730488977339

noncomputable section

/-- A356220: a(n) = A108598(A001950(n)).

Offset 1, canonical program `A356220.P15439042730488977339`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A356220 (n : ℕ) : ℤ :=
  A356220.P15439042730488977339.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A356220.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A357754.P3306282147274652731

`2^(n+3)-A056007(n+3)`
-/

namespace A357754.P3306282147274652731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 3) : ℤ) - A056007 (n + 3)

end

end A357754.P3306282147274652731

noncomputable section

/-- A357754: a(n) is the largest square with n binary digits.

Offset 3, canonical program `A357754.P3306282147274652731`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A357754 (n : ℕ) : ℤ :=
  A357754.P3306282147274652731.a (n - 3)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A357754.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A368744.P6947469571873636079

`(2/A006519(n+1)-1)*(n+1)`
-/

namespace A368744.P6947469571873636079
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 / (A006519 (n + 1) : ℚ) - 1) * (n + 1 : ℚ)

end

end A368744.P6947469571873636079

noncomputable section

/-- A368744: a(n) = Sum_{d|n} (-1)^(d+1)*phi(d), where phi(n) = A000010(n).

Offset 1, canonical program `A368744.P6947469571873636079`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A368744 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A368744.P6947469571873636079.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A368744.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A377642.P10920870877473794249

`A000079(n)*A053601(n)`
-/

namespace A377642.P10920870877473794249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A053601 n

end

end A377642.P10920870877473794249

noncomputable section

/-- A377642: a(n) = (1/(n-1)!) * Product_{i=1..n-1} (2^n-2^i).

Offset 1, canonical program `A377642.P10920870877473794249`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377642 (n : ℕ) : ℤ :=
  A377642.P10920870877473794249.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377642.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A392597.P12125127422441468717`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392597 (n : ℕ) : ℤ :=
  A392597.P12125127422441468717.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392597.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A346878.P5483888305537072488

`1+A346880(n+1)`
-/

namespace A346878.P5483888305537072488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A346880 (n + 1)

end

end A346878.P5483888305537072488

noncomputable section

/-- A346878: Sum of the divisors, except for the largest, of the n-th positive even number.

Offset 1, canonical program `A346878.P5483888305537072488`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A346878 (n : ℕ) : ℤ :=
  A346878.P5483888305537072488.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A346878.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A373935.P5688816994832969295`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373935 (n : ℕ) : ℤ :=
  A373935.P5688816994832969295.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373935.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A373962.P14560065925070970160`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373962 (n : ℕ) : ℤ :=
  A373962.P14560065925070970160.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373962.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A313127.P3112124540791628005

`A008574(n)+n-A330025(n)`
-/

namespace A313127.P3112124540791628005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + ((n : ℤ) - A330025 n)

end

end A313127.P3112124540791628005

noncomputable section

/-- A313127: Coordination sequence Gal.5.69.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313127.P3112124540791628005`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2352 terms. -/
def A313127 (n : ℕ) : ℤ :=
  A313127.P3112124540791628005.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2352 terms. -/
def A313127.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313152.P10776798816682064911

`A311625(n)+Δ[A011848(n)]`
-/

namespace A313152.P10776798816682064911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311625 n + (f1 (n + 1) - f1 n)

end

end A313152.P10776798816682064911

noncomputable section

/-- A313152: Coordination sequence Gal.5.112.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313152.P10776798816682064911`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2349 terms. -/
def A313152 (n : ℕ) : ℤ :=
  A313152.P10776798816682064911.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2349 terms. -/
def A313152.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313201.P17274935370983792056

`A313026(n)+Δ[A011862(n)]`
-/

namespace A313201.P17274935370983792056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313026 n + (f1 (n + 1) - f1 n)

end

end A313201.P17274935370983792056

noncomputable section

/-- A313201: Coordination sequence Gal.5.115.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313201.P17274935370983792056`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2432 terms. -/
def A313201 (n : ℕ) : ℤ :=
  A313201.P17274935370983792056.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2432 terms. -/
def A313201.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313213.P3463055026651004297

`A313099(n)+Δ[A011865(n)]`
-/

namespace A313213.P3463055026651004297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313099 n + (f1 (n + 1) - f1 n)

end

end A313213.P3463055026651004297

noncomputable section

/-- A313213: Coordination sequence Gal.6.260.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313213.P3463055026651004297`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2431 terms. -/
def A313213 (n : ℕ) : ℤ :=
  A313213.P3463055026651004297.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2431 terms. -/
def A313213.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313241.P6304044137677485136

`A313100(n)+Δ[A011862(n)]`
-/

namespace A313241.P6304044137677485136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313100 n + (f1 (n + 1) - f1 n)

end

end A313241.P6304044137677485136

noncomputable section

/-- A313241: Coordination sequence Gal.5.86.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313241.P6304044137677485136`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2409 terms. -/
def A313241 (n : ℕ) : ℤ :=
  A313241.P6304044137677485136.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2409 terms. -/
def A313241.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313258.P7563474035421243589

`A313115(n)+Δ[floor(C(n, 2)/4)]`
-/

namespace A313258.P7563474035421243589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose n 2 : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313115 n + (f1 (n + 1) - f1 n)

end

end A313258.P7563474035421243589

noncomputable section

/-- A313258: Coordination sequence Gal.4.54.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313258.P7563474035421243589`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2349 terms. -/
def A313258 (n : ℕ) : ℤ :=
  A313258.P7563474035421243589.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2349 terms. -/
def A313258.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313289.P4085022440508008481

`A313147(n)+Δ[A011860(n)]`
-/

namespace A313289.P4085022440508008481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011860 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313147 n + (f1 (n + 1) - f1 n)

end

end A313289.P4085022440508008481

noncomputable section

/-- A313289: Coordination sequence Gal.4.55.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313289.P4085022440508008481`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2353 terms. -/
def A313289 (n : ℕ) : ℤ :=
  A313289.P4085022440508008481.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2353 terms. -/
def A313289.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313494.P14635809210881396952

`A313099(n)+A128834(n)`
-/

namespace A313494.P14635809210881396952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313099 n + A128834 n

end

end A313494.P14635809210881396952

noncomputable section

/-- A313494: Coordination sequence Gal.6.155.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313494.P14635809210881396952`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2450 terms. -/
def A313494 (n : ℕ) : ℤ :=
  A313494.P14635809210881396952.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2450 terms. -/
def A313494.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313510.P5280808024420407807

`A313110(n)+A128834(n)`
-/

namespace A313510.P5280808024420407807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313110 n + A128834 n

end

end A313510.P5280808024420407807

noncomputable section

/-- A313510: Coordination sequence Gal.3.13.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313510.P5280808024420407807`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2439 terms. -/
def A313510 (n : ℕ) : ℤ :=
  A313510.P5280808024420407807.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2439 terms. -/
def A313510.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313687.P12936372802294180480

`A313237(n)+A128834(n)`
-/

namespace A313687.P12936372802294180480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313237 n + A128834 n

end

end A313687.P12936372802294180480

noncomputable section

/-- A313687: Coordination sequence Gal.6.202.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313687.P12936372802294180480`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2395 terms. -/
def A313687 (n : ℕ) : ℤ :=
  A313687.P12936372802294180480.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2395 terms. -/
def A313687.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313707.P5162178319112651376

`A313569(n)+Δ[A011865(n)]`
-/

namespace A313707.P5162178319112651376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313569 n + (f1 (n + 1) - f1 n)

end

end A313707.P5162178319112651376

noncomputable section

/-- A313707: Coordination sequence Gal.6.198.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313707.P5162178319112651376`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2345 terms. -/
def A313707 (n : ℕ) : ℤ :=
  A313707.P5162178319112651376.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2345 terms. -/
def A313707.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313776.P9904199867289999501

`A313100(n)+A004525(A283971(n))`
-/

namespace A313776.P9904199867289999501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313100 n + A004525 (A283971 n).toNat

end

end A313776.P9904199867289999501

noncomputable section

/-- A313776: Coordination sequence Gal.6.442.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313776.P9904199867289999501`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2335 terms. -/
def A313776 (n : ℕ) : ℤ :=
  A313776.P9904199867289999501.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2335 terms. -/
def A313776.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313778.P4235496493182944354

`A313088(n)+A004525(n)`
-/

namespace A313778.P4235496493182944354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313088 n + A004525 n

end

end A313778.P4235496493182944354

noncomputable section

/-- A313778: Coordination sequence Gal.6.203.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313778.P4235496493182944354`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2359 terms. -/
def A313778 (n : ℕ) : ℤ :=
  A313778.P4235496493182944354.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2359 terms. -/
def A313778.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313791.P11156003567688367397

`A313110(n)+A004525(n)`
-/

namespace A313791.P11156003567688367397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313110 n + A004525 n

end

end A313791.P11156003567688367397

noncomputable section

/-- A313791: Coordination sequence Gal.6.354.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313791.P11156003567688367397`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2317 terms. -/
def A313791 (n : ℕ) : ℤ :=
  A313791.P11156003567688367397.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2317 terms. -/
def A313791.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313812.P6628673086175508618

`A312974(n)+A004525(A004525(n)+n)`
-/

namespace A313812.P6628673086175508618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312974 n + A004525 (A004525 n + (n : ℤ)).toNat

end

end A313812.P6628673086175508618

noncomputable section

/-- A313812: Coordination sequence Gal.5.310.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313812.P6628673086175508618`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2277 terms. -/
def A313812 (n : ℕ) : ℤ :=
  A313812.P6628673086175508618.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2277 terms. -/
def A313812.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313827.P1632805803004343387

`A313692(n)+A008676(A016777(n))`
-/

namespace A313827.P1632805803004343387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313692 n + A008676 (A016777 n).toNat

end

end A313827.P1632805803004343387

noncomputable section

/-- A313827: Coordination sequence Gal.5.141.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313827.P1632805803004343387`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2375 terms. -/
def A313827 (n : ℕ) : ℤ :=
  A313827.P1632805803004343387.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2375 terms. -/
def A313827.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313829.P8843607393745764516

`A313720(n)+Δ[A011865(n)]`
-/

namespace A313829.P8843607393745764516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313720 n + (f1 (n + 1) - f1 n)

end

end A313829.P8843607393745764516

noncomputable section

/-- A313829: Coordination sequence Gal.6.203.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313829.P8843607393745764516`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2370 terms. -/
def A313829 (n : ℕ) : ℤ :=
  A313829.P8843607393745764516.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2370 terms. -/
def A313829.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313833.P8730359671552575781

`A313726(n)+Δ[A011865(n)]`
-/

namespace A313833.P8730359671552575781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313726 n + (f1 (n + 1) - f1 n)

end

end A313833.P8730359671552575781

noncomputable section

/-- A313833: Coordination sequence Gal.6.341.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313833.P8730359671552575781`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2320 terms. -/
def A313833 (n : ℕ) : ℤ :=
  A313833.P8730359671552575781.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2320 terms. -/
def A313833.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313835.P13328153377433904358

`abs(A008592(n)-A313614(n))`
-/

namespace A313835.P13328153377433904358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313614 n|

end

end A313835.P13328153377433904358

noncomputable section

/-- A313835: Coordination sequence Gal.5.299.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313835.P13328153377433904358`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2319 terms. -/
def A313835 (n : ℕ) : ℤ :=
  A313835.P13328153377433904358.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2319 terms. -/
def A313835.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313860.P2835934445111425257

`A313026(n)+A004396(n)`
-/

namespace A313860.P2835934445111425257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313026 n + A004396 n

end

end A313860.P2835934445111425257

noncomputable section

/-- A313860: Coordination sequence Gal.5.132.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313860.P2835934445111425257`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2323 terms. -/
def A313860 (n : ℕ) : ℤ :=
  A313860.P2835934445111425257.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2323 terms. -/
def A313860.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313872.P15679373648552162511

`abs(A008592(n)-A313569(n))`
-/

namespace A313872.P15679373648552162511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313569 n|

end

end A313872.P15679373648552162511

noncomputable section

/-- A313872: Coordination sequence Gal.6.617.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313872.P15679373648552162511`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2311 terms. -/
def A313872 (n : ℕ) : ℤ :=
  A313872.P15679373648552162511.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2311 terms. -/
def A313872.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313894.P14764167295564530616

`abs(A008592(n)-A313538(n))`
-/

namespace A313894.P14764167295564530616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313538 n|

end

end A313894.P14764167295564530616

noncomputable section

/-- A313894: Coordination sequence Gal.5.133.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313894.P14764167295564530616`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2276 terms. -/
def A313894 (n : ℕ) : ℤ :=
  A313894.P14764167295564530616.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2276 terms. -/
def A313894.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313906.P16146185276320745133

`A313721(n)+A002264(A030118(n))`
-/

namespace A313906.P16146185276320745133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313721 n + A002264 (A030118 n).toNat

end

end A313906.P16146185276320745133

noncomputable section

/-- A313906: Coordination sequence Gal.5.308.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313906.P16146185276320745133`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2287 terms. -/
def A313906 (n : ℕ) : ℤ :=
  A313906.P16146185276320745133.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2287 terms. -/
def A313906.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313909.P6555194053940030791

`A313100(n)+A004396(n)`
-/

namespace A313909.P6555194053940030791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313100 n + A004396 n

end

end A313909.P6555194053940030791

noncomputable section

/-- A313909: Coordination sequence Gal.6.648.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313909.P6555194053940030791`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2268 terms. -/
def A313909 (n : ℕ) : ℤ :=
  A313909.P6555194053940030791.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2268 terms. -/
def A313909.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313921.P4862049586297840855

`A134667(n)+A301718(n)-A330025(n)`
-/

namespace A313921.P4862049586297840855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134667 n + (A301718 n - A330025 n)

end

end A313921.P4862049586297840855

noncomputable section

/-- A313921: Coordination sequence Gal.5.313.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313921.P4862049586297840855`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2209 terms. -/
def A313921 (n : ℕ) : ℤ :=
  A313921.P4862049586297840855.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2209 terms. -/
def A313921.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313926.P12630121113150282533

`A312140(n)+n`
-/

namespace A313926.P12630121113150282533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312140 n + (n : ℤ)

end

end A313926.P12630121113150282533

noncomputable section

/-- A313926: Coordination sequence Gal.4.140.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313926.P12630121113150282533`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2268 terms. -/
def A313926 (n : ℕ) : ℤ :=
  A313926.P12630121113150282533.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2268 terms. -/
def A313926.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313930.P828336190909050308

`A313126(n)+A004396(n)`
-/

namespace A313930.P828336190909050308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313126 n + A004396 n

end

end A313930.P828336190909050308

noncomputable section

/-- A313930: Coordination sequence Gal.6.638.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313930.P828336190909050308`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2211 terms. -/
def A313930 (n : ℕ) : ℤ :=
  A313930.P828336190909050308.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2211 terms. -/
def A313930.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313937.P16991793084136127565

`A311586(n)+A047263(n+1)`
-/

namespace A313937.P16991793084136127565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311586 n + A047263 (n + 1)

end

end A313937.P16991793084136127565

noncomputable section

/-- A313937: Coordination sequence Gal.6.650.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313937.P16991793084136127565`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2257 terms. -/
def A313937 (n : ℕ) : ℤ :=
  A313937.P16991793084136127565.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2257 terms. -/
def A313937.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313938.P107415662170278768

`2*A313916(n)-A313873(n)`
-/

namespace A313938.P107415662170278768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313916 n - A313873 n

end

end A313938.P107415662170278768

noncomputable section

/-- A313938: Coordination sequence Gal.6.662.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313938.P107415662170278768`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2241 terms. -/
def A313938 (n : ℕ) : ℤ :=
  A313938.P107415662170278768.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2241 terms. -/
def A313938.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314027.P7798730939346477280

`A313506(n)+Δ[A011858(n)]`
-/

namespace A314027.P7798730939346477280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313506 n + (f1 (n + 1) - f1 n)

end

end A314027.P7798730939346477280

noncomputable section

/-- A314027: Coordination sequence Gal.5.87.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314027.P7798730939346477280`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2351 terms. -/
def A314027 (n : ℕ) : ℤ :=
  A314027.P7798730939346477280.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2351 terms. -/
def A314027.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314031.P9700743857444675486

`A313556(n)+A002264(n+1)`
-/

namespace A314031.P9700743857444675486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313556 n + A002264 (n + 1)

end

end A314031.P9700743857444675486

noncomputable section

/-- A314031: Coordination sequence Gal.6.340.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314031.P9700743857444675486`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2349 terms. -/
def A314031 (n : ℕ) : ℤ :=
  A314031.P9700743857444675486.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2349 terms. -/
def A314031.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314043.P3377773668893100370

`A310410(n)+A004525(A004396(n))`
-/

namespace A314043.P3377773668893100370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310410 n + A004525 (A004396 n).toNat

end

end A314043.P3377773668893100370

noncomputable section

/-- A314043: Coordination sequence Gal.6.618.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314043.P3377773668893100370`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2318 terms. -/
def A314043 (n : ℕ) : ℤ :=
  A314043.P3377773668893100370.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2318 terms. -/
def A314043.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314047.P6128783489068935556

`A310412(n)+A004525(A004396(n))`
-/

namespace A314047.P6128783489068935556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310412 n + A004525 (A004396 n).toNat

end

end A314047.P6128783489068935556

noncomputable section

/-- A314047: Coordination sequence Gal.5.308.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314047.P6128783489068935556`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2323 terms. -/
def A314047 (n : ℕ) : ℤ :=
  A314047.P6128783489068935556.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2323 terms. -/
def A314047.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314051.P823501490617282787

`A313614(n)+∑[A022003(n)]`
-/

namespace A314051.P823501490617282787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313614 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314051.P823501490617282787

noncomputable section

/-- A314051: Coordination sequence Gal.5.308.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314051.P823501490617282787`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2322 terms. -/
def A314051 (n : ℕ) : ℤ :=
  A314051.P823501490617282787.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2322 terms. -/
def A314051.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314068.P13841784540353294122

`A310409(n)+A004525(n)`
-/

namespace A314068.P13841784540353294122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310409 n + A004525 n

end

end A314068.P13841784540353294122

noncomputable section

/-- A314068: Coordination sequence Gal.3.55.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314068.P13841784540353294122`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2273 terms. -/
def A314068 (n : ℕ) : ℤ :=
  A314068.P13841784540353294122.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2273 terms. -/
def A314068.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314087.P6203034715714524951

`A330025(n-A330025(n))+A313692(n)`
-/

namespace A314087.P6203034715714524951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 ((n : ℤ) - A330025 n).toNat + A313692 n

end

end A314087.P6203034715714524951

noncomputable section

/-- A314087: Coordination sequence Gal.5.67.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314087.P6203034715714524951`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2408 terms. -/
def A314087 (n : ℕ) : ℤ :=
  A314087.P6203034715714524951.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2408 terms. -/
def A314087.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314107.P2990438990150127076

`A313485(n)+n-A004396(A004525(n))`
-/

namespace A314107.P2990438990150127076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313485 n + ((n : ℤ) - A004396 (A004525 n).toNat)

end

end A314107.P2990438990150127076

noncomputable section

/-- A314107: Coordination sequence Gal.6.205.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314107.P2990438990150127076`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2335 terms. -/
def A314107 (n : ℕ) : ℤ :=
  A314107.P2990438990150127076.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2335 terms. -/
def A314107.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314116.P3477874341695128704

`2*A314112(n)-A314111(n)`
-/

namespace A314116.P3477874341695128704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314112 n - A314111 n

end

end A314116.P3477874341695128704

noncomputable section

/-- A314116: Coordination sequence Gal.6.652.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314116.P3477874341695128704`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2282 terms. -/
def A314116 (n : ℕ) : ℤ :=
  A314116.P3477874341695128704.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2282 terms. -/
def A314116.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314123.P17491408075998672522

`A313115(n)+A242062(A008586(n))`
-/

namespace A314123.P17491408075998672522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313115 n + A242062 (A008586 n).toNat

end

end A314123.P17491408075998672522

noncomputable section

/-- A314123: Coordination sequence Gal.5.310.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314123.P17491408075998672522`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2301 terms. -/
def A314123 (n : ℕ) : ℤ :=
  A314123.P17491408075998672522.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2301 terms. -/
def A314123.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314144.P11164658127069204478

`A310470(n)+A004396(A004525(n))`
-/

namespace A314144.P11164658127069204478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310470 n + A004396 (A004525 n).toNat

end

end A314144.P11164658127069204478

noncomputable section

/-- A314144: Coordination sequence Gal.6.634.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314144.P11164658127069204478`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2271 terms. -/
def A314144 (n : ℕ) : ℤ :=
  A314144.P11164658127069204478.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2271 terms. -/
def A314144.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314185.P11421094011403531864

`A313688(n)+Δ[floor(C(n, 2)/2)]`
-/

namespace A314185.P11421094011403531864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose n 2 : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313688 n + (f1 (n + 1) - f1 n)

end

end A314185.P11421094011403531864

noncomputable section

/-- A314185: Coordination sequence Gal.6.205.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314185.P11421094011403531864`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2321 terms. -/
def A314185 (n : ℕ) : ℤ :=
  A314185.P11421094011403531864.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2321 terms. -/
def A314185.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314192.P4251070382321067139

`A313831(n)+∑[A022003(n)]`
-/

namespace A314192.P4251070382321067139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313831 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314192.P4251070382321067139

noncomputable section

/-- A314192: Coordination sequence Gal.6.651.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314192.P4251070382321067139`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2254 terms. -/
def A314192 (n : ℕ) : ℤ :=
  A314192.P4251070382321067139.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2254 terms. -/
def A314192.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314204.P2426223721515965919

`A004396(n)+A314108(n)-A004525(n)`
-/

namespace A314204.P2426223721515965919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A314108 n - A004525 n)

end

end A314204.P2426223721515965919

noncomputable section

/-- A314204: Coordination sequence Gal.6.341.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314204.P2426223721515965919`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2336 terms. -/
def A314204 (n : ℕ) : ℤ :=
  A314204.P2426223721515965919.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2336 terms. -/
def A314204.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314222.P14712949776478407909

`A310444(n)+A004396(n)`
-/

namespace A314222.P14712949776478407909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310444 n + A004396 n

end

end A314222.P14712949776478407909

noncomputable section

/-- A314222: Coordination sequence Gal.6.643.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314222.P14712949776478407909`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2208 terms. -/
def A314222 (n : ℕ) : ℤ :=
  A314222.P14712949776478407909.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2208 terms. -/
def A314222.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314231.P16998588149716495728

`A314141(n)+Δ[A011862(n)]`
-/

namespace A314231.P16998588149716495728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314141 n + (f1 (n + 1) - f1 n)

end

end A314231.P16998588149716495728

noncomputable section

/-- A314231: Coordination sequence Gal.5.305.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314231.P16998588149716495728`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2245 terms. -/
def A314231 (n : ℕ) : ℤ :=
  A314231.P16998588149716495728.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2245 terms. -/
def A314231.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314236.P11197453166256301907

`A313088(n)+n`
-/

namespace A314236.P11197453166256301907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313088 n + (n : ℤ)

end

end A314236.P11197453166256301907

noncomputable section

/-- A314236: Coordination sequence Gal.6.626.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314236.P11197453166256301907`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2232 terms. -/
def A314236 (n : ℕ) : ℤ :=
  A314236.P11197453166256301907.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2232 terms. -/
def A314236.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314240.P18428589485690285850

`A313099(n)+n`
-/

namespace A314240.P18428589485690285850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313099 n + (n : ℤ)

end

end A314240.P18428589485690285850

noncomputable section

/-- A314240: Coordination sequence Gal.6.643.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314240.P18428589485690285850`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2228 terms. -/
def A314240 (n : ℕ) : ℤ :=
  A314240.P18428589485690285850.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2228 terms. -/
def A314240.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314242.P9930865792257095390

`2*A313875(n)-A072154(A005843(n))`
-/

namespace A314242.P9930865792257095390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313875 n - A072154 (A005843 n).toNat

end

end A314242.P9930865792257095390

noncomputable section

/-- A314242: Coordination sequence Gal.4.146.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314242.P9930865792257095390`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2200 terms. -/
def A314242 (n : ℕ) : ℤ :=
  A314242.P9930865792257095390.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2200 terms. -/
def A314242.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314247.P7920899849790497135

`A313110(n)+n`
-/

namespace A314247.P7920899849790497135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313110 n + (n : ℤ)

end

end A314247.P7920899849790497135

noncomputable section

/-- A314247: Coordination sequence Gal.3.50.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314247.P7920899849790497135`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2226 terms. -/
def A314247 (n : ℕ) : ℤ :=
  A314247.P7920899849790497135.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2226 terms. -/
def A314247.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314250.P3588750543650791249

`A313115(n)+n`
-/

namespace A314250.P3588750543650791249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313115 n + (n : ℤ)

end

end A314250.P3588750543650791249

noncomputable section

/-- A314250: Coordination sequence Gal.4.137.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314250.P3588750543650791249`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2195 terms. -/
def A314250 (n : ℕ) : ℤ :=
  A314250.P3588750543650791249.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2195 terms. -/
def A314250.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314251.P8552691768143809971

`A314163(n)+Δ[A011862(n)]`
-/

namespace A314251.P8552691768143809971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314163 n + (f1 (n + 1) - f1 n)

end

end A314251.P8552691768143809971

noncomputable section

/-- A314251: Coordination sequence Gal.5.294.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314251.P8552691768143809971`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2087 terms. -/
def A314251 (n : ℕ) : ℤ :=
  A314251.P8552691768143809971.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2087 terms. -/
def A314251.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314410.P14222717731131208766

`A047363(n+1)+A312655(n)-A265227(n+1)`
-/

namespace A314410.P14222717731131208766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047363 (n + 1) + (A312655 n - A265227 (n + 1))

end

end A314410.P14222717731131208766

noncomputable section

/-- A314410: Coordination sequence Gal.4.18.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314410.P14222717731131208766`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2447 terms. -/
def A314410 (n : ℕ) : ℤ :=
  A314410.P14222717731131208766.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2447 terms. -/
def A314410.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314683.P15823530726852142928

`A004525(n)+A313693(n)-n`
-/

namespace A314683.P15823530726852142928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A313693 n - (n : ℤ))

end

end A314683.P15823530726852142928

noncomputable section

/-- A314683: Coordination sequence Gal.6.130.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314683.P15823530726852142928`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2368 terms. -/
def A314683 (n : ℕ) : ℤ :=
  A314683.P15823530726852142928.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2368 terms. -/
def A314683.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314753.P9843815199901969934

`A312974(n)+A238469(n)`
-/

namespace A314753.P9843815199901969934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312974 n + A238469 n

end

end A314753.P9843815199901969934

noncomputable section

/-- A314753: Coordination sequence Gal.4.52.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314753.P9843815199901969934`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2477 terms. -/
def A314753 (n : ℕ) : ℤ :=
  A314753.P9843815199901969934.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2477 terms. -/
def A314753.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314758.P11719452081678354248

`A042965(A314712(n)+1-n)`
-/

namespace A314758.P11719452081678354248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (A314712 n + (1 - (n : ℤ))).toNat

end

end A314758.P11719452081678354248

noncomputable section

/-- A314758: Coordination sequence Gal.6.193.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314758.P11719452081678354248`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2444 terms. -/
def A314758 (n : ℕ) : ℤ :=
  A314758.P11719452081678354248.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2444 terms. -/
def A314758.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314969.P17921854442604734378

`A312140(n)+A004525(n)`
-/

namespace A314969.P17921854442604734378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312140 n + A004525 n

end

end A314969.P17921854442604734378

noncomputable section

/-- A314969: Coordination sequence Gal.4.78.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314969.P17921854442604734378`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2379 terms. -/
def A314969 (n : ℕ) : ℤ :=
  A314969.P17921854442604734378.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2379 terms. -/
def A314969.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314970.P16762046121003014077

`A004525(n)+A314903(n)-A004525(A004396(n))`
-/

namespace A314970.P16762046121003014077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A314903 n - A004525 (A004396 n).toNat)

end

end A314970.P16762046121003014077

noncomputable section

/-- A314970: Coordination sequence Gal.6.341.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314970.P16762046121003014077`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2308 terms. -/
def A314970 (n : ℕ) : ℤ :=
  A314970.P16762046121003014077.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2308 terms. -/
def A314970.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315030.P10325846217098792989

`A314893(n)+Δ[A011865(n)]`
-/

namespace A315030.P10325846217098792989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314893 n + (f1 (n + 1) - f1 n)

end

end A315030.P10325846217098792989

noncomputable section

/-- A315030: Coordination sequence Gal.6.344.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315030.P10325846217098792989`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2396 terms. -/
def A315030 (n : ℕ) : ℤ :=
  A315030.P10325846217098792989.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2396 terms. -/
def A315030.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315034.P9202512944006640459

`A314894(n)+Δ[A011864(n)]`
-/

namespace A315034.P9202512944006640459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314894 n + (f1 (n + 1) - f1 n)

end

end A315034.P9202512944006640459

noncomputable section

/-- A315034: Coordination sequence Gal.6.323.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315034.P9202512944006640459`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2404 terms. -/
def A315034 (n : ℕ) : ℤ :=
  A315034.P9202512944006640459.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2404 terms. -/
def A315034.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315058.P1696980301468293620

`abs(A008592(n)-A314028(n))`
-/

namespace A315058.P1696980301468293620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314028 n|

end

end A315058.P1696980301468293620

noncomputable section

/-- A315058: Coordination sequence Gal.6.339.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315058.P1696980301468293620`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2356 terms. -/
def A315058 (n : ℕ) : ℤ :=
  A315058.P1696980301468293620.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2356 terms. -/
def A315058.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315067.P1327162686597900604

`A312526(n)+A004525(n)`
-/

namespace A315067.P1327162686597900604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312526 n + A004525 n

end

end A315067.P1327162686597900604

noncomputable section

/-- A315067: Coordination sequence Gal.6.349.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315067.P1327162686597900604`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2385 terms. -/
def A315067 (n : ℕ) : ℤ :=
  A315067.P1327162686597900604.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2385 terms. -/
def A315067.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315105.P8958806795281290820

`A312484(n)+A004525(A047263(n+1))`
-/

namespace A315105.P8958806795281290820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312484 n + A004525 (A047263 (n + 1)).toNat

end

end A315105.P8958806795281290820

noncomputable section

/-- A315105: Coordination sequence Gal.6.363.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315105.P8958806795281290820`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2340 terms. -/
def A315105 (n : ℕ) : ℤ :=
  A315105.P8958806795281290820.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2340 terms. -/
def A315105.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315198.P16559012369285710955

`A313721(n)+A128834(A004396(2*n))`
-/

namespace A315198.P16559012369285710955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313721 n + A128834 (A004396 (2 * n)).toNat

end

end A315198.P16559012369285710955

noncomputable section

/-- A315198: Coordination sequence Gal.5.86.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315198.P16559012369285710955`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2269 terms. -/
def A315198 (n : ℕ) : ℤ :=
  A315198.P16559012369285710955.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2269 terms. -/
def A315198.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315255.P10615745907849045230

`A330025(n)+A314898(n)`
-/

namespace A315255.P10615745907849045230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 n + A314898 n

end

end A315255.P10615745907849045230

noncomputable section

/-- A315255: Coordination sequence Gal.5.67.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315255.P10615745907849045230`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2386 terms. -/
def A315255 (n : ℕ) : ℤ :=
  A315255.P10615745907849045230.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2386 terms. -/
def A315255.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315256.P12326446692328451720

`A314828(n)+A004396(A004396(n))`
-/

namespace A315256.P12326446692328451720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314828 n + A004396 (A004396 n).toNat

end

end A315256.P12326446692328451720

noncomputable section

/-- A315256: Coordination sequence Gal.5.111.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315256.P12326446692328451720`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2386 terms. -/
def A315256 (n : ℕ) : ℤ :=
  A315256.P12326446692328451720.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2386 terms. -/
def A315256.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315304.P8913509134367770047

`2*A314828(n)-A008574(n)`
-/

namespace A315304.P8913509134367770047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314828 n - A008574 n

end

end A315304.P8913509134367770047

noncomputable section

/-- A315304: Coordination sequence Gal.5.84.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315304.P8913509134367770047`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2380 terms. -/
def A315304 (n : ℕ) : ℤ :=
  A315304.P8913509134367770047.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2380 terms. -/
def A315304.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315308.P10890972487147772624

`abs(A008592(n)-A310412(n))`
-/

namespace A315308.P10890972487147772624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A310412 n|

end

end A315308.P10890972487147772624

noncomputable section

/-- A315308: Coordination sequence Gal.5.299.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315308.P10890972487147772624`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2318 terms. -/
def A315308 (n : ℕ) : ℤ :=
  A315308.P10890972487147772624.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2318 terms. -/
def A315308.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315310.P7665288315305926957

`abs(A008592(n)-A310410(n))`
-/

namespace A315310.P7665288315305926957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A310410 n|

end

end A315310.P7665288315305926957

noncomputable section

/-- A315310: Coordination sequence Gal.6.618.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315310.P7665288315305926957`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2341 terms. -/
def A315310 (n : ℕ) : ℤ :=
  A315310.P7665288315305926957.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2341 terms. -/
def A315310.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315340.P1423207088725425978

`2*A314894(n)-A008574(n)`
-/

namespace A315340.P1423207088725425978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314894 n - A008574 n

end

end A315340.P1423207088725425978

noncomputable section

/-- A315340: Coordination sequence Gal.6.625.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315340.P1423207088725425978`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2271 terms. -/
def A315340 (n : ℕ) : ℤ :=
  A315340.P1423207088725425978.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2271 terms. -/
def A315340.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315344.P6791626864233840389

`2*A314898(n)-A008574(n)`
-/

namespace A315344.P6791626864233840389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314898 n - A008574 n

end

end A315344.P6791626864233840389

noncomputable section

/-- A315344: Coordination sequence Gal.6.640.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315344.P6791626864233840389`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2205 terms. -/
def A315344 (n : ℕ) : ℤ :=
  A315344.P6791626864233840389.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2205 terms. -/
def A315344.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315351.P1121042344882834040

`A314160(n)+A244895(2*n)`
-/

namespace A315351.P1121042344882834040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314160 n + A244895 (2 * n)

end

end A315351.P1121042344882834040

noncomputable section

/-- A315351: Coordination sequence Gal.6.650.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315351.P1121042344882834040`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2242 terms. -/
def A315351 (n : ℕ) : ℤ :=
  A315351.P1121042344882834040.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2242 terms. -/
def A315351.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315395.P11298806320610192218

`A313485(n)+A046978(A004396(n))`
-/

namespace A315395.P11298806320610192218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313485 n + A046978 (A004396 n).toNat

end

end A315395.P11298806320610192218

noncomputable section

/-- A315395: Coordination sequence Gal.6.120.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315395.P11298806320610192218`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2504 terms. -/
def A315395 (n : ℕ) : ℤ :=
  A315395.P11298806320610192218.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2504 terms. -/
def A315395.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315397.P1916688396986312343

`A330025(n)+A313506(n)`
-/

namespace A315397.P1916688396986312343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 n + A313506 n

end

end A315397.P1916688396986312343

noncomputable section

/-- A315397: Coordination sequence Gal.5.55.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315397.P1916688396986312343`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2469 terms. -/
def A315397 (n : ℕ) : ℤ :=
  A315397.P1916688396986312343.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2469 terms. -/
def A315397.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315403.P14978821845076500409

`A313485(n)+A004396(A004525(n))`
-/

namespace A315403.P14978821845076500409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313485 n + A004396 (A004525 n).toNat

end

end A315403.P14978821845076500409

noncomputable section

/-- A315403: Coordination sequence Gal.6.264.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315403.P14978821845076500409`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2395 terms. -/
def A315403 (n : ℕ) : ℤ :=
  A315403.P14978821845076500409.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2395 terms. -/
def A315403.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315413.P11341791677008129181

`A313485(n)+A004525(n)`
-/

namespace A315413.P11341791677008129181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313485 n + A004525 n

end

end A315413.P11341791677008129181

noncomputable section

/-- A315413: Coordination sequence Gal.6.157.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315413.P11341791677008129181`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2355 terms. -/
def A315413 (n : ℕ) : ℤ :=
  A315413.P11341791677008129181.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2355 terms. -/
def A315413.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315432.P14363789502883768676

`3*n+A311586(n)-A265227(n+1)`
-/

namespace A315432.P14363789502883768676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) + (A311586 n - A265227 (n + 1))

end

end A315432.P14363789502883768676

noncomputable section

/-- A315432: Coordination sequence Gal.6.650.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315432.P14363789502883768676`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2249 terms. -/
def A315432 (n : ℕ) : ℤ :=
  A315432.P14363789502883768676.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2249 terms. -/
def A315432.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315445.P3390685166526075264

`A047263(A008574(n)+A330025(n)+1)`
-/

namespace A315445.P3390685166526075264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (A008574 n + (A330025 n + 1)).toNat

end

end A315445.P3390685166526075264

noncomputable section

/-- A315445: Coordination sequence Gal.6.233.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315445.P3390685166526075264`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2436 terms. -/
def A315445 (n : ℕ) : ℤ :=
  A315445.P3390685166526075264.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2436 terms. -/
def A315445.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315453.P11183259861073746390

`A315182(n)+∑[A021913(n)]`
-/

namespace A315453.P11183259861073746390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315182 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315453.P11183259861073746390

noncomputable section

/-- A315453: Coordination sequence Gal.6.207.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315453.P11183259861073746390`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2346 terms. -/
def A315453 (n : ℕ) : ℤ :=
  A315453.P11183259861073746390.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2346 terms. -/
def A315453.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315465.P8648594998862142925

`abs(A008592(n)-A313119(n))`
-/

namespace A315465.P8648594998862142925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313119 n|

end

end A315465.P8648594998862142925

noncomputable section

/-- A315465: Coordination sequence Gal.6.157.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315465.P8648594998862142925`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2381 terms. -/
def A315465 (n : ℕ) : ℤ :=
  A315465.P8648594998862142925.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2381 terms. -/
def A315465.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315474.P12078327233869997343

`A313688(n)+A004525(n)`
-/

namespace A315474.P12078327233869997343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313688 n + A004525 n

end

end A315474.P12078327233869997343

noncomputable section

/-- A315474: Coordination sequence Gal.6.341.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315474.P12078327233869997343`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2318 terms. -/
def A315474 (n : ℕ) : ℤ :=
  A315474.P12078327233869997343.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2318 terms. -/
def A315474.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315475.P8010595968173060010

`abs(10*n-A313100(n))`
-/

namespace A315475.P8010595968173060010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A313100 n|

end

end A315475.P8010595968173060010

noncomputable section

/-- A315475: Coordination sequence Gal.5.133.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315475.P8010595968173060010`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2275 terms. -/
def A315475 (n : ℕ) : ℤ :=
  A315475.P8010595968173060010.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2275 terms. -/
def A315475.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315488.P5611134213742253392

`A313556(n)+A004396(n)`
-/

namespace A315488.P5611134213742253392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313556 n + A004396 n

end

end A315488.P5611134213742253392

noncomputable section

/-- A315488: Coordination sequence Gal.6.343.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315488.P5611134213742253392`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2295 terms. -/
def A315488 (n : ℕ) : ℤ :=
  A315488.P5611134213742253392.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2295 terms. -/
def A315488.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315495.P15314594483852604152

`A313580(n)+A004396(n)`
-/

namespace A315495.P15314594483852604152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313580 n + A004396 n

end

end A315495.P15314594483852604152

noncomputable section

/-- A315495: Coordination sequence Gal.5.135.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315495.P15314594483852604152`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2245 terms. -/
def A315495 (n : ℕ) : ℤ :=
  A315495.P15314594483852604152.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2245 terms. -/
def A315495.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315510.P17321051507186431582

`abs(A008592(n)-A312975(n))`
-/

namespace A315510.P17321051507186431582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A312975 n|

end

end A315510.P17321051507186431582

noncomputable section

/-- A315510: Coordination sequence Gal.5.290.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315510.P17321051507186431582`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 223 terms. -/
def A315510 (n : ℕ) : ℤ :=
  A315510.P17321051507186431582.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 223 terms. -/
def A315510.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315521.P715979807562858068

`A315486(n)+Δ[A011864(n)]`
-/

namespace A315521.P715979807562858068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315486 n + (f1 (n + 1) - f1 n)

end

end A315521.P715979807562858068

noncomputable section

/-- A315521: Coordination sequence Gal.6.620.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315521.P715979807562858068`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2271 terms. -/
def A315521 (n : ℕ) : ℤ :=
  A315521.P715979807562858068.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2271 terms. -/
def A315521.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315526.P9064506857305553506

`A315491(n)+Δ[A011864(n)]`
-/

namespace A315526.P9064506857305553506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315491 n + (f1 (n + 1) - f1 n)

end

end A315526.P9064506857305553506

noncomputable section

/-- A315526: Coordination sequence Gal.6.637.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315526.P9064506857305553506`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2214 terms. -/
def A315526 (n : ℕ) : ℤ :=
  A315526.P9064506857305553506.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2214 terms. -/
def A315526.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315534.P15836177857492630035

`A313720(n)+A004396(n)`
-/

namespace A315534.P15836177857492630035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313720 n + A004396 n

end

end A315534.P15836177857492630035

noncomputable section

/-- A315534: Coordination sequence Gal.6.624.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315534.P15836177857492630035`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2268 terms. -/
def A315534 (n : ℕ) : ℤ :=
  A315534.P15836177857492630035.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2268 terms. -/
def A315534.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315535.P14487333064084558685

`A313721(n)+A004396(n)`
-/

namespace A315535.P14487333064084558685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313721 n + A004396 n

end

end A315535.P14487333064084558685

noncomputable section

/-- A315535: Coordination sequence Gal.5.304.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315535.P14487333064084558685`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2254 terms. -/
def A315535 (n : ℕ) : ℤ :=
  A315535.P14487333064084558685.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2254 terms. -/
def A315535.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315540.P594240874885915824

`A314893(n)+n`
-/

namespace A315540.P594240874885915824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314893 n + (n : ℤ)

end

end A315540.P594240874885915824

noncomputable section

/-- A315540: Coordination sequence Gal.6.643.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315540.P594240874885915824`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2207 terms. -/
def A315540 (n : ℕ) : ℤ :=
  A315540.P594240874885915824.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2207 terms. -/
def A315540.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315543.P9834102323510964404

`A314896(n)+n`
-/

namespace A315543.P9834102323510964404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314896 n + (n : ℤ)

end

end A315543.P9834102323510964404

noncomputable section

/-- A315543: Coordination sequence Gal.4.137.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315543.P9834102323510964404`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2208 terms. -/
def A315543 (n : ℕ) : ℤ :=
  A315543.P9834102323510964404.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2208 terms. -/
def A315543.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315546.P1451297170771805050

`A313746(n)+A004396(n)`
-/

namespace A315546.P1451297170771805050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313746 n + A004396 n

end

end A315546.P1451297170771805050

noncomputable section

/-- A315546: Coordination sequence Gal.5.294.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315546.P1451297170771805050`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2184 terms. -/
def A315546 (n : ℕ) : ℤ :=
  A315546.P1451297170771805050.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2184 terms. -/
def A315546.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315547.P9153730377971794613

`A314898(n)+n`
-/

namespace A315547.P9153730377971794613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314898 n + (n : ℤ)

end

end A315547.P9153730377971794613

noncomputable section

/-- A315547: Coordination sequence Gal.5.295.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315547.P9153730377971794613`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2208 terms. -/
def A315547 (n : ℕ) : ℤ :=
  A315547.P9153730377971794613.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2208 terms. -/
def A315547.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315554.P18025128345172279800

`A315411(n)+A315342(n)%A072154(n)`
-/

namespace A315554.P18025128345172279800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315411 n + Int.tmod (A315342 n) (A072154 n)

end

end A315554.P18025128345172279800

noncomputable section

/-- A315554: Coordination sequence Gal.4.146.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315554.P18025128345172279800`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2221 terms. -/
def A315554 (n : ℕ) : ℤ :=
  A315554.P18025128345172279800.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2221 terms. -/
def A315554.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315634.P4185785318995043649

`abs(A008592(n)-A312680(n))`
-/

namespace A315634.P4185785318995043649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A312680 n|

end

end A315634.P4185785318995043649

noncomputable section

/-- A315634: Coordination sequence Gal.4.55.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315634.P4185785318995043649`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2345 terms. -/
def A315634 (n : ℕ) : ℤ :=
  A315634.P4185785318995043649.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2345 terms. -/
def A315634.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315637.P8693043612611580160

`abs(A008592(n)-A312658(n))`
-/

namespace A315637.P8693043612611580160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A312658 n|

end

end A315637.P8693043612611580160

noncomputable section

/-- A315637: Coordination sequence Gal.6.352.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315637.P8693043612611580160`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2329 terms. -/
def A315637 (n : ℕ) : ℤ :=
  A315637.P8693043612611580160.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2329 terms. -/
def A315637.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315646.P17156318483534215033

`2*A313538(n)-A008574(n)`
-/

namespace A315646.P17156318483534215033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313538 n - A008574 n

end

end A315646.P17156318483534215033

noncomputable section

/-- A315646: Coordination sequence Gal.5.290.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315646.P17156318483534215033`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2301 terms. -/
def A315646 (n : ℕ) : ℤ :=
  A315646.P17156318483534215033.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2301 terms. -/
def A315646.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315647.P605135324631225855

`A315490(n)+A238470(n)`
-/

namespace A315647.P605135324631225855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315490 n + A238470 n

end

end A315647.P605135324631225855

noncomputable section

/-- A315647: Coordination sequence Gal.4.139.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315647.P605135324631225855`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1775 terms. -/
def A315647 (n : ℕ) : ℤ :=
  A315647.P605135324631225855.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1775 terms. -/
def A315647.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315649.P5476829177456958284

`A314022(n)+A004525(n)`
-/

namespace A315649.P5476829177456958284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314022 n + A004525 n

end

end A315649.P5476829177456958284

noncomputable section

/-- A315649: Coordination sequence Gal.6.626.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315649.P5476829177456958284`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2139 terms. -/
def A315649 (n : ℕ) : ℤ :=
  A315649.P5476829177456958284.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2139 terms. -/
def A315649.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315651.P9904955794810219643

`A314026(n)+A004525(n)`
-/

namespace A315651.P9904955794810219643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314026 n + A004525 n

end

end A315651.P9904955794810219643

noncomputable section

/-- A315651: Coordination sequence Gal.5.303.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315651.P9904955794810219643`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2138 terms. -/
def A315651 (n : ℕ) : ℤ :=
  A315651.P9904955794810219643.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2138 terms. -/
def A315651.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315653.P10545093397592680194

`abs(A008592(n)-A312484(n))`
-/

namespace A315653.P10545093397592680194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A312484 n|

end

end A315653.P10545093397592680194

noncomputable section

/-- A315653: Coordination sequence Gal.5.305.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315653.P10545093397592680194`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2232 terms. -/
def A315653 (n : ℕ) : ℤ :=
  A315653.P10545093397592680194.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2232 terms. -/
def A315653.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315689.P11366853551913023718

`A314094(n)+A004525(n)`
-/

namespace A315689.P11366853551913023718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314094 n + A004525 n

end

end A315689.P11366853551913023718

noncomputable section

/-- A315689: Coordination sequence Gal.6.624.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315689.P11366853551913023718`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2242 terms. -/
def A315689 (n : ℕ) : ℤ :=
  A315689.P11366853551913023718.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2242 terms. -/
def A315689.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315703.P17229668802607991947

`A313556(n)+n`
-/

namespace A315703.P17229668802607991947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313556 n + (n : ℤ)

end

end A315703.P17229668802607991947

noncomputable section

/-- A315703: Coordination sequence Gal.6.643.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315703.P17229668802607991947`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2236 terms. -/
def A315703 (n : ℕ) : ℤ :=
  A315703.P17229668802607991947.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2236 terms. -/
def A315703.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315704.P11710660165894118179

`A313561(n)+n`
-/

namespace A315704.P11710660165894118179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313561 n + (n : ℤ)

end

end A315704.P11710660165894118179

noncomputable section

/-- A315704: Coordination sequence Gal.4.137.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315704.P11710660165894118179`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2217 terms. -/
def A315704 (n : ℕ) : ℤ :=
  A315704.P11710660165894118179.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2217 terms. -/
def A315704.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315710.P3884167862571020999

`A313569(n)+n`
-/

namespace A315710.P3884167862571020999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313569 n + (n : ℤ)

end

end A315710.P3884167862571020999

noncomputable section

/-- A315710: Coordination sequence Gal.6.628.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315710.P3884167862571020999`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2194 terms. -/
def A315710 (n : ℕ) : ℤ :=
  A315710.P3884167862571020999.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2194 terms. -/
def A315710.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315732.P13634539582885315922

`2*A313692(n)-A008574(n)`
-/

namespace A315732.P13634539582885315922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313692 n - A008574 n

end

end A315732.P13634539582885315922

noncomputable section

/-- A315732: Coordination sequence Gal.6.640.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315732.P13634539582885315922`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2238 terms. -/
def A315732 (n : ℕ) : ℤ :=
  A315732.P13634539582885315922.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2238 terms. -/
def A315732.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315737.P10781297996396530912

`A313916(n)+A253262(n)`
-/

namespace A315737.P10781297996396530912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313916 n + A253262 n

end

end A315737.P10781297996396530912

noncomputable section

/-- A315737: Coordination sequence Gal.5.90.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315737.P10781297996396530912`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2271 terms. -/
def A315737 (n : ℕ) : ℤ :=
  A315737.P10781297996396530912.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2271 terms. -/
def A315737.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315738.P6865487008344501452

`A315515(n)+A004525(n-A004396(n))`
-/

namespace A315738.P6865487008344501452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315515 n + A004525 ((n : ℤ) - A004396 n).toNat

end

end A315738.P6865487008344501452

noncomputable section

/-- A315738: Coordination sequence Gal.6.343.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315738.P6865487008344501452`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2283 terms. -/
def A315738 (n : ℕ) : ℤ :=
  A315738.P6865487008344501452.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2283 terms. -/
def A315738.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315744.P16771703429452510069

`A314094(n)+A004396(n)`
-/

namespace A315744.P16771703429452510069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314094 n + A004396 n

end

end A315744.P16771703429452510069

noncomputable section

/-- A315744: Coordination sequence Gal.6.643.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315744.P16771703429452510069`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2227 terms. -/
def A315744 (n : ℕ) : ℤ :=
  A315744.P16771703429452510069.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2227 terms. -/
def A315744.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315745.P1982268987440364031

`A313685(n)+n`
-/

namespace A315745.P1982268987440364031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313685 n + (n : ℤ)

end

end A315745.P1982268987440364031

noncomputable section

/-- A315745: Coordination sequence Gal.4.137.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315745.P1982268987440364031`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2219 terms. -/
def A315745 (n : ℕ) : ℤ :=
  A315745.P1982268987440364031.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2219 terms. -/
def A315745.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315747.P2406798804632364496

`A313688(n)+n`
-/

namespace A315747.P2406798804632364496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313688 n + (n : ℤ)

end

end A315747.P2406798804632364496

noncomputable section

/-- A315747: Coordination sequence Gal.6.638.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315747.P2406798804632364496`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2233 terms. -/
def A315747 (n : ℕ) : ℤ :=
  A315747.P2406798804632364496.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2233 terms. -/
def A315747.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315748.P2319200276665506335

`A314099(n)+A004396(n)`
-/

namespace A315748.P2319200276665506335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314099 n + A004396 n

end

end A315748.P2319200276665506335

noncomputable section

/-- A315748: Coordination sequence Gal.5.294.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315748.P2319200276665506335`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2207 terms. -/
def A315748 (n : ℕ) : ℤ :=
  A315748.P2319200276665506335.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2207 terms. -/
def A315748.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315749.P13778468742197853903

`A313692(n)+n`
-/

namespace A315749.P13778468742197853903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313692 n + (n : ℤ)

end

end A315749.P13778468742197853903

noncomputable section

/-- A315749: Coordination sequence Gal.5.295.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315749.P13778468742197853903`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2199 terms. -/
def A315749 (n : ℕ) : ℤ :=
  A315749.P13778468742197853903.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2199 terms. -/
def A315749.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315751.P7664283178857553201

`A313693(n)+n`
-/

namespace A315751.P7664283178857553201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313693 n + (n : ℤ)

end

end A315751.P7664283178857553201

noncomputable section

/-- A315751: Coordination sequence Gal.6.628.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315751.P7664283178857553201`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2175 terms. -/
def A315751 (n : ℕ) : ℤ :=
  A315751.P7664283178857553201.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2175 terms. -/
def A315751.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315757.P1538617664775847239

`2*A313721(n)-A008574(n)`
-/

namespace A315757.P1538617664775847239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313721 n - A008574 n

end

end A315757.P1538617664775847239

noncomputable section

/-- A315757: Coordination sequence Gal.5.294.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315757.P1538617664775847239`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2176 terms. -/
def A315757 (n : ℕ) : ℤ :=
  A315757.P1538617664775847239.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2176 terms. -/
def A315757.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315763.P15886996602990195972

`A313720(n)+n`
-/

namespace A315763.P15886996602990195972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313720 n + (n : ℤ)

end

end A315763.P15886996602990195972

noncomputable section

/-- A315763: Coordination sequence Gal.6.628.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315763.P15886996602990195972`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2202 terms. -/
def A315763 (n : ℕ) : ℤ :=
  A315763.P15886996602990195972.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2202 terms. -/
def A315763.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315764.P17078646225777516565

`A008486(2*(A301718(n)-A313100(n)))`
-/

namespace A315764.P17078646225777516565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (2 * (A301718 n - A313100 n)).toNat

end

end A315764.P17078646225777516565

noncomputable section

/-- A315764: Coordination sequence Gal.4.138.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315764.P17078646225777516565`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2217 terms. -/
def A315764 (n : ℕ) : ℤ :=
  A315764.P17078646225777516565.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2217 terms. -/
def A315764.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315788.P8782784959098183992

`A008458(A008458(n)-(A310441(n)+A004525(n)))`
-/

namespace A315788.P8782784959098183992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A008458 n - (A310441 n + A004525 n)).toNat

end

end A315788.P8782784959098183992

noncomputable section

/-- A315788: Coordination sequence Gal.3.4.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315788.P8782784959098183992`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2413 terms. -/
def A315788 (n : ℕ) : ℤ :=
  A315788.P8782784959098183992.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2413 terms. -/
def A315788.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315943.P3704534385650621552

`A315847(n)+A087509(n)`
-/

namespace A315943.P3704534385650621552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315847 n + A087509 n

end

end A315943.P3704534385650621552

noncomputable section

/-- A315943: Coordination sequence Gal.5.229.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315943.P3704534385650621552`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2335 terms. -/
def A315943 (n : ℕ) : ℤ :=
  A315943.P3704534385650621552.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2335 terms. -/
def A315943.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A316347.P10556341811783083383

`A000290(n)%(A178914(n)+n)`
-/

namespace A316347.P10556341811783083383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000290 n) (A178914 n + (n : ℤ))

end

end A316347.P10556341811783083383

noncomputable section

/-- A316347: a(n) = n^2 mod(10^m), where m is the number of digits in n (written in base 10).

Offset 0, canonical program `A316347.P10556341811783083383`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A316347 (n : ℕ) : ℤ :=
  A316347.P10556341811783083383.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A316347.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A316626.P1110720270171481878

`round(∑[A079559(n)/2])`
-/

namespace A316626.P1110720270171481878
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079559 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A316626.P1110720270171481878

noncomputable section

/-- A316626: a(1)=a(2)=a(3)=1; a(n) = a(n-2*a(n-1))+a(n-1-2*a(n-2)) for n > 3.

Offset 1, canonical program `A316626.P1110720270171481878`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A316626 (n : ℕ) : ℤ :=
  A316626.P1110720270171481878.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A316626.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A316824.P14787056752320120660

`A316829(floor(n/3))`
-/

namespace A316824.P14787056752320120660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316829 ⌊(n : ℚ) / 3⌋.toNat

end

end A316824.P14787056752320120660

noncomputable section

/-- A316824: A second example of a word that is uniform morphic and recurrent, but neither pure morphic nor primitive morphic.

Offset 0, canonical program `A316824.P14787056752320120660`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A316824 (n : ℕ) : ℤ :=
  A316824.P14787056752320120660.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A316824.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A317193.P13677178970524234186

`A057078(2*A278045(n+1))`
-/

namespace A317193.P13677178970524234186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 (2 * A278045 (n + 1)).toNat

end

end A317193.P13677178970524234186

noncomputable section

/-- A317193: First differences of A317192.

Offset 1, canonical program `A317193.P13677178970524234186`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A317193 (n : ℕ) : ℤ :=
  A317193.P13677178970524234186.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A317193.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A317531.P16080676606467659442

`∑{d}[n+1, A095112(#)*A117212((n+1)/#)]`
-/

namespace A317531.P16080676606467659442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A095112 d * A117212 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A317531.P16080676606467659442

noncomputable section

/-- A317531: Expansion of Sum_{p prime, k>=1} x^(p^k)/(1 + x^(p^k)).

Offset 1, canonical program `A317531.P16080676606467659442`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A317531 (n : ℕ) : ℤ :=
  A317531.P16080676606467659442.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A317531.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318060.P6031681000613286800

`(n+1)/gcd(n+1, ∑[A111408(n)])`
-/

namespace A318060.P6031681000613286800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111408 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A318060.P6031681000613286800

noncomputable section

/-- A318060: a(n) is the denominator of sigma(sigma(n))/n.

Offset 1, canonical program `A318060.P6031681000613286800`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318060 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A318060.P6031681000613286800.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318060.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318274.P2677241247150053118

`gcd(∑[A023531(n)], A103452(n))`
-/

namespace A318274.P2677241247150053118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A103452 n)

end

end A318274.P2677241247150053118

noncomputable section

/-- A318274: Triangle read by rows: T(n,k) = n for 0 < k < n and T(n,0) = T(n,n) = 1.

Offset 0, canonical program `A318274.P2677241247150053118`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318274 (n : ℕ) : ℤ :=
  (A318274.P2677241247150053118.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318274.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318463.P15419518407747005956

`(A000203(n+1)-A318462(n+1))/2`
-/

namespace A318463.P15419518407747005956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) - A318462 (n + 1) : ℚ) / 2

end

end A318463.P15419518407747005956

noncomputable section

/-- A318463: a(n) = Sum_{d|n, d < n/d} (d AND n/d), where AND is bitwise-and (A004198).

Offset 1, canonical program `A318463.P15419518407747005956`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318462, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318463 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A318463.P15419518407747005956.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318462, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318463.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318766.P4448423762240243735

`A084920(n)*a(n-1)` with `a(0)=1`
-/

namespace A318766.P4448423762240243735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A084920 n * a (n - 1)

end

end A318766.P4448423762240243735

noncomputable section

/-- A318766: a(0) = 1; for n > 0, a(n) = (prime(n)^2 - 1) * a(n-1).

Offset 0, canonical program `A318766.P4448423762240243735`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A084920, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318766 (n : ℕ) : ℤ :=
  A318766.P4448423762240243735.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A084920, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318766.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A319050.P16650929760473563245

`∩[A049098(n+1), A049232(n+1)]`
-/

namespace A319050.P16650929760473563245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319050.P16650929760473563245

noncomputable section

/-- A319050: Primes p such that neither p + 1 nor p + 2 is squarefree.

Offset 1, canonical program `A319050.P16650929760473563245`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2309 terms. -/
def A319050 (n : ℕ) : ℤ :=
  (A319050.P16650929760473563245.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2309 terms. -/
def A319050.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319296.P3036293143209303968

`A007429(n+1)%Δ[A160664(n)]`
-/

namespace A319296.P3036293143209303968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007429 (n + 1)) (f1 (n + 1) - f1 n)

end

end A319296.P3036293143209303968

noncomputable section

/-- A319296: a(n) = (Sum_{d|n} sigma(d)) mod sigma(n).

Offset 1, canonical program `A319296.P3036293143209303968`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319296 (n : ℕ) : ℤ :=
  A319296.P3036293143209303968.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319296.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319924.P4321362157346301630

`A005430(n)+1`
-/

namespace A319924.P4321362157346301630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005430 n + 1

end

end A319924.P4321362157346301630

noncomputable section

/-- A319924: a(n) = A143565(2n,n) for n > 0, a(0) = 1.

Offset 0, canonical program `A319924.P4321362157346301630`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A319924 (n : ℕ) : ℤ :=
  A319924.P4321362157346301630.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A319924.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A320065.P10804250572307599739

`A244160(∑[A267708(n)])`
-/

namespace A320065.P10804250572307599739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267708 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244160 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A320065.P10804250572307599739

noncomputable section

/-- A320065: a(n) is the smallest integer i such that binomial(2i,i) > n.

Offset 1, canonical program `A320065.P10804250572307599739`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. -/
def A320065 (n : ℕ) : ℤ :=
  A320065.P10804250572307599739.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. -/
def A320065.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A320527.P1973516301187565761

`A056328(n+1)-A304974(n+1)`
-/

namespace A320527.P1973516301187565761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056328 (n + 1) - A304974 (n + 1)

end

end A320527.P1973516301187565761

noncomputable section

/-- A320527: Number of chiral pairs of color patterns (set partitions) in a row of length n using exactly 4 colors (subsets).

Offset 1, canonical program `A320527.P1973516301187565761`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A304974, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A320527 (n : ℕ) : ℤ :=
  A320527.P1973516301187565761.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A304974, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A320527.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A320858.P4475477944573800183

`∑[and(2, A102781(n+1))]-n`
-/

namespace A320858.P4475477944573800183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A102781 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A320858.P4475477944573800183

noncomputable section

/-- A320858: a(n) = A320857(prime(n)).

Offset 1, canonical program `A320858.P4475477944573800183`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A320858 (n : ℕ) : ℤ :=
  A320858.P4475477944573800183.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A320858.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A320859.P8143034707769871832

`2^A172404(n+1)`
-/

namespace A320859.P8143034707769871832
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A172404 (n + 1) : ℤ)

end

end A320859.P8143034707769871832

noncomputable section

/-- A320859: Powers of 2 with initial digit 3.

Offset 1, canonical program `A320859.P8143034707769871832`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A172404, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A320859 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A320859.P8143034707769871832.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A172404, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A320859.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A320866.P15964022209481706421

`eq[1, A105700(n*A105700(A230631(n)))]`
-/

namespace A320866.P15964022209481706421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 ((n : ℤ) * A105700 (A230631 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A320866.P15964022209481706421

noncomputable section

/-- A320866: Primes such that p + digitsum(p, base 4) is again a prime.

Offset 1, canonical program `A320866.P15964022209481706421`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. -/
def A320866 (n : ℕ) : ℤ :=
  (A320866.P15964022209481706421.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. -/
def A320866.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A320916.P15605735686363910133

`∑[A011782(n)*A080813(n+6)]`
-/

namespace A320916.P15605735686363910133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A080813 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320916.P15605735686363910133

noncomputable section

/-- A320916: Consider A010060 as a 2-adic number ...100110010110, then a(n) is its approximation up to 2^n.

Offset 0, canonical program `A320916.P15605735686363910133`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A320916 (n : ℕ) : ℤ :=
  A320916.P15605735686363910133.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A320916.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321234.P1035964924695441674

`Δ[n²]*A001803(n)`
-/

namespace A321234.P1035964924695441674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A001803 n

end

end A321234.P1035964924695441674

noncomputable section

/-- A321234: Denominator of series expansion of the hypergeometric series 3F2([1/2, 1, 1], [3/2, 3/2], x).

Offset 0, canonical program `A321234.P1035964924695441674`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 162 terms. -/
def A321234 (n : ℕ) : ℤ :=
  A321234.P1035964924695441674.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 162 terms. -/
def A321234.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322655.P2729433473083164570

`A007429(n+1)/gcd(A007429(n+1), A143348(n+1))`
-/

namespace A322655.P2729433473083164570
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007429 (n + 1) : ℚ) / (Int.gcd (A007429 (n + 1)) (A143348 (n + 1)) : ℚ)

end

end A322655.P2729433473083164570

noncomputable section

/-- A322655: Numerator of (Sum_{d|n} sigma(d)) / sigma(n).

Offset 1, canonical program `A322655.P2729433473083164570`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322655 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A322655.P2729433473083164570.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322655.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A323505.P2579351898169798948

`a(floor(n/2))*A091090(2*n+1)` with `a(0)=1, a(1)=2`
-/

namespace A323505.P2579351898169798948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat * A091090 (2 * n + 1)

end

end A323505.P2579351898169798948

noncomputable section

/-- A323505: Mirror image of (denominators of) Bernoulli tree, A106831.

Offset 0, canonical program `A323505.P2579351898169798948`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A323505 (n : ℕ) : ℤ :=
  A323505.P2579351898169798948.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A323505.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A323651.P5601353070125800456

`(n%2+1)*A147582(or(1, n))`
-/

namespace A323651.P5601353070125800456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 + 1 : ℕ) : ℤ) * A147582 (Nat.lor 1 n)

end

end A323651.P5601353070125800456

noncomputable section

/-- A323651: Number of elements added at n-th stage to the toothpick structure of A323650.

Offset 1, canonical program `A323651.P5601353070125800456`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A323651 (n : ℕ) : ℤ :=
  A323651.P5601353070125800456.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A323651.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324552.P10145515765642831646

`A324549(n+1)+2*A000225(n)`
-/

namespace A324552.P10145515765642831646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324549 (n + 1) + 2 * A000225 n

end

end A324552.P10145515765642831646

noncomputable section

/-- A324552: a(n) = A324542(2*prime(n)).

Offset 1, canonical program `A324552.P10145515765642831646`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A324552 (n : ℕ) : ℤ :=
  A324552.P10145515765642831646.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A324552.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324913.P16517888723639947016

`∑[2^n*A140434(n+1)]+1`
-/

namespace A324913.P16517888723639947016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A140434 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A324913.P16517888723639947016

noncomputable section

/-- A324913: a(n) = Sum_{k=1..n} 2^k * phi(k), where phi is the Euler totient function A000010.

Offset 1, canonical program `A324913.P16517888723639947016`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 323 terms. -/
def A324913 (n : ℕ) : ℤ :=
  A324913.P16517888723639947016.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 323 terms. -/
def A324913.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A325030.P6646308341091855978

`A206032(n+1)*A266265(n+1)`
-/

namespace A325030.P6646308341091855978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206032 (n + 1) * A266265 (n + 1)

end

end A325030.P6646308341091855978

noncomputable section

/-- A325030: a(n) = Product_{d|n} (sigma(d)*pod(d)) where sigma(k) = the sum of the divisors of k (A000203) and pod(k) = the product of the divisors of k (A007955).

Offset 1, canonical program `A325030.P6646308341091855978`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A206032, A266265, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A325030 (n : ℕ) : ℤ :=
  A325030.P6646308341091855978.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A206032, A266265, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A325030.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A325122.P1813601502794908379

`A325121(n+1)-∑{e}[n+1, #]`
-/

namespace A325122.P1813601502794908379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325121 (n + 1) - ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ)

end

end A325122.P1813601502794908379

noncomputable section

/-- A325122: Sum of binary digits of the prime indices of n, minus Omega(n).

Offset 1, canonical program `A325122.P1813601502794908379`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A325122 (n : ℕ) : ℤ :=
  A325122.P1813601502794908379.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A325122.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A325483.P12049529891509017628

`lt[A180018(n), 1]`
-/

namespace A325483.P12049529891509017628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180018 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A325483.P12049529891509017628

noncomputable section

/-- A325483: Numbers whose sum of their decimal digits is less than or equal to the sum of the digits of their binary representation.

Offset 1, canonical program `A325483.P12049529891509017628`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. -/
def A325483 (n : ℕ) : ℤ :=
  (A325483.P12049529891509017628.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. -/
def A325483.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A325516.P1401328981035964672

`∑[A010054(n)]*A166515(A099375(n))`
-/

namespace A325516.P1401328981035964672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A166515 (A099375 n).toNat

end

end A325516.P1401328981035964672

noncomputable section

/-- A325516: Triangle read by rows: T(n, k) = (1/4)*n*(1 - (-1)^(n - k) + 2*(n - k)^2), with 0 <= k < n.

Offset 1, canonical program `A325516.P1401328981035964672`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A325516 (n : ℕ) : ℤ :=
  A325516.P1401328981035964672.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A325516.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A326305.P12945251501579956445

`∑{d}[n+1, A002131(#)*A007427((n+1)/#)]`
-/

namespace A326305.P12945251501579956445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002131 d * A007427 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326305.P12945251501579956445

noncomputable section

/-- A326305: Dirichlet g.f.: zeta(s-1) * (1 - 2^(-s)) / zeta(s).

Offset 1, canonical program `A326305.P12945251501579956445`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326305 (n : ℕ) : ℤ :=
  A326305.P12945251501579956445.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326305.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A326401.P8847676069389999364

`A326399(n+1)-A326400(n+1)`
-/

namespace A326401.P8847676069389999364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326399 (n + 1) - A326400 (n + 1)

end

end A326401.P8847676069389999364

noncomputable section

/-- A326401: Expansion of Sum_{k>=1} k * x^k / (1 + x^k + x^(2*k)).

Offset 1, canonical program `A326401.P8847676069389999364`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326399, A326400, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A326401 (n : ℕ) : ℤ :=
  A326401.P8847676069389999364.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326399, A326400, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A326401.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A326420.P15749464054433305275

`Δ[A284907(n+1)]`
-/

namespace A326420.P15749464054433305275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284907 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A326420.P15749464054433305275

noncomputable section

/-- A326420: Fixed point of the morphism 1->13, 2->132, 3->1322.

Offset 1, canonical program `A326420.P15749464054433305275`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A326420 (n : ℕ) : ℤ :=
  A326420.P15749464054433305275.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A326420.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A326503.P13743079522954983078

`A078181(n+1)-A078182(n+1)`
-/

namespace A326503.P13743079522954983078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078181 (n + 1) - A078182 (n + 1)

end

end A326503.P13743079522954983078

noncomputable section

/-- A326503: Expansion of Sum_{k>=1} x^k * (1 - x^(2*k)) / (1 + x^k + x^(2*k))^2.

Offset 1, canonical program `A326503.P13743079522954983078`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078181, A078182, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A326503 (n : ℕ) : ℤ :=
  A326503.P13743079522954983078.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078181, A078182, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A326503.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A326826.P16122372011493243852

`∑{d}[n+1, A007429(#)*A023896((n+1)/#)]`
-/

namespace A326826.P16122372011493243852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007429 d * A023896 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326826.P16122372011493243852

noncomputable section

/-- A326826: a(n) = (1/2) * Sum_{d|n} (sigma_1(d) + sigma_2(d)), where sigma_1 = A000203 and sigma_2 = A001157.

Offset 1, canonical program `A326826.P16122372011493243852`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326826 (n : ℕ) : ℤ :=
  A326826.P16122372011493243852.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326826.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327096.P11519137177335428529

`(A007429(n+1)+A288417(n+1))/2`
-/

namespace A327096.P11519137177335428529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007429 (n + 1) + A288417 (n + 1) : ℚ) / 2

end

end A327096.P11519137177335428529

noncomputable section

/-- A327096: Expansion of Sum_{k>=1} sigma(k) * x^k / (1 - x^(2*k)), where sigma = A000203.

Offset 1, canonical program `A327096.P11519137177335428529`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007429, A288417, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A327096 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A327096.P11519137177335428529.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007429, A288417, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A327096.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A327122.P14365338832682024670

`∑{d}[n+1, A050469(#)]`
-/

namespace A327122.P14365338832682024670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A050469 d

end

end A327122.P14365338832682024670

noncomputable section

/-- A327122: Expansion of Sum_{k>=1} sigma(k) * x^k / (1 + x^(2*k)), where sigma = A000203.

Offset 1, canonical program `A327122.P14365338832682024670`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050469, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A327122 (n : ℕ) : ℤ :=
  A327122.P14365338832682024670.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050469, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A327122.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A327174.P2217078710281402132

`A096270(2*n*A187944(n+1))`
-/

namespace A327174.P2217078710281402132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 (2 * ((n : ℤ) * A187944 (n + 1))).toNat

end

end A327174.P2217078710281402132

noncomputable section

/-- A327174: a(n) = [(2*n+1)*r] - [(n+1)*r] - [n*r], where [ ] = floor and r = (1+sqrt(5))/2.

Offset 0, canonical program `A327174.P2217078710281402132`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327174 (n : ℕ) : ℤ :=
  A327174.P2217078710281402132.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327174.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327177.P10177580896383627063

`A342281(n)-A191405(n)`
-/

namespace A327177.P10177580896383627063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342281 n - A191405 n

end

end A327177.P10177580896383627063

noncomputable section

/-- A327177: a(n) = [(2n+1)r] - [(n+1)r] - [nr], where [ ] = floor and r = sqrt(2).

Offset 0, canonical program `A327177.P10177580896383627063`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327177 (n : ℕ) : ℤ :=
  A327177.P10177580896383627063.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327177.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327181.P1963751843994086053

`lt[n*A327180(n), n]`
-/

namespace A327181.P1963751843994086053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A327180 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A327181.P1963751843994086053

noncomputable section

/-- A327181: Positions of 0's in {A327180(n) : n > 0}.

Offset 1, canonical program `A327181.P1963751843994086053`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4998 terms. -/
def A327181 (n : ℕ) : ℤ :=
  (A327181.P1963751843994086053.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4998 terms. -/
def A327181.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327182.P8957837183894890012

`lt[0, A327180(n)]`
-/

namespace A327182.P8957837183894890012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327180 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A327182.P8957837183894890012

noncomputable section

/-- A327182: Positions of 1's in {A327180(n) : n > 0}.

Offset 1, canonical program `A327182.P8957837183894890012`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5002 terms. -/
def A327182 (n : ℕ) : ℤ :=
  (A327182.P8957837183894890012.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5002 terms. -/
def A327182.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327202.P4862676345002138946

`A096270(2*A089809(n+1)+n)`
-/

namespace A327202.P4862676345002138946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 (2 * A089809 (n + 1) + (n : ℤ)).toNat

end

end A327202.P4862676345002138946

noncomputable section

/-- A327202: a(n) = [(2n+2)r] - [(n+2)r] - [nr], where [ ] = floor and r = (1+sqrt(5))/2.

Offset 0, canonical program `A327202.P4862676345002138946`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327202 (n : ℕ) : ℤ :=
  A327202.P4862676345002138946.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327202.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327205.P854694592881596088

`A022842(n+1)-A191406(n)`
-/

namespace A327205.P854694592881596088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022842 (n + 1) - A191406 n

end

end A327205.P854694592881596088

noncomputable section

/-- A327205: a(n) = [(2n+2)r] - [(n+2)r] - [nr], where [ ] = floor and r = sqrt(2).

Offset 0, canonical program `A327205.P854694592881596088`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327205 (n : ℕ) : ℤ :=
  A327205.P854694592881596088.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327205.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327264.P13146634367397231510

`eq[A004092(n), A007953(n+2)]`
-/

namespace A327264.P13146634367397231510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327264.P13146634367397231510

noncomputable section

/-- A327264: Numbers k with digit_sum(2*k) = digit_sum(2+k).

Offset 1, canonical program `A327264.P13146634367397231510`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 635 terms. -/
def A327264 (n : ℕ) : ℤ :=
  (A327264.P13146634367397231510.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 635 terms. -/
def A327264.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327611.P162445837171172901

`A056328(n+1)-A056473(n+1)`
-/

namespace A327611.P162445837171172901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056328 (n + 1) - A056473 (n + 1)

end

end A327611.P162445837171172901

noncomputable section

/-- A327611: Number of length n reversible string structures that are not palindromic using exactly four different colors.

Offset 1, canonical program `A327611.P162445837171172901`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A327611 (n : ℕ) : ℤ :=
  A327611.P162445837171172901.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A327611.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327748.P16131196812816451464

`p?[A054763(n+1)+A045319(n+1)]`
-/

namespace A327748.P16131196812816451464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054763 (n + 1) + A045319 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A327748.P16131196812816451464

noncomputable section

/-- A327748: Primes p such that the sum of p and the prime before p is not a multiple of 3.

Offset 1, canonical program `A327748.P16131196812816451464`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4021 terms. -/
def A327748 (n : ℕ) : ℤ :=
  A327748.P16131196812816451464.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4021 terms. -/
def A327748.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328001.P8787270632012708680

`A056040(A002262(n))*A056040(A025581(n))`
-/

namespace A328001.P8787270632012708680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 (A002262 n).toNat * A056040 (A025581 n).toNat

end

end A328001.P8787270632012708680

noncomputable section

/-- A328001: T(n, k) = k!*(n-k)!/(floor(k/2)!*floor((n-k)/2)!)^2. Triangle read by rows, 0 <= k <= n.

Offset 0, canonical program `A328001.P8787270632012708680`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328001 (n : ℕ) : ℤ :=
  A328001.P8787270632012708680.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328001.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328082.P5927494212009357182

`A000045(A099375(n))`
-/

namespace A328082.P5927494212009357182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A099375 n).toNat

end

end A328082.P5927494212009357182

noncomputable section

/-- A328082: Triangle read by rows: columns are Fibonacci numbers F_{2i+1} shifted downwards.

Offset 1, canonical program `A328082.P5927494212009357182`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328082 (n : ℕ) : ℤ :=
  A328082.P5927494212009357182.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328082.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328202.P11274015948377113960

`A051543(n+1)*A051543(n+2)`
-/

namespace A328202.P11274015948377113960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051543 (n + 1) * A051543 (n + 2)

end

end A328202.P11274015948377113960

noncomputable section

/-- A328202: a(n) is the greatest common divisor of all the numbers in row n of Pascal's triangle excluding 1 and n.

Offset 4, canonical program `A328202.P11274015948377113960`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A328202 (n : ℕ) : ℤ :=
  A328202.P11274015948377113960.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A328202.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328337.P9415464741654577557

`and(-2, A247146(n+1))`
-/

namespace A328337.P9415464741654577557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A247146 (n + 1))

end

end A328337.P9415464741654577557

noncomputable section

/-- A328337: The number whose binary indices are the nontrivial divisors of n (greater than 1 and less than n).

Offset 1, canonical program `A328337.P9415464741654577557`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 667 terms. -/
def A328337 (n : ℕ) : ℤ :=
  A328337.P9415464741654577557.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 667 terms. -/
def A328337.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328407.P14348967757254063720

`∑{d}[A006519(n+1), A000290((n+1)/#)]`
-/

namespace A328407.P14348967757254063720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000290 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328407.P14348967757254063720

noncomputable section

/-- A328407: G.f. A(x) satisfies: A(x) = A(x^2) + x * (1 + x) / (1 - x)^3.

Offset 1, canonical program `A328407.P14348967757254063720`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328407 (n : ℕ) : ℤ :=
  A328407.P14348967757254063720.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328407.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328820.P14066992328077609403

`A328819(xor(1, 10*10*(n+1)+1))`
-/

namespace A328820.P14066992328077609403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328819 (Nat.xor 1 (10 * (10 * (n + 1)) + 1))

end

end A328820.P14066992328077609403

noncomputable section

/-- A328820: Fourth digit after decimal point of square root of n.

Offset 1, canonical program `A328820.P14066992328077609403`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A328820 (n : ℕ) : ℤ :=
  A328820.P14066992328077609403.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A328820.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328865.P7576153008617993152

`A087121(n+1)%10`
-/

namespace A328865.P7576153008617993152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087121 (n + 1)) 10

end

end A328865.P7576153008617993152

noncomputable section

/-- A328865: The first repeating term in the trajectory of n under iterations of A329623, or -1 if no such terms exists.

Offset 1, canonical program `A328865.P7576153008617993152`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A328865 (n : ℕ) : ℤ :=
  A328865.P7576153008617993152.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A328865.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329801.P8827060005850318479

`∑{d}[n+1, A117212(#)*A327629((n+1)/#)]`
-/

namespace A329801.P8827060005850318479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A117212 d * A327629 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A329801.P8827060005850318479

noncomputable section

/-- A329801: Expansion of Sum_{k>=1} x^(k*(k + 1)/2) / (1 + x^(k*(k + 1)/2)).

Offset 1, canonical program `A329801.P8827060005850318479`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329801 (n : ℕ) : ℤ :=
  A329801.P8827060005850318479.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329801.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A330409.P9787691834635988053

`A049452(A158015(n+1))`
-/

namespace A330409.P9787691834635988053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049452 (A158015 (n + 1)).toNat

end

end A330409.P9787691834635988053

noncomputable section

/-- A330409: Semiprimes of the form p(6p - 1).

Offset 1, canonical program `A330409.P9787691834635988053`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A158015, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A330409 (n : ℕ) : ℤ :=
  A330409.P9787691834635988053.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A158015, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A330409.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A330857.P8267642898900047615

`A330856(n+1)-∑{d}[n+1, #%or(1, #)]`
-/

namespace A330857.P8267642898900047615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330856 (n + 1) - ((∑ d ∈ Nat.divisors (f1 n), d % Nat.lor 1 d : ℕ) : ℤ)

end

end A330857.P8267642898900047615

noncomputable section

/-- A330857: Total sum of divisors of all the parts in the partitions of n into 2 distinct parts.

Offset 1, canonical program `A330857.P8267642898900047615`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330857 (n : ℕ) : ℤ :=
  A330857.P8267642898900047615.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330857.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330904.P16669225455194206827

`eq[A000120(n), A065363(n)]`
-/

namespace A330904.P16669225455194206827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065363 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A330904.P16669225455194206827

noncomputable section

/-- A330904: Numbers m such that the number of 1's in the binary expansion of m equals the sum of the balanced ternary trits of m.

Offset 1, canonical program `A330904.P16669225455194206827`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 243 terms. -/
def A330904 (n : ℕ) : ℤ :=
  (A330904.P16669225455194206827.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 243 terms. -/
def A330904.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330931.P13737479232060882146

`A049445(eq[1, A049445(n+2)-A049445(n+1)]+1)`
-/

namespace A330931.P13737479232060882146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049445 (n + 2) - A049445 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049445 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A330931.P13737479232060882146

noncomputable section

/-- A330931: Numbers k such that both k and k + 1 are Niven numbers in base 2 (A049445).

Offset 1, canonical program `A330931.P13737479232060882146`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1847 terms. -/
def A330931 (n : ℕ) : ℤ :=
  A330931.P13737479232060882146.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1847 terms. -/
def A330931.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A331112.P16798163641556817156

`A065363(A000040(n+1))`
-/

namespace A331112.P16798163641556817156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065363 (A000040 (n + 1)).toNat

end

end A331112.P16798163641556817156

noncomputable section

/-- A331112: Sum of the digits of the n-th prime number in balanced ternary.

Offset 1, canonical program `A331112.P16798163641556817156`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A331112 (n : ℕ) : ℤ :=
  A331112.P16798163641556817156.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A331112.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A331324.P4018148825300603067

`p?[A063482(eq[7, A007652(n+1)])]`
-/

namespace A331324.P4018148825300603067
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007652 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063482 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A331324.P4018148825300603067

noncomputable section

/-- A331324: Prime numbers p_k such that p_k == 1 (mod 10) and p_(k+1) == 7 (mod 10).

Offset 1, canonical program `A331324.P4018148825300603067`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 889 terms. -/
def A331324 (n : ℕ) : ℤ :=
  A331324.P4018148825300603067.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 889 terms. -/
def A331324.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A331397.P13626299062190034795

`A011782(n)*A226994(n)`
-/

namespace A331397.P13626299062190034795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A226994 n

end

end A331397.P13626299062190034795

noncomputable section

/-- A331397: Number of nonnegative integer matrices with 2 distinct columns and any number of nonzero rows with column sums n and columns in decreasing lexicographic order.

Offset 0, canonical program `A331397.P13626299062190034795`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A226994, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A331397 (n : ℕ) : ℤ :=
  A331397.P13626299062190034795.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A226994, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A331397.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A331476.P4019166169547797384

`A014263(10^n)`
-/

namespace A331476.P4019166169547797384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014263 (10 ^ n)

end

end A331476.P4019166169547797384

noncomputable section

/-- A331476: The (10^n)-th even-digit number.

Offset 0, canonical program `A331476.P4019166169547797384`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014263, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A331476 (n : ℕ) : ℤ :=
  A331476.P4019166169547797384.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014263, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A331476.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A331478.P4956837574170450046

`A002262(eq[0, A053186(A004736(n+1))])`
-/

namespace A331478.P4956837574170450046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (A004736 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A331478.P4956837574170450046

noncomputable section

/-- A331478: Irregular triangle T(n,k) = n - (s - k + 1)^2 for 1 <= k <= s, with s = floor(sqrt(n)).

Offset 1, canonical program `A331478.P4956837574170450046`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1053 terms. -/
def A331478 (n : ℕ) : ℤ :=
  A331478.P4956837574170450046.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1053 terms. -/
def A331478.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A331764.P14210564113298360622

`A102781(n+1)²*A040976(n+1)`
-/

namespace A331764.P14210564113298360622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (n + 1) ^ 2 * A040976 (n + 1)

end

end A331764.P14210564113298360622

noncomputable section

/-- A331764: a(n) = ((p-1)^3 - (p-1)^2)/4 where p is the n-th prime.

Offset 1, canonical program `A331764.P14210564113298360622`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A331764 (n : ℕ) : ℤ :=
  A331764.P14210564113298360622.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A331764.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332028.P14597317824532883109

`∑[A332026(A181440(n+1))-1]`
-/

namespace A332028.P14597317824532883109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332026 (A181440 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332028.P14597317824532883109

noncomputable section

/-- A332028: Savannah problem: number of distinct possible populations after n weeks, not allowing new populations after the empty set.

Offset 1, canonical program `A332028.P14597317824532883109`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A332028 (n : ℕ) : ℤ :=
  A332028.P14597317824532883109.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A332028.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332264.P12409925469232935551

`A143128(n+1)-A024916(n+1)`
-/

namespace A332264.P12409925469232935551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143128 (n + 1) - A024916 (n + 1)

end

end A332264.P12409925469232935551

noncomputable section

/-- A332264: Partial sums of A334136.

Offset 1, canonical program `A332264.P12409925469232935551`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A143128, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A332264 (n : ℕ) : ℤ :=
  A332264.P12409925469232935551.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A143128, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A332264.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A332789.P9919765140023462536

`Δ[A007069(n+1)]`
-/

namespace A332789.P9919765140023462536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007069 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A332789.P9919765140023462536

noncomputable section

/-- A332789: First differences of the iterated Beatty sequence A007069.

Offset 1, canonical program `A332789.P9919765140023462536`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A332789 (n : ℕ) : ℤ :=
  A332789.P9919765140023462536.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A332789.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333119.P2740029405122443925

`ceil(A002262(n)/2)*A004736(n+1)`
-/

namespace A333119.P2740029405122443925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002262 n : ℚ) / 2⌉ * A004736 (n + 1)

end

end A333119.P2740029405122443925

noncomputable section

/-- A333119: Triangle T read by rows: T(n, k) = (n - k)*(1 - (-1)^k + 2*k)/4, with 0 <= k < n.

Offset 1, canonical program `A333119.P2740029405122443925`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333119 (n : ℕ) : ℤ :=
  A333119.P2740029405122443925.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333119.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333174.P15533700412874415267

`∑[A333173(n)]`
-/

namespace A333174.P15533700412874415267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333173 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333174.P15533700412874415267

noncomputable section

/-- A333174: a(n) = Sum_{k=0..n} r_4(k^2 + 1), where r_4(k) is the number of ways of writing k as a sum of 4 squares (A000118).

Offset 0, canonical program `A333174.P15533700412874415267`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333174 (n : ℕ) : ℤ :=
  A333174.P15533700412874415267.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333174.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333869.P12729571298558811765

`∪[A036690(n+2), A079704(n+2)]`
-/

namespace A333869.P12729571298558811765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036690 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079704 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A333869.P12729571298558811765

noncomputable section

/-- A333869: Perimeters of integer-sided triangles with at least one prime altitude.

Offset 1, canonical program `A333869.P12729571298558811765`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 292 terms. -/
def A333869 (n : ℕ) : ℤ :=
  (A333869.P12729571298558811765.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 292 terms. -/
def A333869.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333975.P16248602436189593744

`eq[0, A023416(log2(A001316(n)))]`
-/

namespace A333975.P16248602436189593744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (SequenceMachineLib.roundAway (Real.logb 2 (A001316 n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A333975.P16248602436189593744

noncomputable section

/-- A333975: a(1) = 1, a(2) = 2 and for n > 2, a(n) is the smallest number not of the form OR(a(i),a(j)) for 1 <= i < j < n.

Offset 1, canonical program `A333975.P16248602436189593744`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333975 (n : ℕ) : ℤ :=
  (A333975.P16248602436189593744.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333975.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334608.P16320078294554590226

`Δ[A069271(n)]-A069271(n)`
-/

namespace A334608.P16320078294554590226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A069271 n

end

end A334608.P16320078294554590226

noncomputable section

/-- A334608: a(n) is the total number of down-steps after the final up-step in all 3_1-Dyck paths of length 4*n (n up-steps and 3n down-steps).

Offset 0, canonical program `A334608.P16320078294554590226`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A334608 (n : ℕ) : ℤ :=
  A334608.P16320078294554590226.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A334608.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334663.P14091501089652923176

`∑{d}[n+1, A306682(#)]`
-/

namespace A334663.P14091501089652923176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A306682 d

end

end A334663.P14091501089652923176

noncomputable section

/-- A334663: a(n) = Sum_{d|n} gcd(sigma(d), pod(d)), where pod(k) is the product of the divisors of k (A007955).

Offset 1, canonical program `A334663.P14091501089652923176`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334663 (n : ℕ) : ℤ :=
  A334663.P14091501089652923176.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334663.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334731.P13809390634519434863

`∏{d}[n+1, A306682(#)]`
-/

namespace A334731.P13809390634519434863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A306682 d

end

end A334731.P13809390634519434863

noncomputable section

/-- A334731: a(n) = Product_{d|n} gcd(sigma(d), pod(d)) where sigma(k) is the sum of divisors of k (A000203) and pod(k) is the product of divisors of k (A007955).

Offset 1, canonical program `A334731.P13809390634519434863`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334731 (n : ℕ) : ℤ :=
  A334731.P13809390634519434863.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334731.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334840.P13982886850013945746

`A001316(record[A199398(n+4)])`
-/

namespace A334840.P13982886850013945746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199398 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A334840.P13982886850013945746

noncomputable section

/-- A334840: a(1) = 1, a(n) = a(n-1)/gcd(a(n-1),n) if this gcd is > 1, else a(n) = 4*a(n-1).

Offset 1, canonical program `A334840.P13982886850013945746`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334840 (n : ℕ) : ℤ :=
  A334840.P13982886850013945746.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334840.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334906.P3282194429805016584

`eq[1, A058078(n+1)]+1`
-/

namespace A334906.P3282194429805016584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058078 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A334906.P3282194429805016584

noncomputable section

/-- A334906: Numbers k such that binomial(prime(k+2), prime(k+1)) and binomial(prime(k+1), prime(k)) are coprime.

Offset 1, canonical program `A334906.P3282194429805016584`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1290 terms. -/
def A334906 (n : ℕ) : ℤ :=
  (A334906.P3282194429805016584.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1290 terms. -/
def A334906.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A335262.P797207076152892983

`C(abs(A056951(n+1)), 2)`
-/

namespace A335262.P797207076152892983
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose |A056951 (n + 1)|.toNat 2

end

end A335262.P797207076152892983

noncomputable section

/-- A335262: Triangle of triangular numbers, read by rows, constructed like this: Given a sequence t, start row 0 with t(0). Compute row n for n > 0 by reversing row n-1 and prepending t(n). The sequence t is here chosen as the triangular numbers.

Offset 0, canonical program `A335262.P797207076152892983`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A335262 (n : ℕ) : ℤ :=
  (A335262.P797207076152892983.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A335262.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A335302.P3858910890328538740

`and(A003817(A112591(n+1)), A065091(n+1))`
-/

namespace A335302.P3858910890328538740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003817 (A112591 (n + 1)).toNat) (A065091 (n + 1))

end

end A335302.P3858910890328538740

noncomputable section

/-- A335302: a(n) = prime(n+1) mod (2^k) where k is the least positive integer such that floor(prime(n)/(2^k)) = floor(prime(n+1)/(2^k)) and prime(n) denotes the n-th prime number.

Offset 1, canonical program `A335302.P3858910890328538740`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A335302 (n : ℕ) : ℤ :=
  A335302.P3858910890328538740.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A335302.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336126.P1639370391942920803

`2*A089309(n+1)-abs(A056594(n))`
-/

namespace A336126.P1639370391942920803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A089309 (n + 1) - |A056594 n|

end

end A336126.P1639370391942920803

noncomputable section

/-- A336126: Lexicographically earliest infinite sequence such that a(i) = a(j) => A000035(i) = A000035(j) and A007814(1+A000265(i)) = A007814(1+A000265(j)), for all i, j >= 1.

Offset 1, canonical program `A336126.P1639370391942920803`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336126 (n : ℕ) : ℤ :=
  A336126.P1639370391942920803.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336126.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336369.P11619332729759975965

`A000040(A336367(n+1))`
-/

namespace A336369.P11619332729759975965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A336367 (n + 1)).toNat

end

end A336369.P11619332729759975965

noncomputable section

/-- A336369: Primes p(n) such that gcd(n, prime(n)+prime(n+1)) > 1.

Offset 1, canonical program `A336369.P11619332729759975965`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6440 terms. -/
def A336369 (n : ℕ) : ℤ :=
  A336369.P11619332729759975965.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6440 terms. -/
def A336369.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336372.P9191988951573997672

`A065091(A336370(n+1)-1)`
-/

namespace A336372.P9191988951573997672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A336370 (n + 1) - 1).toNat

end

end A336372.P9191988951573997672

noncomputable section

/-- A336372: Primes prime(k) such that gcd(k, prime(k) + prime(k-1)) = 1.

Offset 1, canonical program `A336372.P9191988951573997672`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3574 terms. -/
def A336372 (n : ℕ) : ℤ :=
  A336372.P9191988951573997672.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3574 terms. -/
def A336372.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336923.P12863410329301155014

`A209229(A002131(n+1))`
-/

namespace A336923.P12863410329301155014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A002131 (n + 1)).toNat

end

end A336923.P12863410329301155014

noncomputable section

/-- A336923: a(n) = 1 if sigma(2n) - sigma(n) is a power of 2, otherwise 0.

Offset 1, canonical program `A336923.P12863410329301155014`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A209229, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336923 (n : ℕ) : ℤ :=
  A336923.P12863410329301155014.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A209229, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336923.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A337821.P3237854807616549852

`A089309(n+1)-1`
-/

namespace A337821.P3237854807616549852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (n + 1) - 1

end

end A337821.P3237854807616549852

noncomputable section

/-- A337821: For n >= 0, a(4n+1) = 0, a(4n+3) = a(2n+1) + 1, a(2n+2) = a(n+1).

Offset 1, canonical program `A337821.P3237854807616549852`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A089309, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A337821 (n : ℕ) : ℤ :=
  A337821.P3237854807616549852.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A089309, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A337821.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A338046.P4955059318956623703

`∑{d}[A006519(n+1), A000292((n+1)/#)]`
-/

namespace A338046.P4955059318956623703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000292 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A338046.P4955059318956623703

noncomputable section

/-- A338046: G.f.: Sum_{k>=0} x^(2^k) / (1 - x^(2^k))^4.

Offset 1, canonical program `A338046.P4955059318956623703`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338046 (n : ℕ) : ℤ :=
  A338046.P4955059318956623703.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338046.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338062.P2458723429357841651

`A143731(A107759(2*(n+2)))+A014601(n)`
-/

namespace A338062.P2458723429357841651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143731 (A107759 (2 * (n + 2))).toNat + A014601 n

end

end A338062.P2458723429357841651

noncomputable section

/-- A338062: Numbers k such that the Enots Wolley sequence A336957(k) is odd.

Offset 1, canonical program `A338062.P2458723429357841651`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1063 terms. -/
def A338062 (n : ℕ) : ℤ :=
  A338062.P2458723429357841651.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1063 terms. -/
def A338062.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338273.P14237024177931502386

`p?[A024675(n+1)+A024675(n+2)]`
-/

namespace A338273.P14237024177931502386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1) + A024675 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A338273.P14237024177931502386

noncomputable section

/-- A338273: a(n) is the sum of A338270(n) and the average of the primes immediately before and after A338270(n).

Offset 1, canonical program `A338273.P14237024177931502386`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1039 terms. -/
def A338273 (n : ℕ) : ℤ :=
  A338273.P14237024177931502386.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1039 terms. -/
def A338273.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338284.P11673069137575542411

`A171621(xor(1, n+2))+2`
-/

namespace A338284.P11673069137575542411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171621 (Nat.xor 1 (n + 2)) + 2

end

end A338284.P11673069137575542411

noncomputable section

/-- A338284: a(n) is the smallest nonsquare m such that the second partial quotient in the continued fraction for sqrt(m) equals n.

Offset 1, canonical program `A338284.P11673069137575542411`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338284 (n : ℕ) : ℤ :=
  A338284.P11673069137575542411.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338284.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338722.P15631712721895948208

`∑[A335616(n+1)]`
-/

namespace A338722.P15631712721895948208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335616 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338722.P15631712721895948208

noncomputable section

/-- A338722: Row sums in triangle A338721.

Offset 1, canonical program `A338722.P15631712721895948208`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338722 (n : ℕ) : ℤ :=
  A338722.P15631712721895948208.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338722.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338733.P13079581838449932790

`∑[A054843(n)]`
-/

namespace A338733.P13079581838449932790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338733.P13079581838449932790

noncomputable section

/-- A338733: Partial sums of A054843.

Offset 0, canonical program `A338733.P13079581838449932790`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338733 (n : ℕ) : ℤ :=
  A338733.P13079581838449932790.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338733.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338977.P6035933890508979909

`p?[A000040(n+1)*A007605(n+1)+1]`
-/

namespace A338977.P6035933890508979909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A007605 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A338977.P6035933890508979909

noncomputable section

/-- A338977: Primes p*A007953(p)+1 for p in A338976.

Offset 1, canonical program `A338977.P6035933890508979909`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 367 terms. -/
def A338977 (n : ℕ) : ℤ :=
  A338977.P6035933890508979909.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 367 terms. -/
def A338977.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A339240.P1769281192177751090

`n*A114121(n)`
-/

namespace A339240.P1769281192177751090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A114121 n

end

end A339240.P1769281192177751090

noncomputable section

/-- A339240: a(n) = n*2^(2*n-2) + n*binomial(2*n,n)/2.

Offset 0, canonical program `A339240.P1769281192177751090`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A339240 (n : ℕ) : ℤ :=
  A339240.P1769281192177751090.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A339240.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A339358.P3856827849411586667

`∑[A339356(A109613(n)+1)]`
-/

namespace A339358.P3856827849411586667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339356 (A109613 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339358.P3856827849411586667

noncomputable section

/-- A339358: Maximum number of copies of a 1234567 permutation pattern in an alternating (or zig-zag) permutation of length n + 11.

Offset 1, canonical program `A339358.P3856827849411586667`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339358 (n : ℕ) : ℤ :=
  A339358.P3856827849411586667.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339358.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A339864.P16161761576058441730

`p?[A008332(n+1)+A000040(n+1)]`
-/

namespace A339864.P16161761576058441730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008332 (n + 1) + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A339864.P16161761576058441730

noncomputable section

/-- A339864: Primes of the form p + sigma(p-1) for primes p.

Offset 1, canonical program `A339864.P16161761576058441730`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2806 terms. -/
def A339864 (n : ℕ) : ℤ :=
  A339864.P16161761576058441730.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2806 terms. -/
def A339864.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340956.P6232183328931227741

`eq[A000217(A000120(n)), A159918(n)]`
-/

namespace A340956.P6232183328931227741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A000120 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159918 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A340956.P6232183328931227741

noncomputable section

/-- A340956: Integers n such that s(n^2) = s(n)*(s(n)+1)/2, where s(n) is the sum of binary digits of n (A000120).

Offset 1, canonical program `A340956.P6232183328931227741`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 426 terms. -/
def A340956 (n : ℕ) : ℤ :=
  (A340956.P6232183328931227741.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 426 terms. -/
def A340956.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341239.P9386503938490555449

`A007069(n+1)+A001951(n+1)`
-/

namespace A341239.P9386503938490555449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007069 (n + 1) + A001951 (n + 1)

end

end A341239.P9386503938490555449

noncomputable section

/-- A341239: a(n) = floor(r*floor(s*n)), where r = 1 + sqrt(2) and s = sqrt(2).

Offset 1, canonical program `A341239.P9386503938490555449`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341239 (n : ℕ) : ℤ :=
  A341239.P9386503938490555449.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341239.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341249.P10730097604345596581

`A286909(n+1)+A007069(n+1)`
-/

namespace A341249.P10730097604345596581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286909 (n + 1) + A007069 (n + 1)

end

end A341249.P10730097604345596581

noncomputable section

/-- A341249: a(n) = floor(r*floor(s*n)), where r = 2 + sqrt(2) and s = sqrt(2).

Offset 1, canonical program `A341249.P10730097604345596581`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341249 (n : ℕ) : ℤ :=
  A341249.P10730097604345596581.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341249.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341254.P15874538325871161202

`A193766(n+1)+2*A194151(n+1)`
-/

namespace A341254.P15874538325871161202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193766 (n + 1) + 2 * A194151 (n + 1)

end

end A341254.P15874538325871161202

noncomputable section

/-- A341254: a(n) = floor(r*floor(r*n)), where r = (2 + sqrt(5))/2.

Offset 1, canonical program `A341254.P15874538325871161202`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341254 (n : ℕ) : ℤ :=
  A341254.P15874538325871161202.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341254.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341357.P1519009481148112330

`p?[gcd(A006094(n+1), A212769(n+2))]`
-/

namespace A341357.P1519009481148112330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006094 (n + 1)) (A212769 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A341357.P1519009481148112330

noncomputable section

/-- A341357: Primes p such that q*r == p (mod q+r) where q and r are the next primes after p.

Offset 1, canonical program `A341357.P1519009481148112330`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 363 terms. -/
def A341357 (n : ℕ) : ℤ :=
  (A341357.P1519009481148112330.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 363 terms. -/
def A341357.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341487.P2776632459971476031

`A008619(A057300(A000069(n+1)))`
-/

namespace A341487.P2776632459971476031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A057300 (A000069 (n + 1)).toNat).toNat

end

end A341487.P2776632459971476031

noncomputable section

/-- A341487: Second row of A341458.

Offset 1, canonical program `A341487.P2776632459971476031`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A341487 (n : ℕ) : ℤ :=
  A341487.P2776632459971476031.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A341487.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341593.P8227184771900020403

`∑{e}[n+1, #]-A333750(gcd(n+1, ∏{p}[n+1, (n+1)/#]))`
-/

namespace A341593.P8227184771900020403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) - A333750 (Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f2 n), (n + 1 : ℚ) / (p : ℚ))))

end

end A341593.P8227184771900020403

noncomputable section

/-- A341593: Number of superior prime-power divisors of n.

Offset 1, canonical program `A341593.P8227184771900020403`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341593 (n : ℕ) : ℤ :=
  A341593.P8227184771900020403.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341593.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341644.P8546407979308305030

`∑{e}[n+1, #]-A333750(n+1)`
-/

namespace A341644.P8546407979308305030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) - A333750 (n + 1)

end

end A341644.P8546407979308305030

noncomputable section

/-- A341644: Number of strictly superior prime-power divisors of n.

Offset 1, canonical program `A341644.P8546407979308305030`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341644 (n : ℕ) : ℤ :=
  A341644.P8546407979308305030.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341644.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341834.P10769813872850527674

`∑{d}[n+1, A007427(#)*A341832((n+1)/#)]`
-/

namespace A341834.P10769813872850527674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A341832 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A341834.P10769813872850527674

noncomputable section

/-- A341834: Dirichlet g.f.: 1 / zeta(s)^8.

Offset 1, canonical program `A341834.P10769813872850527674`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341834 (n : ℕ) : ℤ :=
  A341834.P10769813872850527674.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341834.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342148.P1672448664167085553

`A000045(A128227(n))%A004736(n+1)`
-/

namespace A342148.P1672448664167085553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 (A128227 n).toNat) (A004736 (n + 1))

end

end A342148.P1672448664167085553

noncomputable section

/-- A342148: Infinite square matrix A(m,n) = F(m) mod n, m,n >= 1, where F = Fibonacci = A000045, read by falling antidiagonals.

Offset 1, canonical program `A342148.P1672448664167085553`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A342148 (n : ℕ) : ℤ :=
  A342148.P1672448664167085553.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A342148.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342156.P9221010650730424222

`A039701(n+3)-A134323(n+4)`
-/

namespace A342156.P9221010650730424222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039701 (n + 3) - A134323 (n + 4)

end

end A342156.P9221010650730424222

noncomputable section

/-- A342156: For n > 2, a(n) = 0,1,2, or 3 when (prime(n+1) mod 6, prime(n) mod 6) = (1,1),(1,5),(5,1), or (5,5), respectively.

Offset 3, canonical program `A342156.P9221010650730424222`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A342156 (n : ℕ) : ℤ :=
  A342156.P9221010650730424222.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A342156.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342174.P4399683615547316971

`p?[A342173(n+1)]`
-/

namespace A342174.P4399683615547316971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342173 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A342174.P4399683615547316971

noncomputable section

/-- A342174: Primes in A342173.

Offset 1, canonical program `A342174.P4399683615547316971`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 937 terms. -/
def A342174 (n : ℕ) : ℤ :=
  A342174.P4399683615547316971.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 937 terms. -/
def A342174.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342379.P15174878887060137686

`A057428(A002265(n))+A002663(n)`
-/

namespace A342379.P15174878887060137686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A002265 n).toNat + A002663 n

end

end A342379.P15174878887060137686

noncomputable section

/-- A342379: Expansion of e.g.f. (exp(x)-1)*(exp(x) - x^3/6 - x^2/2 - x - 1).

Offset 0, canonical program `A342379.P15174878887060137686`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A342379 (n : ℕ) : ℤ :=
  A342379.P15174878887060137686.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A342379.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342460.P5036170238459632379

`A063524(A082343(n+1))`
-/

namespace A342460.P5036170238459632379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A082343 (n + 1)).toNat

end

end A342460.P5036170238459632379

noncomputable section

/-- A342460: a(n) = 1 if n > 1 and is divisible by the sum of its prime factors (with repetition), otherwise 0.

Offset 1, canonical program `A342460.P5036170238459632379`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342460 (n : ℕ) : ℤ :=
  A342460.P5036170238459632379.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342460.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342697.P17790718882655099389

`floor(A048733(n)/2)`
-/

namespace A342697.P17790718882655099389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A048733 n : ℚ) / 2⌋

end

end A342697.P17790718882655099389

noncomputable section

/-- A342697: For any number n with binary expansion Sum_{k >= 0} b(k) * 2^k, the binary expansion of a(n) is Sum_{k >= 0} floor((b(k) + b(k+1) + b(k+2))/2) * 2^k.

Offset 0, canonical program `A342697.P17790718882655099389`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048733, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342697 (n : ℕ) : ℤ :=
  A342697.P17790718882655099389.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048733, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342697.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A342993.P18221118977101743061

`p?[A111255(n+1)-2]+1`
-/

namespace A342993.P18221118977101743061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111255 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A342993.P18221118977101743061

noncomputable section

/-- A342993: Numbers of the form prime(i-1)+prime(i+1) that are the average of a twin prime pair.

Offset 1, canonical program `A342993.P18221118977101743061`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1173 terms. -/
def A342993 (n : ℕ) : ℤ :=
  A342993.P18221118977101743061.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1173 terms. -/
def A342993.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343008.P4630623842764349478

`Δ[A341928(n+1)]`
-/

namespace A343008.P4630623842764349478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341928 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A343008.P4630623842764349478

noncomputable section

/-- A343008: a(n) = F(n+5) * F(n+2) - 12 * (-1)^n where F(n) = A000045(n) are the Fibonacci numbers.

Offset 1, canonical program `A343008.P4630623842764349478`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 236 terms. -/
def A343008 (n : ℕ) : ℤ :=
  A343008.P4630623842764349478.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 236 terms. -/
def A343008.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343203.P7383915526188843710

`A340172(A165775(n))+A329972(n)`
-/

namespace A343203.P7383915526188843710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340172 (A165775 n).toNat + A329972 n

end

end A343203.P7383915526188843710

noncomputable section

/-- A343203: Sum of x- and y-coordinate of a point moving in a triangular spiral.

Offset 0, canonical program `A343203.P7383915526188843710`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A343203 (n : ℕ) : ℤ :=
  A343203.P7383915526188843710.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A343203.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343233.P1163040122208317958

`A115140(A025581(n))`
-/

namespace A343233.P1163040122208317958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115140 (A025581 n).toNat

end

end A343233.P1163040122208317958

noncomputable section

/-- A343233: Triangle read by rows: Riordan triangle T = (1 - x*c(x), x), with the generating function c of A000108 (Catalan).

Offset 0, canonical program `A343233.P1163040122208317958`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A343233 (n : ℕ) : ℤ :=
  A343233.P1163040122208317958.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A343233.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343306.P10768569373894334497

`eq[2, Δ[A091194(A008458(n))]]`
-/

namespace A343306.P10768569373894334497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091194 (A008458 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A343306.P10768569373894334497

noncomputable section

/-- A343306: Numbers k such that there is only 1 abundant number (A005101) among 6*k+1 through 6*k+5.

Offset 1, canonical program `A343306.P10768569373894334497`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 776 terms. -/
def A343306 (n : ℕ) : ℤ :=
  (A343306.P10768569373894334497.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 776 terms. -/
def A343306.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343386.P6946411365016645358

`A107587(n)-A100223(n+2)`
-/

namespace A343386.P6946411365016645358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107587 n - A100223 (n + 2)

end

end A343386.P6946411365016645358

noncomputable section

/-- A343386: Number of odd Motzkin n-paths, i.e., Motzkin n-paths with an odd number of up steps.

Offset 0, canonical program `A343386.P6946411365016645358`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A107587, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A343386 (n : ℕ) : ℤ :=
  A343386.P6946411365016645358.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A107587, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A343386.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A343545.P1905212227913174461

`∑{d}[n+1, A343518(#)]`
-/

namespace A343545.P1905212227913174461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A343518 d

end

end A343545.P1905212227913174461

noncomputable section

/-- A343545: a(n) = n * Sum_{d|n} binomial(d+3,4)/d.

Offset 1, canonical program `A343545.P1905212227913174461`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A343545 (n : ℕ) : ℤ :=
  A343545.P1905212227913174461.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A343545.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343720.P8691423366180289048

`A048152(A028310(n))`
-/

namespace A343720.P8691423366180289048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048152 (A028310 n).toNat

end

end A343720.P8691423366180289048

noncomputable section

/-- A343720: Triangle read by rows: T(n,k) = k^2 mod n for k = 0..n-1, n >= 1.

Offset 1, canonical program `A343720.P8691423366180289048`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A343720 (n : ℕ) : ℤ :=
  A343720.P8691423366180289048.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A343720.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344220.P16997399058361643495

`A175919(n)%A016116(A070939(n))`
-/

namespace A344220.P16997399058361643495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175919 n) (A016116 (A070939 n).toNat)

end

end A344220.P16997399058361643495

noncomputable section

/-- A344220: a(n) is the least k >= 0 such that n XOR k is a binary palindrome (where XOR denotes the bitwise XOR operator).

Offset 0, canonical program `A344220.P16997399058361643495`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A344220 (n : ℕ) : ℤ :=
  A344220.P16997399058361643495.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A344220.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344341.P1218540494126931545

`lt[(n+1)%A005811(n+1), 1]+1`
-/

namespace A344341.P1218540494126931545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A005811 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A344341.P1218540494126931545

noncomputable section

/-- A344341: Gray-code Niven numbers: numbers divisible by the number of 1's in their binary reflected Gray code (A005811).

Offset 1, canonical program `A344341.P1218540494126931545`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2448 terms. -/
def A344341 (n : ℕ) : ℤ :=
  (A344341.P1218540494126931545.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2448 terms. -/
def A344341.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344400.P15714405239848086013

`A344228(n+1)*(n+1)*(n+2)`
-/

namespace A344400.P15714405239848086013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344228 (n + 1) * ((n + 1) * (n + 2) : ℤ)

end

end A344400.P15714405239848086013

noncomputable section

/-- A344400: a(n) = [x^n] 6*(8*x^3 + 3*x + 1) / (1 - 4*x)^(7/2).

Offset 0, canonical program `A344400.P15714405239848086013`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A344228, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A344400 (n : ℕ) : ℤ :=
  A344400.P15714405239848086013.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A344228, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A344400.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A344598.P13180373970547759744

`∑{d}[n+1, #*A140434((n+1)/#)]`
-/

namespace A344598.P13180373970547759744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A140434 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344598.P13180373970547759744

noncomputable section

/-- A344598: a(n) = Sum_{k=1..n} phi(k) * (floor(n/k)^2 - floor((n-1)/k)^2).

Offset 1, canonical program `A344598.P13180373970547759744`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344598 (n : ℕ) : ℤ :=
  A344598.P13180373970547759744.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344598.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344602.P4017687423561774190

`lt[A002262(log2(A001316(n))), 1]`
-/

namespace A344602.P4017687423561774190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.roundAway (Real.logb 2 (A001316 n : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A344602.P4017687423561774190

noncomputable section

/-- A344602: Integers whose Hamming weight is triangular.

Offset 1, canonical program `A344602.P4017687423561774190`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344602 (n : ℕ) : ℤ :=
  (A344602.P4017687423561774190.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344602.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344683.P10035867171660024197

`∑{d}[n+1, A174466(#)*A247343((n+1)/#)]`
-/

namespace A344683.P10035867171660024197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A174466 d * A247343 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344683.P10035867171660024197

noncomputable section

/-- A344683: Dirichlet convolution of the Euler totient function with itself, applied twice.

Offset 1, canonical program `A344683.P10035867171660024197`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344683 (n : ℕ) : ℤ :=
  A344683.P10035867171660024197.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344683.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344717.P7261977043513756479

`A001791(n+1)+Δ[A002737(n)]`
-/

namespace A344717.P7261977043513756479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002737 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001791 (n + 1) + (f1 (n + 1) - f1 n)

end

end A344717.P7261977043513756479

noncomputable section

/-- A344717: a(n) = (3n - 9/2 - 1/n + 6/(n+1))*binomial(2n-2,n-1).

Offset 2, canonical program `A344717.P7261977043513756479`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A344717 (n : ℕ) : ℤ :=
  A344717.P7261977043513756479.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A344717.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345335.P2679634228096003161

`A000040(eq[0, A014499(n+1)%A000120(n+1)]+1)`
-/

namespace A345335.P2679634228096003161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014499 (n + 1)) (A000120 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A345335.P2679634228096003161

noncomputable section

/-- A345335: Primes p such that A014499(k) / A000120(k) is an integer, where k = A000720(p).

Offset 1, canonical program `A345335.P2679634228096003161`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1754 terms. -/
def A345335 (n : ℕ) : ℤ :=
  A345335.P2679634228096003161.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1754 terms. -/
def A345335.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345668.P4398126403795898940

`A175856(n+2)-1`
-/

namespace A345668.P4398126403795898940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175856 (n + 2) - 1

end

end A345668.P4398126403795898940

noncomputable section

/-- A345668: Last prime minus distance to last prime.

Offset 3, canonical program `A345668.P4398126403795898940`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A175856, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A345668 (n : ℕ) : ℤ :=
  A345668.P4398126403795898940.a (n - 3)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A175856, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A345668.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A345727.P2376584514298467307

`A180617(n+1)-A008864(n+1)`
-/

namespace A345727.P2376584514298467307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180617 (n + 1) - A008864 (n + 1)

end

end A345727.P2376584514298467307

noncomputable section

/-- A345727: a(n) = (prime(n)+1) * prime(n+1).

Offset 1, canonical program `A345727.P2376584514298467307`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008864, A180617, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A345727 (n : ℕ) : ℤ :=
  A345727.P2376584514298467307.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008864, A180617, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A345727.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A346418.P2093234214267519025

`gcd(A000040(A072505(n+1)), A000079(n))`
-/

namespace A346418.P2093234214267519025
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000040 (A072505 (n + 1)).toNat) (A000079 n)

end

end A346418.P2093234214267519025

noncomputable section

/-- A346418: a(n) is the exponent of the largest power of n that divides the least common multiple of {1,2,...,n} (A003418). a(1) = 1.

Offset 1, canonical program `A346418.P2093234214267519025`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A346418 (n : ℕ) : ℤ :=
  (A346418.P2093234214267519025.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A346418.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A346621.P15232566686914142935

`∑[(n+1)*A215480(n+1)]`
-/

namespace A346621.P15232566686914142935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A215480 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346621.P15232566686914142935

noncomputable section

/-- A346621: a(n) = Sum_{ x <= n : omega(x) = 2 } x.

Offset 1, canonical program `A346621.P15232566686914142935`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A346621 (n : ℕ) : ℤ :=
  A346621.P15232566686914142935.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A346621.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A346622.P12109416863354417006

`∑[and(n+1, A215480(n+1))]`
-/

namespace A346622.P12109416863354417006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A215480 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346622.P12109416863354417006

noncomputable section

/-- A346622: a(n) = card{ x <= n : x odd and omega(x) = 2 }.

Offset 1, canonical program `A346622.P12109416863354417006`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A346622 (n : ℕ) : ℤ :=
  A346622.P12109416863354417006.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A346622.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A346623.P1530388966468851521

`∑[(n+1)*A215480(A141310(n))]`
-/

namespace A346623.P1530388966468851521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A215480 (A141310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346623.P1530388966468851521

noncomputable section

/-- A346623: a(n) = Sum_{ x <= n : x odd and omega(x) = 2 } x.

Offset 1, canonical program `A346623.P1530388966468851521`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A346623 (n : ℕ) : ℤ :=
  A346623.P1530388966468851521.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A346623.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A346956.P6151444584231932237

`eq[A187680(n+1), A306682(n+1)]+1`
-/

namespace A346956.P6151444584231932237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306682 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A346956.P6151444584231932237

noncomputable section

/-- A346956: Numbers k such that A000203(k) and A007955(k) are both divisible by A187680(k).

Offset 1, canonical program `A346956.P6151444584231932237`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 466 terms. -/
def A346956 (n : ℕ) : ℤ :=
  (A346956.P6151444584231932237.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 466 terms. -/
def A346956.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347156.P17222758382162862485

`A098002(gcd(n+1, ∏{p}[n+1, (n+1)/#]))`
-/

namespace A347156.P17222758382162862485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098002 (Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))))

end

end A347156.P17222758382162862485

noncomputable section

/-- A347156: Sum of squares of distinct prime divisors of n that are < sqrt(n).

Offset 1, canonical program `A347156.P17222758382162862485`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347156 (n : ℕ) : ℤ :=
  A347156.P17222758382162862485.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347156.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347650.P6970328061649287344

`A056594(n)+2*A302654(n+1)`
-/

namespace A347650.P6970328061649287344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n + 2 * A302654 (n + 1)

end

end A347650.P6970328061649287344

noncomputable section

/-- A347650: Number of minimum total dominating sets in the n-pan graph (for n > 2).

Offset 1, canonical program `A347650.P6970328061649287344`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347650 (n : ℕ) : ℤ :=
  A347650.P6970328061649287344.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347650.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348281.P13666339972216346834

`A329347(∏{p}[n+1, #])`
-/

namespace A348281.P13666339972216346834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329347 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A348281.P13666339972216346834

noncomputable section

/-- A348281: Sum of the arithmetic derivatives of the squarefree divisors of n: a(n) = Sum_{d|n} d' * mu(d)^2.

Offset 1, canonical program `A348281.P13666339972216346834`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348281 (n : ℕ) : ℤ :=
  A348281.P13666339972216346834.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348281.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348295.P9530396092402015440

`∑[A033999(A097508(n))]-1`
-/

namespace A348295.P9530396092402015440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A097508 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A348295.P9530396092402015440

noncomputable section

/-- A348295: a(n) = Sum_{k=1..n} (-1)^(floor(k*(sqrt(2)-1))).

Offset 0, canonical program `A348295.P9530396092402015440`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348295 (n : ℕ) : ℤ :=
  A348295.P9530396092402015440.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348295.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348906.P13398329411411546203

`eq[1, A010052(A159918(n))]²`
-/

namespace A348906.P13398329411411546203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A159918 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A348906.P13398329411411546203

noncomputable section

/-- A348906: Squares with a square number of 1's in their binary expansion.

Offset 1, canonical program `A348906.P13398329411411546203`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1563 terms. -/
def A348906 (n : ℕ) : ℤ :=
  (A348906.P13398329411411546203.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1563 terms. -/
def A348906.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348931.P4884177580303367857

`∩[or(1, 3*n+1), A087943(n+1)]`
-/

namespace A348931.P4884177580303367857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087943 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348931.P4884177580303367857

noncomputable section

/-- A348931: Numbers k congruent to 1 or 5 mod 6, for which A348930(k) < k.

Offset 1, canonical program `A348931.P4884177580303367857`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2969 terms. -/
def A348931 (n : ℕ) : ℤ :=
  (A348931.P4884177580303367857.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2969 terms. -/
def A348931.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349341.P4668944741167325365

`(-1)^n*A332793((n+1)/and(n+1, -(n+1)))`
-/

namespace A349341.P4668944741167325365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A332793 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat

end

end A349341.P4668944741167325365

noncomputable section

/-- A349341: Dirichlet inverse of A026741, which is defined as n if n is odd, n/2 if n is even.

Offset 1, canonical program `A349341.P4668944741167325365`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349341 (n : ℕ) : ℤ :=
  A349341.P4668944741167325365.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349341.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349427.P417037996028307768

`Δ[∑[C(n, 2)]*A120588(n)]`
-/

namespace A349427.P417037996028307768
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) * A120588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A349427.P417037996028307768

noncomputable section

/-- A349427: a(n) = ((n+1)^2 - 2) * binomial(2*n-2,n-1) / 2.

Offset 0, canonical program `A349427.P417037996028307768`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A349427 (n : ℕ) : ℤ :=
  A349427.P417037996028307768.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A349427.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349554.P15839873787135527783

`A054108(n+1)+4*(-1)^(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A349554.P15839873787135527783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054108 (n + 1) + 4 * (-1) ^ (n + 1)

end

end A349554.P15839873787135527783

noncomputable section

/-- A349554: a(n) = A054108(n) + 4*(-1)^n.

Offset 1, canonical program `A349554.P15839873787135527783`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054108, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349554 (n : ℕ) : ℤ :=
  A349554.P15839873787135527783.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054108, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349554.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349829.P13499404963947070087

`record[n*char[A230631(n)]]`
-/

namespace A349829.P13499404963947070087
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230631 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349829.P13499404963947070087

noncomputable section

/-- A349829: Numbers k such that there is a number m with m + s_4(m) = k, where s_b(m) = sum of digits in base-b expansion of m.

Offset 1, canonical program `A349829.P13499404963947070087`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7903 terms. -/
def A349829 (n : ℕ) : ℤ :=
  (A349829.P13499404963947070087.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7903 terms. -/
def A349829.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A350166.P8703411876236404235

`∑[A050469(n+1)]`
-/

namespace A350166.P8703411876236404235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050469 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350166.P8703411876236404235

noncomputable section

/-- A350166: Partial sums of A050469.

Offset 1, canonical program `A350166.P8703411876236404235`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A350166 (n : ℕ) : ℤ :=
  A350166.P8703411876236404235.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A350166.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A350222.P11549591143098908976

`A309082((n+1)^3)`
-/

namespace A350222.P11549591143098908976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309082 ((n + 1) ^ 3)

end

end A350222.P11549591143098908976

noncomputable section

/-- A350222: a(n) = Sum_{k=1..n} (-1)^(k+1) * floor((n/k)^3).

Offset 1, canonical program `A350222.P11549591143098908976`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A309082, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A350222 (n : ℕ) : ℤ :=
  A350222.P11549591143098908976.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A309082, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A350222.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A350493.P999112801028716783

`A065730(n+1)%(n+1)`
-/

namespace A350493.P999112801028716783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065730 (n + 1)) (n + 1 : ℤ)

end

end A350493.P999112801028716783

noncomputable section

/-- A350493: a(n) = floor(sqrt(prime(n)))^2 mod n.

Offset 1, canonical program `A350493.P999112801028716783`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A350493 (n : ℕ) : ℤ :=
  A350493.P999112801028716783.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A350493.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A350653.P4552534748012863996

`A322938(n)-n`
-/

namespace A350653.P4552534748012863996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322938 n - (n : ℤ)

end

end A350653.P4552534748012863996

noncomputable section

/-- A350653: a(n) is the number of weak compositions of n into n-1 parts in which at least one part is zero.

Offset 2, canonical program `A350653.P4552534748012863996`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A350653 (n : ℕ) : ℤ :=
  A350653.P4552534748012863996.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A350653.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A352087.P2052615442428702218

`eq[0, A175919(A003726(n+1))]`
-/

namespace A352087.P2052615442428702218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175919 (A003726 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A352087.P2052615442428702218

noncomputable section

/-- A352087: Numbers whose minimal (or greedy) tribonacci representation (A278038) is palindromic.

Offset 1, canonical program `A352087.P2052615442428702218`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A352087 (n : ℕ) : ℤ :=
  (A352087.P2052615442428702218.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A352087.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353558.P5510355116585189927

`A000035(n+1)-A353557(n+1)`
-/

namespace A353558.P5510355116585189927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) - A353557 (n + 1)

end

end A353558.P5510355116585189927

noncomputable section

/-- A353558: a(n) = 1 if n is an odd number with an odd number of prime factors (counted with multiplicity), otherwise 0.

Offset 1, canonical program `A353558.P5510355116585189927`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353557, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353558 (n : ℕ) : ℤ :=
  A353558.P5510355116585189927.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353557, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353558.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353676.P532583491734346456

`A000035(n+1)*A215480(n+1)`
-/

namespace A353676.P532583491734346456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) * A215480 (n + 1)

end

end A353676.P532583491734346456

noncomputable section

/-- A353676: a(n) = 1 if n is an odd number with exactly 2 distinct prime factors, otherwise 0.

Offset 1, canonical program `A353676.P532583491734346456`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A215480, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353676 (n : ℕ) : ℤ :=
  A353676.P532583491734346456.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A215480, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353676.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353751.P11484978270227039797

`A051027(n+1)/A318059(n+1)`
-/

namespace A353751.P11484978270227039797
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051027 (n + 1) : ℚ) / (A318059 (n + 1) : ℚ)

end

end A353751.P11484978270227039797

noncomputable section

/-- A353751: a(n) = gcd(n, sigma(sigma(n))), where sigma is the sum of divisors function.

Offset 1, canonical program `A353751.P11484978270227039797`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318059, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353751 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A353751.P11484978270227039797.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318059, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353751.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353986.P12545540184002527554

`eq[0, Δ[A011373(n)]]`
-/

namespace A353986.P12545540184002527554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011373 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A353986.P12545540184002527554

noncomputable section

/-- A353986: Numbers k such that Fibonacci(k) and Fibonacci(k+1) have the same binary weight (A000120).

Offset 1, canonical program `A353986.P12545540184002527554`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A353986 (n : ℕ) : ℤ :=
  (A353986.P12545540184002527554.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A353986.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A354357.P12412967713382681019

`filter[A354356(n+1), A187074(#)]`
-/

namespace A354357.P12412967713382681019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354356 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187074 (f1 j).toNat = 1) n)

end

end A354357.P12412967713382681019

noncomputable section

/-- A354357: Numbers k, not divisible by 2 or 3, such that sigma(k) is 3-smooth (has no larger prime factors than 3).

Offset 1, canonical program `A354357.P12412967713382681019`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 427 terms. -/
def A354357 (n : ℕ) : ℤ :=
  A354357.P12412967713382681019.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 427 terms. -/
def A354357.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A356829.P17230402961984168518

`2^(2*(n+1))-A286185(n+1)-1`
-/

namespace A356829.P17230402961984168518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (2 * (n + 1)) : ℤ) - A286185 (n + 1) - 1

end

end A356829.P17230402961984168518

noncomputable section

/-- A356829: Number of vertex cuts in the n-Möbius ladder.

Offset 1, canonical program `A356829.P17230402961984168518`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A286185, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A356829 (n : ℕ) : ℤ :=
  A356829.P17230402961984168518.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A286185, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A356829.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A357372.P4923733421453701218

`A003057(n+2)/gcd(A128227(n)², A003057(n+2))`
-/

namespace A357372.P4923733421453701218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003057 (n + 2) : ℚ) / (Int.gcd (A128227 n ^ 2) (A003057 (n + 2)) : ℚ)

end

end A357372.P4923733421453701218

noncomputable section

/-- A357372: Square array A(n, k), n, k > 0, read by antidiagonals; A(n, k) is the numerator of 1/n + 1/k.

Offset 1, canonical program `A357372.P4923733421453701218`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A357372 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A357372.P4923733421453701218.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A357372.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A359099.P11950995209618868671

`A088842(n+1)*A242603(n+1)`
-/

namespace A359099.P11950995209618868671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088842 (n + 1) * A242603 (n + 1)

end

end A359099.P11950995209618868671

noncomputable section

/-- A359099: a(n) = (1/6) * Sum_{d|n} phi(7 * d).

Offset 1, canonical program `A359099.P11950995209618868671`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359099 (n : ℕ) : ℤ :=
  A359099.P11950995209618868671.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359099.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A363856.P13165153229678481958

`A363806(7*(n+1)-4)`
-/

namespace A363856.P13165153229678481958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363806 (7 * (n + 1) - 4)

end

end A363856.P13165153229678481958

noncomputable section

/-- A363856: Number of divisors of 7*n-4 of form 7*k+6.

Offset 1, canonical program `A363856.P13165153229678481958`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A363806, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363856 (n : ℕ) : ℤ :=
  A363856.P13165153229678481958.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A363806, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363856.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363860.P4900529535923147109

`A363806(7*(n+1)-1)`
-/

namespace A363860.P4900529535923147109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363806 (7 * (n + 1) - 1)

end

end A363860.P4900529535923147109

noncomputable section

/-- A363860: Number of divisors of 7*n-1 of form 7*k+4.

Offset 1, canonical program `A363860.P4900529535923147109`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A363806, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363860 (n : ℕ) : ℤ :=
  A363860.P4900529535923147109.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A363806, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363860.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363888.P18119979700684300847

`A363806(7*(n+1)-5)`
-/

namespace A363888.P18119979700684300847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363806 (7 * (n + 1) - 5)

end

end A363888.P18119979700684300847

noncomputable section

/-- A363888: Number of divisors of 7*n-5 of form 7*k+4.

Offset 1, canonical program `A363888.P18119979700684300847`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A363806, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363888 (n : ℕ) : ℤ :=
  A363888.P18119979700684300847.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A363806, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363888.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363890.P10152016517738257759

`A078182(3*(n+1)-1)`
-/

namespace A363890.P10152016517738257759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078182 (3 * (n + 1) - 1)

end

end A363890.P10152016517738257759

noncomputable section

/-- A363890: Sum of divisors of 3*n-1 of form 3*k+2.

Offset 1, canonical program `A363890.P10152016517738257759`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078182, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363890 (n : ℕ) : ℤ :=
  A363890.P10152016517738257759.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078182, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363890.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A364096.P7742146963870490233

`A363925(5*n+4)`
-/

namespace A364096.P7742146963870490233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363925 (5 * n + 4)

end

end A364096.P7742146963870490233

noncomputable section

/-- A364096: Expansion of Sum_{k>0} k * x^(4*k-3) / (1 - x^(5*k-4)).

Offset 1, canonical program `A364096.P7742146963870490233`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A364096 (n : ℕ) : ℤ :=
  A364096.P7742146963870490233.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A364096.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364097.P16769132018237927195

`A363925(A016885(n))`
-/

namespace A364097.P16769132018237927195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363925 (A016885 n).toNat

end

end A364097.P16769132018237927195

noncomputable section

/-- A364097: Expansion of Sum_{k>0} k * x^(3*k-2) / (1 - x^(5*k-4)).

Offset 1, canonical program `A364097.P16769132018237927195`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A364097 (n : ℕ) : ℤ :=
  A364097.P16769132018237927195.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A364097.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364098.P15621258973593762124

`A363925(5*n+2)`
-/

namespace A364098.P15621258973593762124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363925 (5 * n + 2)

end

end A364098.P15621258973593762124

noncomputable section

/-- A364098: Expansion of Sum_{k>0} k * x^(2*k-1) / (1 - x^(5*k-4)).

Offset 1, canonical program `A364098.P15621258973593762124`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A364098 (n : ℕ) : ℤ :=
  A364098.P15621258973593762124.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A364098.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364099.P10050703620716174614

`A363925(5*n+1)`
-/

namespace A364099.P10050703620716174614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363925 (5 * n + 1)

end

end A364099.P10050703620716174614

noncomputable section

/-- A364099: Expansion of Sum_{k>0} k * x^k / (1 - x^(5*k-4)).

Offset 1, canonical program `A364099.P10050703620716174614`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A364099 (n : ℕ) : ℤ :=
  A364099.P10050703620716174614.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A364099.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A368474.P7622636264866400950

`A005361(A197680(n+1))`
-/

namespace A368474.P7622636264866400950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A197680 (n + 1)).toNat

end

end A368474.P7622636264866400950

noncomputable section

/-- A368474: Product of exponents of prime factorization of the numbers whose exponents in their prime power factorization are squares (A197680).

Offset 1, canonical program `A368474.P7622636264866400950`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, A197680, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368474 (n : ℕ) : ℤ :=
  A368474.P7622636264866400950.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, A197680, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368474.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A369935.P16814839049346386395`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A197680, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A369935 (n : ℕ) : ℤ :=
  A369935.P16814839049346386395.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A197680, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A369935.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A370566.P3913357575439077810`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A370181, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A370566 (n : ℕ) : ℤ :=
  A370566.P3913357575439077810.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A370181, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A370566.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A373156.P12007324002122430818

`C(A214681(n+1), n+1)`
-/

namespace A373156.P12007324002122430818
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A214681 (n + 1)).toNat (n + 1)

end

end A373156.P12007324002122430818

noncomputable section

/-- A373156: a(n) = 1 if the 2-adic and the 3-adic valuations of n are equal, otherwise 0.

Offset 1, canonical program `A373156.P12007324002122430818`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373156 (n : ℕ) : ℤ :=
  (A373156.P12007324002122430818.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373156.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A374327.P9816410102867330981`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A369938, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A374327 (n : ℕ) : ℤ :=
  A374327.P9816410102867330981.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A369938, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A374327.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A374852.P11494953044033864477

`1/3*A054640(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A374852.P11494953044033864477
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 3 * (A054640 (n + 1) : ℚ)

end

end A374852.P11494953044033864477

noncomputable section

/-- A374852: a(n) = (1/3)*A054640(n) for n >= 1.

Offset 1, canonical program `A374852.P11494953044033864477`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054640, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374852 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A374852.P11494953044033864477.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054640, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374852.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A374900.P15230006939950330574

`A363853(n+1)-A363858(n+1)`
-/

namespace A374900.P15230006939950330574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363853 (n + 1) - A363858 (n + 1)

end

end A374900.P15230006939950330574

noncomputable section

/-- A374900: Expansion of Sum_{k in Z} x^k / (1 - x^(7*k+1)).

Offset 0, canonical program `A374900.P15230006939950330574`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374900 (n : ℕ) : ℤ :=
  A374900.P15230006939950330574.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374900.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375148.P10494542387992813350

`A363852(n+1)-A363857(n+1)`
-/

namespace A375148.P10494542387992813350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363852 (n + 1) - A363857 (n + 1)

end

end A375148.P10494542387992813350

noncomputable section

/-- A375148: Expansion of Sum_{k in Z} x^k / (1 - x^(7*k+2)).

Offset 0, canonical program `A375148.P10494542387992813350`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375148 (n : ℕ) : ℤ :=
  A375148.P10494542387992813350.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375148.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375149.P2216572402173144936

`A363850(n+1)-A363855(n+1)`
-/

namespace A375149.P2216572402173144936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363850 (n + 1) - A363855 (n + 1)

end

end A375149.P2216572402173144936

noncomputable section

/-- A375149: Expansion of Sum_{k in Z} x^k / (1 - x^(7*k+4)).

Offset 0, canonical program `A375149.P2216572402173144936`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375149 (n : ℕ) : ℤ :=
  A375149.P2216572402173144936.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375149.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375150.P910805378827683235

`A362845(n+1)-A363854(n+1)`
-/

namespace A375150.P910805378827683235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362845 (n + 1) - A363854 (n + 1)

end

end A375150.P910805378827683235

noncomputable section

/-- A375150: Expansion of Sum_{k in Z} x^k / (1 - x^(7*k+5)).

Offset 0, canonical program `A375150.P910805378827683235`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375150 (n : ℕ) : ℤ :=
  A375150.P910805378827683235.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375150.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A377565.P6887549586258778470

`(n+1)*A097327(n+1)`
-/

namespace A377565.P6887549586258778470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A097327 (n + 1)

end

end A377565.P6887549586258778470

noncomputable section

/-- A377565: a(n) is the least multiple of n with more decimal digits than n.

Offset 1, canonical program `A377565.P6887549586258778470`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A097327, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A377565 (n : ℕ) : ℤ :=
  A377565.P6887549586258778470.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A097327, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A377565.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A377627.P16180455227699645803

`A306847(2*n)`
-/

namespace A377627.P16180455227699645803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306847 (2 * n)

end

end A377627.P16180455227699645803

noncomputable section

/-- A377627: Cogrowth sequence of the 12-element group C6 X C2 = .

Offset 0, canonical program `A377627.P16180455227699645803`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A377627 (n : ℕ) : ℤ :=
  A377627.P16180455227699645803.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A377627.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378031.P538866673895415262

`A306847(3*n)`
-/

namespace A378031.P538866673895415262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306847 (3 * n)

end

end A378031.P538866673895415262

noncomputable section

/-- A378031: Cogrowth sequence for the 18-element group C6 X C3 = .

Offset 0, canonical program `A378031.P538866673895415262`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A378031 (n : ℕ) : ℤ :=
  A378031.P538866673895415262.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A378031.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A387874.P13171271536536116590

`A306847(Δ[n²])`
-/

namespace A387874.P13171271536536116590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306847 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A387874.P13171271536536116590

noncomputable section

/-- A387874: a(n) = Sum_{k=0..n} binomial(2*n+1,6*k).

Offset 0, canonical program `A387874.P13171271536536116590`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A387874 (n : ℕ) : ℤ :=
  A387874.P13171271536536116590.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A387874.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A390764.P3120911945846591276

`A055642(A202267(n+1))`
-/

namespace A390764.P3120911945846591276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A202267 (n + 1)).toNat

end

end A390764.P3120911945846591276

noncomputable section

/-- A390764: Number of digits in base-6 representation of n.

Offset 0, canonical program `A390764.P3120911945846591276`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1297 terms. -/
def A390764 (n : ℕ) : ℤ :=
  A390764.P3120911945846591276.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1297 terms. -/
def A390764.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A391358.P1151688618796119787

`A389809(n+1)+A104887(n+1)`
-/

namespace A391358.P1151688618796119787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389809 (n + 1) + A104887 (n + 1)

end

end A391358.P1151688618796119787

noncomputable section

/-- A391358: Rectangular array R read by falling antidiagonals: R(n,k) = prime(k) + prime(n+k).

Offset 1, canonical program `A391358.P1151688618796119787`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391358 (n : ℕ) : ℤ :=
  A391358.P1151688618796119787.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391358.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391384.P18148672950887766433

`p?[A275418(n+1)]`
-/

namespace A391384.P18148672950887766433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275418 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A391384.P18148672950887766433

noncomputable section

/-- A391384: Primes p such that p - 1 has exactly as many odd divisors as p + 1.

Offset 1, canonical program `A391384.P18148672950887766433`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 792 terms. -/
def A391384 (n : ℕ) : ℤ :=
  A391384.P18148672950887766433.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 792 terms. -/
def A391384.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392332.P10626276045092877156

`A256562(n+1)-A091194(n+1)`
-/

namespace A392332.P10626276045092877156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256562 (n + 1) - A091194 (n + 1)

end

end A392332.P10626276045092877156

noncomputable section

/-- A392332: a(n) is the excess of deficient numbers over abundant numbers in the first n positive integers.

Offset 1, canonical program `A392332.P10626276045092877156`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091194, A256562, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A392332 (n : ℕ) : ℤ :=
  A392332.P10626276045092877156.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091194, A256562, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A392332.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A394426.P7725940493784829555`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049419, A197680, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A394426 (n : ℕ) : ℤ :=
  A394426.P7725940493784829555.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049419, A197680, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A394426.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A395962.P3547014246278371736

`2*n+A395961(2*n)`
-/

namespace A395962.P3547014246278371736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + A395961 (2 * n)

end

end A395962.P3547014246278371736

noncomputable section

/-- A395962: Numbers k such that A395961(k) = 0.

Offset 1, canonical program `A395962.P3547014246278371736`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A395961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A395962 (n : ℕ) : ℤ :=
  A395962.P3547014246278371736.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A395961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A395962.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A395963.P4100947188399208588

`2*n+1-A395961(2*n)`
-/

namespace A395963.P4100947188399208588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (1 - A395961 (2 * n))

end

end A395963.P4100947188399208588

noncomputable section

/-- A395963: Numbers k such that A395961(k) = 1.

Offset 1, canonical program `A395963.P4100947188399208588`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A395961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A395963 (n : ℕ) : ℤ :=
  A395963.P4100947188399208588.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A395961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A395963.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A313078.P17380493994389403351

`A313692(n)-A330025(n)`
-/

namespace A313078.P17380493994389403351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313692 n - A330025 n

end

end A313078.P17380493994389403351

noncomputable section

/-- A313078: Coordination sequence Gal.5.67.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313078.P17380493994389403351`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2414 terms. -/
def A313078 (n : ℕ) : ℤ :=
  A313078.P17380493994389403351.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2414 terms. -/
def A313078.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313169.P6994078110540199840

`A313119(n)+A313174(n)-A313126(n)`
-/

namespace A313169.P6994078110540199840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313119 n + (A313174 n - A313126 n)

end

end A313169.P6994078110540199840

noncomputable section

/-- A313169: Coordination sequence Gal.6.479.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313169.P6994078110540199840`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2351 terms. -/
def A313169 (n : ℕ) : ℤ :=
  A313169.P6994078110540199840.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2351 terms. -/
def A313169.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313212.P14429204760756307954

`A004396(A310501(n)+2*n)`
-/

namespace A313212.P14429204760756307954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A310501 n + (2 * n : ℤ)).toNat

end

end A313212.P14429204760756307954

noncomputable section

/-- A313212: Coordination sequence Gal.6.263.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313212.P14429204760756307954`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1411 terms. -/
def A313212 (n : ℕ) : ℤ :=
  A313212.P14429204760756307954.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1411 terms. -/
def A313212.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313540.P7329295065648553894

`abs(A008592(n)-(A311924(n)+n))`
-/

namespace A313540.P7329295065648553894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - (A311924 n + (n : ℤ))|

end

end A313540.P7329295065648553894

noncomputable section

/-- A313540: Coordination sequence Gal.6.151.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313540.P7329295065648553894`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2462 terms. -/
def A313540 (n : ℕ) : ℤ :=
  A313540.P7329295065648553894.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2462 terms. -/
def A313540.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313560.P11035165185372614413

`A312927(2*n)-4*n`
-/

namespace A313560.P11035165185372614413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312927 (2 * n) - (4 * n : ℤ)

end

end A313560.P11035165185372614413

noncomputable section

/-- A313560: Coordination sequence Gal.6.201.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313560.P11035165185372614413`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2436 terms. -/
def A313560 (n : ℕ) : ℤ :=
  A313560.P11035165185372614413.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2436 terms. -/
def A313560.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313583.P10974201529935160222

`A047263(A311257(n)+1)`
-/

namespace A313583.P10974201529935160222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (A311257 n + 1).toNat

end

end A313583.P10974201529935160222

noncomputable section

/-- A313583: Coordination sequence Gal.6.345.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313583.P10974201529935160222`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2382 terms. -/
def A313583 (n : ℕ) : ℤ :=
  A313583.P10974201529935160222.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2382 terms. -/
def A313583.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313620.P513798064610013280

`abs(A008592(n)-A313831(n))`
-/

namespace A313620.P513798064610013280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313831 n|

end

end A313620.P513798064610013280

noncomputable section

/-- A313620: Coordination sequence Gal.6.348.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313620.P513798064610013280`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2361 terms. -/
def A313620 (n : ℕ) : ℤ :=
  A313620.P513798064610013280.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2361 terms. -/
def A313620.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313683.P3336220210830735973

`A314828(n)+A004396(n-A004396(n))`
-/

namespace A313683.P3336220210830735973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314828 n + A004396 ((n : ℤ) - A004396 n).toNat

end

end A313683.P3336220210830735973

noncomputable section

/-- A313683: Coordination sequence Gal.5.100.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313683.P3336220210830735973`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2474 terms. -/
def A313683 (n : ℕ) : ℤ :=
  A313683.P3336220210830735973.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2474 terms. -/
def A313683.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313684.P7430096167787627216

`A314094(n)-A002264(n+1)`
-/

namespace A313684.P7430096167787627216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314094 n - A002264 (n + 1)

end

end A313684.P7430096167787627216

noncomputable section

/-- A313684: Coordination sequence Gal.6.259.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313684.P7430096167787627216`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2321 terms. -/
def A313684 (n : ℕ) : ℤ :=
  A313684.P7430096167787627216.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2321 terms. -/
def A313684.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313711.P360949876952997669

`A313572(n)+Δ[A011864(n)]`
-/

namespace A313711.P360949876952997669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313572 n + (f1 (n + 1) - f1 n)

end

end A313711.P360949876952997669

noncomputable section

/-- A313711: Coordination sequence Gal.6.251.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313711.P360949876952997669`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2366 terms. -/
def A313711 (n : ℕ) : ℤ :=
  A313711.P360949876952997669.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2366 terms. -/
def A313711.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313729.P4779100435841205839

`abs(A008592(n)-(A311196(n)+n))`
-/

namespace A313729.P4779100435841205839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - (A311196 n + (n : ℤ))|

end

end A313729.P4779100435841205839

noncomputable section

/-- A313729: Coordination sequence Gal.6.134.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313729.P4779100435841205839`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2417 terms. -/
def A313729 (n : ℕ) : ℤ :=
  A313729.P4779100435841205839.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2417 terms. -/
def A313729.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313752.P1655055158517470603

`A314111(n)-A330025(n-A330025(n))`
-/

namespace A313752.P1655055158517470603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314111 n - A330025 ((n : ℤ) - A330025 n).toNat

end

end A313752.P1655055158517470603

noncomputable section

/-- A313752: Coordination sequence Gal.5.300.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313752.P1655055158517470603`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2323 terms. -/
def A313752 (n : ℕ) : ℤ :=
  A313752.P1655055158517470603.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2323 terms. -/
def A313752.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313754.P6499129976907502351

`A314903(n)+A002264(n+1)`
-/

namespace A313754.P6499129976907502351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314903 n + A002264 (n + 1)

end

end A313754.P6499129976907502351

noncomputable section

/-- A313754: Coordination sequence Gal.4.142.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313754.P6499129976907502351`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2294 terms. -/
def A313754 (n : ℕ) : ℤ :=
  A313754.P6499129976907502351.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2294 terms. -/
def A313754.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313795.P7231696146047566351

`A314898(n)+∑[A021913(A032766(n))]`
-/

namespace A313795.P7231696146047566351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 (A032766 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314898 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313795.P7231696146047566351

noncomputable section

/-- A313795: Coordination sequence Gal.6.647.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313795.P7231696146047566351`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2270 terms. -/
def A313795 (n : ℕ) : ℤ :=
  A313795.P7231696146047566351.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2270 terms. -/
def A313795.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313869.P2714584555058698184

`abs(10*n-A313572(n))`
-/

namespace A313869.P2714584555058698184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A313572 n|

end

end A313869.P2714584555058698184

noncomputable section

/-- A313869: Coordination sequence Gal.6.206.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313869.P2714584555058698184`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2342 terms. -/
def A313869 (n : ℕ) : ℤ :=
  A313869.P2714584555058698184.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2342 terms. -/
def A313869.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313886.P7964654084848802356

`A314065(n)+A238468(n)`
-/

namespace A313886.P7964654084848802356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314065 n + A238468 n

end

end A313886.P7964654084848802356

noncomputable section

/-- A313886: Coordination sequence Gal.4.143.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313886.P7964654084848802356`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2293 terms. -/
def A313886 (n : ℕ) : ℤ :=
  A313886.P7964654084848802356.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2293 terms. -/
def A313886.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314052.P7255477605862144474

`2*n+A004396(A310413(n))`
-/

namespace A314052.P7255477605862144474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + A004396 (A310413 n).toNat

end

end A314052.P7255477605862144474

noncomputable section

/-- A314052: Coordination sequence Gal.6.639.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314052.P7255477605862144474`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2038 terms. -/
def A314052 (n : ℕ) : ℤ :=
  A314052.P7255477605862144474.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2038 terms. -/
def A314052.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314089.P3546042962349282069

`A313474(n)+∑[A021913(n)]`
-/

namespace A314089.P3546042962349282069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313474 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314089.P3546042962349282069

noncomputable section

/-- A314089: Coordination sequence Gal.6.260.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314089.P3546042962349282069`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2404 terms. -/
def A314089 (n : ℕ) : ℤ :=
  A314089.P3546042962349282069.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2404 terms. -/
def A314089.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314100.P5614151472611851930

`abs(A008592(n)-A314943(n))`
-/

namespace A314100.P5614151472611851930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314943 n|

end

end A314100.P5614151472611851930

noncomputable section

/-- A314100: Coordination sequence Gal.6.329.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314100.P5614151472611851930`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2314 terms. -/
def A314100 (n : ℕ) : ℤ :=
  A314100.P5614151472611851930.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2314 terms. -/
def A314100.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314146.P9880955717233294577

`floor(A313770(n)+(n+1)/3)`
-/

namespace A314146.P9880955717233294577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A313770 n : ℚ) + (n + 1 : ℚ) / 3⌋

end

end A314146.P9880955717233294577

noncomputable section

/-- A314146: Coordination sequence Gal.5.326.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314146.P9880955717233294577`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2277 terms. -/
def A314146 (n : ℕ) : ℤ :=
  A314146.P9880955717233294577.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2277 terms. -/
def A314146.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314299.P8107454820952172919

`A315311(n)-A026741(A047486(n+1))`
-/

namespace A314299.P8107454820952172919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315311 n - A026741 (A047486 (n + 1)).toNat

end

end A314299.P8107454820952172919

noncomputable section

/-- A314299: Coordination sequence Gal.3.3.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314299.P8107454820952172919`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2094 terms. -/
def A314299 (n : ℕ) : ℤ :=
  A314299.P8107454820952172919.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2094 terms. -/
def A314299.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314670.P10679546871853624637

`A330025(A330025(n)+n)+A311440(n)`
-/

namespace A314670.P10679546871853624637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 (A330025 n + (n : ℤ)).toNat + A311440 n

end

end A314670.P10679546871853624637

noncomputable section

/-- A314670: Coordination sequence Gal.5.50.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314670.P10679546871853624637`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2596 terms. -/
def A314670 (n : ℕ) : ℤ :=
  A314670.P10679546871853624637.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2596 terms. -/
def A314670.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314688.P9311445367984874380

`A047424(n+1)+A311257(n)-n`
-/

namespace A314688.P9311445367984874380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047424 (n + 1) + (A311257 n - (n : ℤ))

end

end A314688.P9311445367984874380

noncomputable section

/-- A314688: Coordination sequence Gal.6.254.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314688.P9311445367984874380`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2514 terms. -/
def A314688 (n : ℕ) : ℤ :=
  A314688.P9311445367984874380.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2514 terms. -/
def A314688.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314725.P3459812041028605119

`A330025(n)+A311552(n)`
-/

namespace A314725.P3459812041028605119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 n + A311552 n

end

end A314725.P3459812041028605119

noncomputable section

/-- A314725: Coordination sequence Gal.5.114.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314725.P3459812041028605119`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2486 terms. -/
def A314725 (n : ℕ) : ℤ :=
  A314725.P3459812041028605119.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2486 terms. -/
def A314725.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314726.P6332999963874052355

`A311196(n)+A004525(n)`
-/

namespace A314726.P6332999963874052355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311196 n + A004525 n

end

end A314726.P6332999963874052355

noncomputable section

/-- A314726: Coordination sequence Gal.6.259.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314726.P6332999963874052355`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2446 terms. -/
def A314726 (n : ℕ) : ℤ :=
  A314726.P6332999963874052355.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2446 terms. -/
def A314726.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314752.P2908824843405131660

`A314894(n)-Δ[A011864(n)]`
-/

namespace A314752.P2908824843405131660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314894 n - (f1 (n + 1) - f1 n)

end

end A314752.P2908824843405131660

noncomputable section

/-- A314752: Coordination sequence Gal.6.258.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314752.P2908824843405131660`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2448 terms. -/
def A314752 (n : ℕ) : ℤ :=
  A314752.P2908824843405131660.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2448 terms. -/
def A314752.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314763.P16038055828271141937

`A310355(n)+A102283(n)`
-/

namespace A314763.P16038055828271141937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310355 n + A102283 n

end

end A314763.P16038055828271141937

noncomputable section

/-- A314763: Coordination sequence Gal.5.125.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314763.P16038055828271141937`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2481 terms. -/
def A314763 (n : ℕ) : ℤ :=
  A314763.P16038055828271141937.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2481 terms. -/
def A314763.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314851.P12082733388595412

`A314896(n)+n-A255347(n)`
-/

namespace A314851.P12082733388595412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314896 n + ((n : ℤ) - A255347 n)

end

end A314851.P12082733388595412

noncomputable section

/-- A314851: Coordination sequence Gal.6.36.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314851.P12082733388595412`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2438 terms. -/
def A314851 (n : ℕ) : ℤ :=
  A314851.P12082733388595412.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2438 terms. -/
def A314851.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314884.P14768008204403589957

`A008458(n)+A008576(n)-A311196(n)`
-/

namespace A314884.P14768008204403589957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008576 n - A311196 n)

end

end A314884.P14768008204403589957

noncomputable section

/-- A314884: Coordination sequence Gal.6.150.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314884.P14768008204403589957`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A314884 (n : ℕ) : ℤ :=
  A314884.P14768008204403589957.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A314884.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314922.P17749781584277462255

`A315036(n)-A002264(A088439(n))`
-/

namespace A314922.P17749781584277462255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315036 n - A002264 (A088439 n).toNat

end

end A314922.P17749781584277462255

noncomputable section

/-- A314922: Coordination sequence Gal.6.474.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314922.P17749781584277462255`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2402 terms. -/
def A314922 (n : ℕ) : ℤ :=
  A314922.P17749781584277462255.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2402 terms. -/
def A314922.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314945.P6456220943170628107

`A311458(n)+A004396(n)`
-/

namespace A314945.P6456220943170628107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311458 n + A004396 n

end

end A314945.P6456220943170628107

noncomputable section

/-- A314945: Coordination sequence Gal.5.84.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314945.P6456220943170628107`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2405 terms. -/
def A314945 (n : ℕ) : ℤ :=
  A314945.P6456220943170628107.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2405 terms. -/
def A314945.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315033.P12102066893602816960

`A314848(n)+Δ[A011862(n)]`
-/

namespace A315033.P12102066893602816960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314848 n + (f1 (n + 1) - f1 n)

end

end A315033.P12102066893602816960

noncomputable section

/-- A315033: Coordination sequence Gal.5.129.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315033.P12102066893602816960`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2397 terms. -/
def A315033 (n : ℕ) : ℤ :=
  A315033.P12102066893602816960.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2397 terms. -/
def A315033.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315208.P4336967152151066155

`abs(A008592(n)-A310501(n))`
-/

namespace A315208.P4336967152151066155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A310501 n|

end

end A315208.P4336967152151066155

noncomputable section

/-- A315208: Coordination sequence Gal.6.348.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315208.P4336967152151066155`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2407 terms. -/
def A315208 (n : ℕ) : ℤ :=
  A315208.P4336967152151066155.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2407 terms. -/
def A315208.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315343.P4431004882593974719

`abs(A008592(n)-A310369(n))`
-/

namespace A315343.P4431004882593974719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A310369 n|

end

end A315343.P4431004882593974719

noncomputable section

/-- A315343: Coordination sequence Gal.5.304.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315343.P4431004882593974719`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2258 terms. -/
def A315343 (n : ℕ) : ℤ :=
  A315343.P4431004882593974719.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2258 terms. -/
def A315343.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315400.P9155162697410985556

`A313474(n)+n-∑[A131735(n)]`
-/

namespace A315400.P9155162697410985556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131735 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313474 n + ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A315400.P9155162697410985556

noncomputable section

/-- A315400: Coordination sequence Gal.6.256.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315400.P9155162697410985556`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2449 terms. -/
def A315400 (n : ℕ) : ℤ :=
  A315400.P9155162697410985556.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2449 terms. -/
def A315400.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315683.P6946226476358261575

`A313474(n)+n`
-/

namespace A315683.P6946226476358261575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313474 n + (n : ℤ)

end

end A315683.P6946226476358261575

noncomputable section

/-- A315683: Coordination sequence Gal.6.634.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315683.P6946226476358261575`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2542 terms. -/
def A315683 (n : ℕ) : ℤ :=
  A315683.P6946226476358261575.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2542 terms. -/
def A315683.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A316095.P1509550343665641608

`eq[3, A125115(A028310(n))]`
-/

namespace A316095.P1509550343665641608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125115 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A316095.P1509550343665641608

noncomputable section

/-- A316095: Numbers m such that A(m+1) = A(m) + 3, where A() = A005101() are the abundant numbers.

Offset 1, canonical program `A316095.P1509550343665641608`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A316095 (n : ℕ) : ℤ :=
  (A316095.P1509550343665641608.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A316095.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A316351.P4823434394101690844

`eq[4, A128428(n+1)]+1`
-/

namespace A316351.P4823434394101690844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128428 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A316351.P4823434394101690844

noncomputable section

/-- A316351: Numbers k such that k^2 + 1 has exactly four distinct prime factors.

Offset 1, canonical program `A316351.P4823434394101690844`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2041 terms. -/
def A316351 (n : ℕ) : ℤ :=
  (A316351.P4823434394101690844.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2041 terms. -/
def A316351.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A317045.P9584726869343570922

`eq[2, A125238(n+1)]+1`
-/

namespace A317045.P9584726869343570922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125238 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A317045.P9584726869343570922

noncomputable section

/-- A317045: Numbers k such that A(k+1) = A(k) + 2, where A() = A005100() are the deficient numbers.

Offset 1, canonical program `A317045.P9584726869343570922`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3300 terms. -/
def A317045 (n : ℕ) : ℤ :=
  (A317045.P9584726869343570922.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3300 terms. -/
def A317045.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A317047.P103969702629091230

`A005100(A317044(n+1))`
-/

namespace A317047.P103969702629091230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (A317044 (n + 1)).toNat

end

end A317047.P103969702629091230

noncomputable section

/-- A317047: Numbers k such that both k and k + 1 are deficient.

Offset 1, canonical program `A317047.P103969702629091230`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6696 terms. -/
def A317047 (n : ℕ) : ℤ :=
  A317047.P103969702629091230.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6696 terms. -/
def A317047.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A317333.P17629716713966033561

`8*(n+1)+A317336(n+1)`
-/

namespace A317333.P17629716713966033561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * (n + 1) : ℤ) + A317336 (n + 1)

end

end A317333.P17629716713966033561

noncomputable section

/-- A317333: Indices m for which A058304(m) = 9.

Offset 1, canonical program `A317333.P17629716713966033561`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A317336, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A317333 (n : ℕ) : ℤ :=
  A317333.P17629716713966033561.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A317336, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A317333.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A317528.P12745314278989265988

`A034444(n+1)-A010673(n)*A034444(A008619(n))`
-/

namespace A317528.P12745314278989265988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) - A010673 n * A034444 (A008619 n).toNat

end

end A317528.P12745314278989265988

noncomputable section

/-- A317528: Expansion of Sum_{k>=1} mu(k)^2*x^k/(1 + x^k), where mu() is the Moebius function (A008683).

Offset 1, canonical program `A317528.P12745314278989265988`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A317528 (n : ℕ) : ℤ :=
  A317528.P12745314278989265988.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A317528.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319035.P4592568975545693552

`A000096(eq[A063440(n+2), A063440(n+1)])+1`
-/

namespace A319035.P4592568975545693552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063440 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063440 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) + 1

end

end A319035.P4592568975545693552

noncomputable section

/-- A319035: Triangular numbers T(k) that have the same number of divisors as their successors T(k+1).

Offset 1, canonical program `A319035.P4592568975545693552`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1669 terms. -/
def A319035 (n : ℕ) : ℤ :=
  A319035.P4592568975545693552.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1669 terms. -/
def A319035.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319661.P15202188947145428024

`log2(A003642(n+1))`
-/

namespace A319661.P15202188947145428024
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A003642 (n + 1) : ℝ)

end

end A319661.P15202188947145428024

noncomputable section

/-- A319661: 2-rank of the class group of imaginary quadratic field with discriminant -k, k = A191483(n).

Offset 1, canonical program `A319661.P15202188947145428024`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003642, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A319661 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A319661.P15202188947145428024.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003642, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A319661.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A320146.P14289630506031566680

`A096277(n+1)%A048448(n+2)`
-/

namespace A320146.P14289630506031566680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096277 (n + 1)) (A048448 (n + 2))

end

end A320146.P14289630506031566680

noncomputable section

/-- A320146: a(n) = 2*prime(n) modulo (prime(n-1) + prime(n+1)).

Offset 2, canonical program `A320146.P14289630506031566680`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A320146 (n : ℕ) : ℤ :=
  A320146.P14289630506031566680.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A320146.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A320702.P16815329921572178151

`eq[8, A001223(n+1)]+1`
-/

namespace A320702.P16815329921572178151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A320702.P16815329921572178151

noncomputable section

/-- A320702: Indices of primes followed by a gap (distance to next larger prime) of 8.

Offset 1, canonical program `A320702.P16815329921572178151`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3646 terms. -/
def A320702 (n : ℕ) : ℤ :=
  (A320702.P16815329921572178151.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3646 terms. -/
def A320702.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A320703.P14247558582401174259

`eq[10, A001223(n+10)]+10`
-/

namespace A320703.P14247558582401174259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 10)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 10

end

end A320703.P14247558582401174259

noncomputable section

/-- A320703: Indices of primes followed by a gap (distance to next larger prime) of 10.

Offset 1, canonical program `A320703.P14247558582401174259`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4574 terms. -/
def A320703 (n : ℕ) : ℤ :=
  (A320703.P14247558582401174259.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4574 terms. -/
def A320703.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A320704.P1487663062350906858

`eq[12, A001223(n+1)]+1`
-/

namespace A320704.P1487663062350906858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A320704.P1487663062350906858

noncomputable section

/-- A320704: Indices of primes followed by a gap (distance to next larger prime) of 12.

Offset 1, canonical program `A320704.P1487663062350906858`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5099 terms. -/
def A320704 (n : ℕ) : ℤ :=
  (A320704.P1487663062350906858.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5099 terms. -/
def A320704.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A320935.P5041505180703066764

`A056272(n+1)-A056324(n+1)`
-/

namespace A320935.P5041505180703066764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056272 (n + 1) - A056324 (n + 1)

end

end A320935.P5041505180703066764

noncomputable section

/-- A320935: Number of chiral pairs of color patterns (set partitions) for a row of length n using 5 or fewer colors (subsets).

Offset 1, canonical program `A320935.P5041505180703066764`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056272, A056324, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A320935 (n : ℕ) : ℤ :=
  A320935.P5041505180703066764.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056272, A056324, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A320935.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A321243.P16278212693722106823

`A098736(n)/A000030(A028310(n))`
-/

namespace A321243.P16278212693722106823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098736 n : ℚ) / (A000030 (A028310 n).toNat : ℚ)

end

end A321243.P16278212693722106823

noncomputable section

/-- A321243: a(n) is the product of n and all its decimal digits individually except the leftmost digit.

Offset 0, canonical program `A321243.P16278212693722106823`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321243 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A321243.P16278212693722106823.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321243.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321829.P14830422946865690571

`∑{d}[n+1, A002654(#)*A059378((n+1)/#)]`
-/

namespace A321829.P14830422946865690571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002654 d * A059378 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321829.P14830422946865690571

noncomputable section

/-- A321829: a(n) = Sum_{d|n, n/d==1 mod 4} d^5 - Sum_{d|n, n/d==3 mod 4} d^5.

Offset 1, canonical program `A321829.P14830422946865690571`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321829 (n : ℕ) : ℤ :=
  A321829.P14830422946865690571.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321829.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321830.P17682808874254868364

`∑{d}[n+1, A002654(#)*A069091((n+1)/#)]`
-/

namespace A321830.P17682808874254868364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002654 d * A069091 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321830.P17682808874254868364

noncomputable section

/-- A321830: a(n) = Sum_{d|n, n/d==1 mod 4} d^6 - Sum_{d|n, n/d==3 mod 4} d^6.

Offset 1, canonical program `A321830.P17682808874254868364`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321830 (n : ℕ) : ℤ :=
  A321830.P17682808874254868364.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321830.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321831.P12423229635950529028

`∑{d}[n+1, A002654(#)*A069092((n+1)/#)]`
-/

namespace A321831.P12423229635950529028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002654 d * A069092 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321831.P12423229635950529028

noncomputable section

/-- A321831: a(n) = Sum_{d|n, n/d==1 mod 4} d^7 - Sum_{d|n, n/d==3 mod 4} d^7.

Offset 1, canonical program `A321831.P12423229635950529028`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321831 (n : ℕ) : ℤ :=
  A321831.P12423229635950529028.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321831.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321832.P3017616455920005884

`∑{d}[n+1, A002654(#)*A069093((n+1)/#)]`
-/

namespace A321832.P3017616455920005884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002654 d * A069093 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321832.P3017616455920005884

noncomputable section

/-- A321832: a(n) = Sum_{d|n, n/d==1 (mod 4)} d^8 - Sum_{d|n, n/d==3 (mod 4)} d^8.

Offset 1, canonical program `A321832.P3017616455920005884`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321832 (n : ℕ) : ℤ :=
  A321832.P3017616455920005884.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321832.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321833.P4727301258101739177

`∑{d}[n+1, A002654(#)*A069094((n+1)/#)]`
-/

namespace A321833.P4727301258101739177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002654 d * A069094 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321833.P4727301258101739177

noncomputable section

/-- A321833: a(n) = Sum_{d|n, n/d==1 mod 4} d^9 - Sum_{d|n, n/d==3 mod 4} d^9.

Offset 1, canonical program `A321833.P4727301258101739177`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321833 (n : ℕ) : ℤ :=
  A321833.P4727301258101739177.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321833.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321834.P3995694141505883219

`∑{d}[n+1, A002654(#)*A069095((n+1)/#)]`
-/

namespace A321834.P3995694141505883219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002654 d * A069095 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321834.P3995694141505883219

noncomputable section

/-- A321834: a(n) = Sum_{d|n, n/d==1 mod 4} d^10 - Sum_{d|n, n/d==3 mod 4} d^10.

Offset 1, canonical program `A321834.P3995694141505883219`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321834 (n : ℕ) : ℤ :=
  A321834.P3995694141505883219.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321834.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322327.P7023019064319529347

`A005361(n+1)*A034444(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A322327.P7023019064319529347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1) * A034444 (n + 1)

end

end A322327.P7023019064319529347

noncomputable section

/-- A322327: a(n) = A005361(n) * A034444(n).

Offset 1, canonical program `A322327.P7023019064319529347`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, A034444, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A322327 (n : ℕ) : ℤ :=
  A322327.P7023019064319529347.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, A034444, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A322327.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A322673.P9006485126655051311

`A206032(n+1)/gcd(A007955(n+1), A206032(n+1))`
-/

namespace A322673.P9006485126655051311
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206032 (n + 1) : ℚ) / (Int.gcd (A007955 (n + 1)) (A206032 (n + 1)) : ℚ)

end

end A322673.P9006485126655051311

noncomputable section

/-- A322673: a(n) = numerator of Product_{d|n} (sigma(d)/d) where sigma(k) = the sum of the divisors of k (A000203).

Offset 1, canonical program `A322673.P9006485126655051311`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3359 terms. -/
def A322673 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A322673.P9006485126655051311.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3359 terms. -/
def A322673.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322976.P11203224560119339199

`∑{d}[n+1, A010051(#+2)]`
-/

namespace A322976.P11203224560119339199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010051 (d + 2)

end

end A322976.P11203224560119339199

noncomputable section

/-- A322976: Number of divisors d of n such that d+2 is prime.

Offset 1, canonical program `A322976.P11203224560119339199`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322976 (n : ℕ) : ℤ :=
  A322976.P11203224560119339199.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322976.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322979.P6933631638193226101

`∑{d}[n+1, A009191(#)]`
-/

namespace A322979.P6933631638193226101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A009191 d

end

end A322979.P6933631638193226101

noncomputable section

/-- A322979: a(n) = Sum A009191(d) over the divisors d of n, where A009191(x) = gcd(x, A000005(x)), and A000005(x) gives the number of divisors of x.

Offset 1, canonical program `A322979.P6933631638193226101`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322979 (n : ℕ) : ℤ :=
  A322979.P6933631638193226101.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322979.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322980.P7974162186634940196

`A063524(A009191(n+1))`
-/

namespace A322980.P7974162186634940196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A009191 (n + 1)).toNat

end

end A322980.P7974162186634940196

noncomputable section

/-- A322980: a(n) = 1 if n and d(n) are coprime, 0 otherwise. Here d(n) is the number of divisors of n, A000005.

Offset 1, canonical program `A322980.P7974162186634940196`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322980 (n : ℕ) : ℤ :=
  A322980.P7974162186634940196.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322980.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322997.P13099986161292464516

`A322996(2*n)`
-/

namespace A322997.P13099986161292464516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322996 (2 * n)

end

end A322997.P13099986161292464516

noncomputable section

/-- A322997: Number of iterations of A049820(x) = x - A000005(x) needed to reach an odd number or zero, when starting from x = 2n.

Offset 0, canonical program `A322997.P13099986161292464516`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A322996, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A322997 (n : ℕ) : ℤ :=
  A322997.P13099986161292464516.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A322996, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A322997.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A323158.P4533736055224082463

`A000035(A049820(n+1))`
-/

namespace A323158.P4533736055224082463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A049820 (n + 1)).toNat

end

end A323158.P4533736055224082463

noncomputable section

/-- A323158: If n is a square, a(n) = 1-(n mod 2), otherwise a(n) = (n mod 2); a(n) = A049820(n) mod 2, where A049820(n) = n - number of divisors of n.

Offset 1, canonical program `A323158.P4533736055224082463`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049820, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A323158 (n : ℕ) : ℤ :=
  A323158.P4533736055224082463.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049820, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A323158.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A323326.P17752008137620841632

`2*A208251(n+1)-∑[A010051(n+1)]`
-/

namespace A323326.P17752008137620841632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A208251 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323326.P17752008137620841632

noncomputable section

/-- A323326: a(n) = 2*T(n) - pi(n), where T(n) (A208251) is the number of refactorable/tau numbers (A033950) <= n and pi(n) (A000720) is the number of primes <= n.

Offset 1, canonical program `A323326.P17752008137620841632`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A323326 (n : ℕ) : ℤ :=
  A323326.P17752008137620841632.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A323326.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A323547.P16660273346079992290

`char[A071354(n+1)-1]`
-/

namespace A323547.P16660273346079992290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071354 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A323547.P16660273346079992290

noncomputable section

/-- A323547: n-th digit in the base-2 expansion of 1/n.

Offset 1, canonical program `A323547.P16660273346079992290`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A323547 (n : ℕ) : ℤ :=
  (A323547.P16660273346079992290.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A323547.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324287.P5077748736980980379

`A002487(A005187(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324287.P5077748736980980379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A005187 n).toNat

end

end A324287.P5077748736980980379

noncomputable section

/-- A324287: a(n) = A002487(A005187(n)).

Offset 0, canonical program `A324287.P5077748736980980379`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002487, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324287 (n : ℕ) : ℤ :=
  A324287.P5077748736980980379.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002487, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324287.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A324288.P7931273750628969698

`A002487(1+A005187(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324288.P7931273750628969698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (1 + A005187 n).toNat

end

end A324288.P7931273750628969698

noncomputable section

/-- A324288: a(n) = A002487(1+A005187(n)).

Offset 0, canonical program `A324288.P7931273750628969698`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002487, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324288 (n : ℕ) : ℤ :=
  A324288.P7931273750628969698.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002487, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324288.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A324293.P15321960230669140692

`A002487(A000203(n+1))`
-/

namespace A324293.P15321960230669140692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A000203 (n + 1)).toNat

end

end A324293.P15321960230669140692

noncomputable section

/-- A324293: a(n) = A002487(sigma(n)).

Offset 1, canonical program `A324293.P15321960230669140692`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002487, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324293 (n : ℕ) : ℤ :=
  A324293.P15321960230669140692.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002487, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324293.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A324294.P11568485074478071538

`A002487(∑{d}[n+1, #]+1)`
-/

namespace A324294.P11568485074478071538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (∑ d ∈ Nat.divisors (f1 n), d + 1)

end

end A324294.P11568485074478071538

noncomputable section

/-- A324294: a(n) = A002487(1+sigma(n)).

Offset 1, canonical program `A324294.P11568485074478071538`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3119 terms. -/
def A324294 (n : ℕ) : ℤ :=
  A324294.P11568485074478071538.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3119 terms. -/
def A324294.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324477.P14351997783011068846

`∑[char[∑[A364377(n+1)+1]]]+1`
-/

namespace A324477.P14351997783011068846
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364377 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A324477.P14351997783011068846

noncomputable section

/-- A324477: k appears t+1 times, where t = A364377(k) is the number of trailing zeros in the greedy Jacobsthal representation of k, A265747(k).

Offset 1, canonical program `A324477.P14351997783011068846`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324477 (n : ℕ) : ℤ :=
  (A324477.P14351997783011068846.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324477.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324501.P1716032831025346766

`∑{d}[n+1, A007955(n+1)/A007955(#)]`
-/

namespace A324501.P1716032831025346766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A007955 (n + 1) : ℚ) / (A007955 d : ℚ)

end

end A324501.P1716032831025346766

noncomputable section

/-- A324501: a(n) = numerator of Sum_{d|n} (1/pod(d)) where pod(k) = the product of the divisors of k (A007955).

Offset 1, canonical program `A324501.P1716032831025346766`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A324501 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A324501.P1716032831025346766.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A324501.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324980.P16337764306550110740

`A007955(n+1)*A206032(n+1)`
-/

namespace A324980.P16337764306550110740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (n + 1) * A206032 (n + 1)

end

end A324980.P16337764306550110740

noncomputable section

/-- A324980: a(n) = Product_{d|n} (d*sigma(d)) where sigma(k) = the sum of the divisors of k (A000203).

Offset 1, canonical program `A324980.P16337764306550110740`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007955, A206032, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A324980 (n : ℕ) : ℤ :=
  A324980.P16337764306550110740.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007955, A206032, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A324980.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A324981.P17068546263035737128

`A007955(n+1)*A266265(n+1)`
-/

namespace A324981.P17068546263035737128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (n + 1) * A266265 (n + 1)

end

end A324981.P17068546263035737128

noncomputable section

/-- A324981: a(n) = Product_{d|n} (d*pod(d)) where pod(k) = the product of the divisors of k (A007955).

Offset 1, canonical program `A324981.P17068546263035737128`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007955, A266265, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A324981 (n : ℕ) : ℤ :=
  A324981.P17068546263035737128.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007955, A266265, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A324981.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A325403.P18375620770384998092

`A325392(2*(n+1))`
-/

namespace A325403.P18375620770384998092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325392 (2 * (n + 1))

end

end A325403.P18375620770384998092

noncomputable section

/-- A325403: Number of permutations of the multiset of prime factors of 2n whose first part is not 2.

Offset 1, canonical program `A325403.P18375620770384998092`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A325392, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A325403 (n : ℕ) : ℤ :=
  A325403.P18375620770384998092.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A325392, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A325403.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A325838.P16251937646773924265

`A007955(A000217(n+1))`
-/

namespace A325838.P16251937646773924265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (A000217 (n + 1)).toNat

end

end A325838.P16251937646773924265

noncomputable section

/-- A325838: a(n) is the product of divisors of the n-th triangular number.

Offset 1, canonical program `A325838.P16251937646773924265`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007955, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A325838 (n : ℕ) : ℤ :=
  A325838.P16251937646773924265.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007955, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A325838.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A325964.P15804438111234452342

`floor(1/A073802(n+1))`
-/

namespace A325964.P15804438111234452342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A073802 (n + 1) : ℚ)⌋

end

end A325964.P15804438111234452342

noncomputable section

/-- A325964: a(n) = 1 if n and sigma(n) are relatively prime, 0 otherwise, where sigma(n) = sum of divisors of n, A000203; Characteristic function of A014567.

Offset 1, canonical program `A325964.P15804438111234452342`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A325964 (n : ℕ) : ℤ :=
  A325964.P15804438111234452342.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A325964.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A326058.P945554037685919267

`n+1-A035316(n+1)`
-/

namespace A326058.P945554037685919267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A035316 (n + 1)

end

end A326058.P945554037685919267

noncomputable section

/-- A326058: a(n) = n - {the sum of square divisors of n}.

Offset 1, canonical program `A326058.P945554037685919267`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035316, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326058 (n : ℕ) : ℤ :=
  A326058.P945554037685919267.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035316, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326058.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A326302.P15542453405491403579

`lcm(n, A030101(n))`
-/

namespace A326302.P15542453405491403579
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A030101 n)

end

end A326302.P15542453405491403579

noncomputable section

/-- A326302: a(n) = lcm(n, r(n)) where r(n) = A030101(n) corresponds to the binary reversal of n.

Offset 0, canonical program `A326302.P15542453405491403579`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326302 (n : ℕ) : ℤ :=
  (A326302.P15542453405491403579.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326302.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327209.P6425017503248329216

`A190670(n+1)-A010052(Δ[A190670(n+1)])`
-/

namespace A327209.P6425017503248329216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190670 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190670 (n + 1) - A010052 (f1 (n + 1) - f1 n).toNat

end

end A327209.P6425017503248329216

noncomputable section

/-- A327209: Positions of 0's in {A327208(n) : n > 0}.

Offset 1, canonical program `A327209.P6425017503248329216`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A327209 (n : ℕ) : ℤ :=
  A327209.P6425017503248329216.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A327209.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327219.P7524261116864899285

`char[A327221(n+1)]`
-/

namespace A327219.P7524261116864899285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327221 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A327219.P7524261116864899285

noncomputable section

/-- A327219: a(n) = [(2n+4)r] - [(n+4)r] - [nr], where [ ] = floor and r = (1+sqrt(5))/2.

Offset 0, canonical program `A327219.P7524261116864899285`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327219 (n : ℕ) : ℤ :=
  (A327219.P7524261116864899285.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327219.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327274.P12245010080846323339

`∑{d}[n+1, A007428(#)*A038712((n+1)/#)]`
-/

namespace A327274.P12245010080846323339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007428 d * A038712 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327274.P12245010080846323339

noncomputable section

/-- A327274: Dirichlet g.f.: 1 / (zeta(s)^2 * (1 - 2^(1 - s))).

Offset 1, canonical program `A327274.P12245010080846323339`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327274 (n : ℕ) : ℤ :=
  A327274.P12245010080846323339.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327274.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327326.P15839165817513930619

`A006218(n)-A005187(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A327326.P15839165817513930619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n - A005187 n

end

end A327326.P15839165817513930619

noncomputable section

/-- A327326: a(n) = A006218(n) - A005187(n).

Offset 0, canonical program `A327326.P15839165817513930619`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006218, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A327326 (n : ℕ) : ℤ :=
  A327326.P15839165817513930619.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006218, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A327326.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A327715.P7624630360277358397

`1+a(n-A009191(n))` with `a(0)=0, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A327715.P7624630360277358397
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  1 + a ((n : ℤ) - A009191 n).toNat

end

end A327715.P7624630360277358397

noncomputable section

/-- A327715: a(0) = 0; for n >= 1, a(n) = 1 + a(n-A009191(n)).

Offset 0, canonical program `A327715.P7624630360277358397`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009191, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A327715 (n : ℕ) : ℤ :=
  (A327715.P7624630360277358397.a n : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009191, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A327715.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A327750.P8221723074471810655

`eq[A007954(A230099(n)), A051801(n)]`
-/

namespace A327750.P8221723074471810655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A230099 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327750.P8221723074471810655

noncomputable section

/-- A327750: Numbers without zero digits such that after adding the product of its digits to it, a number with the same product of digits is obtained.

Offset 1, canonical program `A327750.P8221723074471810655`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A327750 (n : ℕ) : ℤ :=
  (A327750.P8221723074471810655.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A327750.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327755.P13088836366577180608

`record[A056617(n)]`
-/

namespace A327755.P13088836366577180608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056617 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327755.P13088836366577180608

noncomputable section

/-- A327755: Odd integers k such that binomial(k-1,(k-1)/2) is coprime to k.

Offset 1, canonical program `A327755.P13088836366577180608`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A327755 (n : ℕ) : ℤ :=
  A327755.P13088836366577180608.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A327755.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327952.P3929770748935459996

`Δ[A153818(n+1)-A006218(n+1)]`
-/

namespace A327952.P3929770748935459996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153818 (n + 1) - A006218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A327952.P3929770748935459996

noncomputable section

/-- A327952: a(n) is the number of positive integers k such that some multiple of sqrt(k) falls strictly between n and n+1.

Offset 1, canonical program `A327952.P3929770748935459996`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A327952 (n : ℕ) : ℤ :=
  A327952.P3929770748935459996.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A327952.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328484.P15261960755088240361

`A373438(n+1)*A035191(n+1)`
-/

namespace A328484.P15261960755088240361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373438 (n + 1) * A035191 (n + 1)

end

end A328484.P15261960755088240361

noncomputable section

/-- A328484: Dirichlet g.f.: zeta(s)^2 / (1 - 3^(-s)).

Offset 1, canonical program `A328484.P15261960755088240361`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035191, A373438, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A328484 (n : ℕ) : ℤ :=
  A328484.P15261960755088240361.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035191, A373438, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A328484.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A328557.P3690603107563760352

`comp[∪[A049642(n+1), n²]]`
-/

namespace A328557.P3690603107563760352
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049642 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A328557.P3690603107563760352

noncomputable section

/-- A328557: Arithmetic numbers (A003601) that are not squares (A000290).

Offset 1, canonical program `A328557.P3690603107563760352`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328557 (n : ℕ) : ℤ :=
  (A328557.P3690603107563760352.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328557.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328559.P7373183784743117782

`filter[A049642(n+1), A049240(#)]`
-/

namespace A328559.P7373183784743117782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049642 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A328559.P7373183784743117782

noncomputable section

/-- A328559: Numbers m that are neither arithmetic (A003601) nor squares (A000290).

Offset 1, canonical program `A328559.P7373183784743117782`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9810 terms. -/
def A328559 (n : ℕ) : ℤ :=
  A328559.P7373183784743117782.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9810 terms. -/
def A328559.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328952.P16779788815327458219

`filter[A158276(n+1), A245656(#)]`
-/

namespace A328952.P16779788815327458219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158276 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A245656 (f1 j).toNat = 1) n)

end

end A328952.P16779788815327458219

noncomputable section

/-- A328952: Arithmetic numbers (A003601) that are not antiharmonic (A020487).

Offset 1, canonical program `A328952.P16779788815327458219`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7794 terms. -/
def A328952 (n : ℕ) : ℤ :=
  A328952.P16779788815327458219.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7794 terms. -/
def A328952.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329393.P14477851111522146474

`∑{d}[A002808(n+1), -(-1)^#]`
-/

namespace A329393.P14477851111522146474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (-((-1) ^ d))

end

end A329393.P14477851111522146474

noncomputable section

/-- A329393: Number of odd divisors minus number of even divisors of the n-th composite.

Offset 1, canonical program `A329393.P14477851111522146474`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3000 terms. -/
def A329393 (n : ℕ) : ℤ :=
  A329393.P14477851111522146474.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3000 terms. -/
def A329393.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329831.P12461096776249407754

`comp[A329832(n+1)-1]+1`
-/

namespace A329831.P12461096776249407754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329832 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A329831.P12461096776249407754

noncomputable section

/-- A329831: Beatty sequence for (7+sqrt(65))/8.

Offset 1, canonical program `A329831.P12461096776249407754`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329831 (n : ℕ) : ℤ :=
  (A329831.P12461096776249407754.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329831.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330320.P16120986544821140952

`∑[A229949(2*(n+1))]`
-/

namespace A330320.P16120986544821140952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229949 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330320.P16120986544821140952

noncomputable section

/-- A330320: a(n) = Sum_{i=1..n} tau(i)*tau(i+1), where tau(n) = A000005(n) is the number of divisors of n.

Offset 1, canonical program `A330320.P16120986544821140952`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A330320 (n : ℕ) : ℤ :=
  A330320.P16120986544821140952.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A330320.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330786.P9951859796119619334

`1+a(A206369(n+1)-1)` with `a(0)=0, a(1)=1`
-/

namespace A330786.P9951859796119619334
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  1 + a (A206369 (n + 1) - 1).toNat

end

end A330786.P9951859796119619334

noncomputable section

/-- A330786: Number of steps to reach 1 by iterating the absolute alternating sum-of-divisors function (A206369).

Offset 1, canonical program `A330786.P9951859796119619334`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A206369, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A330786 (n : ℕ) : ℤ :=
  (A330786.P9951859796119619334.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A206369, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A330786.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A330809.P313460960627115106

`A253145(eq[8, A063440(n+1)])`
-/

namespace A330809.P313460960627115106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063440 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A330809.P313460960627115106

noncomputable section

/-- A330809: Triangular numbers having exactly 8 divisors.

Offset 1, canonical program `A330809.P313460960627115106`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1040 terms. -/
def A330809 (n : ℕ) : ℤ :=
  A330809.P313460960627115106.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1040 terms. -/
def A330809.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330866.P8751946144507611148

`(n+1)*A065608(n+1)`
-/

namespace A330866.P8751946144507611148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A065608 (n + 1)

end

end A330866.P8751946144507611148

noncomputable section

/-- A330866: a(n) = Sum_{d|n, d

Offset 1, canonical program `A330866.P8751946144507611148`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065608, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A330866 (n : ℕ) : ℤ :=
  A330866.P8751946144507611148.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065608, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A330866.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A330926.P15371824115560739582

`A075997(n)+1`
-/

namespace A330926.P15371824115560739582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075997 n + 1

end

end A330926.P15371824115560739582

noncomputable section

/-- A330926: a(n) = Sum_{k=1..n} (ceiling(n/k) mod 2).

Offset 1, canonical program `A330926.P15371824115560739582`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A075997, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A330926 (n : ℕ) : ℤ :=
  A330926.P15371824115560739582.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A075997, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A330926.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A331132.P5685763318772251677

`∑[A000005(n+1)*A092517(n+1)]`
-/

namespace A331132.P5685763318772251677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A092517 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331132.P5685763318772251677

noncomputable section

/-- A331132: a(n) = Sum_{i=1..n} d(i)^2*d(i+1), where d(n) = A000005(n).

Offset 1, canonical program `A331132.P5685763318772251677`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A331132 (n : ℕ) : ℤ :=
  A331132.P5685763318772251677.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A331132.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A331135.P16910825974695220271

`a(n-1)+A002654(n)*A010051(n+1)` with `a(0)=0`
-/

namespace A331135.P16910825974695220271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A002654 n * A010051 (n + 1)

end

end A331135.P16910825974695220271

noncomputable section

/-- A331135: a(n) = Sum_{primes p <= n} r_2(p-1)/4, where r_2(n) = A004018(n).

Offset 1, canonical program `A331135.P16910825974695220271`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A331135 (n : ℕ) : ℤ :=
  A331135.P16910825974695220271.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A331135.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A331808.P10809846326648532808

`∩[A001748(n+1)+A001223(n+1), A002808(n+1)]`
-/

namespace A331808.P10809846326648532808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001748 (n + 1) + A001223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331808.P10809846326648532808

noncomputable section

/-- A331808: Composite numbers of the form 2*p + q, where p, q are consecutive prime numbers.

Offset 1, canonical program `A331808.P10809846326648532808`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 698 terms. -/
def A331808 (n : ℕ) : ℤ :=
  (A331808.P10809846326648532808.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 698 terms. -/
def A331808.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A331892.P15573530525776411672

`A036044(n+1)+∑[A062383(n)]`
-/

namespace A331892.P15573530525776411672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036044 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331892.P15573530525776411672

noncomputable section

/-- A331892: Positive numbers k such that the negabinary expansion (A039724) of -k is palindromic.

Offset 1, canonical program `A331892.P15573530525776411672`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A331892 (n : ℕ) : ℤ :=
  A331892.P15573530525776411672.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A331892.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332385.P11219704881884823919

`∑{p}[n+1, A289506(#)]`
-/

namespace A332385.P11219704881884823919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A289506 p

end

end A332385.P11219704881884823919

noncomputable section

/-- A332385: Sum of squares of indices of distinct prime factors of n.

Offset 1, canonical program `A332385.P11219704881884823919`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A332385 (n : ℕ) : ℤ :=
  A332385.P11219704881884823919.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A332385.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333039.P4908284397635419986

`∩[A002808(n+1), A053226(n+1)+1]`
-/

namespace A333039.P4908284397635419986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053226 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333039.P4908284397635419986

noncomputable section

/-- A333039: Composites m such that sigma(m) < sigma(m-1).

Offset 1, canonical program `A333039.P4908284397635419986`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4312 terms. -/
def A333039 (n : ℕ) : ℤ :=
  (A333039.P4908284397635419986.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4312 terms. -/
def A333039.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333167.P7830250556896041600

`A105397(n)*A193432(n)`
-/

namespace A333167.P7830250556896041600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105397 n * A193432 n

end

end A333167.P7830250556896041600

noncomputable section

/-- A333167: a(n) = r_2(n^2 + 1), where r_2(k) is the number of ways of writing k as a sum of 2 squares (A004018).

Offset 0, canonical program `A333167.P7830250556896041600`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333167 (n : ℕ) : ℤ :=
  A333167.P7830250556896041600.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333167.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333177.P9788677441292484781

`∑{d}[(n+1)/∏{p}[n+1, #], A007444((n+1)/#)]`
-/

namespace A333177.P9788677441292484781
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A007444 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A333177.P9788677441292484781

noncomputable section

/-- A333177: a(n) = Sum_{d|n, gcd(d, n/d) = 1} (-1)^omega(n/d) * prime(d).

Offset 1, canonical program `A333177.P9788677441292484781`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333177 (n : ℕ) : ℤ :=
  A333177.P9788677441292484781.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333177.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333699.P2425366360681708954

`∑{d}[n+1, #*A062778((n+1)/#)]`
-/

namespace A333699.P2425366360681708954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A062778 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A333699.P2425366360681708954

noncomputable section

/-- A333699: a(n) = Sum_{d|n} phi(n/d) * pi(d).

Offset 1, canonical program `A333699.P2425366360681708954`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333699 (n : ℕ) : ℤ :=
  A333699.P2425366360681708954.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333699.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334069.P1505033035113123661

`A082996(2^(n+1))`
-/

namespace A334069.P1505033035113123661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082996 (2 ^ (n + 1))

end

end A334069.P1505033035113123661

noncomputable section

/-- A334069: Number of numbers <= 2^n that are the product of exactly four primes, not necessarily distinct.

Offset 1, canonical program `A334069.P1505033035113123661`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A082996, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A334069 (n : ℕ) : ℤ :=
  A334069.P1505033035113123661.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A082996, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A334069.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A334136.P14433116544812876041

`A064987(n+1)-A000203(n+1)`
-/

namespace A334136.P14433116544812876041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064987 (n + 1) - A000203 (n + 1)

end

end A334136.P14433116544812876041

noncomputable section

/-- A334136: a(n) = (n-1)*sigma(n) where sigma is the sum of divisors A000203.

Offset 1, canonical program `A334136.P14433116544812876041`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064987, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A334136 (n : ℕ) : ℤ :=
  A334136.P14433116544812876041.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064987, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A334136.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A334210.P14190534064000335262

`A008333(n+1)-A008864(n+1)`
-/

namespace A334210.P14190534064000335262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008333 (n + 1) - A008864 (n + 1)

end

end A334210.P14190534064000335262

noncomputable section

/-- A334210: a(n) = sigma(prime(n) + 1) - sigma(prime(n)).

Offset 1, canonical program `A334210.P14190534064000335262`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008333, A008864, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A334210 (n : ℕ) : ℤ :=
  A334210.P14190534064000335262.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008333, A008864, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A334210.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A334420.P13131574615811348760

`eq[A000005(n+1), A338170(n+1)]+1`
-/

namespace A334420.P13131574615811348760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338170 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A334420.P13131574615811348760

noncomputable section

/-- A334420: Numbers m such that sigma(d)/tau(d) is an integer for all divisors d of m.

Offset 1, canonical program `A334420.P13131574615811348760`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334420 (n : ℕ) : ℤ :=
  (A334420.P13131574615811348760.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334420.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334609.P14643117729935043828

`Δ[A006632(n+1)]-A112385(n+1)`
-/

namespace A334609.P14643117729935043828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006632 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A112385 (n + 1)

end

end A334609.P14643117729935043828

noncomputable section

/-- A334609: a(n) is the total number of down-steps after the final up-step in all 3_2-Dyck paths of length 4*n (n up-steps and 3*n down-steps).

Offset 0, canonical program `A334609.P14643117729935043828`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A334609 (n : ℕ) : ℤ :=
  A334609.P14643117729935043828.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A334609.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334628.P13649027034782975356

`ceil(A057789(n+1)/2)`
-/

namespace A334628.P13649027034782975356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A057789 (n + 1) : ℚ) / 2⌉

end

end A334628.P13649027034782975356

noncomputable section

/-- A334628: Total area of all distinct rectangles whose length and width are relatively prime and L + W = n.

Offset 1, canonical program `A334628.P13649027034782975356`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334628 (n : ℕ) : ℤ :=
  A334628.P13649027034782975356.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334628.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334664.P3656540446261014513

`∏{d}[n+1, A009191(#)]`
-/

namespace A334664.P3656540446261014513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A009191 d

end

end A334664.P3656540446261014513

noncomputable section

/-- A334664: a(n) = Product_{d|n} gcd(d, tau(d)).

Offset 1, canonical program `A334664.P3656540446261014513`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334664 (n : ℕ) : ℤ :=
  A334664.P3656540446261014513.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334664.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334682.P12278974037665394167

`Δ[A002293(n)]`
-/

namespace A334682.P12278974037665394167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002293 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A334682.P12278974037665394167

noncomputable section

/-- A334682: a(n) is the total number of down-steps after the final up-step in all 3-Dyck paths of length 4*n (n up-steps and 3*n down-steps).

Offset 0, canonical program `A334682.P12278974037665394167`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A334682 (n : ℕ) : ℤ :=
  A334682.P12278974037665394167.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A334682.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334785.P9600476233071478434

`A002293(n)+A069271(n)-A000038(n)`
-/

namespace A334785.P9600476233071478434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002293 n + (A069271 n - A000038 n)

end

end A334785.P9600476233071478434

noncomputable section

/-- A334785: a(n) is the total number of down steps before the first up step in all 3_2-Dyck paths of length 4*n. A 3_2-Dyck path is a lattice path with steps (1, 3), (1, -1) that starts and ends at y = 0 and stays above the line y = -2.

Offset 0, canonical program `A334785.P9600476233071478434`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A334785 (n : ℕ) : ℤ :=
  A334785.P9600476233071478434.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A334785.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A335001.P3223247444215741324

`eq[A063375(abs(1-n)+1), A272377(n)]`
-/

namespace A335001.P3223247444215741324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063375 (|1 - (n : ℤ)| + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272377 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A335001.P3223247444215741324

noncomputable section

/-- A335001: Integers m such that d(F(m)) = d(L(m)) where d is the number of divisors function, F(n) and L(n) are respectively the n-th Fibonacci and n-th Lucas numbers.

Offset 1, canonical program `A335001.P3223247444215741324`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A335001 (n : ℕ) : ℤ :=
  (A335001.P3223247444215741324.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A335001.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A335022.P15347784327843439019

`A058344(abs(1-n)+2)-1`
-/

namespace A335022.P15347784327843439019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058344 (|1 - (n : ℤ)| + 2).toNat - 1

end

end A335022.P15347784327843439019

noncomputable section

/-- A335022: a(n) = Sum_{d|n, 1 < d < n} (-1)^(d + 1) * d.

Offset 1, canonical program `A335022.P15347784327843439019`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A335022 (n : ℕ) : ℤ :=
  A335022.P15347784327843439019.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A335022.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A335567.P3613381038398877744

`A000217(A049820(n+1))`
-/

namespace A335567.P3613381038398877744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A049820 (n + 1)).toNat

end

end A335567.P3613381038398877744

noncomputable section

/-- A335567: Number of distinct positive integer pairs (s,t) such that s <= t < n where neither s nor t divides n.

Offset 1, canonical program `A335567.P3613381038398877744`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049820, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A335567 (n : ℕ) : ℤ :=
  A335567.P3613381038398877744.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049820, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A335567.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A335668.P17103927484557371149

`2*A246692(n+2)`
-/

namespace A335668.P17103927484557371149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A246692 (n + 2)

end

end A335668.P17103927484557371149

noncomputable section

/-- A335668: Even composites m such that A002203(m) == 2 (mod m).

Offset 1, canonical program `A335668.P17103927484557371149`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A335668 (n : ℕ) : ℤ :=
  A335668.P17103927484557371149.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A335668.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A335716.P5178440708128976525

`char[A095116(A007918(n))-n]`
-/

namespace A335716.P5178440708128976525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095116 (A007918 n).toNat - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A335716.P5178440708128976525

noncomputable section

/-- A335716: a(n) = pi(pi(n)) - pi(Sum_{k=1..n-1} a(k)) with a(1) = 0.

Offset 1, canonical program `A335716.P5178440708128976525`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A335716 (n : ℕ) : ℤ :=
  (A335716.P5178440708128976525.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A335716.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A336323.P14905383246300325352

`A002808(A334880(n+1))`
-/

namespace A336323.P14905383246300325352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A334880 (n + 1)).toNat

end

end A336323.P14905383246300325352

noncomputable section

/-- A336323: Numbers composite(n) such that gcd(n,composite(n)) > 1.

Offset 1, canonical program `A336323.P14905383246300325352`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A334880, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A336323 (n : ℕ) : ℤ :=
  A336323.P14905383246300325352.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A334880, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A336323.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336374.P1623715643861287427

`eq[1, gcd(n, A048448(n+1))]`
-/

namespace A336374.P1623715643861287427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A048448 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A336374.P1623715643861287427

noncomputable section

/-- A336374: Numbers k such that gcd(k, prime(k) + prime(k+2)) = 1.

Offset 1, canonical program `A336374.P1623715643861287427`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3636 terms. -/
def A336374 (n : ℕ) : ℤ :=
  (A336374.P1623715643861287427.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3636 terms. -/
def A336374.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336379.P8722156963709162593

`lt[1, gcd(n+1, A048448(n+1))]+1`
-/

namespace A336379.P8722156963709162593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A048448 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A336379.P8722156963709162593

noncomputable section

/-- A336379: Numbers k such that gcd(k, prime(k-1) + prime(k+1)) > 1.

Offset 1, canonical program `A336379.P8722156963709162593`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6322 terms. -/
def A336379 (n : ℕ) : ℤ :=
  (A336379.P8722156963709162593.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6322 terms. -/
def A336379.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336418.P9875464423020166936

`eq[1, A316341(∏{e}[n+1, #+1])]+1`
-/

namespace A336418.P9875464423020166936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316341 (∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A336418.P9875464423020166936

noncomputable section

/-- A336418: Numbers with a factorial number of divisors.

Offset 1, canonical program `A336418.P9875464423020166936`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2443 terms. -/
def A336418 (n : ℕ) : ℤ :=
  (A336418.P9875464423020166936.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2443 terms. -/
def A336418.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336612.P16379185797943986426

`eq[0, (n+1)%A062069(n+1)]+1`
-/

namespace A336612.P16379185797943986426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A062069 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A336612.P16379185797943986426

noncomputable section

/-- A336612: Numbers m such that sigma(tau(m)) divides m, where tau(m) is the number of divisors function (A000005) and sigma(m) is the sum of divisors function (A000203).

Offset 1, canonical program `A336612.P16379185797943986426`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 586 terms. -/
def A336612 (n : ℕ) : ℤ :=
  (A336612.P16379185797943986426.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 586 terms. -/
def A336612.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336722.P5907045246606139148

`gcd(Δ[A006218(n)], A306682(n+1))`
-/

namespace A336722.P5907045246606139148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A306682 (n + 1))

end

end A336722.P5907045246606139148

noncomputable section

/-- A336722: a(n) = gcd(tau(n), sigma(n), pod(n)) where tau(k) is the number of divisors of k (A000005), sigma(k) is the sum of divisors of k (A000203) and pod(k) is the product of divisors of k (A007955).

Offset 1, canonical program `A336722.P5907045246606139148`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336722 (n : ℕ) : ℤ :=
  (A336722.P5907045246606139148.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336722.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336940.P4983532060712905772

`A027423(n)/(A011371(n)+1)`
-/

namespace A336940.P4983532060712905772
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027423 n : ℚ) / (A011371 n + 1 : ℚ)

end

end A336940.P4983532060712905772

noncomputable section

/-- A336940: Number of odd divisors of n!.

Offset 0, canonical program `A336940.P4983532060712905772`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 928 terms. -/
def A336940 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A336940.P4983532060712905772.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 928 terms. -/
def A336940.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338086.P4709198276400586346

`4*A037314(n)`
-/

namespace A338086.P4709198276400586346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A037314 n

end

end A338086.P4709198276400586346

noncomputable section

/-- A338086: Duplicate the ternary digits of n, so each 0, 1 or 2 becomes 00, 11 or 22 respectively.

Offset 0, canonical program `A338086.P4709198276400586346`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037314, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A338086 (n : ℕ) : ℤ :=
  A338086.P4709198276400586346.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037314, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A338086.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A338576.P8156366932210890769

`(n+1)*A007955(n+1)`
-/

namespace A338576.P8156366932210890769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A007955 (n + 1)

end

end A338576.P8156366932210890769

noncomputable section

/-- A338576: a(n) = n * pod(n) where pod(n) = the product of divisors of n (A007955).

Offset 1, canonical program `A338576.P8156366932210890769`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007955, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A338576 (n : ℕ) : ℤ :=
  A338576.P8156366932210890769.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007955, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A338576.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A338798.P12407650817915731287

`∑{d}[n+1, (n+1)*A057789(#)]`
-/

namespace A338798.P12407650817915731287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℤ) * A057789 d

end

end A338798.P12407650817915731287

noncomputable section

/-- A338798: a(n) = Sum_{k=1..n-1} lcm(lcm(n, k), lcm(n, n-k)).

Offset 1, canonical program `A338798.P12407650817915731287`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338798 (n : ℕ) : ℤ :=
  A338798.P12407650817915731287.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338798.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338991.P5457441863702357836

`n+1+(n+1)*A006218(n+1)-2*A024916(n+1)`
-/

namespace A338991.P5457441863702357836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (n + 1 : ℤ) * A006218 (n + 1) - 2 * A024916 (n + 1)

end

end A338991.P5457441863702357836

noncomputable section

/-- A338991: a(n) = Sum_{k=1..floor(n/2)} (n-2*k) * floor((n-k)/k).

Offset 1, canonical program `A338991.P5457441863702357836`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006218, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A338991 (n : ℕ) : ℤ :=
  A338991.P5457441863702357836.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006218, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A338991.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A339217.P11568586104941741007

`A099055(n)-Δ[n²]`
-/

namespace A339217.P11568586104941741007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099055 n - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A339217.P11568586104941741007

noncomputable section

/-- A339217: a(n) = Sum_{k=1..n} floor((2*n-k)/k).

Offset 0, canonical program `A339217.P11568586104941741007`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339217 (n : ℕ) : ℤ :=
  A339217.P11568586104941741007.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339217.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A339532.P2271499442616658880

`∩[A339531(n+1), A376506(n+1)]`
-/

namespace A339532.P2271499442616658880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339531 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339532.P2271499442616658880

noncomputable section

/-- A339532: Numbers b > 1 such that the smallest three primes, i.e., 2, 3 and 5 are base-b Wieferich primes.

Offset 1, canonical program `A339532.P2271499442616658880`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1111 terms. -/
def A339532 (n : ℕ) : ℤ :=
  (A339532.P2271499442616658880.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1111 terms. -/
def A339532.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A339813.P10748615880818821302

`and(1, n)*A339814(A004526(n)+1)`
-/

namespace A339813.P10748615880818821302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n : ℤ) * A339814 (A004526 n + 1).toNat

end

end A339813.P10748615880818821302

noncomputable section

/-- A339813: The exponent of the highest power of 2 dividing (A019565(n) - 1).

Offset 1, canonical program `A339813.P10748615880818821302`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339813 (n : ℕ) : ℤ :=
  A339813.P10748615880818821302.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339813.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A339918.P13148734605060684996

`A006218(3*n)-(A005843(n)+A004526(n))`
-/

namespace A339918.P13148734605060684996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (3 * n) - (A005843 n + A004526 n)

end

end A339918.P13148734605060684996

noncomputable section

/-- A339918: a(n) = Sum_{k=1..n} floor(3*n/k).

Offset 0, canonical program `A339918.P13148734605060684996`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6667 terms. -/
def A339918 (n : ℕ) : ℤ :=
  A339918.P13148734605060684996.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6667 terms. -/
def A339918.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340227.P47039189013440188

`(A074816(n+1)-1)/2`
-/

namespace A340227.P47039189013440188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074816 (n + 1) - 1 : ℚ) / 2

end

end A340227.P47039189013440188

noncomputable section

/-- A340227: Number of pairs of divisors of n, (d1,d2), such that d1 < d2 and d1*d2 is squarefree.

Offset 1, canonical program `A340227.P47039189013440188`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A074816, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A340227 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A340227.P47039189013440188.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A074816, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A340227.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A340290.P217938669888073175

`∩[A001363(n+1), A004678(n+1)]`
-/

namespace A340290.P217938669888073175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004678 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340290.P217938669888073175

noncomputable section

/-- A340290: Numbers k that are the representation of primes in base 3 and in base 4.

Offset 1, canonical program `A340290.P217938669888073175`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 179 terms. -/
def A340290 (n : ℕ) : ℤ :=
  (A340290.P217938669888073175.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 179 terms. -/
def A340290.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340453.P332786434363878656

`A359237(n+1)-A359270(n+1)`
-/

namespace A340453.P332786434363878656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359237 (n + 1) - A359270 (n + 1)

end

end A340453.P332786434363878656

noncomputable section

/-- A340453: G.f.: Product_{n>=0} (1 - x^(5*n+5))^2 / ( (1 - x^(5*n+1))*(1 - x^(5*n+4)) ).

Offset 0, canonical program `A340453.P332786434363878656`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340453 (n : ℕ) : ℤ :=
  A340453.P332786434363878656.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340453.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340454.P12418673259723293615

`A359236(n+1)-A359269(n+1)`
-/

namespace A340454.P12418673259723293615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359236 (n + 1) - A359269 (n + 1)

end

end A340454.P12418673259723293615

noncomputable section

/-- A340454: G.f.: Product_{n>=0} (1 - x^(5*n+5))^2 / ( (1 - x^(5*n+2))*(1 - x^(5*n+3)) ).

Offset 0, canonical program `A340454.P12418673259723293615`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340454 (n : ℕ) : ℤ :=
  A340454.P12418673259723293615.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340454.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340455.P8978882349512610872

`A359287(n+1)-A359288(n+1)`
-/

namespace A340455.P8978882349512610872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359287 (n + 1) - A359288 (n + 1)

end

end A340455.P8978882349512610872

noncomputable section

/-- A340455: G.f.: Sum_{n>=0} x^(2*n)/(1 - x^(5*n+2)) - x*Sum_{n>=0} x^(3*n)/(1 - x^(5*n+3)).

Offset 0, canonical program `A340455.P8978882349512610872`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340455 (n : ℕ) : ℤ :=
  A340455.P8978882349512610872.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340455.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340456.P11012612934613790888

`A359238(n+1)-A359241(n+1)`
-/

namespace A340456.P11012612934613790888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359238 (n + 1) - A359241 (n + 1)

end

end A340456.P11012612934613790888

noncomputable section

/-- A340456: G.f.: Sum_{n>=0} x^n/(1 - x^(5*n+1)) - x^3*Sum_{n>=0} x^(4*n)/(1 - x^(5*n+4)).

Offset 0, canonical program `A340456.P11012612934613790888`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340456 (n : ℕ) : ℤ :=
  A340456.P11012612934613790888.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340456.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341276.P16530414387472096334

`1+A028896(n)-A006218(n)`
-/

namespace A341276.P16530414387472096334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A028896 n - A006218 n

end

end A341276.P16530414387472096334

noncomputable section

/-- A341276: a(n) = 1 + 3*n*(n+1) - Sum_{k=1..n} d(k), where d(k) is the number of divisors of k.

Offset 0, canonical program `A341276.P16530414387472096334`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006218, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A341276 (n : ℕ) : ℤ :=
  A341276.P16530414387472096334.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006218, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A341276.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A341409.P3107248310107854820

`(A220235(n+1)+1)%(n+1)`
-/

namespace A341409.P3107248310107854820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A220235 (n + 1) + 1) (n + 1 : ℤ)

end

end A341409.P3107248310107854820

noncomputable section

/-- A341409: a(n) = (Sum_{k=1..3} k^n) mod n.

Offset 1, canonical program `A341409.P3107248310107854820`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341409 (n : ℕ) : ℤ :=
  A341409.P3107248310107854820.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341409.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341655.P6120096683060314371

`A000005(A084920(n+1))`
-/

namespace A341655.P6120096683060314371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A084920 (n + 1)).toNat

end

end A341655.P6120096683060314371

noncomputable section

/-- A341655: a(n) is the number of divisors of prime(n)^2 - 1.

Offset 1, canonical program `A341655.P6120096683060314371`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A084920, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A341655 (n : ℕ) : ℤ :=
  A341655.P6120096683060314371.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A084920, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A341655.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A341831.P2337335291110956279

`∑{d}[n+1, A341832(#)]`
-/

namespace A341831.P2337335291110956279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A341832 d

end

end A341831.P2337335291110956279

noncomputable section

/-- A341831: Dirichlet g.f.: 1 / zeta(s)^5.

Offset 1, canonical program `A341831.P2337335291110956279`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341831 (n : ℕ) : ℤ :=
  A341831.P2337335291110956279.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341831.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342122.P12413058708882309644

`A030101(n+1)%(n+1)`
-/

namespace A342122.P12413058708882309644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030101 (n + 1)) (n + 1 : ℤ)

end

end A342122.P12413058708882309644

noncomputable section

/-- A342122: a(n) is the remainder when the binary reverse of n is divided by n.

Offset 1, canonical program `A342122.P12413058708882309644`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342122 (n : ℕ) : ℤ :=
  A342122.P12413058708882309644.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342122.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342183.P7288875987638950866

`p?[ceil(A289413(n+1)/15)]`
-/

namespace A342183.P7288875987638950866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A289413 (n + 1) : ℚ) / 15⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A342183.P7288875987638950866

noncomputable section

/-- A342183: Primes q such that 15*q-2 and 15*q+2 are cousin primes.

Offset 1, canonical program `A342183.P7288875987638950866`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1503 terms. -/
def A342183 (n : ℕ) : ℤ :=
  A342183.P7288875987638950866.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1503 terms. -/
def A342183.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343452.P6602143482175885216

`eq[0, A111707(n)]`
-/

namespace A343452.P6602143482175885216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111707 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A343452.P6602143482175885216

noncomputable section

/-- A343452: Numbers k such that A085942(k) = 0.

Offset 1, canonical program `A343452.P6602143482175885216`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 191 terms. -/
def A343452 (n : ℕ) : ℤ :=
  (A343452.P6602143482175885216.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 191 terms. -/
def A343452.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344439.P15144765631107196480

`n+1-A206369(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A344439.P15144765631107196480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A206369 (n + 1)

end

end A344439.P15144765631107196480

noncomputable section

/-- A344439: a(n) = n - A206369(n).

Offset 1, canonical program `A344439.P15144765631107196480`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A206369, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A344439 (n : ℕ) : ℤ :=
  A344439.P15144765631107196480.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A206369, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A344439.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A344507.P8322352465595459952

`(A086246(n+1)-a(n-1))/2-a(n-1)` with `a(0)=1`
-/

namespace A344507.P8322352465595459952
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((A086246 (n + 1) : ℚ) - a (n - 1)) / 2 - a (n - 1)

end

end A344507.P8322352465595459952

noncomputable section

/-- A344507: a(n) = [x^n] 2/(3*x + sqrt((1 - 3*x)*(x + 1)) + 1).

Offset 0, canonical program `A344507.P8322352465595459952`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A344507 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A344507.P8322352465595459952.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A344507.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344509.P5578026115865339711

`A344508(n+1)/(n+1)`
-/

namespace A344509.P5578026115865339711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344508 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A344509.P5578026115865339711

noncomputable section

/-- A344509: a(n) = (1/n) * Sum_{k=1..n} k * lcm(k,n).

Offset 1, canonical program `A344509.P5578026115865339711`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A344508, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A344509 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A344509.P5578026115865339711.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A344508, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A344509.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A345367.P10545880049763385947

`∑[A002293(n)]`
-/

namespace A345367.P10545880049763385947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002293 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345367.P10545880049763385947

noncomputable section

/-- A345367: a(n) = Sum_{k=0..n} binomial(4*k,k) / (3*k + 1).

Offset 0, canonical program `A345367.P10545880049763385947`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A345367 (n : ℕ) : ℤ :=
  A345367.P10545880049763385947.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A345367.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A346608.P239523181387048833

`lt[A354924(n+1), 1]+1`
-/

namespace A346608.P239523181387048833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354924 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A346608.P239523181387048833

noncomputable section

/-- A346608: Indices k such that A047994(k) != A344005(k).

Offset 1, canonical program `A346608.P239523181387048833`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A346608 (n : ℕ) : ℤ :=
  (A346608.P239523181387048833.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A346608.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A346680.P11721256151507285597

`A002293(n)-a(n-1)` with `a(0)=1`
-/

namespace A346680.P11721256151507285597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002293 n - a (n - 1)

end

end A346680.P11721256151507285597

noncomputable section

/-- A346680: a(n) = Sum_{k=0..n} (-1)^(n-k) * binomial(4*k,k) / (3*k + 1).

Offset 0, canonical program `A346680.P11721256151507285597`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A346680 (n : ℕ) : ℤ :=
  A346680.P11721256151507285597.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A346680.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347094.P17942219228521589400

`A038040(n+1)+A328722(n+1)`
-/

namespace A347094.P17942219228521589400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038040 (n + 1) + A328722 (n + 1)

end

end A347094.P17942219228521589400

noncomputable section

/-- A347094: Sum of A038040 (convolution of sigma with Euler phi) and its Dirichlet inverse.

Offset 1, canonical program `A347094.P17942219228521589400`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038040, A328722, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A347094 (n : ℕ) : ℤ :=
  A347094.P17942219228521589400.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038040, A328722, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A347094.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A347157.P15772904919310723596

`A347159(n+1)%((n+1)*∏{p}[n+1, #])`
-/

namespace A347157.P15772904919310723596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347159 (n + 1)) (((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p) : ℕ) : ℤ)

end

end A347157.P15772904919310723596

noncomputable section

/-- A347157: Sum of cubes of distinct prime divisors of n that are < sqrt(n).

Offset 1, canonical program `A347157.P15772904919310723596`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347157 (n : ℕ) : ℤ :=
  A347157.P15772904919310723596.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347157.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347158.P10542600853201840676

`A347160(gcd(n+1, ∏{p}[n+1, (n+1)/#]))`
-/

namespace A347158.P10542600853201840676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347160 (Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))))

end

end A347158.P10542600853201840676

noncomputable section

/-- A347158: Sum of 4th powers of distinct prime divisors of n that are < sqrt(n).

Offset 1, canonical program `A347158.P10542600853201840676`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347158 (n : ℕ) : ℤ :=
  A347158.P10542600853201840676.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347158.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347587.P13944628912885106107

`A008628(n)+A014591(n)-A001401(n)`
-/

namespace A347587.P13944628912885106107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008628 n + (A014591 n - A001401 n)

end

end A347587.P13944628912885106107

noncomputable section

/-- A347587: Number of partitions of n into at most 5 distinct parts.

Offset 0, canonical program `A347587.P13944628912885106107`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347587 (n : ℕ) : ℤ :=
  A347587.P13944628912885106107.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347587.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347957.P17731184622233280492

`∑{d}[n+1, A010051(#)*A349371((n+1)/#)]`
-/

namespace A347957.P17731184622233280492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010051 d * A349371 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347957.P17731184622233280492

noncomputable section

/-- A347957: Dirichlet convolution of A001221 (omega) with A003602 (a Kimberling paraphrase).

Offset 1, canonical program `A347957.P17731184622233280492`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347957 (n : ℕ) : ℤ :=
  A347957.P17731184622233280492.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347957.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348093.P4410502798466718450

`∩[A036434(n+1), A045765(n+1)]`
-/

namespace A348093.P4410502798466718450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036434 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045765 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348093.P4410502798466718450

noncomputable section

/-- A348093: Numbers k >= 1 such that there is no pair (x,y) such that x - d(x) = k or y + d(y) = k, where d = A000005 = number of divisors.

Offset 1, canonical program `A348093.P4410502798466718450`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3651 terms. -/
def A348093 (n : ℕ) : ℤ :=
  (A348093.P4410502798466718450.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3651 terms. -/
def A348093.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348155.P18262627327262397184

`A064840(n+1)-A033273(n+1)*A065608(n+1)`
-/

namespace A348155.P18262627327262397184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064840 (n + 1) - A033273 (n + 1) * A065608 (n + 1)

end

end A348155.P18262627327262397184

noncomputable section

/-- A348155: a(n) = tau(n)^2 + omega(n)*(sigma(n) - tau(n)).

Offset 1, canonical program `A348155.P18262627327262397184`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348155 (n : ℕ) : ℤ :=
  A348155.P18262627327262397184.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348155.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348177.P4634512169973297206

`ceil((A046798(n+1)-2)/2)`
-/

namespace A348177.P4634512169973297206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A046798 (n + 1) - 2 : ℚ) / 2⌉

end

end A348177.P4634512169973297206

noncomputable section

/-- A348177: a(n) is the number of pair of positive integers (x, y) with 1 <= x <= y such that sum s = x + y and product p = x * y satisfy s + p = 2^n, with n > 0.

Offset 1, canonical program `A348177.P4634512169973297206`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046798, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348177 (n : ℕ) : ℤ :=
  A348177.P4634512169973297206.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046798, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348177.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348182.P6934266589233988519

`1+a(A057022(n+1)-1)` with `a(0)=1, a(1)=2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348182.P6934266589233988519
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  1 + a (A057022 (n + 1) - 1).toNat

end

end A348182.P6934266589233988519

noncomputable section

/-- A348182: a(1) = 1; for n >= 2, a(n) = 1 + a(A057022(n)).

Offset 1, canonical program `A348182.P6934266589233988519`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057022, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348182 (n : ℕ) : ℤ :=
  (A348182.P6934266589233988519.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057022, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348182.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348688.P17626449757133993604

`A348689(n+2)+∑{d}[n+1, #]`
-/

namespace A348688.P17626449757133993604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348689 (n + 2) + ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)

end

end A348688.P17626449757133993604

noncomputable section

/-- A348688: a(n) = sigma(n) + sigma(n+1) + sigma(n+2) - sigma(n+3), where sigma is the sum of divisors.

Offset 1, canonical program `A348688.P17626449757133993604`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A348688 (n : ℕ) : ℤ :=
  A348688.P17626449757133993604.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A348688.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349236.P18314277781775448456

`A004709(n+2)-A004709(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A349236.P18314277781775448456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (n + 2) - A004709 (n + 1)

end

end A349236.P18314277781775448456

noncomputable section

/-- A349236: Gaps between cubefree numbers: a(n) = A004709(n+1) - A004709(n).

Offset 1, canonical program `A349236.P18314277781775448456`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349236 (n : ℕ) : ℤ :=
  A349236.P18314277781775448456.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349236.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A350159.P901158934797568537

`A099777(n+1)+A000203(n+1)`
-/

namespace A350159.P901158934797568537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099777 (n + 1) + A000203 (n + 1)

end

end A350159.P901158934797568537

noncomputable section

/-- A350159: Number of subgroups of the dicyclic group Dic_n.

Offset 1, canonical program `A350159.P901158934797568537`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A099777, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A350159 (n : ℕ) : ℤ :=
  A350159.P901158934797568537.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A099777, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A350159.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351355.P11606374728532719925

`(n+1)*(n+2)+A006218(n+1)-A006218(2*(n+1))`
-/

namespace A351355.P11606374728532719925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (n + 2) : ℤ) + A006218 (n + 1) - A006218 (2 * (n + 1))

end

end A351355.P11606374728532719925

noncomputable section

/-- A351355: Number of ways the numbers from 1..n do not divide numbers from n+1..2n.

Offset 1, canonical program `A351355.P11606374728532719925`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006218, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351355 (n : ℕ) : ℤ :=
  A351355.P11606374728532719925.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006218, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351355.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351394.P16861572729339474372

`A034444(n+1)+∑{e}[n+1, #-1]`
-/

namespace A351394.P16861572729339474372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) + ∑ p ∈ Nat.primeFactors (f1 n), ((Nat.factorization (f1 n) p : ℤ) - 1)

end

end A351394.P16861572729339474372

noncomputable section

/-- A351394: Number of divisors of n that are either squarefree, prime powers, or both.

Offset 1, canonical program `A351394.P16861572729339474372`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351394 (n : ℕ) : ℤ :=
  A351394.P16861572729339474372.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351394.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351539.P10581206996454005610

`A005087(A306682(n+1)/A009194(n+1))`
-/

namespace A351539.P10581206996454005610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005087 (SequenceMachineLib.roundAway ((A306682 (n + 1) : ℚ) / (A009194 (n + 1) : ℚ))).toNat

end

end A351539.P10581206996454005610

noncomputable section

/-- A351539: Number of odd prime factors p of n such that p^(1+valuation(n,p)) divides sigma(n).

Offset 1, canonical program `A351539.P10581206996454005610`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351539 (n : ℕ) : ℤ :=
  A351539.P10581206996454005610.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351539.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351600.P13050820985612902645

`(n+1)*∑{d}[n+1, A206369(#)]`
-/

namespace A351600.P13050820985612902645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ d ∈ Nat.divisors (f1 n), A206369 d)

end

end A351600.P13050820985612902645

noncomputable section

/-- A351600: a(n) = n^2 * Sum_{d^2|n} 1 / d^2.

Offset 1, canonical program `A351600.P13050820985612902645`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351600 (n : ℕ) : ℤ :=
  A351600.P13050820985612902645.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351600.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351601.P128876837776672129

`∑{d}[n+1, A059376(#)*A361794((n+1)/#)]`
-/

namespace A351601.P128876837776672129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A059376 d * A361794 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351601.P128876837776672129

noncomputable section

/-- A351601: a(n) = n^3 * Sum_{d^2|n} 1 / d^3.

Offset 1, canonical program `A351601.P128876837776672129`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351601 (n : ℕ) : ℤ :=
  A351601.P128876837776672129.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351601.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A352482.P1047364551664792945

`A038040(n+1)/gcd(A038040(n+1), A049820(n+1))`
-/

namespace A352482.P1047364551664792945
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038040 (n + 1) : ℚ) / (Int.gcd (A038040 (n + 1)) (A049820 (n + 1)) : ℚ)

end

end A352482.P1047364551664792945

noncomputable section

/-- A352482: Denominator of (n-d)/n*d where d = A000005(n) is the number of divisors of n.

Offset 1, canonical program `A352482.P1047364551664792945`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A352482 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A352482.P1047364551664792945.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A352482.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A352915.P417262122932191237

`∑{d}[n+1, A007427(#)*A353078((n+1)/#)]`
-/

namespace A352915.P417262122932191237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A353078 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A352915.P417262122932191237

noncomputable section

/-- A352915: Moebius transform of odd primes.

Offset 1, canonical program `A352915.P417262122932191237`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A352915 (n : ℕ) : ℤ :=
  A352915.P417262122932191237.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A352915.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353463.P14904150347216604516

`A010051(n+1)*A010051(n+3)`
-/

namespace A353463.P14904150347216604516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) * A010051 (n + 3)

end

end A353463.P14904150347216604516

noncomputable section

/-- A353463: Characteristic function of lesser twin primes: a(n) = 1 if both n and n+2 are primes, otherwise 0.

Offset 1, canonical program `A353463.P14904150347216604516`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353463 (n : ℕ) : ℤ :=
  A353463.P14904150347216604516.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353463.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353511.P14866992667808189476

`eq[1, A027844(n+1)%2]+1`
-/

namespace A353511.P14866992667808189476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027844 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A353511.P14866992667808189476

noncomputable section

/-- A353511: Positions of odd terms in A001001, where A001001(n) = Sum_{d|n} d*sigma(d).

Offset 1, canonical program `A353511.P14866992667808189476`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353511 (n : ℕ) : ℤ :=
  (A353511.P14866992667808189476.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353511.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353809.P4442062719913416770

`and(A000007(A002654(n+1)), A038459(n+1))`
-/

namespace A353809.P4442062719913416770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000007 (A002654 (n + 1)).toNat) (A038459 (n + 1))

end

end A353809.P4442062719913416770

noncomputable section

/-- A353809: a(n) = 1 if n is of the form 4m+1 and is not the sum of two squares, otherwise 0.

Offset 1, canonical program `A353809.P4442062719913416770`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353809 (n : ℕ) : ℤ :=
  A353809.P4442062719913416770.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353809.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353814.P3429435947782467007

`floor(atan(A002654(n+1)))`
-/

namespace A353814.P3429435947782467007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (A002654 (n + 1) : ℝ)⌋

end

end A353814.P3429435947782467007

noncomputable section

/-- A353814: a(n) = 1 if n is the sum of 2 distinct nonzero squares, 0 otherwise.

Offset 1, canonical program `A353814.P3429435947782467007`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353814 (n : ℕ) : ℤ :=
  A353814.P3429435947782467007.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353814.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A354801.P2682689815244805645

`A024916(n+1)+A004125(n+1)-A153485(n+1)`
-/

namespace A354801.P2682689815244805645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (n + 1) + A004125 (n + 1) - A153485 (n + 1)

end

end A354801.P2682689815244805645

noncomputable section

/-- A354801: n^2 minus the sum of all aliquot divisors of all positive integers <= n.

Offset 1, canonical program `A354801.P2682689815244805645`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004125, A153485, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A354801 (n : ℕ) : ℤ :=
  A354801.P2682689815244805645.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004125, A153485, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A354801.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A355449.P2499303328166495424

`A010051(A059100(n))`
-/

namespace A355449.P2499303328166495424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A059100 n).toNat

end

end A355449.P2499303328166495424

noncomputable section

/-- A355449: a(n) = 1 if n^2 + 2 is prime, 0 otherwise.

Offset 0, canonical program `A355449.P2499303328166495424`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A355449 (n : ℕ) : ℤ :=
  A355449.P2499303328166495424.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A355449.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A355538.P14887925225814743849

`A013939(n+1)-n`
-/

namespace A355538.P14887925225814743849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013939 (n + 1) - (n : ℤ)

end

end A355538.P14887925225814743849

noncomputable section

/-- A355538: Partial sum of A001221 (number of distinct prime factors) minus 1, ranging from 2 to n.

Offset 1, canonical program `A355538.P14887925225814743849`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013939, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A355538 (n : ℕ) : ℤ :=
  A355538.P14887925225814743849.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013939, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A355538.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A355683.P12256357000796435793

`A076479(n+1)*A112526(n+1)`
-/

namespace A355683.P12256357000796435793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076479 (n + 1) * A112526 (n + 1)

end

end A355683.P12256357000796435793

noncomputable section

/-- A355683: Multiplicative with a(p^e) = 0 if e=1 and a(p^e)= -1 if e>1.

Offset 1, canonical program `A355683.P12256357000796435793`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A076479, A112526, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A355683 (n : ℕ) : ℤ :=
  A355683.P12256357000796435793.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A076479, A112526, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A355683.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A356574.P7099550415851902923

`∑{d}[n+1, A344327(#)]`
-/

namespace A356574.P7099550415851902923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A344327 d

end

end A356574.P7099550415851902923

noncomputable section

/-- A356574: a(n) = Sum_{d|n} tau(d^4), where tau(n) = number of divisors of n, cf. A000005.

Offset 1, canonical program `A356574.P7099550415851902923`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356574 (n : ℕ) : ℤ :=
  A356574.P7099550415851902923.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356574.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356744.P10025507909788214387

`∩[A030626(n+1), A062832(n+1)]`
-/

namespace A356744.P10025507909788214387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062832 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356744.P10025507909788214387

noncomputable section

/-- A356744: Numbers k such that both k and k+2 have exactly 8 divisors.

Offset 1, canonical program `A356744.P10025507909788214387`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1489 terms. -/
def A356744 (n : ℕ) : ℤ :=
  (A356744.P10025507909788214387.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1489 terms. -/
def A356744.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A358040.P3658536414461284730

`A000005(A004709(n+1))`
-/

namespace A358040.P3658536414461284730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A004709 (n + 1)).toNat

end

end A358040.P3658536414461284730

noncomputable section

/-- A358040: a(n) is the number of divisors of the n-th cubefree number.

Offset 1, canonical program `A358040.P3658536414461284730`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A004709, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A358040 (n : ℕ) : ℤ :=
  A358040.P3658536414461284730.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A004709, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A358040.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A358350.P1332157614416825726

`eq[1, char[A161351(n+1)]]`
-/

namespace A358350.P1332157614416825726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161351 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A358350.P1332157614416825726

noncomputable section

/-- A358350: Numbers that can be written as (m + sum of digits of m + product of digits of m) for some m.

Offset 1, canonical program `A358350.P1332157614416825726`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6261 terms. -/
def A358350 (n : ℕ) : ℤ :=
  (A358350.P1332157614416825726.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6261 terms. -/
def A358350.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358380.P3103493124036931773

`∑{d}[n+1, A344328(#)]`
-/

namespace A358380.P3103493124036931773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A344328 d

end

end A358380.P3103493124036931773

noncomputable section

/-- A358380: a(n) = Sum_{d|n} tau(d^5), where tau(n) = number of divisors of n, cf. A000005.

Offset 1, canonical program `A358380.P3103493124036931773`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358380 (n : ℕ) : ℤ :=
  A358380.P3103493124036931773.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358380.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A360779.P10771138546409897050

`A033950(n+2)-A033950(n+1)`
-/

namespace A360779.P10771138546409897050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033950 (n + 2) - A033950 (n + 1)

end

end A360779.P10771138546409897050

noncomputable section

/-- A360779: Refactorable numbers gaps: differences between consecutive refactorable numbers.

Offset 1, canonical program `A360779.P10771138546409897050`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033950, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A360779 (n : ℕ) : ℤ :=
  A360779.P10771138546409897050.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033950, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A360779.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A360997.P15884179674524214355

`A074816(n+1)*A007426(n+1)/A007425(n+1)`
-/

namespace A360997.P15884179674524214355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074816 (n + 1) * A007426 (n + 1) : ℚ) / (A007425 (n + 1) : ℚ)

end

end A360997.P15884179674524214355

noncomputable section

/-- A360997: Multiplicative with a(p^e) = e + 3.

Offset 1, canonical program `A360997.P15884179674524214355`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007425, A007426, A074816, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A360997 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A360997.P15884179674524214355.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007425, A007426, A074816, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A360997.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A362059.P13964323751538108829

`A006218(floor((n+1)/2))`
-/

namespace A362059.P13964323751538108829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 ⌊(n + 1 : ℚ) / 2⌋.toNat

end

end A362059.P13964323751538108829

noncomputable section

/-- A362059: Total number of even divisors of all positive integers <= n.

Offset 1, canonical program `A362059.P13964323751538108829`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006218, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A362059 (n : ℕ) : ℤ :=
  A362059.P13964323751538108829.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006218, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A362059.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363028.P10748860771806218141

`A363926(5*n+4)`
-/

namespace A363028.P10748860771806218141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363926 (5 * n + 4)

end

end A363028.P10748860771806218141

noncomputable section

/-- A363028: Expansion of Sum_{k>0} k * x^(2*k-1) / (1 - x^(5*k-3)).

Offset 1, canonical program `A363028.P10748860771806218141`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A363028 (n : ℕ) : ℤ :=
  A363028.P10748860771806218141.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A363028.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363029.P12163374075559595381

`A363926(A016885(n))`
-/

namespace A363029.P12163374075559595381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363926 (A016885 n).toNat

end

end A363029.P12163374075559595381

noncomputable section

/-- A363029: Expansion of Sum_{k>0} k * x^(4*k-2) / (1 - x^(5*k-3)).

Offset 1, canonical program `A363029.P12163374075559595381`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A363029 (n : ℕ) : ℤ :=
  A363029.P12163374075559595381.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A363029.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363030.P10568656945390429790

`A363926(5*n+2)`
-/

namespace A363030.P10568656945390429790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363926 (5 * n + 2)

end

end A363030.P10568656945390429790

noncomputable section

/-- A363030: Expansion of Sum_{k>0} k * x^k / (1 - x^(5*k-3)).

Offset 1, canonical program `A363030.P10568656945390429790`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A363030 (n : ℕ) : ℤ :=
  A363030.P10568656945390429790.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A363030.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363032.P6425717790834151494

`A363926(5*n+1)`
-/

namespace A363032.P6425717790834151494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363926 (5 * n + 1)

end

end A363032.P6425717790834151494

noncomputable section

/-- A363032: Expansion of Sum_{k>0} k * x^(3*k-1) / (1 - x^(5*k-3)).

Offset 1, canonical program `A363032.P6425717790834151494`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A363032 (n : ℕ) : ℤ :=
  A363032.P6425717790834151494.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A363032.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363929.P14850679324281277300

`(A001899(n+1)+A284103(n+1))/5`
-/

namespace A363929.P14850679324281277300
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001899 (n + 1) + A284103 (n + 1) : ℚ) / 5

end

end A363929.P14850679324281277300

noncomputable section

/-- A363929: Expansion of Sum_{k>0} x^(4*k) / (1 - x^(5*k))^2.

Offset 1, canonical program `A363929.P14850679324281277300`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001899, A284103, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A363929 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A363929.P14850679324281277300.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001899, A284103, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A363929.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A364063.P4438084833510939295

`A007503(2*(n+1)-1)/2`
-/

namespace A364063.P4438084833510939295
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007503 (2 * (n + 1) - 1) : ℚ) / 2

end

end A364063.P4438084833510939295

noncomputable section

/-- A364063: Expansion of Sum_{k>0} k * x^k / (1 - x^(2*k-1)).

Offset 1, canonical program `A364063.P4438084833510939295`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007503, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364063 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A364063.P4438084833510939295.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007503, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364063.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A364100.P4905110227889402594

`A284103(5*(n+1)-1)`
-/

namespace A364100.P4905110227889402594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284103 (5 * (n + 1) - 1)

end

end A364100.P4905110227889402594

noncomputable section

/-- A364100: Sum of divisors of 5*n-1 of form 5*k+4.

Offset 1, canonical program `A364100.P4905110227889402594`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284103, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364100 (n : ℕ) : ℤ :=
  A364100.P4905110227889402594.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284103, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364100.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A364101.P9144366412033008636

`A284103(5*(n+1)-2)`
-/

namespace A364101.P9144366412033008636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284103 (5 * (n + 1) - 2)

end

end A364101.P9144366412033008636

noncomputable section

/-- A364101: Sum of divisors of 5*n-2 of form 5*k+4.

Offset 1, canonical program `A364101.P9144366412033008636`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284103, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364101 (n : ℕ) : ℤ :=
  A364101.P9144366412033008636.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284103, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364101.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A364102.P4198180457250018198

`A284103(5*(n+1)-3)`
-/

namespace A364102.P4198180457250018198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284103 (5 * (n + 1) - 3)

end

end A364102.P4198180457250018198

noncomputable section

/-- A364102: Sum of divisors of 5*n-3 of form 5*k+4.

Offset 1, canonical program `A364102.P4198180457250018198`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284103, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364102 (n : ℕ) : ℤ :=
  A364102.P4198180457250018198.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284103, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364102.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A365471.P9978817196578574402

`∪[A001745(n+1), A011531(n+1)]`
-/

namespace A365471.P9978817196578574402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001745 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011531 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A365471.P9978817196578574402

noncomputable section

/-- A365471: Numbers whose digits are not all primes.

Offset 1, canonical program `A365471.P9978817196578574402`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365471 (n : ℕ) : ℤ :=
  (A365471.P9978817196578574402.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365471.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366440.P8490838854557306201

`A000203(A004709(n+1))`
-/

namespace A366440.P8490838854557306201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A004709 (n + 1)).toNat

end

end A366440.P8490838854557306201

noncomputable section

/-- A366440: The sum of divisors of the cubefree numbers (A004709).

Offset 1, canonical program `A366440.P8490838854557306201`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366440 (n : ℕ) : ℤ :=
  A366440.P8490838854557306201.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366440.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366534.P14908058348624275973

`A034444(A268335(n+1))`
-/

namespace A366534.P14908058348624275973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A268335 (n + 1)).toNat

end

end A366534.P14908058348624275973

noncomputable section

/-- A366534: The number of unitary divisors of the exponentially odd numbers (A268335).

Offset 1, canonical program `A366534.P14908058348624275973`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034444, A268335, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366534 (n : ℕ) : ℤ :=
  A366534.P14908058348624275973.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034444, A268335, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366534.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366536.P10748796053883009317

`A034444(A004709(n+1))`
-/

namespace A366536.P10748796053883009317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A004709 (n + 1)).toNat

end

end A366536.P10748796053883009317

noncomputable section

/-- A366536: The number of unitary divisors of the cubefree numbers (A004709).

Offset 1, canonical program `A366536.P10748796053883009317`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, A034444, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366536 (n : ℕ) : ℤ :=
  A366536.P10748796053883009317.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, A034444, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366536.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366538.P17888934153353945255

`A034444(A138302(n+1))`
-/

namespace A366538.P17888934153353945255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A138302 (n + 1)).toNat

end

end A366538.P17888934153353945255

noncomputable section

/-- A366538: The number of unitary divisors of the exponentially 2^n-numbers (A138302).

Offset 1, canonical program `A366538.P17888934153353945255`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034444, A138302, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366538 (n : ℕ) : ℤ :=
  A366538.P17888934153353945255.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034444, A138302, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366538.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366606.P16159170449788144016

`A046798(2*n)`
-/

namespace A366606.P16159170449788144016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046798 (2 * n)

end

end A366606.P16159170449788144016

noncomputable section

/-- A366606: Number of divisors of 4^n+1.

Offset 0, canonical program `A366606.P16159170449788144016`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046798, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366606 (n : ℕ) : ℤ :=
  A366606.P16159170449788144016.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046798, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366606.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366656.P9970264767175051345

`A046798(3*n)`
-/

namespace A366656.P9970264767175051345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046798 (3 * n)

end

end A366656.P9970264767175051345

noncomputable section

/-- A366656: Number of divisors of 8^n+1.

Offset 0, canonical program `A366656.P9970264767175051345`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046798, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366656 (n : ℕ) : ℤ :=
  A366656.P9970264767175051345.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046798, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366656.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366969.P14722931787794667640

`n+1+A024916(n+1)-2*A006218(n+1)`
-/

namespace A366969.P14722931787794667640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A024916 (n + 1) - 2 * A006218 (n + 1)

end

end A366969.P14722931787794667640

noncomputable section

/-- A366969: a(n) = Sum_{k=3..n} (k-2) * floor(n/k).

Offset 1, canonical program `A366969.P14722931787794667640`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006218, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366969 (n : ℕ) : ℤ :=
  A366969.P14722931787794667640.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006218, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366969.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A368473.P11836645701216829903

`A005361(A138302(n+1))`
-/

namespace A368473.P11836645701216829903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A138302 (n + 1)).toNat

end

end A368473.P11836645701216829903

noncomputable section

/-- A368473: Product of exponents of prime factorization of the exponentially 2^n-numbers (A138302).

Offset 1, canonical program `A368473.P11836645701216829903`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, A138302, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368473 (n : ℕ) : ℤ :=
  A368473.P11836645701216829903.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, A138302, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368473.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A368616.P2512839611313928927

`A046992(n+1)-A062774(n+1)`
-/

namespace A368616.P2512839611313928927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046992 (n + 1) - A062774 (n + 1)

end

end A368616.P2512839611313928927

noncomputable section

/-- A368616: a(n) = Sum_{k=1..n} pi(k) * (ceiling(n/k) - floor(n/k)).

Offset 1, canonical program `A368616.P2512839611313928927`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046992, A062774, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368616 (n : ℕ) : ℤ :=
  A368616.P2512839611313928927.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046992, A062774, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368616.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A368712.P1920383267127000560`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, A051903, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368712 (n : ℕ) : ℤ :=
  A368712.P1920383267127000560.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, A051903, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368712.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A368820.P17874303189853155943

`A000330(A000196(n+1))-A035316(n+1)`
-/

namespace A368820.P17874303189853155943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (A000196 (n + 1)).toNat - A035316 (n + 1)

end

end A368820.P17874303189853155943

noncomputable section

/-- A368820: Sum of the squares less than n that do not divide n.

Offset 1, canonical program `A368820.P17874303189853155943`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035316, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368820 (n : ℕ) : ℤ :=
  A368820.P17874303189853155943.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035316, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368820.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A369933.P7451183302863307938`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A138302, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A369933 (n : ℕ) : ℤ :=
  A369933.P7451183302863307938.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A138302, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A369933.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A370831.P12708300684849236063

`A002808(n+1)-a(n-1)` with `a(0)=4`
-/

namespace A370831.P12708300684849236063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A002808 (n + 1) - a (n - 1)

end

end A370831.P12708300684849236063

noncomputable section

/-- A370831: Alternating sum of composites.

Offset 1, canonical program `A370831.P12708300684849236063`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A370831 (n : ℕ) : ℤ :=
  A370831.P12708300684849236063.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A370831.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A372470.P1016400995932517880

`A359473(n+1)*A000005(n+1)`
-/

namespace A372470.P1016400995932517880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359473 (n + 1) * A000005 (n + 1)

end

end A372470.P1016400995932517880

noncomputable section

/-- A372470: Multiplicative with a(p^e) = e+1 if e+1 is a power of 2, and 0 otherwise.

Offset 1, canonical program `A372470.P1016400995932517880`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A359473, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A372470 (n : ℕ) : ℤ :=
  A372470.P1016400995932517880.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A359473, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A372470.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373113.P5306061583150364909

`A066446(n+1)+(n+1)*A000005(n+1)`
-/

namespace A373113.P5306061583150364909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066446 (n + 1) + (n + 1 : ℤ) * A000005 (n + 1)

end

end A373113.P5306061583150364909

noncomputable section

/-- A373113: For n >= 1, a(n) = Sum_{i = n..(n + A000005(n) - 1)} i.

Offset 1, canonical program `A373113.P5306061583150364909`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A066446, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A373113 (n : ℕ) : ℤ :=
  A373113.P5306061583150364909.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A066446, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A373113.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A374146.P10192998287508786538

`A004648(A001223(n+1))`
-/

namespace A374146.P10192998287508786538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004648 (A001223 (n + 1)).toNat

end

end A374146.P10192998287508786538

noncomputable section

/-- A374146: a(n) = prime(g) mod g where prime gap g = prime(n+1) - prime(n).

Offset 1, canonical program `A374146.P10192998287508786538`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001223, A004648, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A374146 (n : ℕ) : ℤ :=
  A374146.P10192998287508786538.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001223, A004648, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A374146.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A374426.P6960625477148608572

`a(n-1)+n+1+A010051(n+1)` with `a(0)=1`
-/

namespace A374426.P6960625477148608572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ((n + 1 : ℤ) + A010051 (n + 1))

end

end A374426.P6960625477148608572

noncomputable section

/-- A374426: a(n) = n*(n + 1)/2 + pi(n), where pi(n) = A000720(n) is the prime counting function.

Offset 1, canonical program `A374426.P6960625477148608572`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374426 (n : ℕ) : ℤ :=
  A374426.P6960625477148608572.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374426.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A374587.P4037298411033951044`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A368715, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A374587 (n : ℕ) : ℤ :=
  A374587.P4037298411033951044.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A368715, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A374587.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A375184.P6361993029201309949

`A375183(A165199(n))`
-/

namespace A375184.P6361993029201309949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375183 (A165199 n).toNat

end

end A375184.P6361993029201309949

noncomputable section

/-- A375184: In the binary expansion of n, complement bits at even positions and to the right of a 0 (the most significant bit corresponding to position 1).

Offset 0, canonical program `A375184.P6361993029201309949`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. -/
def A375184 (n : ℕ) : ℤ :=
  A375184.P6361993029201309949.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. -/
def A375184.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A375960.P2597128475225749997

`∪[A211338(n+1), ∑[A003215(n)]]`
-/

namespace A375960.P2597128475225749997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211338 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A375960.P2597128475225749997

noncomputable section

/-- A375960: Numbers whose product of proper divisors is a cube.

Offset 1, canonical program `A375960.P2597128475225749997`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375960 (n : ℕ) : ℤ :=
  (A375960.P2597128475225749997.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375960.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A376295.P17984946659745279071

`A030101(A047778(n+1))`
-/

namespace A376295.P17984946659745279071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A047778 (n + 1)).toNat

end

end A376295.P17984946659745279071

noncomputable section

/-- A376295: The binary expansion of a(n) is the reversal of the concatenation of the binary expansions of 1,...,n.

Offset 1, canonical program `A376295.P17984946659745279071`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030101, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A376295 (n : ℕ) : ℤ :=
  A376295.P17984946659745279071.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030101, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A376295.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A376365.P17778813821740377865

`A001221(A004709(n+1))`
-/

namespace A376365.P17778813821740377865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A004709 (n + 1)).toNat

end

end A376365.P17778813821740377865

noncomputable section

/-- A376365: The number of distinct prime factors of the cubefree numbers.

Offset 1, canonical program `A376365.P17778813821740377865`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A004709, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A376365 (n : ℕ) : ℤ :=
  A376365.P17778813821740377865.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A004709, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A376365.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A376504.P12289890857249372903

`A034444(n+1)-A001221(n+1)-1`
-/

namespace A376504.P12289890857249372903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) - A001221 (n + 1) - 1

end

end A376504.P12289890857249372903

noncomputable section

/-- A376504: Number of divisors of n that are both composite and squarefree.

Offset 1, canonical program `A376504.P12289890857249372903`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A034444, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A376504 (n : ℕ) : ℤ :=
  A376504.P12289890857249372903.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A034444, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A376504.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A378314.P16230530394060533899

`A190940(n)+a(n-1)` with `a(0)=0`
-/

namespace A378314.P16230530394060533899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A190940 n + a (n - 1)

end

end A378314.P16230530394060533899

noncomputable section

/-- A378314: a(n) = number of subsets of {1, 2, ..., n} that represent the first k divisors of m for some positive integers m and 1 <= k <= A000005(m).

Offset 0, canonical program `A378314.P16230530394060533899`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1096 terms. -/
def A378314 (n : ℕ) : ℤ :=
  A378314.P16230530394060533899.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1096 terms. -/
def A378314.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378930.P6933035363972546027

`A009230(n+1)/A009191(n+1)`
-/

namespace A378930.P6933035363972546027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009230 (n + 1) : ℚ) / (A009191 (n + 1) : ℚ)

end

end A378930.P6933035363972546027

noncomputable section

/-- A378930: a(n) = n * d(n) / gcd(n, d(n))^2, where d = A000005.

Offset 1, canonical program `A378930.P6933035363972546027`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009191, A009230, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A378930 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A378930.P6933035363972546027.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009191, A009230, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A378930.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379012.P2257624155455655702

`A112526(n+1)*A034444(n+1)`
-/

namespace A379012.P2257624155455655702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112526 (n + 1) * A034444 (n + 1)

end

end A379012.P2257624155455655702

noncomputable section

/-- A379012: a(n) = A034444(n) if n is powerful (A001694), and 0 otherwise.

Offset 1, canonical program `A379012.P2257624155455655702`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034444, A112526, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A379012 (n : ℕ) : ℤ :=
  A379012.P2257624155455655702.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034444, A112526, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A379012.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379028.P1083358816384689747

`∏{e}[n+1, A252505(#+1)]`
-/

namespace A379028.P1083358816384689747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A252505 (Nat.factorization (f1 n) p + 1)

end

end A379028.P1083358816384689747

noncomputable section

/-- A379028: The number of modified exponential divisors of n.

Offset 1, canonical program `A379028.P1083358816384689747`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379028 (n : ℕ) : ℤ :=
  A379028.P1083358816384689747.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379028.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A380324.P6780080084449121011

`A035316(A268335(n+1))`
-/

namespace A380324.P6780080084449121011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035316 (A268335 (n + 1)).toNat

end

end A380324.P6780080084449121011

noncomputable section

/-- A380324: The sum of the squares dividing the n-th exponentially odd number.

Offset 1, canonical program `A380324.P6780080084449121011`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035316, A268335, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A380324 (n : ℕ) : ℤ :=
  A380324.P6780080084449121011.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035316, A268335, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A380324.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A380449.P8792025045371275510

`A000203(n+1)+A033273(n+1)`
-/

namespace A380449.P8792025045371275510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + A033273 (n + 1)

end

end A380449.P8792025045371275510

noncomputable section

/-- A380449: Sum of the divisors of n plus the number of nonprime divisors of n.

Offset 1, canonical program `A380449.P8792025045371275510`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033273, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380449 (n : ℕ) : ℤ :=
  A380449.P8792025045371275510.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033273, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380449.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A381973.P380861839472755798

`A120503(A381974(n+1))`
-/

namespace A381973.P380861839472755798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120503 (A381974 (n + 1)).toNat

end

end A381973.P380861839472755798

noncomputable section

/-- A381973: Numbers m such that Sum_{k >= 0} floor(m/3^k) is prime.

Offset 1, canonical program `A381973.P380861839472755798`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 830 terms. -/
def A381973 (n : ℕ) : ℤ :=
  A381973.P380861839472755798.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 830 terms. -/
def A381973.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A382422.P18312410070460850629

`A005361(A046100(n+1))`
-/

namespace A382422.P18312410070460850629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A046100 (n + 1)).toNat

end

end A382422.P18312410070460850629

noncomputable section

/-- A382422: The product of exponents in the prime factorization of the biquadratefree numbers.

Offset 1, canonical program `A382422.P18312410070460850629`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, A046100, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382422 (n : ℕ) : ℤ :=
  A382422.P18312410070460850629.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, A046100, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382422.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A382423.P17194027125548020755

`A369427(A046100(n+1))`
-/

namespace A382423.P17194027125548020755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369427 (A046100 (n + 1)).toNat

end

end A382423.P17194027125548020755

noncomputable section

/-- A382423: The number of exponents in the prime factorization of n-th biquadratefree number that are equal to 2.

Offset 1, canonical program `A382423.P17194027125548020755`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046100, A369427, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382423 (n : ℕ) : ℤ :=
  A382423.P17194027125548020755.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046100, A369427, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382423.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A382630.P1089145758881786009

`floor(A078152(A028310(n))/2)`
-/

namespace A382630.P1089145758881786009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A078152 (A028310 n).toNat : ℚ) / 2⌋

end

end A382630.P1089145758881786009

noncomputable section

/-- A382630: a(n) is the number of ways that n can be written as b+c*d, where b, c and d are positive integers and b < c < d.

Offset 0, canonical program `A382630.P1089145758881786009`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382630 (n : ℕ) : ℤ :=
  A382630.P1089145758881786009.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382630.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382788.P17277517064423675341

`∑{d}[n+1, #*A359473(#)]`
-/

namespace A382788.P17277517064423675341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A359473 d

end

end A382788.P17277517064423675341

noncomputable section

/-- A382788: The sum of divisors of n that are numbers whose number of divisors is a power of 2.

Offset 1, canonical program `A382788.P17277517064423675341`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382788 (n : ℕ) : ℤ :=
  A382788.P17277517064423675341.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382788.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A383277.P6033499868136924238

`char[(n+1)*A034444(n+1)-1]`
-/

namespace A383277.P6033499868136924238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A034444 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A383277.P6033499868136924238

noncomputable section

/-- A383277: The number of divisors d of n for which A034444(d)*d is equal to n.

Offset 1, canonical program `A383277.P6033499868136924238`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383277 (n : ℕ) : ℤ :=
  (A383277.P6033499868136924238.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383277.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A383863.P10403754587481525438

`∏{e}[n+1, A034444(#)+1]`
-/

namespace A383863.P10403754587481525438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (A034444 (Nat.factorization (f1 n) p) + 1)

end

end A383863.P10403754587481525438

noncomputable section

/-- A383863: The number of divisors d of n having the property that for every prime p dividing n the p-adic valuation of d is either 0 or a unitary divisor of the p-adic valuation of n.

Offset 1, canonical program `A383863.P10403754587481525438`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383863 (n : ℕ) : ℤ :=
  A383863.P10403754587481525438.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383863.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383959.P7740077937827887255

`∑{e}[n+1, A034444(#)]`
-/

namespace A383959.P7740077937827887255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A034444 (Nat.factorization (f1 n) p)

end

end A383959.P7740077937827887255

noncomputable section

/-- A383959: The number of prime powers p^e having the property that e is a unitary divisor of the p-adic valuation of n.

Offset 1, canonical program `A383959.P7740077937827887255`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383959 (n : ℕ) : ℤ :=
  A383959.P7740077937827887255.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383959.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385044.P5009034709205246685

`A034444(n+1)/A382488(n+1)`
-/

namespace A385044.P5009034709205246685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034444 (n + 1) : ℚ) / (A382488 (n + 1) : ℚ)

end

end A385044.P5009034709205246685

noncomputable section

/-- A385044: The number of unitary divisors of n that are 5-rough numbers (A007310).

Offset 1, canonical program `A385044.P5009034709205246685`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034444, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A385044 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A385044.P5009034709205246685.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034444, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A385044.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A386012.P6686886019494635702

`(n+1)²*A038040(n+1)`
-/

namespace A386012.P6686886019494635702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A038040 (n + 1)

end

end A386012.P6686886019494635702

noncomputable section

/-- A386012: a(n) = n^3*tau(n).

Offset 1, canonical program `A386012.P6686886019494635702`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A386012 (n : ℕ) : ℤ :=
  A386012.P6686886019494635702.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A386012.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A387633.P9602951934277716072

`A000005(n+1)+n*A034444(n+1)`
-/

namespace A387633.P9602951934277716072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (n : ℤ) * A034444 (n + 1)

end

end A387633.P9602951934277716072

noncomputable section

/-- A387633: a(n) = tau(n) + (n-1) * tau(rad(n)).

Offset 1, canonical program `A387633.P9602951934277716072`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A034444, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A387633 (n : ℕ) : ℤ :=
  A387633.P9602951934277716072.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A034444, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A387633.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A389826.P9330026923282160192

`floor((n+1)*A030101(n+1)/(n+1+A030101(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A389826.P9330026923282160192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 1 : ℤ) * A030101 (n + 1) : ℚ) / ((n + 1 : ℤ) + A030101 (n + 1) : ℚ)⌋

end

end A389826.P9330026923282160192

noncomputable section

/-- A389826: a(n) = floor(n*A030101(n)/(n + A030101(n))).

Offset 1, canonical program `A389826.P9330026923282160192`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030101, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A389826 (n : ℕ) : ℤ :=
  A389826.P9330026923282160192.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030101, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A389826.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A391597.P14152947396835619235

`2*(A006218(n+1)+A061201(n+1))+A013936(n+1)-(n+1)`
-/

namespace A391597.P14152947396835619235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A006218 (n + 1) + A061201 (n + 1)) + A013936 (n + 1) - (n + 1 : ℤ)

end

end A391597.P14152947396835619235

noncomputable section

/-- A391597: a(n) is the number of quadratic polynomials with coefficients in {-n, ..., n}, positive leading coefficient, and having two integer roots.

Offset 1, canonical program `A391597.P14152947396835619235`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006218, A013936, A061201, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A391597 (n : ℕ) : ℤ :=
  A391597.P14152947396835619235.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006218, A013936, A061201, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A391597.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A392013.P4907640714609065482

`A049419(A138302(n+1))`
-/

namespace A392013.P4907640714609065482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 (A138302 (n + 1)).toNat

end

end A392013.P4907640714609065482

noncomputable section

/-- A392013: The number of exponential divisors of the exponentially-2^n numbers.

Offset 1, canonical program `A392013.P4907640714609065482`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049419, A138302, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A392013 (n : ℕ) : ℤ :=
  A392013.P4907640714609065482.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049419, A138302, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A392013.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A394425.P13849324502405230266

`A049419(A046100(n+1))`
-/

namespace A394425.P13849324502405230266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 (A046100 (n + 1)).toNat

end

end A394425.P13849324502405230266

noncomputable section

/-- A394425: The number of exponential divisors of the biquadratefree numbers.

Offset 1, canonical program `A394425.P13849324502405230266`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046100, A049419, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A394425 (n : ℕ) : ℤ :=
  A394425.P13849324502405230266.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046100, A049419, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A394425.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A397071.P1842801038344067177

`n²+6*n+3+2*A006218(n)`
-/

namespace A397071.P1842801038344067177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 6 * n : ℤ) + (3 + 2 * A006218 n)

end

end A397071.P1842801038344067177

noncomputable section

/-- A397071: Number of true statements (x op y) = z, where 0 <= x, y, z <= n, op is in {+,-,*,/}.

Offset 0, canonical program `A397071.P1842801038344067177`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006218, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A397071 (n : ℕ) : ℤ :=
  A397071.P1842801038344067177.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006218, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A397071.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A313680.P17138657541205040173

`A314091(n)-A002264(n+1)`
-/

namespace A313680.P17138657541205040173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314091 n - A002264 (n + 1)

end

end A313680.P17138657541205040173

noncomputable section

/-- A313680: Coordination sequence Gal.6.120.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313680.P17138657541205040173`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2399 terms. -/
def A313680 (n : ℕ) : ℤ :=
  A313680.P17138657541205040173.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2399 terms. -/
def A313680.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314239.P6616137567385777595

`A311420(n)+A047273(n+1)`
-/

namespace A314239.P6616137567385777595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311420 n + A047273 (n + 1)

end

end A314239.P6616137567385777595

noncomputable section

/-- A314239: Coordination sequence Gal.6.642.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314239.P6616137567385777595`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2224 terms. -/
def A314239 (n : ℕ) : ℤ :=
  A314239.P6616137567385777595.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2224 terms. -/
def A314239.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315170.P21766199213765349

`2*A314669(n)-A008574(n)`
-/

namespace A315170.P21766199213765349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314669 n - A008574 n

end

end A315170.P21766199213765349

noncomputable section

/-- A315170: Coordination sequence Gal.6.119.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315170.P21766199213765349`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 846 terms. -/
def A315170 (n : ℕ) : ℤ :=
  A315170.P21766199213765349.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 846 terms. -/
def A315170.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318676.P13641687183144923031

`A000203(n+1)-A318677(n+1)`
-/

namespace A318676.P13641687183144923031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A318677 (n + 1)

end

end A318676.P13641687183144923031

noncomputable section

/-- A318676: Sum of divisors of n that have an even number of prime factors (counted with multiplicity).

Offset 1, canonical program `A318676.P13641687183144923031`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318677, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318676 (n : ℕ) : ℤ :=
  A318676.P13641687183144923031.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318677, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318676.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A333206.P6668117811611631188

`A054054(n^3)`
-/

namespace A333206.P6668117811611631188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 (n ^ 3)

end

end A333206.P6668117811611631188

noncomputable section

/-- A333206: a(n) is the least decimal digit of n^3.

Offset 0, canonical program `A333206.P6668117811611631188`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054054, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A333206 (n : ℕ) : ℤ :=
  A333206.P6668117811611631188.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054054, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A333206.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A334980.P5429576878076949371

`Δ[A337291(n+1)%∑[A006632(n+1)]]`
-/

namespace A334980.P5429576878076949371
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006632 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A337291 (n + 1)) (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A334980.P5429576878076949371

noncomputable section

/-- A334980: a(n) is the total number of down steps between the (n-1)-th and n-th up steps in all 3_2-Dyck paths of length 4*n. A 3_2-Dyck path is a lattice path with steps (1, 3), (1, -1) that starts and ends at y = 0 and stays above the line y = -2.

Offset 0, canonical program `A334980.P5429576878076949371`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A334980 (n : ℕ) : ℤ :=
  A334980.P5429576878076949371.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A334980.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336355.P3645618290858971034

`char[A336357(n+1)-1]`
-/

namespace A336355.P3645618290858971034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336357 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A336355.P3645618290858971034

noncomputable section

/-- A336355: Characteristic function of A336357, numbers k for which A001221(A000203(k)) < A001221(k).

Offset 1, canonical program `A336355.P3645618290858971034`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336355 (n : ℕ) : ℤ :=
  (A336355.P3645618290858971034.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336355.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340328.P16997579508393470053

`∑[A056594(A003156(A028310(n)))]`
-/

namespace A340328.P16997579508393470053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A003156 (A028310 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340328.P16997579508393470053

noncomputable section

/-- A340328: a(n) is the Y-coordinate of the n-th point of a variant of the quadratic Koch curve. Sequence A340327 gives X-coordinates.

Offset 0, canonical program `A340328.P16997579508393470053`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5002 terms. -/
def A340328 (n : ℕ) : ℤ :=
  A340328.P16997579508393470053.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5002 terms. -/
def A340328.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344223.P8815021309923092592

`(n+1)*A344226(n+1)`
-/

namespace A344223.P8815021309923092592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A344226 (n + 1)

end

end A344223.P8815021309923092592

noncomputable section

/-- A344223: a(n) = Sum_{k=1..n} tau(gcd(k,n)^n), where tau(n) is the number of divisors of n.

Offset 1, canonical program `A344223.P8815021309923092592`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A344226, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A344223 (n : ℕ) : ℤ :=
  A344223.P8815021309923092592.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A344226, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A344223.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A380117.P852758399818597968

`n+1-A380118(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A380117.P852758399818597968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A380118 (n + 1)

end

end A380117.P852758399818597968

noncomputable section

/-- A380117: a(n) = n - A380118(n).

Offset 1, canonical program `A380117.P852758399818597968`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A380118, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380117 (n : ℕ) : ℤ :=
  A380117.P852758399818597968.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A380118, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380117.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A314253.P2574229848549978750

`abs(A008592(n)-A314669(n))`
-/

namespace A314253.P2574229848549978750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314669 n|

end

end A314253.P2574229848549978750

noncomputable section

/-- A314253: Coordination sequence Gal.6.627.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314253.P2574229848549978750`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1966 terms. -/
def A314253 (n : ℕ) : ℤ :=
  A314253.P2574229848549978750.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1966 terms. -/
def A314253.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A316096.P2456358805564774649

`eq[4, A125115(n+1)]+1`
-/

namespace A316096.P2456358805564774649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125115 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A316096.P2456358805564774649

noncomputable section

/-- A316096: Numbers m such that A(m+1) = A(m) + 4, where A() = A005101() are the abundant numbers.

Offset 1, canonical program `A316096.P2456358805564774649`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3055 terms. -/
def A316096 (n : ℕ) : ℤ :=
  (A316096.P2456358805564774649.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3055 terms. -/
def A316096.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A317332.P4749212783667228786

`xor(1, A317331(2*(n+1)))`
-/

namespace A317332.P4749212783667228786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A317331 (2 * (n + 1)))

end

end A317332.P4749212783667228786

noncomputable section

/-- A317332: Indices m for which A058304(m) = 8.

Offset 1, canonical program `A317332.P4749212783667228786`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A317332 (n : ℕ) : ℤ :=
  A317332.P4749212783667228786.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A317332.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A317837.P16143556663053745700

`∑{d}[n+1, A002487(#)]-A002487(n+1)`
-/

namespace A317837.P16143556663053745700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002487 d - A002487 (n + 1)

end

end A317837.P16143556663053745700

noncomputable section

/-- A317837: a(n) = Sum_{d|n, d

Offset 1, canonical program `A317837.P16143556663053745700`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A317837 (n : ℕ) : ℤ :=
  A317837.P16143556663053745700.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A317837.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318304.P11675093229014342811

`2*A173557(n+1)-A007947(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A318304.P11675093229014342811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A173557 (n + 1) - A007947 (n + 1)

end

end A318304.P11675093229014342811

noncomputable section

/-- A318304: a(n) = A083254(n)/A003557(n) = (2*A173557(n) - A007947(n)).

Offset 1, canonical program `A318304.P11675093229014342811`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A173557, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A318304 (n : ℕ) : ℤ :=
  A318304.P11675093229014342811.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A173557, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A318304.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318305.P17845263951644339002

`A007947(n+1)-A173557(n+1)`
-/

namespace A318305.P17845263951644339002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) - A173557 (n + 1)

end

end A318305.P17845263951644339002

noncomputable section

/-- A318305: a(n) = Product_{primes p dividing n} p - Product_{primes p dividing n} (p-1).

Offset 1, canonical program `A318305.P17845263951644339002`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A173557, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A318305 (n : ℕ) : ℤ :=
  A318305.P17845263951644339002.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A173557, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A318305.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318306.P1364741733644479395

`∑{e}[n+1, A002487(#)]`
-/

namespace A318306.P1364741733644479395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A002487 (Nat.factorization (f1 n) p)

end

end A318306.P1364741733644479395

noncomputable section

/-- A318306: Additive with a(p^e) = A002487(e).

Offset 1, canonical program `A318306.P1364741733644479395`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318306 (n : ℕ) : ℤ :=
  A318306.P1364741733644479395.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318306.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318474.P8998040803889606684

`A318472(A064549(n+1))`
-/

namespace A318474.P8998040803889606684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318472 (A064549 (n + 1)).toNat

end

end A318474.P8998040803889606684

noncomputable section

/-- A318474: Multiplicative with a(p^e) = 2^A000045(e+1).

Offset 1, canonical program `A318474.P8998040803889606684`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064549, A318472, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A318474 (n : ℕ) : ℤ :=
  A318474.P8998040803889606684.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064549, A318472, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A318474.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318841.P6517978691631055757

`n+1-A173557(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A318841.P6517978691631055757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A173557 (n + 1)

end

end A318841.P6517978691631055757

noncomputable section

/-- A318841: a(n) = n - A173557(n).

Offset 1, canonical program `A318841.P6517978691631055757`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173557, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318841 (n : ℕ) : ℤ :=
  A318841.P6517978691631055757.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173557, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318841.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A319187.P5382770131251099215

`A000005(A045948(n+1))`
-/

namespace A319187.P5382770131251099215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A045948 (n + 1)).toNat

end

end A319187.P5382770131251099215

noncomputable section

/-- A319187: Number of pairwise coprime subsets of {1,...,n} of maximum cardinality (A036234).

Offset 1, canonical program `A319187.P5382770131251099215`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A045948, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A319187 (n : ℕ) : ℤ :=
  A319187.P5382770131251099215.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A045948, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A319187.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A320005.P17788538960493926001

`∑{d}[n+1, A157658(#)*A319995((n+1)/#)]`
-/

namespace A320005.P17788538960493926001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A157658 d * A319995 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A320005.P17788538960493926001

noncomputable section

/-- A320005: Number of proper divisors of n of the form 6*k + 5.

Offset 1, canonical program `A320005.P17788538960493926001`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A320005 (n : ℕ) : ℤ :=
  A320005.P17788538960493926001.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A320005.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322965.P7905832375060057443

`A008473(n+1)/gcd(A008473(n+1), A062953(n+1))`
-/

namespace A322965.P7905832375060057443
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008473 (n + 1) : ℚ) / (Int.gcd (A008473 (n + 1)) (A062953 (n + 1)) : ℚ)

end

end A322965.P7905832375060057443

noncomputable section

/-- A322965: Numerator of Sum_{d | n} 1/rad(d).

Offset 1, canonical program `A322965.P7905832375060057443`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322965 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A322965.P7905832375060057443.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322965.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322977.P5017233657723959374

`∑{d}[n+1, A000035(#-1)*A101264((n+1)/#-1)]`
-/

namespace A322977.P5017233657723959374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000035 (d - 1) * A101264 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A322977.P5017233657723959374

noncomputable section

/-- A322977: Number of even divisors d of n such that d-1 is prime.

Offset 1, canonical program `A322977.P5017233657723959374`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322977 (n : ℕ) : ℤ :=
  A322977.P5017233657723959374.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322977.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A323172.P1211456420547319738

`A001221(n+2)/A008472(n+2)*A323171(n+2)`
-/

namespace A323172.P1211456420547319738
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001221 (n + 2) : ℚ) / (A008472 (n + 2) : ℚ) * (A323171 (n + 2) : ℚ)

end

end A323172.P1211456420547319738

noncomputable section

/-- A323172: Denominator of the average of distinct prime factors of n (A008472(n)/A001221(n)).

Offset 2, canonical program `A323172.P1211456420547319738`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A323172 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A323172.P1211456420547319738.a (n - 2))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A323172.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324121.P11277204959102543780

`gcd(∑{d}[n+1, #], A038040(n+1))`
-/

namespace A324121.P11277204959102543780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) (A038040 (n + 1))

end

end A324121.P11277204959102543780

noncomputable section

/-- A324121: a(n) = gcd(n*d(n), sigma(n)), where d(n) = number of divisors of n (A000005) and sigma(n) = sum of divisors of n (A000203).

Offset 1, canonical program `A324121.P11277204959102543780`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324121 (n : ℕ) : ℤ :=
  (A324121.P11277204959102543780.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324121.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324393.P8276205973310324083

`A000005(n+1)-A324392(n+1)`
-/

namespace A324393.P8276205973310324083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A324392 (n + 1)

end

end A324393.P8276205973310324083

noncomputable section

/-- A324393: a(n) is the number of such divisors d of n that A000120(d) does not divide n, where A000120(d) gives the binary weight of d.

Offset 1, canonical program `A324393.P8276205973310324083`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A324392, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A324393 (n : ℕ) : ℤ :=
  A324393.P8276205973310324083.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A324392, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A324393.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A324967.P4569383054327288296

`A001221(n+1)-A324966(n+1)`
-/

namespace A324967.P4569383054327288296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A324966 (n + 1)

end

end A324967.P4569383054327288296

noncomputable section

/-- A324967: Number of distinct even prime indices of n.

Offset 1, canonical program `A324967.P4569383054327288296`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A324966, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A324967 (n : ℕ) : ℤ :=
  A324967.P4569383054327288296.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A324966, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A324967.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A325334.P3560407124782299478

`A007862(abs(1-n)+1)-1`
-/

namespace A325334.P3560407124782299478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007862 (|1 - (n : ℤ)| + 1).toNat - 1

end

end A325334.P3560407124782299478

noncomputable section

/-- A325334: Number of integer partitions of n with adjusted frequency depth 3 whose parts cover an initial interval of positive integers.

Offset 0, canonical program `A325334.P3560407124782299478`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A325334 (n : ℕ) : ℤ :=
  A325334.P3560407124782299478.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A325334.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A326047.P5005816599197499036

`gcd(1-A050449(n+1)+n, abs(A050457(n+1)))`
-/

namespace A326047.P5005816599197499036
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A050449 (n + 1) + (n : ℤ)) |A050457 (n + 1)|

end

end A326047.P5005816599197499036

noncomputable section

/-- A326047: a(n) = gcd(n-A050449(n), n-A050452(n)), where A050449 and A050452 give the sum of divisors of the form 4k+1 and of the form 4k+3, respectively.

Offset 1, canonical program `A326047.P5005816599197499036`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326047 (n : ℕ) : ℤ :=
  (A326047.P5005816599197499036.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326047.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A326048.P12938399958034011251

`gcd(∑{d}[n+1, #]-2*(n+1), ∑{d}[n+1, #]-(n+1)-A050449(n+1))`
-/

namespace A326048.P12938399958034011251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - (2 * (n + 1) : ℤ)) (((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ) - (n + 1 : ℤ) - A050449 (n + 1))

end

end A326048.P12938399958034011251

noncomputable section

/-- A326048: a(n) = gcd(n-A050449(n), A082052(n)-n), where A050449 and A082052 give the sum of divisors of the form 4k+1, and not of that form, respectively.

Offset 1, canonical program `A326048.P12938399958034011251`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326048 (n : ℕ) : ℤ :=
  (A326048.P12938399958034011251.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326048.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A326124.P12593225634204590298

`A024916(2*(n+1))-A326123(n+1)`
-/

namespace A326124.P12593225634204590298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (2 * (n + 1)) - A326123 (n + 1)

end

end A326124.P12593225634204590298

noncomputable section

/-- A326124: a(n) is the sum of all divisors of the first n positive even numbers.

Offset 1, canonical program `A326124.P12593225634204590298`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326123, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326124 (n : ℕ) : ℤ :=
  A326124.P12593225634204590298.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326123, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326124.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A327141.P2501216070839656359

`∑[A097508(n)*A188037(n+1)+n+1]`
-/

namespace A327141.P2501216070839656359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097508 n * A188037 (n + 1) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327141.P2501216070839656359

noncomputable section

/-- A327141: a(n) is the number of different sizes of integer-sided rectangles which can be placed inside an n X n square.

Offset 1, canonical program `A327141.P2501216070839656359`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327141 (n : ℕ) : ℤ :=
  A327141.P2501216070839656359.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327141.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329375.P559970247339746563

`A329354(n+1)-A328260(n+1)`
-/

namespace A329375.P559970247339746563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329354 (n + 1) - A328260 (n + 1)

end

end A329375.P559970247339746563

noncomputable section

/-- A329375: a(n) = Sum_{d|n, d

Offset 1, canonical program `A329375.P559970247339746563`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A328260, A329354, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A329375 (n : ℕ) : ℤ :=
  A329375.P559970247339746563.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A328260, A329354, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A329375.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A331677.P6402599086706022467

`2*(n+1)-1-A020900(n+1)`
-/

namespace A331677.P6402599086706022467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - 1 - A020900 (n + 1)

end

end A331677.P6402599086706022467

noncomputable section

/-- A331677: a(n) is the difference between the number of primes smaller than prime(n) (i.e., n-1) and greater than prime(n) but less than 2*prime(n).

Offset 1, canonical program `A331677.P6402599086706022467`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020900, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A331677 (n : ℕ) : ℤ :=
  A331677.P6402599086706022467.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020900, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A331677.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A332775.P9237626693656516043

`n+1+A055631(n+1)`
-/

namespace A332775.P9237626693656516043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A055631 (n + 1)

end

end A332775.P9237626693656516043

noncomputable section

/-- A332775: a(n) = n + sopf(n) - omega(n).

Offset 1, canonical program `A332775.P9237626693656516043`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055631, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A332775 (n : ℕ) : ℤ :=
  A332775.P9237626693656516043.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055631, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A332775.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A334075.P6096195119552078021

`A163644(2*(n+1))`
-/

namespace A334075.P6096195119552078021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163644 (2 * (n + 1))

end

end A334075.P6096195119552078021

noncomputable section

/-- A334075: a(n) is the denominator of the sum of reciprocals of primes not exceeding n and not dividing binomial(2*n, n).

Offset 1, canonical program `A334075.P6096195119552078021`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 414 terms. -/
def A334075 (n : ℕ) : ℤ :=
  A334075.P6096195119552078021.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 414 terms. -/
def A334075.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A335660.P10141285614841351256

`n+1-A334714(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A335660.P10141285614841351256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A334714 (n + 1)

end

end A335660.P10141285614841351256

noncomputable section

/-- A335660: a(n) = n - A334714(n).

Offset 1, canonical program `A335660.P10141285614841351256`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A334714, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A335660 (n : ℕ) : ℤ :=
  A335660.P10141285614841351256.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A334714, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A335660.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A337491.P12360132993066818082

`eq[1, A101264(2*n+1)+A101264(n+1)]`
-/

namespace A337491.P12360132993066818082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (2 * n + 1) + A101264 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A337491.P12360132993066818082

noncomputable section

/-- A337491: Numbers k such that exactly one of 2*k + 3 and 4*k + 3 is prime.

Offset 1, canonical program `A337491.P12360132993066818082`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A337491 (n : ℕ) : ℤ :=
  (A337491.P12360132993066818082.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A337491.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337634.P13422522115950852119

`∑[(A143299(n+2)*A143299(n+1))%2]`
-/

namespace A337634.P13422522115950852119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143299 (n + 2) * A143299 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337634.P13422522115950852119

noncomputable section

/-- A337634: Number of numbers k <= n such that both k and k+1 are in A095096.

Offset 0, canonical program `A337634.P13422522115950852119`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A337634 (n : ℕ) : ℤ :=
  A337634.P13422522115950852119.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A337634.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337979.P12003257843865772320

`a(A337978(n+1)-1)+1` with `a(0)=0, a(1)=1`
-/

namespace A337979.P12003257843865772320
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (A337978 (n + 1) - 1).toNat + 1

end

end A337979.P12003257843865772320

noncomputable section

/-- A337979: Define a map f(n):= n-> n + pi(n) - pi(n + pi(n)), where pi(n) is the prime count of n (n>=1). a(n) is the number of steps for n to reach 1 under repeated iteration of f.

Offset 1, canonical program `A337979.P12003257843865772320`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A337979 (n : ℕ) : ℤ :=
  (A337979.P12003257843865772320.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A337979.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338630.P18368234724363970962

`(n+3)%ceil((A046978(A046644(n+1))+n)/2)`
-/

namespace A338630.P18368234724363970962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 3 : ℤ) ⌈(A046978 (A046644 (n + 1)).toNat + (n : ℤ) : ℚ) / 2⌉

end

end A338630.P18368234724363970962

noncomputable section

/-- A338630: Least number of odd primes that add up to n, or 0 if no such representation is possible.

Offset 1, canonical program `A338630.P18368234724363970962`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A338630 (n : ℕ) : ℤ :=
  A338630.P18368234724363970962.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A338630.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A339026.P11730030012353626513

`(A338894(n+1)-(n+1)²)/2`
-/

namespace A339026.P11730030012353626513
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A338894 (n + 1) - ((n + 1) ^ 2 : ℤ) : ℚ) / 2

end

end A339026.P11730030012353626513

noncomputable section

/-- A339026: Number of pairs (x,y): 1 <= x < y <= n*n, such that x*y is a square.

Offset 1, canonical program `A339026.P11730030012353626513`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A338894, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A339026 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A339026.P11730030012353626513.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A338894, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A339026.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A339558.P13443226626530005965

`∑{d}[n+1, A101264(#-A101264(#))]`
-/

namespace A339558.P13443226626530005965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A101264 ((d : ℤ) - A101264 d).toNat

end

end A339558.P13443226626530005965

noncomputable section

/-- A339558: Number of divisors of 2n that are the average of a pair of twin primes.

Offset 1, canonical program `A339558.P13443226626530005965`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339558 (n : ℕ) : ℤ :=
  A339558.P13443226626530005965.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339558.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340677.P3063293353114173549

`A007947(n+1)/A099636(n+1)`
-/

namespace A340677.P3063293353114173549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) / (A099636 (n + 1) : ℚ)

end

end A340677.P3063293353114173549

noncomputable section

/-- A340677: a(n) = A007947(n) / gcd(A007947(n), A008472(n)).

Offset 1, canonical program `A340677.P3063293353114173549`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A099636, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A340677 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A340677.P3063293353114173549.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A099636, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A340677.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A340678.P9299570965818863783

`A008472(n+1)/A099636(n+1)`
-/

namespace A340678.P9299570965818863783
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008472 (n + 1) : ℚ) / (A099636 (n + 1) : ℚ)

end

end A340678.P9299570965818863783

noncomputable section

/-- A340678: a(n) = A008472(n) / gcd(A007947(n), A008472(n)).

Offset 1, canonical program `A340678.P9299570965818863783`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008472, A099636, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A340678 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A340678.P9299570965818863783.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008472, A099636, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A340678.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A343500.P14062882048981038168

`2*A338692(n+1)`
-/

namespace A343500.P14062882048981038168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A338692 (n + 1)

end

end A343500.P14062882048981038168

noncomputable section

/-- A343500: Positions of 2's in A003324.

Offset 1, canonical program `A343500.P14062882048981038168`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A338692, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A343500 (n : ℕ) : ℤ :=
  A343500.P14062882048981038168.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A338692, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A343500.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A344908.P7773285099346039389

`∑{p}[n+1, #*A324966(#)]`
-/

namespace A344908.P7773285099346039389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (p : ℤ) * A324966 p

end

end A344908.P7773285099346039389

noncomputable section

/-- A344908: Sum of the distinct odd-indexed prime divisors, p_{2k-1}, of n.

Offset 1, canonical program `A344908.P7773285099346039389`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344908 (n : ℕ) : ℤ :=
  A344908.P7773285099346039389.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344908.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348825.P9957985684775902156

`record[(n+2)%A099378(n+2)]`
-/

namespace A348825.P9957985684775902156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 2 : ℤ) (A099378 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348825.P9957985684775902156

noncomputable section

/-- A348825: Numbers k such that the denominator of the harmonic mean of the divisors of k is larger than k.

Offset 1, canonical program `A348825.P9957985684775902156`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A348825 (n : ℕ) : ℤ :=
  A348825.P9957985684775902156.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A348825.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349330.P17425887972492855764

`A035316(n+1)+A056595(n+1)`
-/

namespace A349330.P17425887972492855764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035316 (n + 1) + A056595 (n + 1)

end

end A349330.P17425887972492855764

noncomputable section

/-- A349330: a(n) = Sum_{d|n} d^c(d), where c is the characteristic function of squares (A010052).

Offset 1, canonical program `A349330.P17425887972492855764`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035316, A056595, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349330 (n : ℕ) : ℤ :=
  A349330.P17425887972492855764.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035316, A056595, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349330.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349658.P4827521432200241691

`A000005(n+1)-A336041(n+1)`
-/

namespace A349658.P4827521432200241691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A336041 (n + 1)

end

end A349658.P4827521432200241691

noncomputable section

/-- A349658: Number of nonrefactorable divisors of n.

Offset 1, canonical program `A349658.P4827521432200241691`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A336041, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349658 (n : ℕ) : ℤ :=
  A349658.P4827521432200241691.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A336041, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349658.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351520.P14176785441679004629

`A000005(n+1)+A013928(n+2)-A034444(n+1)`
-/

namespace A351520.P14176785441679004629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + A013928 (n + 2) - A034444 (n + 1)

end

end A351520.P14176785441679004629

noncomputable section

/-- A351520: Number of numbers <= n that are either squarefree, a divisor of n, or both.

Offset 1, canonical program `A351520.P14176785441679004629`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A013928, A034444, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351520 (n : ℕ) : ℤ :=
  A351520.P14176785441679004629.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A013928, A034444, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351520.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351606.P6841806232004786660

`∑{d}[n+1, A069093(#)*A351309((n+1)/#)]`
-/

namespace A351606.P6841806232004786660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A069093 d * A351309 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351606.P6841806232004786660

noncomputable section

/-- A351606: a(n) = n^8 * Sum_{d^2|n} 1 / d^8.

Offset 1, canonical program `A351606.P6841806232004786660`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351606 (n : ℕ) : ℤ :=
  A351606.P6841806232004786660.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351606.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351711.P10274480873794141417

`A248577(n+1)+∑{d}[n+1, A055631(#)]`
-/

namespace A351711.P10274480873794141417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248577 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A055631 d

end

end A351711.P10274480873794141417

noncomputable section

/-- A351711: a(n) = Sum_{p|n, p prime} Sum_{d|n} gcd(d,p).

Offset 1, canonical program `A351711.P10274480873794141417`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351711 (n : ℕ) : ℤ :=
  A351711.P10274480873794141417.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351711.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353134.P833942943619179990

`A000720(A057147(n+1))`
-/

namespace A353134.P833942943619179990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A057147 (n + 1)).toNat

end

end A353134.P833942943619179990

noncomputable section

/-- A353134: a(n) = PrimePi(n*SumOfDigits(n)).

Offset 1, canonical program `A353134.P833942943619179990`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353134 (n : ℕ) : ℤ :=
  A353134.P833942943619179990.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353134.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353555.P6127306696939932195

`A065043(n+1)-A353557(n+1)`
-/

namespace A353555.P6127306696939932195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065043 (n + 1) - A353557 (n + 1)

end

end A353555.P6127306696939932195

noncomputable section

/-- A353555: a(n) = 1 if n is an even number with an even number of prime factors (counted with multiplicity), otherwise 0.

Offset 1, canonical program `A353555.P6127306696939932195`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065043, A353557, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353555 (n : ℕ) : ℤ :=
  A353555.P6127306696939932195.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065043, A353557, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353555.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A354035.P17145571393381424907

`A010684(n)%A081325(n+1)`
-/

namespace A354035.P17145571393381424907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010684 n) (A081325 (n + 1))

end

end A354035.P17145571393381424907

noncomputable section

/-- A354035: a(n) = 1 if n is odd and sigma(n^2) == 3 (mod 4), otherwise 0.

Offset 1, canonical program `A354035.P17145571393381424907`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354035 (n : ℕ) : ℤ :=
  A354035.P17145571393381424907.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354035.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A357214.P17117338288475535915

`2^A065855(n+1)`
-/

namespace A357214.P17117338288475535915
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A065855 (n + 1) : ℤ)

end

end A357214.P17117338288475535915

noncomputable section

/-- A357214: a(n) = number of subsets S of {1, 2, ..., n} such that every number in S is a composite.

Offset 1, canonical program `A357214.P17117338288475535915`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065855, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A357214 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A357214.P17117338288475535915.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065855, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A357214.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A357689.P3293934987701122531

`(n+1)/A204455(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A357689.P3293934987701122531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A204455 (n + 1) : ℚ)

end

end A357689.P3293934987701122531

noncomputable section

/-- A357689: a(n) = n/A204455(n), where A204455(n) is the product of odd noncomposite divisors of n.

Offset 1, canonical program `A357689.P3293934987701122531`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A204455, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A357689 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A357689.P3293934987701122531.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A204455, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A357689.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A358776.P5160008666837522864

`filter[A036554(n+1), A353669(#)]`
-/

namespace A358776.P5160008666837522864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036554 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353669 (f1 j).toNat = 1) n)

end

end A358776.P5160008666837522864

noncomputable section

/-- A358776: Positive integers with an even number of prime factors (counting repetitions) that sum to an odd number.

Offset 1, canonical program `A358776.P5160008666837522864`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5132 terms. -/
def A358776 (n : ℕ) : ℤ :=
  A358776.P5160008666837522864.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5132 terms. -/
def A358776.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A359172.P12560099474824915828

`A011655(n+1)-A359170(n+1)`
-/

namespace A359172.P12560099474824915828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (n + 1) - A359170 (n + 1)

end

end A359172.P12560099474824915828

noncomputable section

/-- A359172: a(n) = 1 if n is not a multiple of 3 and has an odd number of prime factors (with multiplicity), otherwise a(n) = 0.

Offset 1, canonical program `A359172.P12560099474824915828`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359170, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359172 (n : ℕ) : ℤ :=
  A359172.P12560099474824915828.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359170, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359172.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A359300.P5805329302892074238

`A007917(n+2)+A007918(n+2)-2*(n+2)`
-/

namespace A359300.P5805329302892074238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 (n + 2) + A007918 (n + 2) - (2 * (n + 2) : ℤ)

end

end A359300.P5805329302892074238

noncomputable section

/-- A359300: a(n) = (distance from n to nearest prime >= n) - (distance from n to nearest prime <= n).

Offset 2, canonical program `A359300.P5805329302892074238`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007917, A007918, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A359300 (n : ℕ) : ℤ :=
  A359300.P5805329302892074238.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007917, A007918, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A359300.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A359324.P6562747664872002453

`A319995(6*(n+1)-2)`
-/

namespace A359324.P6562747664872002453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319995 (6 * (n + 1) - 2)

end

end A359324.P6562747664872002453

noncomputable section

/-- A359324: Number of divisors of 6*n-2 of form 6*k+5.

Offset 1, canonical program `A359324.P6562747664872002453`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A319995, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359324 (n : ℕ) : ℤ :=
  A359324.P6562747664872002453.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A319995, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359324.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A359325.P14100235319154863886

`A319995(6*(n+1)-3)`
-/

namespace A359325.P14100235319154863886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319995 (6 * (n + 1) - 3)

end

end A359325.P14100235319154863886

noncomputable section

/-- A359325: Number of divisors of 6*n-3 of form 6*k+5.

Offset 1, canonical program `A359325.P14100235319154863886`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A319995, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359325 (n : ℕ) : ℤ :=
  A359325.P14100235319154863886.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A319995, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359325.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A359326.P15324181314708313720

`A319995(6*(n+1)-4)`
-/

namespace A359326.P15324181314708313720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319995 (6 * (n + 1) - 4)

end

end A359326.P15324181314708313720

noncomputable section

/-- A359326: Number of divisors of 6*n-4 of form 6*k+5.

Offset 1, canonical program `A359326.P15324181314708313720`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A319995, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359326 (n : ℕ) : ℤ :=
  A359326.P15324181314708313720.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A319995, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359326.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A359327.P16853457965875715644

`A319995(6*n+1)`
-/

namespace A359327.P16853457965875715644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319995 (6 * n + 1)

end

end A359327.P16853457965875715644

noncomputable section

/-- A359327: Number of divisors of 6*n-5 of form 6*k+5.

Offset 1, canonical program `A359327.P16853457965875715644`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A319995, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359327 (n : ℕ) : ℤ :=
  A359327.P16853457965875715644.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A319995, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359327.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A361266.P5093072706684285124

`A361264(n+1)*A007947(n+1)`
-/

namespace A361266.P5093072706684285124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361264 (n + 1) * A007947 (n + 1)

end

end A361266.P5093072706684285124

noncomputable section

/-- A361266: Multiplicative with a(p^e) = p^(e + 3), e > 0.

Offset 1, canonical program `A361266.P5093072706684285124`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A361264, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A361266 (n : ℕ) : ℤ :=
  A361266.P5093072706684285124.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A361264, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A361266.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A361268.P17929476801326375082

`A005361(n+1)*A361264(n+1)`
-/

namespace A361268.P17929476801326375082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1) * A361264 (n + 1)

end

end A361268.P17929476801326375082

noncomputable section

/-- A361268: Multiplicative with a(p^e) = e * p^(e + 2), e > 0.

Offset 1, canonical program `A361268.P17929476801326375082`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, A361264, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A361268 (n : ℕ) : ℤ :=
  A361268.P17929476801326375082.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, A361264, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A361268.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A362935.P15794074966290772588

`A362934(n+1)/2`
-/

namespace A362935.P15794074966290772588
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A362934 (n + 1) : ℚ) / 2

end

end A362935.P15794074966290772588

noncomputable section

/-- A362935: a(n) = (A000982(n) - A132188(n))/2.

Offset 1, canonical program `A362935.P15794074966290772588`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A362934, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A362935 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A362935.P15794074966290772588.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A362934, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A362935.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363291.P5280356287079717182

`A050449(4*(n+1)-1)`
-/

namespace A363291.P5280356287079717182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050449 (4 * (n + 1) - 1)

end

end A363291.P5280356287079717182

noncomputable section

/-- A363291: Sum of divisors of 4*n-1 of form 4*k+1.

Offset 1, canonical program `A363291.P5280356287079717182`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050449, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363291 (n : ℕ) : ℤ :=
  A363291.P5280356287079717182.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050449, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363291.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363316.P139402600971360063

`A050449(4*(n+1)-2)`
-/

namespace A363316.P139402600971360063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050449 (4 * (n + 1) - 2)

end

end A363316.P139402600971360063

noncomputable section

/-- A363316: Sum of divisors of 4*n-2 of form 4*k+1.

Offset 1, canonical program `A363316.P139402600971360063`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050449, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363316 (n : ℕ) : ℤ :=
  A363316.P139402600971360063.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050449, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363316.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A363903.P2367214496446781928

`(3*A001826(n+1)+A050449(n+1))/4`
-/

namespace A363903.P2367214496446781928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A001826 (n + 1) + A050449 (n + 1) : ℚ) / 4

end

end A363903.P2367214496446781928

noncomputable section

/-- A363903: Expansion of Sum_{k>0} x^k / (1 - x^(4*k))^2.

Offset 1, canonical program `A363903.P2367214496446781928`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001826, A050449, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A363903 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A363903.P2367214496446781928.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001826, A050449, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A363903.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A368647.P6890929061440035933

`A005090(n+1)-A005088(n+1)`
-/

namespace A368647.P6890929061440035933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005090 (n + 1) - A005088 (n + 1)

end

end A368647.P6890929061440035933

noncomputable section

/-- A368647: The number of distinct primes of the form 3*k+2 dividing n minus the number of distinct primes of the form 3*k+1 dividing n.

Offset 1, canonical program `A368647.P6890929061440035933`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005088, A005090, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368647 (n : ℕ) : ℤ :=
  A368647.P6890929061440035933.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005088, A005090, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368647.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A376074.P11076744248211188563

`A099777(A355264(n+1))`
-/

namespace A376074.P11076744248211188563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099777 (A355264 (n + 1)).toNat

end

end A376074.P11076744248211188563

noncomputable section

/-- A376074: a(n) is the number of distinct right circular cones with integer radius and height having the same volume as a sphere with radius n.

Offset 1, canonical program `A376074.P11076744248211188563`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1680 terms. -/
def A376074 (n : ℕ) : ℤ :=
  A376074.P11076744248211188563.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1680 terms. -/
def A376074.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376760.P3377594604691721728

`2*A002808(n+1)-A000720(2*A002808(n+1))-(n+1)`
-/

namespace A376760.P3377594604691721728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002808 (n + 1) - A000720 (2 * A002808 (n + 1)).toNat - (n + 1 : ℤ)

end

end A376760.P3377594604691721728

noncomputable section

/-- A376760: Let c(n) = A002808(n) denote the n-th composite number; a(n) = number of composite numbers c with c(n) <= c <= 2*c(n).

Offset 1, canonical program `A376760.P3377594604691721728`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A002808, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A376760 (n : ℕ) : ℤ :=
  A376760.P3377594604691721728.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A002808, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A376760.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A376761.P13674052709178488879

`A000720(2*A002808(n+1))-A002808(n+1)+n+2`
-/

namespace A376761.P13674052709178488879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (2 * A002808 (n + 1)).toNat - A002808 (n + 1) + (n + 2 : ℤ)

end

end A376761.P13674052709178488879

noncomputable section

/-- A376761: Number of primes between the n-th composite number c(n) and 2*c(n).

Offset 1, canonical program `A376761.P13674052709178488879`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A002808, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A376761 (n : ℕ) : ℤ :=
  A376761.P13674052709178488879.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A002808, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A376761.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A376762.P14200299004774236761

`A210497(n+1)-A020900(n+2)+n+1`
-/

namespace A376762.P14200299004774236761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210497 (n + 1) - A020900 (n + 2) + (n + 1 : ℤ)

end

end A376762.P14200299004774236761

noncomputable section

/-- A376762: Number of composite numbers c in the range prime(n) < c <= 2*prime(n+1).

Offset 1, canonical program `A376762.P14200299004774236761`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020900, A210497, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A376762 (n : ℕ) : ℤ :=
  A376762.P14200299004774236761.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020900, A210497, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A376762.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A377430.P4255043940740327153

`eq[2, Δ[A112930(n+1)]]+1`
-/

namespace A377430.P4255043940740327153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112930 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A377430.P4255043940740327153

noncomputable section

/-- A377430: Numbers k such that there is exactly one squarefree number between prime(k)+1 and prime(k+1)-1.

Offset 1, canonical program `A377430.P4255043940740327153`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1038 terms. -/
def A377430 (n : ℕ) : ℤ :=
  (A377430.P4255043940740327153.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1038 terms. -/
def A377430.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378367.P15446087870678905426

`A361102(A356068(n+1))`
-/

namespace A378367.P15446087870678905426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (A356068 (n + 1)).toNat

end

end A378367.P15446087870678905426

noncomputable section

/-- A378367: Greatest non prime power <= n, allowing 1.

Offset 1, canonical program `A378367.P15446087870678905426`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A356068, A361102, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A378367 (n : ℕ) : ℤ :=
  A378367.P15446087870678905426.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A356068, A361102, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A378367.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A378689.P1510602258272592055

`A007955(n+1)/A308360(n+1)`
-/

namespace A378689.P1510602258272592055
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007955 (n + 1) : ℚ) / (A308360 (n + 1) : ℚ)

end

end A378689.P1510602258272592055

noncomputable section

/-- A378689: a(n) = product of divisors d of n that are not coreful.

Offset 1, canonical program `A378689.P1510602258272592055`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007955, A308360, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A378689 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A378689.P1510602258272592055.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007955, A308360, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A378689.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379584.P4296113022240431250

`gcd(A034386(n), A045948(n+1))*A045948(n+1)`
-/

namespace A379584.P4296113022240431250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A034386 n) (A045948 (n + 1)) : ℤ) * A045948 (n + 1)

end

end A379584.P4296113022240431250

noncomputable section

/-- A379584: Denominators of the partial sums of the reciprocals of the powerful part function (A057521).

Offset 1, canonical program `A379584.P4296113022240431250`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 251 terms. -/
def A379584 (n : ℕ) : ℤ :=
  A379584.P4296113022240431250.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 251 terms. -/
def A379584.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382888.P10950597595188319361

`A007947(A004709(n+1))`
-/

namespace A382888.P10950597595188319361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A004709 (n + 1)).toNat

end

end A382888.P10950597595188319361

noncomputable section

/-- A382888: The squarefree kernel of the n-th cubefree number.

Offset 1, canonical program `A382888.P10950597595188319361`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, A007947, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382888 (n : ℕ) : ℤ :=
  A382888.P10950597595188319361.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, A007947, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382888.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A382904.P15714576197998800300

`A007947(A046100(n+1))`
-/

namespace A382904.P15714576197998800300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A046100 (n + 1)).toNat

end

end A382904.P15714576197998800300

noncomputable section

/-- A382904: The squarefree kernel of the n-th biquadratefree number.

Offset 1, canonical program `A382904.P15714576197998800300`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A046100, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382904 (n : ℕ) : ℤ :=
  A382904.P15714576197998800300.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A046100, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382904.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A386438.P6678444631215707728

`A007503(n+1)-A348219(n+1)`
-/

namespace A386438.P6678444631215707728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007503 (n + 1) - A348219 (n + 1)

end

end A386438.P6678444631215707728

noncomputable section

/-- A386438: a(n) = sigma(n) + omega(n) - n * Sum_{p|n, p prime} 1 / p.

Offset 1, canonical program `A386438.P6678444631215707728`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007503, A348219, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A386438 (n : ℕ) : ℤ :=
  A386438.P6678444631215707728.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007503, A348219, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A386438.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A317751.P3394042211911026629

`A219977(A034444(n+1))+A046951(n+1)`
-/

namespace A317751.P3394042211911026629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219977 (A034444 (n + 1)).toNat + A046951 (n + 1)

end

end A317751.P3394042211911026629

noncomputable section

/-- A317751: Number of divisors d of n such that there exists a factorization of n into factors > 1 with GCD d.

Offset 1, canonical program `A317751.P3394042211911026629`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A317751 (n : ℕ) : ℤ :=
  A317751.P3394042211911026629.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A317751.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318314.P6359373759309910718

`A006519(n+1)*A317934(n+1)`
-/

namespace A318314.P6359373759309910718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1) * A317934 (n + 1)

end

end A318314.P6359373759309910718

noncomputable section

/-- A318314: Denominators of the sequence whose Dirichlet convolution with itself yields A068068, number of odd unitary divisors of n.

Offset 1, canonical program `A318314.P6359373759309910718`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A317934, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318314 (n : ℕ) : ℤ :=
  A318314.P6359373759309910718.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A317934, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318314.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318658.P11069036608746997709

`2^A318659(n+1)`
-/

namespace A318658.P11069036608746997709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A318659 (n + 1) : ℤ)

end

end A318658.P11069036608746997709

noncomputable section

/-- A318658: Denominators of the sequence whose Dirichlet convolution with itself yields A087003, a(2n) = 0 and a(2n+1) = moebius(2n+1).

Offset 1, canonical program `A318658.P11069036608746997709`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318659, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318658 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A318658.P11069036608746997709.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318659, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318658.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318674.P1768733066523102613

`(A048250(n+1)+A023900(n+1))/2`
-/

namespace A318674.P1768733066523102613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048250 (n + 1) + A023900 (n + 1) : ℚ) / 2

end

end A318674.P1768733066523102613

noncomputable section

/-- A318674: Sum of squarefree divisors of n that have an even number of prime factors.

Offset 1, canonical program `A318674.P1768733066523102613`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023900, A048250, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A318674 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A318674.P1768733066523102613.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023900, A048250, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A318674.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A319132.P2708375044891269701

`∑{d}[n+1, A048250(#)]`
-/

namespace A319132.P2708375044891269701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048250 d

end

end A319132.P2708375044891269701

noncomputable section

/-- A319132: a(n) = Sum_{d|n} Sum_{j|d} mu(j)^2*j, where mu = Möbius function (A008683).

Offset 1, canonical program `A319132.P2708375044891269701`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319132 (n : ℕ) : ℤ :=
  A319132.P2708375044891269701.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319132.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A323308.P13705898636068285078

`A034444(A057521(n+1))`
-/

namespace A323308.P13705898636068285078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A057521 (n + 1)).toNat

end

end A323308.P13705898636068285078

noncomputable section

/-- A323308: The number of exponential semiproper divisors of n.

Offset 1, canonical program `A323308.P13705898636068285078`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034444, A057521, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A323308 (n : ℕ) : ℤ :=
  A323308.P13705898636068285078.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034444, A057521, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A323308.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A325837.P10403141756841379382

`A046951(A003557(n+1))`
-/

namespace A325837.P10403141756841379382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A003557 (n + 1)).toNat

end

end A325837.P10403141756841379382

noncomputable section

/-- A325837: The number of coreful divisors of n that are exponentially odd numbers (A268335).

Offset 1, canonical program `A325837.P10403141756841379382`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003557, A046951, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A325837 (n : ℕ) : ℤ :=
  A325837.P10403141756841379382.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003557, A046951, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A325837.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A326184.P15746824177980826123

`A000203(n+1)-A057521(n+1)`
-/

namespace A326184.P15746824177980826123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A057521 (n + 1)

end

end A326184.P15746824177980826123

noncomputable section

/-- A326184: a(n) = sigma(n) - A057521(n), where A057521 gives the powerful part of n, and sigma gives the sum of divisors of n.

Offset 1, canonical program `A326184.P15746824177980826123`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057521, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326184 (n : ℕ) : ℤ :=
  A326184.P15746824177980826123.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057521, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326184.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A326185.P1365818805746988269

`A001065(n+1)-A057521(n+1)`
-/

namespace A326185.P1365818805746988269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - A057521 (n + 1)

end

end A326185.P1365818805746988269

noncomputable section

/-- A326185: a(n) = sigma(n) - A057521(n) - n.

Offset 1, canonical program `A326185.P1365818805746988269`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057521, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326185 (n : ℕ) : ℤ :=
  A326185.P1365818805746988269.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057521, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326185.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A326186.P460460233906349811

`n+1-A057521(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A326186.P460460233906349811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A057521 (n + 1)

end

end A326186.P460460233906349811

noncomputable section

/-- A326186: a(n) = n - A057521(n), where A057521 gives the powerful part of n.

Offset 1, canonical program `A326186.P460460233906349811`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057521, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326186 (n : ℕ) : ℤ :=
  A326186.P460460233906349811.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057521, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326186.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A328014.P12714233293390767781

`lt[n+1, A057521(n+1)²]+1`
-/

namespace A328014.P12714233293390767781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A328014.P12714233293390767781

noncomputable section

/-- A328014: Numbers whose powerful part (A057521) is larger than their powerfree part (A055231).

Offset 1, canonical program `A328014.P12714233293390767781`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1413 terms. -/
def A328014 (n : ℕ) : ℤ :=
  (A328014.P12714233293390767781.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1413 terms. -/
def A328014.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329728.P16334695943169972259

`∑[∑{d}[(n+1)/A057521(n+1), #]]`
-/

namespace A329728.P16334695943169972259
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A057521 (n + 1) : ℚ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f2 n)).natAbs, d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329728.P16334695943169972259

noncomputable section

/-- A329728: Partial sums of A092261.

Offset 1, canonical program `A329728.P16334695943169972259`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329728 (n : ℕ) : ℤ :=
  (A329728.P16334695943169972259.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329728.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332383.P7920587963328072283

`A268383(2*n)-A268383(4*n)+n`
-/

namespace A332383.P7920587963328072283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268383 (2 * n) - A268383 (4 * n) + (n : ℤ)

end

end A332383.P7920587963328072283

noncomputable section

/-- A332383: a(n) is the X-coordinate of the n-th point of the dragon curve. Sequence A332384 gives Y-coordinates.

Offset 0, canonical program `A332383.P7920587963328072283`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4097 terms. -/
def A332383 (n : ℕ) : ℤ :=
  A332383.P7920587963328072283.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4097 terms. -/
def A332383.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332384.P15273066766290011889

`n-(A268411(n)+A268383(2*n))`
-/

namespace A332384.P15273066766290011889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A268411 n + A268383 (2 * n))

end

end A332384.P15273066766290011889

noncomputable section

/-- A332384: a(n) is the Y-coordinate of the n-th point of the dragon curve. Sequence A332383 gives X-coordinates.

Offset 0, canonical program `A332384.P15273066766290011889`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A332384 (n : ℕ) : ℤ :=
  A332384.P15273066766290011889.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A332384.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332618.P1436896410974946715

`∑{d}[n+1, A048250(#)*A206369((n+1)/#)]`
-/

namespace A332618.P1436896410974946715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048250 d * A206369 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A332618.P1436896410974946715

noncomputable section

/-- A332618: a(n) = Sum_{d|n} lcm(d, n/d) / gcd(d, n/d).

Offset 1, canonical program `A332618.P1436896410974946715`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A332618 (n : ℕ) : ℤ :=
  A332618.P1436896410974946715.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A332618.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332880.P6186133636698672336

`A001615(n+1)/A306695(n+1)`
-/

namespace A332880.P6186133636698672336
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001615 (n + 1) : ℚ) / (A306695 (n + 1) : ℚ)

end

end A332880.P6186133636698672336

noncomputable section

/-- A332880: If n = Product (p_j^k_j) then a(n) = numerator of Product (1 + 1/p_j).

Offset 1, canonical program `A332880.P6186133636698672336`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001615, A306695, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A332880 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A332880.P6186133636698672336.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001615, A306695, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A332880.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A332881.P13190914055989439247

`(n+1)/A306695(n+1)`
-/

namespace A332881.P13190914055989439247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A306695 (n + 1) : ℚ)

end

end A332881.P13190914055989439247

noncomputable section

/-- A332881: If n = Product (p_j^k_j) then a(n) = denominator of Product (1 + 1/p_j).

Offset 1, canonical program `A332881.P13190914055989439247`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A306695, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A332881 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A332881.P13190914055989439247.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A306695, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A332881.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A333178.P282739070696705010

`∑{d}[A064549(n+1), A007444(A003557(#))]`
-/

namespace A333178.P282739070696705010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064549 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 (A003557 d).toNat

end

end A333178.P282739070696705010

noncomputable section

/-- A333178: a(n) = Sum_{d|n, gcd(d, n/d) = 1} prime(d).

Offset 1, canonical program `A333178.P282739070696705010`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A333178 (n : ℕ) : ℤ :=
  A333178.P282739070696705010.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A333178.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337140.P18050210650349249115

`∪[A009003(n+1), A065502(n+1)]`
-/

namespace A337140.P18050210650349249115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A337140.P18050210650349249115

noncomputable section

/-- A337140: Numbers m = a + b with a and b positive integers whose product a*b = k^2 is a square.

Offset 1, canonical program `A337140.P18050210650349249115`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A337140 (n : ℕ) : ℤ :=
  (A337140.P18050210650349249115.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A337140.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338236.P4454191647509277163

`A000196(n+1)-A046951(n+1)`
-/

namespace A338236.P4454191647509277163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (n + 1) - A046951 (n + 1)

end

end A338236.P4454191647509277163

noncomputable section

/-- A338236: Number of numbers less than or equal to sqrt(n) whose square does not divide n.

Offset 1, canonical program `A338236.P4454191647509277163`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046951, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A338236 (n : ℕ) : ℤ :=
  A338236.P4454191647509277163.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046951, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A338236.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A339817.P13850766974360266592

`record[A007947(n+2)*A353498(n+2)]`
-/

namespace A339817.P13850766974360266592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 2) * A353498 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339817.P13850766974360266592

noncomputable section

/-- A339817: Squarefree numbers k > 1 for which the 2-adic valuation of phi(k) does not exceed the 2-adic valuation of k-1.

Offset 1, canonical program `A339817.P13850766974360266592`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339817 (n : ℕ) : ℤ :=
  A339817.P13850766974360266592.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339817.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340154.P18257994120769492185

`∩[A040117(n+1), A049097(n+1)]`
-/

namespace A340154.P18257994120769492185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340154.P18257994120769492185

noncomputable section

/-- A340154: Primes p such that p == 5 (mod 6) and p+1 is squarefree.

Offset 1, canonical program `A340154.P18257994120769492185`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4012 terms. -/
def A340154 (n : ℕ) : ℤ :=
  (A340154.P18257994120769492185.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4012 terms. -/
def A340154.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341329.P7455525614794179210

`∩[A009003(n+1), A161992(n+1)]`
-/

namespace A341329.P7455525614794179210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161992 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A341329.P7455525614794179210

noncomputable section

/-- A341329: Numbers k such that k^2 is the sum of m nonzero squares for all 1 <= m <= k^2 - 14.

Offset 1, canonical program `A341329.P7455525614794179210`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6463 terms. -/
def A341329 (n : ℕ) : ℤ :=
  (A341329.P7455525614794179210.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6463 terms. -/
def A341329.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341508.P16631859333944592742

`and(A032741(A055999(n)), A080224(n+1))`
-/

namespace A341508.P16631859333944592742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A032741 (A055999 n).toNat) (A080224 (n + 1))

end

end A341508.P16631859333944592742

noncomputable section

/-- A341508: a(n) = 0 if n is nonabundant, otherwise a(n) is the number of abundant divisors of the last abundant number in the iteration x -> A003961(x) (starting from x=n) before a nonabundant number is reached.

Offset 1, canonical program `A341508.P16631859333944592742`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. -/
def A341508 (n : ℕ) : ℤ :=
  A341508.P16631859333944592742.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. -/
def A341508.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341620.P4191397084300056986

`A080224(n+1)+A080225(n+1)`
-/

namespace A341620.P4191397084300056986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080224 (n + 1) + A080225 (n + 1)

end

end A341620.P4191397084300056986

noncomputable section

/-- A341620: Number of nondeficient divisors of n.

Offset 1, canonical program `A341620.P4191397084300056986`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080224, A080225, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A341620 (n : ℕ) : ℤ :=
  A341620.P4191397084300056986.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080224, A080225, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A341620.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A344299.P6650277037551991274

`2*A046951(4*(n+1))-3*A046951(n+1)`
-/

namespace A344299.P6650277037551991274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046951 (4 * (n + 1)) - 3 * A046951 (n + 1)

end

end A344299.P6650277037551991274

noncomputable section

/-- A344299: Expansion of Sum_{k>=1} (-1)^(k+1) * x^(k^2) / (1 - x^(k^2)).

Offset 1, canonical program `A344299.P6650277037551991274`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046951, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A344299 (n : ℕ) : ℤ :=
  A344299.P6650277037551991274.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046951, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A344299.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A344609.P17132378078969577972

`eq[0, A353669(n+1)]+1`
-/

namespace A344609.P17132378078969577972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353669 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A344609.P17132378078969577972

noncomputable section

/-- A344609: Numbers whose alternating sum of prime indices is >= 0.

Offset 1, canonical program `A344609.P17132378078969577972`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344609 (n : ℕ) : ℤ :=
  (A344609.P17132378078969577972.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344609.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344696.P8047274283818792486

`A000203(n+1)/A344695(n+1)`
-/

namespace A344696.P8047274283818792486
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A344695 (n + 1) : ℚ)

end

end A344696.P8047274283818792486

noncomputable section

/-- A344696: a(n) = sigma(n) / gcd(sigma(n), A001615(n)).

Offset 1, canonical program `A344696.P8047274283818792486`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A344695, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A344696 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A344696.P8047274283818792486.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A344695, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A344696.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A344697.P12307976047928248051

`A001615(n+1)/A344695(n+1)`
-/

namespace A344697.P12307976047928248051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001615 (n + 1) : ℚ) / (A344695 (n + 1) : ℚ)

end

end A344697.P12307976047928248051

noncomputable section

/-- A344697: a(n) = A001615(n) / gcd(sigma(n), A001615(n)).

Offset 1, canonical program `A344697.P12307976047928248051`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001615, A344695, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A344697 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A344697.P12307976047928248051.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001615, A344695, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A344697.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A344753.P96052968177767744

`A001065(n+1)+A306927(n+1)`
-/

namespace A344753.P96052968177767744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + A306927 (n + 1)

end

end A344753.P96052968177767744

noncomputable section

/-- A344753: a(n) = sigma(n) + psi(n) - 2n = Sum_{d|n, d

Offset 1, canonical program `A344753.P96052968177767744`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A306927, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A344753 (n : ℕ) : ℤ :=
  A344753.P96052968177767744.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A306927, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A344753.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A345052.P3135942060331182586

`A003557(n+1)*A048250(n+1)*A173557(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A345052.P3135942060331182586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A048250 (n + 1) * A173557 (n + 1)

end

end A345052.P3135942060331182586

noncomputable section

/-- A345052: a(n) = A003557(n) * A048250(n) * A173557(n).

Offset 1, canonical program `A345052.P3135942060331182586`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003557, A048250, A173557, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A345052 (n : ℕ) : ℤ :=
  A345052.P3135942060331182586.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003557, A048250, A173557, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A345052.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A345219.P8018862151870191580

`A000005(n+1)-A345220(n+1)`
-/

namespace A345219.P8018862151870191580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A345220 (n + 1)

end

end A345219.P8018862151870191580

noncomputable section

/-- A345219: Number of divisors d of n with an odd number of primes not exceeding d.

Offset 1, canonical program `A345219.P8018862151870191580`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A345220, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A345219 (n : ℕ) : ℤ :=
  A345219.P8018862151870191580.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A345220, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A345219.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A345276.P270329731164597666

`A000005(n+1)-(A001615(n+1)-n*A034444(n+1))`
-/

namespace A345276.P270329731164597666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - (A001615 (n + 1) - (n : ℤ) * A034444 (n + 1))

end

end A345276.P270329731164597666

noncomputable section

/-- A345276: a(n) = Sum_{d|n} (n-d)^abs(mu(n/d)).

Offset 1, canonical program `A345276.P270329731164597666`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345276 (n : ℕ) : ℤ :=
  A345276.P270329731164597666.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345276.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347149.P4485454136861303499

`A008966(n+1)*A048691(n+1)`
-/

namespace A347149.P4485454136861303499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) * A048691 (n + 1)

end

end A347149.P4485454136861303499

noncomputable section

/-- A347149: Dirichlet g.f.: Product_{primes p} (1 + 3/p^s).

Offset 1, canonical program `A347149.P4485454136861303499`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, A048691, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A347149 (n : ℕ) : ℤ :=
  A347149.P4485454136861303499.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, A048691, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A347149.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349620.P4260540541308422829

`∑{d}[n+1, A003557(#)*A349394((n+1)/#)]`
-/

namespace A349620.P4260540541308422829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003557 d * A349394 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349620.P4260540541308422829

noncomputable section

/-- A349620: Dirichlet convolution of A003415 with the Dirichlet inverse of A003958.

Offset 1, canonical program `A349620.P4260540541308422829`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349620 (n : ℕ) : ℤ :=
  A349620.P4260540541308422829.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349620.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A350093.P14782896136260405665

`((3*n+2)*n+A001196(n))/4`
-/

namespace A350093.P14782896136260405665
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((3 * n + 2) * n : ℤ) + A001196 n : ℚ) / 4

end

end A350093.P14782896136260405665

noncomputable section

/-- A350093: a(n) = Sum_{k=0..n} n OR k where OR is the bitwise logical OR operator (A003986).

Offset 0, canonical program `A350093.P14782896136260405665`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001196, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A350093 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A350093.P14782896136260405665.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001196, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A350093.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A350094.P14552447069989124011

`(A001196(n)-n*(n+2))/4`
-/

namespace A350094.P14552447069989124011
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001196 n - (n * (n + 2) : ℤ) : ℚ) / 4

end

end A350094.P14552447069989124011

noncomputable section

/-- A350094: a(n) = Sum_{k=0..n} n CNIMPL k where CNIMPL = NOT(n) AND k is the bitwise logical converse non-implication operator (A102037).

Offset 0, canonical program `A350094.P14552447069989124011`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001196, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A350094 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A350094.P14552447069989124011.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001196, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A350094.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351395.P1260847415174010690

`A284117(n+1)+A048250(n+1)`
-/

namespace A351395.P1260847415174010690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284117 (n + 1) + A048250 (n + 1)

end

end A351395.P1260847415174010690

noncomputable section

/-- A351395: Sum of the divisors of n that are either squarefree, prime powers, or both.

Offset 1, canonical program `A351395.P1260847415174010690`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351395 (n : ℕ) : ℤ :=
  A351395.P1260847415174010690.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351395.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353282.P2459302831157781440

`A046951(A013929(n+1))-1`
-/

namespace A353282.P2459302831157781440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A013929 (n + 1)).toNat - 1

end

end A353282.P2459302831157781440

noncomputable section

/-- A353282: a(n) is the number of solutions (x,y) to the Diophantine equation S(x,y) = (x+y) + (x-y) + (x*y) + (x/y) = A013929(n) when x >= y > 1 and y | x.

Offset 1, canonical program `A353282.P2459302831157781440`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, A046951, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353282 (n : ℕ) : ℤ :=
  A353282.P2459302831157781440.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, A046951, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353282.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353499.P10127813509975770335

`A008966(n+1)*A353498(n+1)`
-/

namespace A353499.P10127813509975770335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) * A353498 (n + 1)

end

end A353499.P10127813509975770335

noncomputable section

/-- A353499: a(n) = 1 if n is a squarefree number for which the 2-adic valuation of phi(n) does not exceed the 2-adic valuation of n-1, otherwise 0.

Offset 1, canonical program `A353499.P10127813509975770335`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, A353498, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353499 (n : ℕ) : ℤ :=
  A353499.P10127813509975770335.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, A353498, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353499.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353786.P13595873615884970514

`A154402(n+1)-A147645(n+1)`
-/

namespace A353786.P13595873615884970514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154402 (n + 1) - A147645 (n + 1)

end

end A353786.P13595873615884970514

noncomputable section

/-- A353786: Number of distinct nonprime numbers of the form 2^k - 1 that divide n.

Offset 1, canonical program `A353786.P13595873615884970514`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A147645, A154402, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353786 (n : ℕ) : ℤ :=
  A353786.P13595873615884970514.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A147645, A154402, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353786.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A354819.P1113722115681755102

`A008966(n+1)*(1-A010051(n+1))`
-/

namespace A354819.P1113722115681755102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) * (1 - A010051 (n + 1))

end

end A354819.P1113722115681755102

noncomputable section

/-- A354819: a(n) = 1 if n is a nonprime squarefree number, otherwise 0.

Offset 1, canonical program `A354819.P1113722115681755102`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, A010051, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A354819 (n : ℕ) : ℤ :=
  A354819.P1113722115681755102.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, A010051, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A354819.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A355300.P2506392845726788672

`a(A228071(n)%n)+1` with `a(0)=0`
-/

namespace A355300.P2506392845726788672
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (Int.tmod (A228071 n) (n : ℤ)).toNat + 1

end

end A355300.P2506392845726788672

noncomputable section

/-- A355300: a(0) = 0; for n >= 1, a(n) = a(A007088(n) mod n) + 1.

Offset 0, canonical program `A355300.P2506392845726788672`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A355300 (n : ℕ) : ℤ :=
  (A355300.P2506392845726788672.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A355300.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A357111.P15741096504218641398

`(n+1)/A076775(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A357111.P15741096504218641398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A076775 (n + 1) : ℚ)

end

end A357111.P15741096504218641398

noncomputable section

/-- A357111: For n >= 1, a(n) = n / A076775(n).

Offset 1, canonical program `A357111.P15741096504218641398`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A076775, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A357111 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A357111.P15741096504218641398.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A076775, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A357111.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A357774.P7410309054543883889

`A099821(eq[3, A008687(n)])`
-/

namespace A357774.P7410309054543883889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008687 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099821 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A357774.P7410309054543883889

noncomputable section

/-- A357774: Binary expansions of odd numbers with two zeros in their binary expansion.

Offset 1, canonical program `A357774.P7410309054543883889`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A357774 (n : ℕ) : ℤ :=
  A357774.P7410309054543883889.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A357774.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A357938.P33426511589451347

`∑{d}[n+1, #*A048250((n+1)/#)]`
-/

namespace A357938.P33426511589451347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A048250 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A357938.P33426511589451347

noncomputable section

/-- A357938: Inverse Moebius transform of n * 2^omega(n).

Offset 1, canonical program `A357938.P33426511589451347`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A357938 (n : ℕ) : ℤ :=
  A357938.P33426511589451347.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A357938.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358261.P13898711941004689551

`A046951(n+1)-A358260(n+1)`
-/

namespace A358261.P13898711941004689551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (n + 1) - A358260 (n + 1)

end

end A358261.P13898711941004689551

noncomputable section

/-- A358261: a(n) is the number of noninfinitary square divisors of n.

Offset 1, canonical program `A358261.P13898711941004689551`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046951, A358260, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A358261 (n : ℕ) : ℤ :=
  A358261.P13898711941004689551.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046951, A358260, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A358261.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A359475.P3885974890903103559

`A359474(n+1)-A302048(n+1)`
-/

namespace A359475.P3885974890903103559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359474 (n + 1) - A302048 (n + 1)

end

end A359475.P3885974890903103559

noncomputable section

/-- A359475: a(n) = 1 if n is a cubefree nonsquare whose factorization into a product of primes contains exactly one square, otherwise 0.

Offset 1, canonical program `A359475.P3885974890903103559`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A302048, A359474, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A359475 (n : ℕ) : ℤ :=
  A359475.P3885974890903103559.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A302048, A359474, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
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

/-! ## A363878.P17368432943258259261

`A363795(7*(n+1)-4)`
-/

namespace A363878.P17368432943258259261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363795 (7 * (n + 1) - 4)

end

end A363878.P17368432943258259261

noncomputable section

/-- A363878: Number of divisors of 7*n-4 of form 7*k+2.

Offset 1, canonical program `A363878.P17368432943258259261`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A363795, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363878 (n : ℕ) : ℤ :=
  A363878.P17368432943258259261.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A363795, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363878.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A363885.P8366996725641736141

`A363795(7*(n+1)-3)`
-/

namespace A363885.P8366996725641736141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363795 (7 * (n + 1) - 3)

end

end A363885.P8366996725641736141

noncomputable section

/-- A363885: Number of divisors of 7*n-3 of form 7*k+2.

Offset 1, canonical program `A363885.P8366996725641736141`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A363795, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363885 (n : ℕ) : ℤ :=
  A363885.P8366996725641736141.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A363795, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363885.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A364614.P12634051005538976662

`eq[0, A005074(n+1)]+1`
-/

namespace A364614.P12634051005538976662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005074 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A364614.P12634051005538976662

noncomputable section

/-- A364614: Numbers not divisible by any prime of the form 3*k - 1.

Offset 1, canonical program `A364614.P12634051005538976662`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1529 terms. -/
def A364614 (n : ℕ) : ℤ :=
  (A364614.P12634051005538976662.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1529 terms. -/
def A364614.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A368040.P1470060828506314969

`A057521(A013929(n+1))`
-/

namespace A368040.P1470060828506314969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (A013929 (n + 1)).toNat

end

end A368040.P1470060828506314969

noncomputable section

/-- A368040: The powerful part of the nonsquarefree numbers.

Offset 1, canonical program `A368040.P1470060828506314969`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, A057521, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368040 (n : ℕ) : ℤ :=
  A368040.P1470060828506314969.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, A057521, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368040.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A369889.P3040492947822450392

`A048250(A004709(n+1))`
-/

namespace A369889.P3040492947822450392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (A004709 (n + 1)).toNat

end

end A369889.P3040492947822450392

noncomputable section

/-- A369889: The sum of squarefree divisors of the cubefree numbers.

Offset 1, canonical program `A369889.P3040492947822450392`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, A048250, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A369889 (n : ℕ) : ℤ :=
  A369889.P3040492947822450392.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, A048250, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A369889.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A372603.P15885825996250797991

`A051903(A057521(n+1))`
-/

namespace A372603.P15885825996250797991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A057521 (n + 1)).toNat

end

end A372603.P15885825996250797991

noncomputable section

/-- A372603: The maximal exponent in the prime factorization of the powerful part of n.

Offset 1, canonical program `A372603.P15885825996250797991`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A057521, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A372603 (n : ℕ) : ℤ :=
  A372603.P15885825996250797991.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A057521, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A372603.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A378032.P9045998569336998006

`A162966(A000040(n+1)-A071403(n+1)+1)`
-/

namespace A378032.P9045998569336998006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162966 (A000040 (n + 1) - A071403 (n + 1) + 1).toNat

end

end A378032.P9045998569336998006

noncomputable section

/-- A378032: a(1) = a(2) = 1; a(n>2) is the greatest nonsquarefree number < prime(n).

Offset 1, canonical program `A378032.P9045998569336998006`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2810 terms. -/
def A378032 (n : ℕ) : ℤ :=
  A378032.P9045998569336998006.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2810 terms. -/
def A378032.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A380323.P7609859064291809973

`A046951(A268335(n+1))`
-/

namespace A380323.P7609859064291809973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A268335 (n + 1)).toNat

end

end A380323.P7609859064291809973

noncomputable section

/-- A380323: The number of squares dividing the n-th exponentially odd number.

Offset 1, canonical program `A380323.P7609859064291809973`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046951, A268335, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A380323 (n : ℕ) : ℤ :=
  A380323.P7609859064291809973.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046951, A268335, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A380323.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A380326.P5985966696173145077

`A048250(A268335(n+1))`
-/

namespace A380326.P5985966696173145077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (A268335 (n + 1)).toNat

end

end A380326.P5985966696173145077

noncomputable section

/-- A380326: a(n) is the sum of squarefree divisors of the n-th exponentially odd number.

Offset 1, canonical program `A380326.P5985966696173145077`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048250, A268335, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A380326 (n : ℕ) : ℤ :=
  A380326.P5985966696173145077.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048250, A268335, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A380326.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A380440.P5442109127590069685

`A380439(n+1)+A227291(n+1)`
-/

namespace A380440.P5442109127590069685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380439 (n + 1) + A227291 (n + 1)

end

end A380440.P5442109127590069685

noncomputable section

/-- A380440: a(n) = 1 if n has no squarefree divisor d such that d^2 > n, otherwise 0.

Offset 1, canonical program `A380440.P5442109127590069685`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A380440 (n : ℕ) : ℤ :=
  A380440.P5442109127590069685.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A380440.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A385998.P16754963175489702644

`eq[A001221(n+1), A046951(n+1)]+1`
-/

namespace A385998.P16754963175489702644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A385998.P16754963175489702644

noncomputable section

/-- A385998: Numbers that are divisible by an equal number of distinct primes and squares.

Offset 1, canonical program `A385998.P16754963175489702644`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2584 terms. -/
def A385998 (n : ℕ) : ℤ :=
  (A385998.P16754963175489702644.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2584 terms. -/
def A385998.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387726.P10728749570483671412

`A057521(A000203(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A387726.P10728749570483671412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (A000203 (n + 1)).toNat

end

end A387726.P10728749570483671412

noncomputable section

/-- A387726: Powerful part of the sum of divisors of n: a(n) = A057521(A000203(n)).

Offset 1, canonical program `A387726.P10728749570483671412`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057521, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A387726 (n : ℕ) : ℤ :=
  A387726.P10728749570483671412.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057521, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A387726.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A388994.P3930905186296382464

`A048250(n+1)-A162296(n+1)`
-/

namespace A388994.P3930905186296382464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (n + 1) - A162296 (n + 1)

end

end A388994.P3930905186296382464

noncomputable section

/-- A388994: a(n) = {sum of squarefree divisors of n} minus {sum of divisors of n that have a square factor}.

Offset 1, canonical program `A388994.P3930905186296382464`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048250, A162296, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A388994 (n : ℕ) : ℤ :=
  A388994.P3930905186296382464.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048250, A162296, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A388994.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A389244.P9929055792756023973

`A057521((n+1)*(n+2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A389244.P9929055792756023973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 ((n + 1) * (n + 2))

end

end A389244.P9929055792756023973

noncomputable section

/-- A389244: Powerful part of n*(n+1): a(n) = A057521(n*(n+1)).

Offset 1, canonical program `A389244.P9929055792756023973`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057521, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A389244 (n : ℕ) : ℤ :=
  A389244.P9929055792756023973.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057521, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A389244.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A319684.P10446271486458079777

`∑{d}[n+1, A000203(#)*A349394((n+1)/#)]`
-/

namespace A319684.P10446271486458079777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A349394 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A319684.P10446271486458079777

noncomputable section

/-- A319684: Sum of A003415(d) over the divisors d of n, where A003415 is arithmetic derivative.

Offset 1, canonical program `A319684.P10446271486458079777`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319684 (n : ℕ) : ℤ :=
  A319684.P10446271486458079777.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319684.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A320515.P891390049597261690

`record[A007913(A320514(n+2))]`
-/

namespace A320515.P891390049597261690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A320514 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320515.P891390049597261690

noncomputable section

/-- A320515: Squarefree k > 1 with sigma(sigma(k)) < 2*k + 1.

Offset 1, canonical program `A320515.P891390049597261690`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3608 terms. -/
def A320515 (n : ℕ) : ℤ :=
  A320515.P891390049597261690.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3608 terms. -/
def A320515.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A326126.P126110095243043684

`A000203(n+1)-A007913(n+1)`
-/

namespace A326126.P126110095243043684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A007913 (n + 1)

end

end A326126.P126110095243043684

noncomputable section

/-- A326126: Sum of all other divisors of n except the squarefree part of n: a(n) = sigma(n) - A007913(n).

Offset 1, canonical program `A326126.P126110095243043684`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007913, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326126 (n : ℕ) : ℤ :=
  A326126.P126110095243043684.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007913, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326126.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A326128.P4962900157914824511

`n+1-A007913(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A326128.P4962900157914824511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A007913 (n + 1)

end

end A326128.P4962900157914824511

noncomputable section

/-- A326128: a(n) = n - A007913(n), where A007913 gives the squarefree part of n.

Offset 1, canonical program `A326128.P4962900157914824511`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007913, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326128 (n : ℕ) : ℤ :=
  A326128.P4962900157914824511.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007913, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326128.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A334176.P5946165985932245522

`A007913(3*(2*(n+1)+7)*(2*(n+1)-1))`
-/

namespace A334176.P5946165985932245522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (3 * ((2 * (n + 1) + 7 : ℤ) * ((2 * (n + 1) : ℤ) - 1))).toNat

end

end A334176.P5946165985932245522

noncomputable section

/-- A334176: Squarefree part of numerator of the squared area of the Heronian triangle with sequential odd sides whose shortest leg is 2*n+1.

Offset 1, canonical program `A334176.P5946165985932245522`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007913, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A334176 (n : ℕ) : ℤ :=
  A334176.P5946165985932245522.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007913, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A334176.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336643.P7928680159681903247

`A007947(n+1)/A007913(n+1)`
-/

namespace A336643.P7928680159681903247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) / (A007913 (n + 1) : ℚ)

end

end A336643.P7928680159681903247

noncomputable section

/-- A336643: Squarefree kernel of n divided by the squarefree part of n: a(n) = rad(n) / core(n).

Offset 1, canonical program `A336643.P7928680159681903247`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007913, A007947, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A336643 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A336643.P7928680159681903247.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007913, A007947, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A336643.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336644.P17715944373754840888

`A066503(n+1)/A007913(n+1)`
-/

namespace A336644.P17715944373754840888
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066503 (n + 1) : ℚ) / (A007913 (n + 1) : ℚ)

end

end A336644.P17715944373754840888

noncomputable section

/-- A336644: a(n) = (n-rad(n)) / core(n), where rad(n) and core(n) give the squarefree kernel and squarefree part of n, respectively.

Offset 1, canonical program `A336644.P17715944373754840888`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007913, A066503, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A336644 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A336644.P17715944373754840888.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007913, A066503, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A336644.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A338228.P12662377140114855037

`n+1-A000005(sqrt((n+1)/A007913(n+1)))`
-/

namespace A338228.P12662377140114855037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000005 (SequenceMachineLib.roundAway (Real.sqrt ((n + 1 : ℚ) / (A007913 (n + 1) : ℚ) : ℝ))).toNat

end

end A338228.P12662377140114855037

noncomputable section

/-- A338228: Number of numbers less than or equal to n whose square does not divide n.

Offset 1, canonical program `A338228.P12662377140114855037`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A007913, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A338228 (n : ℕ) : ℤ :=
  A338228.P12662377140114855037.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A007913, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A338228.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A338231.P1801090512783866050

`A000217(n+1)-A000203(sqrt((n+1)/A007913(n+1)))`
-/

namespace A338231.P1801090512783866050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) - A000203 (SequenceMachineLib.roundAway (Real.sqrt ((n + 1 : ℚ) / (A007913 (n + 1) : ℚ) : ℝ))).toNat

end

end A338231.P1801090512783866050

noncomputable section

/-- A338231: Sum of the numbers less than or equal to n whose square does not divide n.

Offset 1, canonical program `A338231.P1801090512783866050`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007913, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A338231 (n : ℕ) : ℤ :=
  A338231.P1801090512783866050.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007913, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A338231.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A338241.P14160391239294064305

`A001057(A128173(n))`
-/

namespace A338241.P14160391239294064305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A128173 n).toNat

end

end A338241.P14160391239294064305

noncomputable section

/-- A338241: For any m >= 0, a(3*m) = 3*a(m), a(3*m+1) = 1-3*a(m), a(3*m+2) = 3*a(m)-1.

Offset 0, canonical program `A338241.P14160391239294064305`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. -/
def A338241 (n : ℕ) : ℤ :=
  A338241.P14160391239294064305.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. -/
def A338241.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338434.P17975751793261488990

`A000217(A000196(n+1))-A000203(sqrt((n+1)/A007913(n+1)))`
-/

namespace A338434.P17975751793261488990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A000196 (n + 1)).toNat - A000203 (SequenceMachineLib.roundAway (Real.sqrt ((n + 1 : ℚ) / (A007913 (n + 1) : ℚ) : ℝ))).toNat

end

end A338434.P17975751793261488990

noncomputable section

/-- A338434: Sum of the numbers less than or equal to sqrt(n) whose square does not divide n.

Offset 1, canonical program `A338434.P17975751793261488990`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007913, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A338434 (n : ℕ) : ℤ :=
  A338434.P17975751793261488990.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007913, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A338434.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A343766.P2621926781585382443

`-A117966(A128173(n))`
-/

namespace A343766.P2621926781585382443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A117966 (A128173 n).toNat

end

end A343766.P2621926781585382443

noncomputable section

/-- A343766: Lexicographically earliest sequence of distinct integers such that a(0) = 0 and the balanced ternary expansions of two consecutive terms differ by a single digit, as far to the right as possible.

Offset 0, canonical program `A343766.P2621926781585382443`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A117966, A128173, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A343766 (n : ℕ) : ℤ :=
  A343766.P2621926781585382443.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A117966, A128173, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A343766.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A355928.P5459121208310250653

`A007913(A000203(n+1))`
-/

namespace A355928.P5459121208310250653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A000203 (n + 1)).toNat

end

end A355928.P5459121208310250653

noncomputable section

/-- A355928: Squarefree part of the sum of divisors of n.

Offset 1, canonical program `A355928.P5459121208310250653`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007913, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A355928 (n : ℕ) : ℤ :=
  A355928.P5459121208310250653.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007913, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A355928.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A358769.P11992028055102234913

`A010051(A007913(n+1))`
-/

namespace A358769.P11992028055102234913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A007913 (n + 1)).toNat

end

end A358769.P11992028055102234913

noncomputable section

/-- A358769: a(n) = 1 if n is of the form p * m^2, where p is a prime and m is a natural number >= 1, otherwise 0.

Offset 1, canonical program `A358769.P11992028055102234913`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007913, A010051, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A358769 (n : ℕ) : ℤ :=
  A358769.P11992028055102234913.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007913, A010051, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A358769.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A361670.P4423035951555076962

`A007913(A000217(n+1))`
-/

namespace A361670.P4423035951555076962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A000217 (n + 1)).toNat

end

end A361670.P4423035951555076962

noncomputable section

/-- A361670: Squarefree part of the n-th triangular number.

Offset 1, canonical program `A361670.P4423035951555076962`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007913, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A361670 (n : ℕ) : ℤ :=
  A361670.P4423035951555076962.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007913, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A361670.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A361671.P15487108211156603945

`A007913(A000292(n+1))`
-/

namespace A361671.P15487108211156603945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A000292 (n + 1)).toNat

end

end A361671.P15487108211156603945

noncomputable section

/-- A361671: Squarefree part of the n-th tetrahedral number.

Offset 1, canonical program `A361671.P15487108211156603945`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007913, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A361671 (n : ℕ) : ℤ :=
  A361671.P15487108211156603945.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007913, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A361671.provenance : SequenceMachineLib.Provenance := .conditional

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

