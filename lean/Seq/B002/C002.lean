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
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
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
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import SequenceMachineLib.Triangle

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A098219.P11141698969919353704

`floor(A051027(n+1)/(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A098219.P11141698969919353704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A051027 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A098219.P11141698969919353704

noncomputable section

/-- A098219: a(n) = floor(sigma(sigma(n))/n) = floor(A051027(n)/n).

Offset 1, canonical program `A098219.P11141698969919353704`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(A051027(n+1)/(n+1))` (program `A098219.P11141698969919353704`, by `A098219.P11141698969919353704.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A098219 (n : ℕ) : ℤ :=
  A098219.P11141698969919353704.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(A051027(n+1)/(n+1))` (program `A098219.P11141698969919353704`, by `A098219.P11141698969919353704.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A098219.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A104295.P7157540274626542787

`A104294(n+2)-A104293(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A104295.P7157540274626542787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104294 (n + 2) - A104293 (n + 2)

end

end A104295.P7157540274626542787

noncomputable section

/-- A104295: a(n) = A104294(n) - A104293(n).

Offset 2, canonical program `A104295.P7157540274626542787`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A104294(n+2)-A104293(n+2)` (program `A104295.P7157540274626542787`, by `A104295.P7157540274626542787.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A104295 (n : ℕ) : ℤ :=
  A104295.P7157540274626542787.a (n - 2)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A104294(n+2)-A104293(n+2)` (program `A104295.P7157540274626542787`, by `A104295.P7157540274626542787.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A104295.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A104793.P3883030209484274016

`A023537(row(n)+1-col(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A104793.P3883030209484274016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023537 (SequenceMachineLib.triRow n + 1 - SequenceMachineLib.triCol n)

end

end A104793.P3883030209484274016

noncomputable section

/-- A104793: Triangle T(n,k) = A023537(n-k), n >= 1, 0 <= k < n, read by rows.

Offset 1, canonical program `A104793.P3883030209484274016`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A023537(row(n)+1-col(n))` (program `A104793.P3883030209484274016`, by `A104793.P3883030209484274016.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A104793 (n : ℕ) : ℤ :=
  A104793.P3883030209484274016.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A023537(row(n)+1-col(n))` (program `A104793.P3883030209484274016`, by `A104793.P3883030209484274016.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A104793.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A102564.P14718973119229357206

`A000120(A078008(n))-A078008(A000120(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A102564.P14718973119229357206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A078008 n).toNat - A078008 (A000120 n).toNat

end

end A102564.P14718973119229357206

noncomputable section

/-- A102564: A000120(A078008(n))-A078008(A000120(n)).

Offset 0, canonical program `A102564.P14718973119229357206`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000120(A078008(n))-A078008(A000120(n))` (program `A102564.P14718973119229357206`, by `A102564.P14718973119229357206.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A102564 (n : ℕ) : ℤ :=
  A102564.P14718973119229357206.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000120(A078008(n))-A078008(A000120(n))` (program `A102564.P14718973119229357206`, by `A102564.P14718973119229357206.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A102564.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A120738.P9838444930846786751

`4*n-A000120(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A120738.P9838444930846786751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - A000120 n

end

end A120738.P9838444930846786751

noncomputable section

/-- A120738: a(n) = 4*n - A000120(n).

Offset 0, canonical program `A120738.P9838444930846786751`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*n-A000120(n)` (program `A120738.P9838444930846786751`, by `A120738.P9838444930846786751.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A120738 (n : ℕ) : ℤ :=
  A120738.P9838444930846786751.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*n-A000120(n)` (program `A120738.P9838444930846786751`, by `A120738.P9838444930846786751.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A120738.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A082879.P17201633837400417669

`A003604(A000040(n+1))`
-/

namespace A082879.P17201633837400417669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003604 (A000040 (n + 1)).toNat

end

end A082879.P17201633837400417669

noncomputable section

/-- A082879: Number of primes not exceeding the factorial of the n-th prime.

Offset 1, canonical program `A082879.P17201633837400417669`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A082879 (n : ℕ) : ℤ :=
  A082879.P17201633837400417669.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A082879.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A082886.P17747584522747470578

`floor(A001223(n+1)/log(A000040(n+1)))`
-/

namespace A082886.P17747584522747470578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001223 (n + 1) : ℝ) / Real.log (A000040 (n + 1) : ℝ)⌋

end

end A082886.P17747584522747470578

noncomputable section

/-- A082886: a(n) = floor((prime(n+1)-prime(n))/log(prime(n))).

Offset 1, canonical program `A082886.P17747584522747470578`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((A000040(n+2)-A000040(n+1))/log(A000040(n+1)))` (program `A082886.P12301748162615932336`, by `A082886.P12301748162615932336.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A082886 (n : ℕ) : ℤ :=
  A082886.P17747584522747470578.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((A000040(n+2)-A000040(n+1))/log(A000040(n+1)))` (program `A082886.P12301748162615932336`, by `A082886.P12301748162615932336.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A082886.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A082898.P8644397962785130186

`A082895(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A082898.P8644397962785130186
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082895 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A082898.P8644397962785130186

noncomputable section

/-- A082898: a(n) = A082895(n)/n, where A082895(n) is the closest number to sigma(n) which is divisible by n.

Offset 1, canonical program `A082898.P8644397962785130186`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A082898 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A082898.P8644397962785130186.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A082898.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A082899.P5647589413368550065

`A082893(n+1)-A000040(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A082899.P5647589413368550065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082893 (n + 1) - A000040 (n + 1)

end

end A082899.P5647589413368550065

noncomputable section

/-- A082899: a(n) = A082893(n)-A000040(n), that is difference of n-th prime and number closest to it and divisible by n.

Offset 1, canonical program `A082899.P5647589413368550065`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A082899 (n : ℕ) : ℤ :=
  A082899.P5647589413368550065.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A082899.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A082901.P13729791713076633821

`A082895(n+1)-A000203(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A082901.P13729791713076633821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082895 (n + 1) - A000203 (n + 1)

end

end A082901.P13729791713076633821

noncomputable section

/-- A082901: a(n) = A082895(n)-A000203(n); the distance from sigma(n) to that multiple of n which is closest to sigma(n), positive terms for cases where the closest multiple is after sigma(n), and negative terms where it is before sigma(n). In case of ties, a positive term is selected.

Offset 1, canonical program `A082901.P13729791713076633821`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A082901 (n : ℕ) : ℤ :=
  A082901.P13729791713076633821.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A082901.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A083481.P2036924859276303019

`A007913((n+1)*(n+2))`
-/

namespace A083481.P2036924859276303019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 ((n + 1) * (n + 2))

end

end A083481.P2036924859276303019

noncomputable section

/-- A083481: Squarefree part of the n-th oblong number.

Offset 1, canonical program `A083481.P2036924859276303019`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A083481 (n : ℕ) : ℤ :=
  A083481.P2036924859276303019.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A083481.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A083550.P10022725985667639331

`A001223(n+1)*A001223(n+2)`
-/

namespace A083550.P10022725985667639331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1) * A001223 (n + 2)

end

end A083550.P10022725985667639331

noncomputable section

/-- A083550: Product of 2 consecutive prime differences of two successive terms of A001223.

Offset 1, canonical program `A083550.P10022725985667639331`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A083550 (n : ℕ) : ℤ :=
  A083550.P10022725985667639331.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A083550.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A083551.P5233934583423530355

`lcm(A001223(n+1), A001223(n+2))`
-/

namespace A083551.P5233934583423530355
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001223 (n + 1)) (A001223 (n + 2))

end

end A083551.P5233934583423530355

noncomputable section

/-- A083551: Least common multiple of 2 consecutive prime differences, of two successive terms of A001223.

Offset 1, canonical program `A083551.P5233934583423530355`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A083551 (n : ℕ) : ℤ :=
  (A083551.P5233934583423530355.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A083551.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A083553.P14618886648007354780

`A037165(n+1)+1`
-/

namespace A083553.P14618886648007354780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037165 (n + 1) + 1

end

end A083553.P14618886648007354780

noncomputable section

/-- A083553: Product of prime(n+1)-1 and prime(n)-1.

Offset 1, canonical program `A083553.P14618886648007354780`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A083553 (n : ℕ) : ℤ :=
  A083553.P14618886648007354780.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A083553.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A083554.P17846494229853685562

`lcm(A006093(n+2), A006093(n+1))`
-/

namespace A083554.P17846494229853685562
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006093 (n + 2)) (A006093 (n + 1))

end

end A083554.P17846494229853685562

noncomputable section

/-- A083554: Least common multiple of prime(n+1)-1 and prime(n)-1.

Offset 1, canonical program `A083554.P17846494229853685562`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A083554 (n : ℕ) : ℤ :=
  (A083554.P17846494229853685562.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A083554.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A083558.P13428316401202771703

`A000040(n+1)*A119959(n+1)`
-/

namespace A083558.P13428316401202771703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A119959 (n + 1)

end

end A083558.P13428316401202771703

noncomputable section

/-- A083558: p(p^2-p+1) as p runs through the primes.

Offset 1, canonical program `A083558.P13428316401202771703`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A083558 (n : ℕ) : ℤ :=
  A083558.P13428316401202771703.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A083558.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A084468.P3280344016003290935

`2*A018900(n+1)+1`
-/

namespace A084468.P3280344016003290935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A018900 (n + 1) + 1

end

end A084468.P3280344016003290935

noncomputable section

/-- A084468: Odd numbers with exactly 3 ones in binary expansion.

Offset 1, canonical program `A084468.P3280344016003290935`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A084468 (n : ℕ) : ℤ :=
  A084468.P3280344016003290935.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A084468.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A084922.P12180075061364049737

`A084920(n+3)/6`
-/

namespace A084922.P12180075061364049737
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084920 (n + 3) : ℚ) / 6

end

end A084922.P12180075061364049737

noncomputable section

/-- A084922: a(n) = (prime(n)-1)*(prime(n)+1)/6.

Offset 3, canonical program `A084922.P12180075061364049737`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A084922 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A084922.P12180075061364049737.a (n - 3))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A084922.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A086343.P8284013822573750690

`4*(n+1)-2-A000120(n)`
-/

namespace A086343.P8284013822573750690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) - 2 - A000120 n

end

end A086343.P8284013822573750690

noncomputable section

/-- A086343: a(n) starts new run of consecutive values in A055938.

Offset 1, canonical program `A086343.P8284013822573750690`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A086343 (n : ℕ) : ℤ :=
  A086343.P8284013822573750690.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A086343.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A086682.P120960568963059901

`A055729(2*n)`
-/

namespace A086682.P120960568963059901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055729 (2 * n)

end

end A086682.P120960568963059901

noncomputable section

/-- A086682: Number of primes < 9^n.

Offset 0, canonical program `A086682.P120960568963059901`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A086682 (n : ℕ) : ℤ :=
  A086682.P120960568963059901.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A086682.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A086688.P14871445314589732103

`A000720(A030078(n+1))`
-/

namespace A086688.P14871445314589732103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A030078 (n + 1)).toNat

end

end A086688.P14871445314589732103

noncomputable section

/-- A086688: Number of primes < prime(n)^3.

Offset 1, canonical program `A086688.P14871445314589732103`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A086688 (n : ℕ) : ℤ :=
  A086688.P14871445314589732103.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A086688.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A086692.P3138494623852388611

`A055729(A000040(n+1))`
-/

namespace A086692.P3138494623852388611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055729 (A000040 (n + 1)).toNat

end

end A086692.P3138494623852388611

noncomputable section

/-- A086692: Number of primes < 3^prime(n).

Offset 2, canonical program `A086692.P3138494623852388611`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A086692 (n : ℕ) : ℤ :=
  A086692.P3138494623852388611.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A086692.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A086693.P13695587413947883348

`A064151(A000040(n+1))`
-/

namespace A086693.P13695587413947883348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064151 (A000040 (n + 1)).toNat

end

end A086693.P13695587413947883348

noncomputable section

/-- A086693: Number of primes less than prime(n)^prime(n).

Offset 1, canonical program `A086693.P13695587413947883348`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A086693 (n : ℕ) : ℤ :=
  A086693.P13695587413947883348.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A086693.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A087724.P15258222457833944806

`A085581(n+2)-A000720(n+2)-2`
-/

namespace A087724.P15258222457833944806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085581 (n + 2) - A000720 (n + 2) - 2

end

end A087724.P15258222457833944806

noncomputable section

/-- A087724: a(n) = -PrimePi(n) +floor( prime(n)/log(n))-2.

Offset 2, canonical program `A087724.P15258222457833944806`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `-A000720(n+2)+floor(A000040(n+2)/log(n+2))-2` (program `A087724.P10571230137167687608`, by `A087724.P10571230137167687608.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A087724 (n : ℕ) : ℤ :=
  A087724.P15258222457833944806.a (n - 2)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `-A000720(n+2)+floor(A000040(n+2)/log(n+2))-2` (program `A087724.P10571230137167687608`, by `A087724.P10571230137167687608.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A087724.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A088385.P8087248075102541654

`A051674(n+2)-A051674(n+1)`
-/

namespace A088385.P8087248075102541654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051674 (n + 2) - A051674 (n + 1)

end

end A088385.P8087248075102541654

noncomputable section

/-- A088385: a(n) = prime(n+1)^prime(n+1) - prime(n)^prime(n).

Offset 1, canonical program `A088385.P8087248075102541654`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A088385 (n : ℕ) : ℤ :=
  A088385.P8087248075102541654.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A088385.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A088569.P6705758619599044298

`3-A000002(n+2)`
-/

namespace A088569.P6705758619599044298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A000002 (n + 2)

end

end A088569.P6705758619599044298

noncomputable section

/-- A088569: Anti-Kolakoski sequence (sequence of run lengths never coincides with the sequence itself).

Offset 1, canonical program `A088569.P6705758619599044298`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A088569 (n : ℕ) : ℤ :=
  A088569.P6705758619599044298.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A088569.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A088570.P7695628510631317990

`(3+(-1)^(n+1))/2*A000002(n+1)`
-/

namespace A088570.P7695628510631317990
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 + (-1) ^ (n + 1) : ℚ) / 2 * (A000002 (n + 1) : ℚ)

end

end A088570.P7695628510631317990

noncomputable section

/-- A088570: Sum of terms in n-th block of Kolakoski sequence.

Offset 1, canonical program `A088570.P7695628510631317990`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A088570 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A088570.P7695628510631317990.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A088570.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A088730.P2735196930794356321

`A051674(n+1)-1`
-/

namespace A088730.P2735196930794356321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051674 (n + 1) - 1

end

end A088730.P2735196930794356321

noncomputable section

/-- A088730: Numbers of the form p^p - 1, where p is a prime.

Offset 1, canonical program `A088730.P2735196930794356321`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A088730 (n : ℕ) : ℤ :=
  A088730.P2735196930794356321.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A088730.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A088860.P14705598582404096707

`2*A002110(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A088860.P14705598582404096707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002110 (n + 1)

end

end A088860.P14705598582404096707

noncomputable section

/-- A088860: Twice the primorials (first definition), 2*A002110(n).

Offset 1, canonical program `A088860.P14705598582404096707`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A088860 (n : ℕ) : ℤ :=
  A088860.P14705598582404096707.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A088860.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A088981.P15143407969733008252

`A089061(n)+A000071(n+4)`
-/

namespace A088981.P15143407969733008252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089061 n + A000071 (n + 4)

end

end A088981.P15143407969733008252

noncomputable section

/-- A088981: a(n+2) = a(n+1) + a(n) - (2*n + 1) where a(0)=7, a(1)=11.

Offset 0, canonical program `A088981.P15143407969733008252`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A088981 (n : ℕ) : ℤ :=
  A088981.P15143407969733008252.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A088981.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A089508.P12331894221832702613

`A081018(n+1)-1`
-/

namespace A089508.P12331894221832702613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081018 (n + 1) - 1

end

end A089508.P12331894221832702613

noncomputable section

/-- A089508: Solution to a binomial problem together with companion sequence A081016(n-1).

Offset 1, canonical program `A089508.P12331894221832702613`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A089508 (n : ℕ) : ℤ :=
  A089508.P12331894221832702613.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A089508.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A089574.P3668588586690278809

`A000330(n+1)+A006011(n+2)+A034263(n)`
-/

namespace A089574.P3668588586690278809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (n + 1) + A006011 (n + 2) + A034263 n

end

end A089574.P3668588586690278809

noncomputable section

/-- A089574: Column 4 of an array closely related to A083480. (Both arrays have shape sequence A083479).

Offset 1, canonical program `A089574.P3668588586690278809`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A089574 (n : ℕ) : ℤ :=
  A089574.P3668588586690278809.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A089574.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A090226.P1073034422440432756

`A006880(n)+1`
-/

namespace A090226.P1073034422440432756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006880 n + 1

end

end A090226.P1073034422440432756

noncomputable section

/-- A090226: Least k such that prime(k) has n digits. Index of least n-digit prime.

Offset 1, canonical program `A090226.P1073034422440432756`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A090226 (n : ℕ) : ℤ :=
  A090226.P1073034422440432756.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A090226.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A090621.P8657121778584496807

`floor(A090616(n)/2)`
-/

namespace A090621.P8657121778584496807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A090616 n : ℚ) / 2⌋

end

end A090621.P8657121778584496807

noncomputable section

/-- A090621: Exponent of highest power of 16 dividing n!.

Offset 0, canonical program `A090621.P8657121778584496807`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A090621 (n : ℕ) : ℤ :=
  A090621.P8657121778584496807.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A090621.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A090988.P5141419551860329845

`2^A004736(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A090988.P5141419551860329845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A004736 (n + 1) : ℤ)

end

end A090988.P5141419551860329845

noncomputable section

/-- A090988: a(n) = 2^A004736(n).

Offset 1, canonical program `A090988.P5141419551860329845`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A090988 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A090988.P5141419551860329845.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A090988.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A091090.P18330635638829780680

`A000120(n)+A070939(n)-A000120(n+1)-A070939(n+1)+2`
-/

namespace A091090.P18330635638829780680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n + A070939 n - A000120 (n + 1) - A070939 (n + 1) + 2

end

end A091090.P18330635638829780680

noncomputable section

/-- A091090: In binary representation: number of editing steps (delete, insert, or substitute) to transform n into n + 1.

Offset 0, canonical program `A091090.P18330635638829780680`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A091090 (n : ℕ) : ℤ :=
  A091090.P18330635638829780680.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A091090.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A091804.P12556309897702176768

`2^(n*(n+1)/2)*A055209(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A091804.P12556309897702176768
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ ((n * (n + 1) : ℚ) / 2 : ℝ) * (A055209 n : ℝ)

end

end A091804.P12556309897702176768

noncomputable section

/-- A091804: a(n) = 2^(n*(n+1)/2)*A055209(n).

Offset 0, canonical program `A091804.P12556309897702176768`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A091804 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A091804.P12556309897702176768.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A091804.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A091810.P8790943426307010129

`(n+1)!*A055209(n)²`
-/

namespace A091810.P8790943426307010129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) * A055209 n ^ 2

end

end A091810.P8790943426307010129

noncomputable section

/-- A091810: Hankel transform of the sequence A001469 (unsigned), Genocchi numbers of first kind.

Offset 0, canonical program `A091810.P8790943426307010129`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A091810 (n : ℕ) : ℤ :=
  A091810.P8790943426307010129.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A091810.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A091818.P1536144604709334989

`2*A001065(n+1)`
-/

namespace A091818.P1536144604709334989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001065 (n + 1)

end

end A091818.P1536144604709334989

noncomputable section

/-- A091818: Sum of the even proper divisors of 2n. Sum of the even divisors of 2n that are less than 2n.

Offset 1, canonical program `A091818.P1536144604709334989`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A091818 (n : ℕ) : ℤ :=
  A091818.P1536144604709334989.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A091818.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A092252.P17826796624829402363

`A006450(10^n)`
-/

namespace A092252.P17826796624829402363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (10 ^ n)

end

end A092252.P17826796624829402363

noncomputable section

/-- A092252: a(n) = prime(prime(10^n)).

Offset 0, canonical program `A092252.P17826796624829402363`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A092252 (n : ℕ) : ℤ :=
  A092252.P17826796624829402363.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A092252.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A092391.P1831081500129819331

`n+A000120(n)`
-/

namespace A092391.P1831081500129819331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A000120 n

end

end A092391.P1831081500129819331

noncomputable section

/-- A092391: a(n) = n + wt(n), where wt(n) = A000120(n) = binary weight of n.

Offset 0, canonical program `A092391.P1831081500129819331`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A092391 (n : ℕ) : ℤ :=
  A092391.P1831081500129819331.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A092391.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A092431.P10060195551394861038

`A056326(2*(n+1)+1)`
-/

namespace A092431.P10060195551394861038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056326 (2 * (n + 1) + 1)

end

end A092431.P10060195551394861038

noncomputable section

/-- A092431: Numbers having in binary representation a leading 1 followed by n zeros and n-1 ones.

Offset 1, canonical program `A092431.P10060195551394861038`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A092431 (n : ℕ) : ℤ :=
  A092431.P10060195551394861038.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A092431.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A092443.P10839671212827273342

`A002457(n)+A000984(n+1)`
-/

namespace A092443.P10839671212827273342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002457 n + A000984 (n + 1)

end

end A092443.P10839671212827273342

noncomputable section

/-- A092443: Sequence arising from enumeration of domino tilings of Aztec Pillow-like regions.

Offset 1, canonical program `A092443.P10839671212827273342`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A092443 (n : ℕ) : ℤ :=
  A092443.P10839671212827273342.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A092443.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A092949.P1382492647621219255

`A001043(n+1)+1`
-/

namespace A092949.P1382492647621219255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) + 1

end

end A092949.P1382492647621219255

noncomputable section

/-- A092949: Numbers of the form prime(n+1) + prime(n) + 1.

Offset 1, canonical program `A092949.P1382492647621219255`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A092949 (n : ℕ) : ℤ :=
  A092949.P1382492647621219255.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A092949.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A093502.P7956115543108727931

`A000040(A074271(n+1))`
-/

namespace A093502.P7956115543108727931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A074271 (n + 1)).toNat

end

end A093502.P7956115543108727931

noncomputable section

/-- A093502: a(1) = 2; for n > 0, a(n+1) is the a(n)-th prime after a(n).

Offset 1, canonical program `A093502.P7956115543108727931`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A093502 (n : ℕ) : ℤ :=
  A093502.P7956115543108727931.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A093502.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A093659.P5890510302390266350

`A000120(n)!`
-/

namespace A093659.P5890510302390266350
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A000120 n).toNat

end

end A093659.P5890510302390266350

noncomputable section

/-- A093659: First column of lower triangular matrix A093658; factorial of the number of 1's in binary expansion of n.

Offset 0, canonical program `A093659.P5890510302390266350`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A093659 (n : ℕ) : ℤ :=
  (A093659.P5890510302390266350.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A093659.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A094311.P17684241153426919969

`A064322(n+1)-A064322(n)`
-/

namespace A094311.P17684241153426919969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064322 (n + 1) - A064322 n

end

end A094311.P17684241153426919969

noncomputable section

/-- A094311: a(n) = n*(1+n^2)*((2+n^2)^2-n^2)/16.

Offset 1, canonical program `A094311.P17684241153426919969`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A094311 (n : ℕ) : ℤ :=
  A094311.P17684241153426919969.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A094311.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A095124.P2733019777204179774

`A033844(2^n)`
-/

namespace A095124.P2733019777204179774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033844 (2 ^ n)

end

end A095124.P2733019777204179774

noncomputable section

/-- A095124: a(n) = prime(2^(2^n)).

Offset 0, canonical program `A095124.P2733019777204179774`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A095124 (n : ℕ) : ℤ :=
  A095124.P2733019777204179774.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A095124.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A096060.P1960581539626183162

`A007663(n+3)/3`
-/

namespace A096060.P1960581539626183162
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007663 (n + 3) : ℚ) / 3

end

end A096060.P1960581539626183162

noncomputable section

/-- A096060: (2^(p-1)-1)/(3*p) where p = prime(n).

Offset 3, canonical program `A096060.P1960581539626183162`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A096060 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A096060.P1960581539626183162.a (n - 3))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A096060.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A096143.P14316011638880613569`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A096143 (n : ℕ) : ℤ :=
  A096143.P14316011638880613569.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A096143.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A096215.P7687908874337330203

`A007917(A001043(n+1))`
-/

namespace A096215.P7687908874337330203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 (A001043 (n + 1)).toNat

end

end A096215.P7687908874337330203

noncomputable section

/-- A096215: Greatest primes not greater than the sum of two succeeding primes.

Offset 1, canonical program `A096215.P7687908874337330203`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A096215 (n : ℕ) : ℤ :=
  A096215.P7687908874337330203.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A096215.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A096277.P17564688573804244660

`A001043(n+1)+A001043(n+2)`
-/

namespace A096277.P17564688573804244660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) + A001043 (n + 2)

end

end A096277.P17564688573804244660

noncomputable section

/-- A096277: Sum of successive sums of successive primes: a(n) = s(n) + s(n+1) where s(n) = prime(n) + prime(n+1) (A001043).

Offset 1, canonical program `A096277.P17564688573804244660`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A096277 (n : ℕ) : ℤ :=
  A096277.P17564688573804244660.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A096277.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A096289.P10983530805932168913

`A000120(n)+A053824(n)`
-/

namespace A096289.P10983530805932168913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n + A053824 n

end

end A096289.P10983530805932168913

noncomputable section

/-- A096289: Sum of digits of n in bases 2 and 5.

Offset 0, canonical program `A096289.P10983530805932168913`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A096289 (n : ℕ) : ℤ :=
  A096289.P10983530805932168913.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A096289.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A096321.P9380306192113796125

`A033844(A000040(n+1))`
-/

namespace A096321.P9380306192113796125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033844 (A000040 (n + 1)).toNat

end

end A096321.P9380306192113796125

noncomputable section

/-- A096321: a(n) = prime(2^prime(n)).

Offset 1, canonical program `A096321.P9380306192113796125`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A096321 (n : ℕ) : ℤ :=
  A096321.P9380306192113796125.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A096321.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A096324.P10427354593466631171

`A038833(A000040(n+1))`
-/

namespace A096324.P10427354593466631171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038833 (A000040 (n + 1)).toNat

end

end A096324.P10427354593466631171

noncomputable section

/-- A096324: a(n) = prime(3^prime(n)).

Offset 1, canonical program `A096324.P10427354593466631171`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A096324 (n : ℕ) : ℤ :=
  A096324.P10427354593466631171.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A096324.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A096325.P12168185849377177578

`A119772(A000040(n+1))`
-/

namespace A096325.P12168185849377177578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119772 (A000040 (n + 1)).toNat

end

end A096325.P12168185849377177578

noncomputable section

/-- A096325: a(n) = prime(4^prime(n)).

Offset 1, canonical program `A096325.P12168185849377177578`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A096325 (n : ℕ) : ℤ :=
  A096325.P12168185849377177578.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A096325.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A096326.P10563604204036775217

`A055680(A000040(n+1))`
-/

namespace A096326.P10563604204036775217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055680 (A000040 (n + 1)).toNat

end

end A096326.P10563604204036775217

noncomputable section

/-- A096326: a(n) = prime(5^prime(n)).

Offset 1, canonical program `A096326.P10563604204036775217`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A096326 (n : ℕ) : ℤ :=
  A096326.P10563604204036775217.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A096326.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A096334.P1883000159483682659

`A002110(row(n))/A002110(col(n))`
-/

namespace A096334.P1883000159483682659
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002110 (SequenceMachineLib.triRow n) : ℚ) / (A002110 (SequenceMachineLib.triCol n) : ℚ)

end

end A096334.P1883000159483682659

noncomputable section

/-- A096334: Triangle read by rows: T(n,k) = prime(n)#/prime(k)#, 0<=k<=n.

Offset 0, canonical program `A096334.P1883000159483682659`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A096334 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A096334.P1883000159483682659.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A096334.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A096662.P12573431005364411900

`A007501(n+1)`
-/

namespace A096662.P12573431005364411900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007501 (n + 1)

end

end A096662.P12573431005364411900

noncomputable section

/-- A096662: Least nontrivial n-tuply triangular number.

Offset 1, canonical program `A096662.P12573431005364411900`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A096662 (n : ℕ) : ℤ :=
  A096662.P12573431005364411900.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A096662.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A097017.P15742144128177953416

`A084301(5*(n+1))`
-/

namespace A097017.P15742144128177953416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084301 (5 * (n + 1))

end

end A097017.P15742144128177953416

noncomputable section

/-- A097017: a(n) = sigma(5*n) modulo 6.

Offset 1, canonical program `A097017.P15742144128177953416`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A097017 (n : ℕ) : ℤ :=
  A097017.P15742144128177953416.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A097017.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A097022.P6513166181426899163

`(A065765(n+1)-3)/6`
-/

namespace A097022.P6513166181426899163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065765 (n + 1) - 3 : ℚ) / 6

end

end A097022.P6513166181426899163

noncomputable section

/-- A097022: a(n) = (sigma(2n^2)-3)/6.

Offset 1, canonical program `A097022.P6513166181426899163`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A097022 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A097022.P6513166181426899163.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A097022.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A097431.P15092973135870859049

`floor(sqrt(A069484(n+1)))`
-/

namespace A097431.P15092973135870859049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A069484 (n + 1))

end

end A097431.P15092973135870859049

noncomputable section

/-- A097431: Integer part of the hypotenuse of right triangles with consecutive prime legs.

Offset 1, canonical program `A097431.P15092973135870859049`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A097431 (n : ℕ) : ℤ :=
  A097431.P15092973135870859049.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A097431.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A097499.P17050933069722058923

`A053089(n+1)+A078422(n+1)`
-/

namespace A097499.P17050933069722058923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053089 (n + 1) + A078422 (n + 1)

end

end A097499.P17050933069722058923

noncomputable section

/-- A097499: Numbers of the form p^q + q^p where p and q are consecutive primes.

Offset 1, canonical program `A097499.P17050933069722058923`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A097499 (n : ℕ) : ℤ :=
  A097499.P17050933069722058923.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A097499.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A097508.P15482133836038292803

`A001951(n)-n`
-/

namespace A097508.P15482133836038292803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n - (n : ℤ)

end

end A097508.P15482133836038292803

noncomputable section

/-- A097508: a(n) = floor(n*(sqrt(2)-1)).

Offset 0, canonical program `A097508.P15482133836038292803`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A097508 (n : ℕ) : ℤ :=
  A097508.P15482133836038292803.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A097508.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A097662.P16094723525980984548

`A002720(n)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A097662.P16094723525980984548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002720 n - 1

end

end A097662.P16094723525980984548

noncomputable section

/-- A097662: a(n) = A002720(n) - 1.

Offset 0, canonical program `A097662.P16094723525980984548`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A097662 (n : ℕ) : ℤ :=
  A097662.P16094723525980984548.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A097662.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A098090.P13715726592348268082

`A113935(n+2)/2`
-/

namespace A098090.P13715726592348268082
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113935 (n + 2) : ℚ) / 2

end

end A098090.P13715726592348268082

noncomputable section

/-- A098090: Numbers k such that 2k-3 is prime.

Offset 1, canonical program `A098090.P13715726592348268082`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A098090 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A098090.P13715726592348268082.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A098090.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A098137.P17122769462180348508

`A000312(n+1)+A062481(n+1)`
-/

namespace A098137.P17122769462180348508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (n + 1) + A062481 (n + 1)

end

end A098137.P17122769462180348508

noncomputable section

/-- A098137: a(n) = n^n + n^prime(n).

Offset 1, canonical program `A098137.P17122769462180348508`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A098137 (n : ℕ) : ℤ :=
  A098137.P17122769462180348508.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A098137.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A098764.P1450263935949736531

`A062234(n+1)+A000040(n+1)`
-/

namespace A098764.P1450263935949736531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062234 (n + 1) + A000040 (n + 1)

end

end A098764.P1450263935949736531

noncomputable section

/-- A098764: a(n) = 3p - q where p and q are consecutive primes.

Offset 1, canonical program `A098764.P1450263935949736531`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A098764 (n : ℕ) : ℤ :=
  A098764.P1450263935949736531.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A098764.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A098890.P17272869798312743783

`A098602(n)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A098890.P17272869798312743783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098602 n + 1

end

end A098890.P17272869798312743783

noncomputable section

/-- A098890: a(n) = A001652(n)*A046090(n)+1 = A098602(n)+1.

Offset 0, canonical program `A098890.P17272869798312743783`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A098890 (n : ℕ) : ℤ :=
  A098890.P17272869798312743783.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A098890.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A099244.P823863561371780859

`gcd(A070939(n+1), A000120(n+1))`
-/

namespace A099244.P823863561371780859
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A070939 (n + 1)) (A000120 (n + 1))

end

end A099244.P823863561371780859

noncomputable section

/-- A099244: Greatest common divisor of length of n in binary representation and its number of ones.

Offset 1, canonical program `A099244.P823863561371780859`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A099244 (n : ℕ) : ℤ :=
  (A099244.P823863561371780859.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A099244.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A099246.P5806609912808460663

`A070939(n)/gcd(A070939(n), A000120(n))`
-/

namespace A099246.P5806609912808460663
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070939 n : ℚ) / (Int.gcd (A070939 n) (A000120 n) : ℚ)

end

end A099246.P5806609912808460663

noncomputable section

/-- A099246: Denominator of relative frequency of number of ones in the binary representation of n.

Offset 0, canonical program `A099246.P5806609912808460663`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A099246 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A099246.P5806609912808460663.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A099246.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A099375.P13700148065993022910

`2*A004736(n+1)-1`
-/

namespace A099375.P13700148065993022910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004736 (n + 1) - 1

end

end A099375.P13700148065993022910

noncomputable section

/-- A099375: Sequence matrix for odd numbers.

Offset 0, canonical program `A099375.P13700148065993022910`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A099375 (n : ℕ) : ℤ :=
  A099375.P13700148065993022910.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A099375.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A099584.P17919373969718200762

`A007949(A006093(n+1))`
-/

namespace A099584.P17919373969718200762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A006093 (n + 1)).toNat

end

end A099584.P17919373969718200762

noncomputable section

/-- A099584: Exponent of 3 in factorization of prime(n) - 1.

Offset 1, canonical program `A099584.P17919373969718200762`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A099584 (n : ℕ) : ℤ :=
  A099584.P17919373969718200762.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A099584.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A099638.P15899235441177012148

`A098210(n+1)/15`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A099638.P15899235441177012148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098210 (n + 1) : ℚ) / 15

end

end A099638.P15899235441177012148

noncomputable section

/-- A099638: a(n) = A098210(n)/15.

Offset 1, canonical program `A099638.P15899235441177012148`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A099638 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A099638.P15899235441177012148.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A099638.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A100566.P9068379759931913626

`(A006450(n+2)+A006450(2*(n+2)))/2`
-/

namespace A100566.P9068379759931913626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006450 (n + 2) + A006450 (2 * (n + 2)) : ℚ) / 2

end

end A100566.P9068379759931913626

noncomputable section

/-- A100566: 2*a(n) = prime(prime(n)) + prime(prime(2n)).

Offset 2, canonical program `A100566.P9068379759931913626`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A100566 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A100566.P9068379759931913626.a (n - 2))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A100566.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A100567.P7524990123290842635

`A006450(A032766(n+1))`
-/

namespace A100567.P7524990123290842635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (A032766 (n + 1)).toNat

end

end A100567.P7524990123290842635

noncomputable section

/-- A100567: Prime-indexed primes as n runs through the integers congruent to 0 or 1 mod 3.

Offset 1, canonical program `A100567.P7524990123290842635`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A100567 (n : ℕ) : ℤ :=
  A100567.P7524990123290842635.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A100567.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A100803.P18284078702291543981

`2*A001223(n+1)-1`
-/

namespace A100803.P18284078702291543981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001223 (n + 1) - 1

end

end A100803.P18284078702291543981

noncomputable section

/-- A100803: A100802(m) where A100802(m) > A100802(m-1).

Offset 1, canonical program `A100803.P18284078702291543981`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A100803 (n : ℕ) : ℤ :=
  A100803.P18284078702291543981.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A100803.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A100892.P5668575000177681908

`A088837(n+1)-1`
-/

namespace A100892.P5668575000177681908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088837 (n + 1) - 1

end

end A100892.P5668575000177681908

noncomputable section

/-- A100892: a(n) = (2*n-1) XOR (2*n+1), bitwise.

Offset 1, canonical program `A100892.P5668575000177681908`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A100892 (n : ℕ) : ℤ :=
  A100892.P5668575000177681908.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A100892.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A101226.P14289836999690369146

`A000720(A101225(n+1))`
-/

namespace A101226.P14289836999690369146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A101225 (n + 1)).toNat

end

end A101226.P14289836999690369146

noncomputable section

/-- A101226: Numbers formed by the fourth nesting of pi(10^n).

Offset 1, canonical program `A101226.P14289836999690369146`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A101226 (n : ℕ) : ℤ :=
  A101226.P14289836999690369146.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A101226.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A101340.P17215631478577904943

`A051674(n+1)+A000040(n+1)`
-/

namespace A101340.P17215631478577904943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051674 (n + 1) + A000040 (n + 1)

end

end A101340.P17215631478577904943

noncomputable section

/-- A101340: a(n) = p^p + p, with p = prime(n).

Offset 1, canonical program `A101340.P17215631478577904943`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A101340 (n : ℕ) : ℤ :=
  A101340.P17215631478577904943.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A101340.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A101799.P18286270317429535391

`A055209(n)*A002720(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A101799.P18286270317429535391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055209 n * A002720 (n + 1)

end

end A101799.P18286270317429535391

noncomputable section

/-- A101799: a(n)= det[A000522(i+j+1)], i,j=0...n, is the Hankel determinant of order n+1 of the arrangements numbers, s. A000522; a(n) = product( (p!)^2,p=0..n )*(n+1)!*LaguerreL(n+1,0,-1), n=0,1..., where LaguerreL(n,lambda,x) are generalized Laguerre polynomials; a(n)=A055209(n)*A002720(n+1);.

Offset 0, canonical program `A101799.P18286270317429535391`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A101799 (n : ℕ) : ℤ :=
  A101799.P18286270317429535391.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A101799.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A101800.P11975487397842622249

`abs(A055209(n)*A009940(n+1))`
-/

namespace A101800.P11975487397842622249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A055209 n * A009940 (n + 1)|

end

end A101800.P11975487397842622249

noncomputable section

/-- A101800: a(n)= abs(det[A000166(i+j+1)]), i,j=0...n, is the absolute value of the Hankel determinant of order n+1 of the derangements numbers, cf. A000166.

Offset 0, canonical program `A101800.P11975487397842622249`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A101800 (n : ℕ) : ℤ :=
  A101800.P11975487397842622249.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A101800.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A101926.P10081112457634097054

`2^A101925(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A101926.P10081112457634097054
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A101925 n : ℤ)

end

end A101926.P10081112457634097054

noncomputable section

/-- A101926: a(n) = 2^A101925(n).

Offset 0, canonical program `A101926.P10081112457634097054`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A101926 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A101926.P10081112457634097054.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A101926.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A102376.P15707539213794308439

`4^A000120(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A102376.P15707539213794308439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A000120 n : ℤ)

end

end A102376.P15707539213794308439

noncomputable section

/-- A102376: a(n) = 4^A000120(n).

Offset 0, canonical program `A102376.P15707539213794308439`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A102376 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A102376.P15707539213794308439.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A102376.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A102377.P13436876123217032879

`10^A000120(n)`
-/

namespace A102377.P13436876123217032879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ (A000120 n : ℤ)

end

end A102377.P13436876123217032879

noncomputable section

/-- A102377: Gould's sequence A001316 in binary.

Offset 0, canonical program `A102377.P13436876123217032879`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A102377 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A102377.P13436876123217032879.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A102377.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A102389.P14110874914439114042

`(1+floor(n/2))*(1+(-1)^A000120(n))/2`
-/

namespace A102389.P14110874914439114042
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + ⌊(n : ℚ) / 2⌋ : ℚ) * (1 + (-1 : ℚ) ^ (A000120 n : ℤ)) / 2

end

end A102389.P14110874914439114042

noncomputable section

/-- A102389: An evil count.

Offset 0, canonical program `A102389.P14110874914439114042`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A102389 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A102389.P14110874914439114042.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A102389.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A102390.P3960873466461559496

`(1+floor(n/2))*(1-(-1)^A000120(n))/2`
-/

namespace A102390.P3960873466461559496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + ⌊(n : ℚ) / 2⌋ : ℚ) * (1 - (-1 : ℚ) ^ (A000120 n : ℤ)) / 2

end

end A102390.P3960873466461559496

noncomputable section

/-- A102390: An odious count.

Offset 0, canonical program `A102390.P3960873466461559496`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A102390 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A102390.P3960873466461559496.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A102390.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A102393.P8577092184968738453

`(n+1)*(1+(-1)^A000120(n))/2`
-/

namespace A102393.P8577092184968738453
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (1 + (-1 : ℚ) ^ (A000120 n : ℤ)) / 2

end

end A102393.P8577092184968738453

noncomputable section

/-- A102393: A wicked evil sequence.

Offset 0, canonical program `A102393.P8577092184968738453`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A102393 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A102393.P8577092184968738453.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A102393.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A102394.P12165741716525845284

`(n+1)*(1-(-1)^A000120(n))/2`
-/

namespace A102394.P12165741716525845284
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (1 - (-1 : ℚ) ^ (A000120 n : ℤ)) / 2

end

end A102394.P12165741716525845284

noncomputable section

/-- A102394: A wicked odious sequence.

Offset 0, canonical program `A102394.P12165741716525845284`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A102394 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A102394.P12165741716525845284.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A102394.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A102693.P8278738889318132967

`1/2*A065866(n+1)`
-/

namespace A102693.P8278738889318132967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A065866 (n + 1) : ℚ)

end

end A102693.P8278738889318132967

noncomputable section

/-- A102693: a(n) is the number of digraphs (not allowing loops) with vertices 1,2,...,n that have a unique Eulerian tour (up to cyclic shift).

Offset 2, canonical program `A102693.P8278738889318132967`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A102693 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A102693.P8278738889318132967.a (n - 2))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A102693.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A103326.P15150555984287749825

`5*A088545(n+1)`
-/

namespace A103326.P15150555984287749825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A088545 (n + 1)

end

end A103326.P15150555984287749825

noncomputable section

/-- A103326: a(n) = Fibonacci(5n)/Fibonacci(n).

Offset 1, canonical program `A103326.P15150555984287749825`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A103326 (n : ℕ) : ℤ :=
  A103326.P15150555984287749825.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A103326.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A103855.P16581451660380685307

`A039716(n+1)-A002110(n+1)+1`
-/

namespace A103855.P16581451660380685307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039716 (n + 1) - A002110 (n + 1) + 1

end

end A103855.P16581451660380685307

noncomputable section

/-- A103855: a(n) = prime(n)! - prime(n)# + 1.

Offset 1, canonical program `A103855.P16581451660380685307`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A103855 (n : ℕ) : ℤ :=
  A103855.P16581451660380685307.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A103855.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A104002.P1106834138281463142

`A004736(n+1)*A002260(n+1)^(A004736(n+1)-1)`
-/

namespace A104002.P1106834138281463142
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) : ℚ) * (A002260 (n + 1) : ℚ) ^ (A004736 (n + 1) - 1 : ℤ)

end

end A104002.P1106834138281463142

noncomputable section

/-- A104002: Triangle T(n,k) read by rows: number of permutations in S_n avoiding all k-length patterns that start with 1 except one fixed pattern and containing it exactly once.

Offset 2, canonical program `A104002.P1106834138281463142`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A104002 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A104002.P1106834138281463142.a (n - 2))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A104002.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A104089.P11213303609795102587

`A007917(A000302(n+1))`
-/

namespace A104089.P11213303609795102587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 (A000302 (n + 1)).toNat

end

end A104089.P11213303609795102587

noncomputable section

/-- A104089: Largest prime <= 4^n.

Offset 1, canonical program `A104089.P11213303609795102587`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A104089 (n : ℕ) : ℤ :=
  A104089.P11213303609795102587.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A104089.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A104090.P14849277082735369052

`A007917(A000351(n+1))`
-/

namespace A104090.P14849277082735369052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 (A000351 (n + 1)).toNat

end

end A104090.P14849277082735369052

noncomputable section

/-- A104090: Largest prime <= 5^n.

Offset 1, canonical program `A104090.P14849277082735369052`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A104090 (n : ℕ) : ℤ :=
  A104090.P14849277082735369052.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A104090.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A104128.P7921980219623975117

`A000040(n+1)+A104126(n+1)`
-/

namespace A104128.P7921980219623975117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + A104126 (n + 1)

end

end A104128.P7921980219623975117

noncomputable section

/-- A104128: a(n) = p + p^(p+1), where p = prime(n).

Offset 1, canonical program `A104128.P7921980219623975117`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A104128 (n : ℕ) : ℤ :=
  A104128.P7921980219623975117.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A104128.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A104588.P1591008191025370823

`A034386(A000196(n+1))`
-/

namespace A104588.P1591008191025370823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034386 (A000196 (n + 1)).toNat

end

end A104588.P1591008191025370823

noncomputable section

/-- A104588: Product of primes less than or equal to sqrt(n).

Offset 1, canonical program `A104588.P1591008191025370823`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A104588 (n : ℕ) : ℤ :=
  A104588.P1591008191025370823.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A104588.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A104887.P16520352266867439420

`A000040(A004736(n+1))`
-/

namespace A104887.P16520352266867439420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A004736 (n + 1)).toNat

end

end A104887.P16520352266867439420

noncomputable section

/-- A104887: Triangle T(n,k) = (n-k+1)-th prime, read by rows.

Offset 1, canonical program `A104887.P16520352266867439420`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A104887 (n : ℕ) : ℤ :=
  A104887.P16520352266867439420.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A104887.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A105220.P13322071171121659733

`2-A088917(n)`
-/

namespace A105220.P13322071171121659733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A088917 n

end

end A105220.P13322071171121659733

noncomputable section

/-- A105220: Trajectory of 1 under the morphism 1->{1,2,1}, 2->{2,2,2}.

Offset 0, canonical program `A105220.P13322071171121659733`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A105220 (n : ℕ) : ℤ :=
  A105220.P13322071171121659733.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A105220.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A106033.P11683275331328434839

`A080883(A033286(n+1))`
-/

namespace A106033.P11683275331328434839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080883 (A033286 (n + 1)).toNat

end

end A106033.P11683275331328434839

noncomputable section

/-- A106033: a(n) is the least number k such that n*prime(n)+k is a perfect square.

Offset 1, canonical program `A106033.P11683275331328434839`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A106033 (n : ℕ) : ℤ :=
  A106033.P11683275331328434839.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A106033.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A106271.P8734074727395476678

`1-A014138(n)`
-/

namespace A106271.P8734074727395476678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A014138 n

end

end A106271.P8734074727395476678

noncomputable section

/-- A106271: Row sums of number triangle A106270.

Offset 0, canonical program `A106271.P8734074727395476678`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A106271 (n : ℕ) : ℤ :=
  A106271.P8734074727395476678.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A106271.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A106640.P13671692357537978349

`A000108(n+1)-A005043(n+1)`
-/

namespace A106640.P13671692357537978349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) - A005043 (n + 1)

end

end A106640.P13671692357537978349

noncomputable section

/-- A106640: Row sums of A059346.

Offset 0, canonical program `A106640.P13671692357537978349`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A106640 (n : ℕ) : ℤ :=
  A106640.P13671692357537978349.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A106640.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A107251.P18036125735927967973

`A079478(n)/A000142(n+1)`
-/

namespace A107251.P18036125735927967973
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079478 n : ℚ) / (A000142 (n + 1) : ℚ)

end

end A107251.P18036125735927967973

noncomputable section

/-- A107251: Supercatalan numbers SF(2n)/(SF(n)*SF(n+1)) where SF is the superfactorial function A000178.

Offset 0, canonical program `A107251.P18036125735927967973`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A107251 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A107251.P18036125735927967973.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A107251.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A107681.P6693878412057773898

`A005836(A062050(n+2))`
-/

namespace A107681.P6693878412057773898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (A062050 (n + 2)).toNat

end

end A107681.P6693878412057773898

noncomputable section

/-- A107681: Repeat(first 2^k numbers with no 2 in ternary representation) for k>0.

Offset 1, canonical program `A107681.P6693878412057773898`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A107681 (n : ℕ) : ℤ :=
  A107681.P6693878412057773898.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A107681.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A107891.P7884879305984148283

`(A000330(n+2)*A000538(n+2)-A000537(n+2)²)/4`
-/

namespace A107891.P7884879305984148283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000330 (n + 2) * A000538 (n + 2) - A000537 (n + 2) ^ 2 : ℚ) / 4

end

end A107891.P7884879305984148283

noncomputable section

/-- A107891: a(n) = (n+1)*(n+2)^2*(n+3)^2*(n+4)*(3n^2 + 15n + 20)/2880.

Offset 0, canonical program `A107891.P7884879305984148283`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A107891 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A107891.P7884879305984148283.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A107891.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A108676.P15454259189612607366

`A027800(n)+2*A004282(n)`
-/

namespace A108676.P15454259189612607366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027800 n + 2 * A004282 n

end

end A108676.P15454259189612607366

noncomputable section

/-- A108676: a(n) = (n+1)^2*(n+2)*(5*n^2 + 15*n + 12)/24.

Offset 0, canonical program `A108676.P15454259189612607366`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)²*(n+2)*(5*n²+15*n+12)/24` (program `A108676.P16518987865110052031`, by `A108676.P16518987865110052031.correct`). Lean does not check the parsing of the name. -/
def A108676 (n : ℕ) : ℤ :=
  A108676.P15454259189612607366.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)²*(n+2)*(5*n²+15*n+12)/24` (program `A108676.P16518987865110052031`, by `A108676.P16518987865110052031.correct`). Lean does not check the parsing of the name. -/
def A108676.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A108678.P8916393138229401493

`A000537(n+1)+A002415(n+1)`
-/

namespace A108678.P8916393138229401493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 (n + 1) + A002415 (n + 1)

end

end A108678.P8916393138229401493

noncomputable section

/-- A108678: a(n) = (n+1)^2*(n+2)*(2*n+3)/6.

Offset 0, canonical program `A108678.P8916393138229401493`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A108678 (n : ℕ) : ℤ :=
  A108678.P8916393138229401493.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A108678.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A108679.P9730175226178725277

`(A005585(n+2)²-A288876(n+1))/24`
-/

namespace A108679.P9730175226178725277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005585 (n + 2) ^ 2 - A288876 (n + 1) : ℚ) / 24

end

end A108679.P9730175226178725277

noncomputable section

/-- A108679: a(n) = (n+1)*(n+2)^2*(n+3)^2*(n+4)^2*(n+5)^2*(n+6)/86400.

Offset 0, canonical program `A108679.P9730175226178725277`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A108679 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A108679.P9730175226178725277.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A108679.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A109849.P1288347001958710852

`lcm(n+1, a(A080079(n-1)-1))` with `a(0)=1, a(1)=2`
-/

namespace A109849.P1288347001958710852
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Nat.lcm (n + 1) (a (A080079 (n - 1) - 1).toNat)

end

end A109849.P1288347001958710852

noncomputable section

/-- A109849: a(1) = 1, a(2) = 2; a(n) = lcm(n, a(n-2)), a(n+1) = lcm((n+1), a(n-3)) and so on until a(2n-1) = lcm(2n-1, a(1)). Then a(2n) = lcm(2n, a(2n-2)) and so on.

Offset 1, canonical program `A109849.P1288347001958710852`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A109849 (n : ℕ) : ℤ :=
  (A109849.P1288347001958710852.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A109849.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A110257.P16520114715403784889

`(4*n+1)*A002894(n)/4^A000120(n)`
-/

namespace A110257.P16520114715403784889
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 * n + 1 : ℤ) * A002894 n : ℚ) / (4 : ℚ) ^ (A000120 n : ℤ)

end

end A110257.P16520114715403784889

noncomputable section

/-- A110257: Numerators in the coefficients that form the odd-indexed partial quotients of the continued fraction representation of the inverse tangent of 1/x.

Offset 1, canonical program `A110257.P16520114715403784889`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A110257 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A110257.P16520114715403784889.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A110257.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A110299.P14323801455997029878

`A125180(n+2)-A000040(n+2)`
-/

namespace A110299.P14323801455997029878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125180 (n + 2) - A000040 (n + 2)

end

end A110299.P14323801455997029878

noncomputable section

/-- A110299: a(n) = Sum_{i=0..n-1} 2^i*prime(n-i).

Offset 1, canonical program `A110299.P14323801455997029878`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A110299 (n : ℕ) : ℤ :=
  A110299.P14323801455997029878.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A110299.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A110423.P17077668433318161995

`(n+2+A007917(n+2))!/(n+2)!`
-/

namespace A110423.P17077668433318161995
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ((n + 2 : ℤ) + A007917 (n + 2)).toNat : ℚ) / (Nat.factorial (n + 2) : ℚ)

end

end A110423.P17077668433318161995

noncomputable section

/-- A110423: a(n) = (n+1)(n+2)...(n+prime(k)) where prime(k) <= n < prime(k+1).

Offset 2, canonical program `A110423.P17077668433318161995`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A110423 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A110423.P17077668433318161995.a (n - 2))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A110423.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A110896.P4972123815413617607

`A006988(n+1)-A006988(n)`
-/

namespace A110896.P4972123815413617607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006988 (n + 1) - A006988 n

end

end A110896.P4972123815413617607

noncomputable section

/-- A110896: Difference between prime(10^n) and prime(10^(n-1)).

Offset 1, canonical program `A110896.P4972123815413617607`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A110896 (n : ℕ) : ℤ :=
  A110896.P4972123815413617607.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A110896.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A111071.P17768111592594357772

`A006094(n+1)-A000040(n+3)`
-/

namespace A111071.P17768111592594357772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1) - A000040 (n + 3)

end

end A111071.P17768111592594357772

noncomputable section

/-- A111071: Difference between the product of two consecutive primes and the next prime.

Offset 1, canonical program `A111071.P17768111592594357772`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A111071 (n : ℕ) : ℤ :=
  A111071.P17768111592594357772.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A111071.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A111412.P12502365492224334232

`A000120(A000120(n+1))-A000120(A000120(n))`
-/

namespace A111412.P12502365492224334232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A000120 (n + 1)).toNat - A000120 (A000120 n).toNat

end

end A111412.P12502365492224334232

noncomputable section

/-- A111412: a(n) = f(f(n+1))-f(f(n)), where f(m) = wt(m) = A000120(m).

Offset 0, canonical program `A111412.P12502365492224334232`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A111412 (n : ℕ) : ℤ :=
  A111412.P12502365492224334232.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A111412.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A111499.P11538712920671782061

`floor(10^(n+1)/A006880(n+1))-1`
-/

namespace A111499.P11538712920671782061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(10 ^ (n + 1) : ℚ) / (A006880 (n + 1) : ℚ)⌋ - 1

end

end A111499.P11538712920671782061

noncomputable section

/-- A111499: a(n) = floor(10^n/PrimePi(10^n)) - 1.

Offset 1, canonical program `A111499.P11538712920671782061`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A111499 (n : ℕ) : ℤ :=
  A111499.P11538712920671782061.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A111499.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A112008.P10946631168994066137

`(n+7)*a(n-1)+(n+1)*A002539(n)` with `a(0)=1`
-/

namespace A112008.P10946631168994066137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 7 : ℤ) * a (n - 1) + (n + 1 : ℤ) * A002539 n

end

end A112008.P10946631168994066137

noncomputable section

/-- A112008: Fourth diagonal of second-order Eulerian triangle A008517. Fourth column (m=3) of triangle A112007.

Offset 0, canonical program `A112008.P10946631168994066137`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A112008 (n : ℕ) : ℤ :=
  A112008.P10946631168994066137.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A112008.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A112367.P5378126856570841990

`A000217(n-A057944(n))`
-/

namespace A112367.P5378126856570841990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 ((n : ℤ) - A057944 n).toNat

end

end A112367.P5378126856570841990

noncomputable section

/-- A112367: a(n) = A000217(n-k), where k is the largest triangular number less than n.

Offset 0, canonical program `A112367.P5378126856570841990`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A112367 (n : ℕ) : ℤ :=
  A112367.P5378126856570841990.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A112367.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A112489.P5073704333748817868

`(n+6)*a(n-1)+(n+5)*A112488(n+2)` with `a(0)=15`
-/

namespace A112489.P5073704333748817868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [15] fun n a =>
  (n + 6 : ℤ) * a (n - 1) + (n + 5 : ℤ) * A112488 (n + 2)

end

end A112489.P5073704333748817868

noncomputable section

/-- A112489: Fourth column of triangle A112486 used for e.g.f.s of |Stirling1|=|A008275| diagonals.

Offset 3, canonical program `A112489.P5073704333748817868`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A112489 (n : ℕ) : ℤ :=
  A112489.P5073704333748817868.a (n - 3)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A112489.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A112497.P5345261462036478010

`5*a(n-1)+(n+7)*A112496(n)` with `a(0)=105`
-/

namespace A112497.P5345261462036478010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [105] fun n a =>
  5 * a (n - 1) + (n + 7 : ℤ) * A112496 n

end

end A112497.P5345261462036478010

noncomputable section

/-- A112497: Fifth column of triangle A112493 used for e.g.f.s of Stirling2 diagonals.

Offset 0, canonical program `A112497.P5345261462036478010`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A112497 (n : ℕ) : ℤ :=
  A112497.P5345261462036478010.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A112497.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A113511.P7287160080811230179

`A002110(A000217(n))`
-/

namespace A113511.P7287160080811230179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (A000217 n).toNat

end

end A113511.P7287160080811230179

noncomputable section

/-- A113511: Product of first A000217(n) = n(n+1)/2 primes.

Offset 0, canonical program `A113511.P7287160080811230179`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A113511 (n : ℕ) : ℤ :=
  A113511.P7287160080811230179.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A113511.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A113728.P2802102494628422056

`A031131(n+1)*ceil(A000040(n+1)/A031131(n+1))`
-/

namespace A113728.P2802102494628422056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031131 (n + 1) * ⌈(A000040 (n + 1) : ℚ) / (A031131 (n + 1) : ℚ)⌉

end

end A113728.P2802102494628422056

noncomputable section

/-- A113728: a(n) is the integer between p(n) and p(n+2) which is divisible by (p(n+2)-p(n)), where p(n) is the n-th prime.

Offset 1, canonical program `A113728.P2802102494628422056`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A113728 (n : ℕ) : ℤ :=
  A113728.P2802102494628422056.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A113728.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A114104.P11501347288294405863

`A114103(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A114104.P11501347288294405863
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114103 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A114104.P11501347288294405863

noncomputable section

/-- A114104: a(n) = A114103(n)/n.

Offset 1, canonical program `A114104.P11501347288294405863`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A114104 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A114104.P11501347288294405863.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A114104.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A114619.P14883267576841951743

`2*A079291(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A114619.P14883267576841951743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A079291 n

end

end A114619.P14883267576841951743

noncomputable section

/-- A114619: a(n) = 2*A079291(n) (twice squares of Pell numbers).

Offset 0, canonical program `A114619.P14883267576841951743`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A114619 (n : ℕ) : ℤ :=
  A114619.P14883267576841951743.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A114619.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A115384.P10033913726558094609

`floor((n+1)/2)+(1+(-1)^n)*(1-(-1)^A000120(n))/4`
-/

namespace A115384.P10033913726558094609
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(n + 1 : ℚ) / 2⌋ : ℚ) + (1 + (-1) ^ n : ℚ) * (1 - (-1 : ℚ) ^ (A000120 n : ℤ)) / 4

end

end A115384.P10033913726558094609

noncomputable section

/-- A115384: Partial sums of Thue-Morse numbers A010060.

Offset 0, canonical program `A115384.P10033913726558094609`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A115384 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A115384.P10033913726558094609.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A115384.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A115902.P2573848008066962846

`2^n*A002457(n)`
-/

namespace A115902.P2573848008066962846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A002457 n

end

end A115902.P2573848008066962846

noncomputable section

/-- A115902: Expansion of (1-8*x)^(-3/2).

Offset 0, canonical program `A115902.P2573848008066962846`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A115902 (n : ℕ) : ℤ :=
  A115902.P2573848008066962846.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A115902.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A115903.P5062678535628825191

`3^n*A002457(n)`
-/

namespace A115903.P5062678535628825191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A002457 n

end

end A115903.P5062678535628825191

noncomputable section

/-- A115903: Expansion of (1-12*x)^(-3/2).

Offset 0, canonical program `A115903.P5062678535628825191`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A115903 (n : ℕ) : ℤ :=
  A115903.P5062678535628825191.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A115903.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A115964.P16204198474867126447

`A002110(n+1)^3`
-/

namespace A115964.P16204198474867126447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (n + 1) ^ 3

end

end A115964.P16204198474867126447

noncomputable section

/-- A115964: Denominator of Sum_{i=1..n} 1/prime(i)^3.

Offset 1, canonical program `A115964.P16204198474867126447`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A115964 (n : ℕ) : ℤ :=
  A115964.P16204198474867126447.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A115964.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A116941.P12886605417078057976

`A074147(n+1)-1`
-/

namespace A116941.P12886605417078057976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074147 (n + 1) - 1

end

end A116941.P12886605417078057976

noncomputable section

/-- A116941: Permutation of the natural numbers in conjunction with A116939 and A003056.

Offset 0, canonical program `A116941.P12886605417078057976`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A116941 (n : ℕ) : ℤ :=
  A116941.P12886605417078057976.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A116941.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A117394.P2393426672751703093

`A002110(A000045(n))`
-/

namespace A117394.P2393426672751703093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (A000045 n).toNat

end

end A117394.P2393426672751703093

noncomputable section

/-- A117394: Product of the first F(n) primes, where F(n) is the n-th Fibonacci number.

Offset 0, canonical program `A117394.P2393426672751703093`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A117394 (n : ℕ) : ℤ :=
  A117394.P2393426672751703093.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A117394.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A117692.P1169064651969981510

`A034386(row(n)+1)²/(A034386(col(n)+1)*A034386(row(n)+1-(col(n)+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A117692.P1169064651969981510
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034386 (SequenceMachineLib.triRow n + 1) ^ 2 : ℚ) / (A034386 (SequenceMachineLib.triCol n + 1) * A034386 (SequenceMachineLib.triRow n + 1 - (SequenceMachineLib.triCol n + 1)) : ℚ)

end

end A117692.P1169064651969981510

noncomputable section

/-- A117692: Triangle T(n,k) = A034386(n)^2/(A034386(k)*A034386(n-k)), 1 <= k <= n, read by rows.

Offset 1, canonical program `A117692.P1169064651969981510`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A117692 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A117692.P1169064651969981510.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A117692.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A117722.P14536613535452170244

`A000045(A003622(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A117722.P14536613535452170244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A003622 (n + 1)).toNat

end

end A117722.P14536613535452170244

noncomputable section

/-- A117722: a(n) = A000045(A003622(n)).

Offset 0, canonical program `A117722.P14536613535452170244`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A117722 (n : ℕ) : ℤ :=
  A117722.P14536613535452170244.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A117722.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A117735.P13796720657671421151

`A000142(n)-A034386(n)`
-/

namespace A117735.P13796720657671421151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A034386 n

end

end A117735.P13796720657671421151

noncomputable section

/-- A117735: a(n) = n! - primorial(n).

Offset 0, canonical program `A117735.P13796720657671421151`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A117735 (n : ℕ) : ℤ :=
  A117735.P13796720657671421151.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A117735.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A117998.P3500614632528046177

`A048726(a(n-1))` with `a(0)=1`
-/

namespace A117998.P3500614632528046177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A048726 (a (n - 1)).toNat

end

end A117998.P3500614632528046177

noncomputable section

/-- A117998: Decimal number generated by the binary bits of the n-th generation of the Rule 102 elementary cellular automaton.

Offset 0, canonical program `A117998.P3500614632528046177`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A117998 (n : ℕ) : ℤ :=
  A117998.P3500614632528046177.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A117998.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A118683.P4158127544114815964

`A039701(row(n)+1)+A039701(col(n)+1)-A039701(row(n)+1)*A039701(col(n)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A118683.P4158127544114815964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039701 (SequenceMachineLib.triRow n + 1) + A039701 (SequenceMachineLib.triCol n + 1) - A039701 (SequenceMachineLib.triRow n + 1) * A039701 (SequenceMachineLib.triCol n + 1)

end

end A118683.P4158127544114815964

noncomputable section

/-- A118683: Triangle, T(n,k) = A039701(n) + A039701(k) - A039701(n)*A039701(k), read by rows.

Offset 1, canonical program `A118683.P4158127544114815964`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A118683 (n : ℕ) : ℤ :=
  A118683.P4158127544114815964.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A118683.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A118749.P15703372653129478394

`A007917(3*(n+1))`
-/

namespace A118749.P15703372653129478394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 (3 * (n + 1))

end

end A118749.P15703372653129478394

noncomputable section

/-- A118749: Largest prime <= 3*n.

Offset 1, canonical program `A118749.P15703372653129478394`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A118749 (n : ℕ) : ℤ :=
  A118749.P15703372653129478394.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A118749.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A119248.P9120946014621865842

`A075829(n+2)`
-/

namespace A119248.P9120946014621865842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075829 (n + 2)

end

end A119248.P9120946014621865842

noncomputable section

/-- A119248: a(n) is the difference between denominator and numerator of the n-th alternating harmonic number Sum_{k=1..n} (-1)^(k+1)/k = A058313(n)/A058312(n).

Offset 1, canonical program `A119248.P9120946014621865842`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A119248 (n : ℕ) : ℤ :=
  A119248.P9120946014621865842.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A119248.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A119693.P16182671038255865393

`A119692(n)/2`
-/

namespace A119693.P16182671038255865393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119692 n : ℚ) / 2

end

end A119693.P16182671038255865393

noncomputable section

/-- A119693: a(n) = binomial(2*n,n) * Fibonacci(n)/2.

Offset 0, canonical program `A119693.P16182671038255865393`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A119693 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A119693.P16182671038255865393.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A119693.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A119697.P9446901935336878940

`n*A119694(n)`
-/

namespace A119697.P9446901935336878940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A119694 n

end

end A119697.P9446901935336878940

noncomputable section

/-- A119697: a(n) = Fibonacci(n)*n*binomial(2*n,n)/(n+1).

Offset 0, canonical program `A119697.P9446901935336878940`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A119697 (n : ℕ) : ℤ :=
  A119697.P9446901935336878940.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A119697.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A119741.P4227817635269695965

`A003057(n+2)!/A004736(n+1)!`
-/

namespace A119741.P4227817635269695965
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A003057 (n + 2)).toNat : ℚ) / (Nat.factorial (A004736 (n + 1)).toNat : ℚ)

end

end A119741.P4227817635269695965

noncomputable section

/-- A119741: A008279, with the first and last of each row removed.

Offset 2, canonical program `A119741.P4227817635269695965`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A119741 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A119741.P4227817635269695965.a (n - 2))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A119741.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A119773.P12904629875990007010

`A033844(3*n)`
-/

namespace A119773.P12904629875990007010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033844 (3 * n)

end

end A119773.P12904629875990007010

noncomputable section

/-- A119773: (8^n)-th prime.

Offset 0, canonical program `A119773.P12904629875990007010`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A119773 (n : ℕ) : ℤ :=
  A119773.P12904629875990007010.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A119773.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A119774.P16268950224341492503

`A038833(2*n)`
-/

namespace A119774.P16268950224341492503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038833 (2 * n)

end

end A119774.P16268950224341492503

noncomputable section

/-- A119774: (9^n)-th prime.

Offset 0, canonical program `A119774.P16268950224341492503`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A119774 (n : ℕ) : ℤ :=
  A119774.P16268950224341492503.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A119774.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A119777.P2961772218593756435

`A119772(2*n)`
-/

namespace A119777.P2961772218593756435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119772 (2 * n)

end

end A119777.P2961772218593756435

noncomputable section

/-- A119777: (16^n)-th prime.

Offset 0, canonical program `A119777.P2961772218593756435`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A119777 (n : ℕ) : ℤ :=
  A119777.P2961772218593756435.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A119777.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A119778.P14151113457328839830

`A033844(5*n)`
-/

namespace A119778.P14151113457328839830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033844 (5 * n)

end

end A119778.P14151113457328839830

noncomputable section

/-- A119778: (32^n)-th prime.

Offset 0, canonical program `A119778.P14151113457328839830`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A119778 (n : ℕ) : ℤ :=
  A119778.P14151113457328839830.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A119778.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A119780.P4130176689997525209

`A006988(2*n)`
-/

namespace A119780.P4130176689997525209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006988 (2 * n)

end

end A119780.P4130176689997525209

noncomputable section

/-- A119780: a(n) = (100^n)-th prime.

Offset 0, canonical program `A119780.P4130176689997525209`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A119780 (n : ℕ) : ℤ :=
  A119780.P4130176689997525209.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A119780.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A120027.P1714917155360020650

`3^(A004736(n+1)-1)*5^(A002260(n+1)-1)`
-/

namespace A120027.P1714917155360020650
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A004736 (n + 1) - 1 : ℤ) * (5 : ℚ) ^ (A002260 (n + 1) - 1 : ℤ)

end

end A120027.P1714917155360020650

noncomputable section

/-- A120027: Triangle, generated from (3^(n-k) * 5^k) table.

Offset 0, canonical program `A120027.P1714917155360020650`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A120027 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A120027.P1714917155360020650.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A120027.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A120079.P4461166114329905866

`(2-1/(n+1)²)*A051418(n+1)`
-/

namespace A120079.P4461166114329905866
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 - 1 / ((n + 1) ^ 2 : ℚ)) * (A051418 (n + 1) : ℚ)

end

end A120079.P4461166114329905866

noncomputable section

/-- A120079: Unsigned row sums of triangle A120078.

Offset 1, canonical program `A120079.P4461166114329905866`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A120079 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A120079.P4461166114329905866.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A120079.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A120285.P11971560500796594752

`A001008(A000040(n+1)-1)`
-/

namespace A120285.P11971560500796594752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001008 (A000040 (n + 1) - 1).toNat

end

end A120285.P11971560500796594752

noncomputable section

/-- A120285: Numerator of harmonic number H(p-1) = Sum_{k=1..p-1} 1/k for prime p.

Offset 1, canonical program `A120285.P11971560500796594752`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A120285 (n : ℕ) : ℤ :=
  A120285.P11971560500796594752.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A120285.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A120474.P16095270401045431404

`A093879(n+2)-A093879(n+1)`
-/

namespace A120474.P16095270401045431404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093879 (n + 2) - A093879 (n + 1)

end

end A120474.P16095270401045431404

noncomputable section

/-- A120474: Second differences of A004001.

Offset 1, canonical program `A120474.P16095270401045431404`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A120474 (n : ℕ) : ℤ :=
  A120474.P16095270401045431404.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A120474.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A120941.P1519152944059217125

`A000720(A006094(n+1))+1-(n+1)`
-/

namespace A120941.P1519152944059217125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A006094 (n + 1)).toNat + 1 - (n + 1 : ℤ)

end

end A120941.P1519152944059217125

noncomputable section

/-- A120941: a(n)=k-n where prime(k) is the smallest prime greater than prime(n)*prime(n+1).

Offset 1, canonical program `A120941.P1519152944059217125`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A120941 (n : ℕ) : ℤ :=
  A120941.P1519152944059217125.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A120941.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A121573.P1415581596517453918

`A000040(2*(n+1)+1)-2*A008347(2*(n+1))-2`
-/

namespace A121573.P1415581596517453918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (2 * (n + 1) + 1) - 2 * A008347 (2 * (n + 1)) - 2

end

end A121573.P1415581596517453918

noncomputable section

/-- A121573: Prime-gap race; difference of the cumulative sums of gaps above and below prime(2n).

Offset 1, canonical program `A121573.P1415581596517453918`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A121573 (n : ℕ) : ℤ :=
  A121573.P1415581596517453918.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A121573.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A121613.P12497213193092273123

`(-1)^n*A008438(n)`
-/

namespace A121613.P12497213193092273123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A008438 n

end

end A121613.P12497213193092273123

noncomputable section

/-- A121613: Expansion of psi(-x)^4 in powers of x where psi() is a Ramanujan theta function.

Offset 0, canonical program `A121613.P12497213193092273123`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A121613 (n : ℕ) : ℤ :=
  A121613.P12497213193092273123.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A121613.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A121840.P11802573148131771096

`A031922(1000*(n+1))`
-/

namespace A121840.P11802573148131771096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031922 (1000 * (n + 1))

end

end A121840.P11802573148131771096

noncomputable section

/-- A121840: (n*10^6)th prime.

Offset 1, canonical program `A121840.P11802573148131771096`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A121840 (n : ℕ) : ℤ :=
  A121840.P11802573148131771096.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A121840.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A121858.P4793984350226281940

`3^A006093(n+1)`
-/

namespace A121858.P4793984350226281940
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A006093 (n + 1) : ℤ)

end

end A121858.P4793984350226281940

noncomputable section

/-- A121858: Smallest odd number having prime(n) divisors, where prime(n) is the n-th prime=A000040(n).

Offset 1, canonical program `A121858.P4793984350226281940`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A121858 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A121858.P4793984350226281940.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A121858.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A122209.P962173722163386459

`A024450((n+1)²)`
-/

namespace A122209.P962173722163386459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024450 ((n + 1) ^ 2)

end

end A122209.P962173722163386459

noncomputable section

/-- A122209: Sum of squares of the first n^2 primes = A024450[n^2].

Offset 1, canonical program `A122209.P962173722163386459`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A122209 (n : ℕ) : ℤ :=
  A122209.P962173722163386459.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A122209.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A122220.P15811966447984658883

`(A030516(n+1)-A001248(n+1))/20`
-/

namespace A122220.P15811966447984658883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030516 (n + 1) - A001248 (n + 1) : ℚ) / 20

end

end A122220.P15811966447984658883

noncomputable section

/-- A122220: a(n) = (prime(n)^6 - prime(n)^2)/20.

Offset 1, canonical program `A122220.P15811966447984658883`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A122220 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A122220.P15811966447984658883.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A122220.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A123057.P3491790178531440000

`2*A123056(n)`
-/

namespace A123057.P3491790178531440000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A123056 n

end

end A123057.P3491790178531440000

noncomputable section

/-- A123057: Values x of solutions (x, y) to the Diophantine equation (x-y)^4 - 8*x*y = 0 with x >= y.

Offset 0, canonical program `A123057.P3491790178531440000`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A123057 (n : ℕ) : ℤ :=
  A123057.P3491790178531440000.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A123057.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A123116.P10623391634681793158

`2*A123115(n)`
-/

namespace A123116.P10623391634681793158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A123115 n

end

end A123116.P10623391634681793158

noncomputable section

/-- A123116: Values y of solutions (x, y) to the Diophantine equation (x-y)^4 - 8*x*y = 0 with x >= y.

Offset 0, canonical program `A123116.P10623391634681793158`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A123116 (n : ℕ) : ℤ :=
  A123116.P10623391634681793158.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A123116.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A123128.P14620295915267660605

`n+1+A001223(n+1)`
-/

namespace A123128.P14620295915267660605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A001223 (n + 1)

end

end A123128.P14620295915267660605

noncomputable section

/-- A123128: Add n to the n-th difference between consecutive primes.

Offset 1, canonical program `A123128.P14620295915267660605`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A123128 (n : ℕ) : ℤ :=
  A123128.P14620295915267660605.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A123128.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A123899.P16570814073594301494

`(n+1)!/(A093101(n)*A093101(n+1))`
-/

namespace A123899.P16570814073594301494
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) / (A093101 n * A093101 (n + 1) : ℚ)

end

end A123899.P16570814073594301494

noncomputable section

/-- A123899: a(n) = (n+1)!/(d(n)*d(n+1)) where d(n) = cancellation factor in reducing Sum_{k=0...n} 1/k! to lowest terms.

Offset 0, canonical program `A123899.P16570814073594301494`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A123899 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A123899.P16570814073594301494.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A123899.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A123900.P8261275927121685626

`(n+3)!/(A093101(n)*A093101(n+1)*A093101(n+2))`
-/

namespace A123900.P8261275927121685626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 3) : ℚ) / (A093101 n * A093101 (n + 1) * A093101 (n + 2) : ℚ)

end

end A123900.P8261275927121685626

noncomputable section

/-- A123900: a(n) = (n+3)!/(d(n)*d(n+1)*d(n+2)) where d(n) = cancellation factor in reducing Sum_{k=0...n} 1/k! to lowest terms.

Offset 0, canonical program `A123900.P8261275927121685626`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A123900 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A123900.P8261275927121685626.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A123900.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A123907.P8393408210616074745

`A034953(n+1)-A011756(n+1)`
-/

namespace A123907.P8393408210616074745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034953 (n + 1) - A011756 (n + 1)

end

end A123907.P8393408210616074745

noncomputable section

/-- A123907: a(n) = T(p(n)) - p(T(n)) = Commutator[triangular numbers, primes] at n.

Offset 1, canonical program `A123907.P8393408210616074745`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A123907 (n : ℕ) : ℤ :=
  A123907.P8393408210616074745.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A123907.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A123922.P8101883956895217603

`A047749(n)*A047749(n+1)`
-/

namespace A123922.P8101883956895217603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047749 n * A047749 (n + 1)

end

end A123922.P8101883956895217603

noncomputable section

/-- A123922: Number of 2143-avoiding Dumont paths of the 2nd kind of length 2n.

Offset 0, canonical program `A123922.P8101883956895217603`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A123922 (n : ℕ) : ℤ :=
  A123922.P8101883956895217603.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A123922.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A124781.P10088639858972442460

`gcd(A093101(n), A093101(n+2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A124781.P10088639858972442460
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A093101 n) (A093101 (n + 2))

end

end A124781.P10088639858972442460

noncomputable section

/-- A124781: a(n) = gcd(A093101(n), A093101(n+2)) where A093101(n) = gcd(n!, A(n)) and A(n) = A000522(n) = Sum_{k=0..n} n!/k!.

Offset 0, canonical program `A124781.P10088639858972442460`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A124781 (n : ℕ) : ℤ :=
  (A124781.P10088639858972442460.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A124781.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A124782.P208028333149663752

`(n+3)/A124780(n)`
-/

namespace A124782.P208028333149663752
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) / (A124780 n : ℚ)

end

end A124782.P208028333149663752

noncomputable section

/-- A124782: a(n) = (n+3)/gcd(A(n), A(n+2)) where A(n) = A000522(n) = Sum_{k=0..n} n!/k!.

Offset 0, canonical program `A124782.P208028333149663752`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A124782 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A124782.P208028333149663752.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A124782.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A125137.P4810731587468724038

`A051674(n+1)+1`
-/

namespace A125137.P4810731587468724038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051674 (n + 1) + 1

end

end A125137.P4810731587468724038

noncomputable section

/-- A125137: a(n) = p^p + 1, where p = prime(n).

Offset 1, canonical program `A125137.P4810731587468724038`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A125137 (n : ℕ) : ℤ :=
  A125137.P4810731587468724038.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A125137.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A125652.P12154372188380910291

`sqrt(A125650(A125651(n+1)))`
-/

namespace A125652.P12154372188380910291
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A125650 (A125651 (n + 1)).toNat : ℝ)

end

end A125652.P12154372188380910291

noncomputable section

/-- A125652: Numbers m such that m^2=A125650(k) for some k (belonging A125651).

Offset 1, canonical program `A125652.P12154372188380910291`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A125652 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A125652.P12154372188380910291.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A125652.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A125824.P17644202284966607848

`3^A089792(n)`
-/

namespace A125824.P17644202284966607848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A089792 n : ℤ)

end

end A125824.P17644202284966607848

noncomputable section

/-- A125824: Denominator of n!/3^n.

Offset 0, canonical program `A125824.P17644202284966607848`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A125824 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A125824.P17644202284966607848.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A125824.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A126990.P1126875488273332131

`A007917(A073273(n+1))`
-/

namespace A126990.P1126875488273332131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 (A073273 (n + 1)).toNat

end

end A126990.P1126875488273332131

noncomputable section

/-- A126990: Largest prime preceding geometric mean of prime(n) and prime(n+2).

Offset 1, canonical program `A126990.P1126875488273332131`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A126990 (n : ℕ) : ℤ :=
  A126990.P1126875488273332131.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A126990.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A083402.P6360401774885795274

`A002884(n+1)/2^n`
-/

namespace A083402.P6360401774885795274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002884 (n + 1) : ℚ) / (2 ^ n : ℚ)

end

end A083402.P6360401774885795274

noncomputable section

/-- A083402: Let A_n be the upper triangular matrix in the group GL(n,2) that has zero entries below the main diagonal and 1 elsewhere; a(n) is the size of the conjugacy class of this matrix in GL(n,2).

Offset 1, canonical program `A083402.P6360401774885795274`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A083402 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A083402.P6360401774885795274.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A083402.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A083696.P18431486069192656597

`a(n-1)²+5*A083697(n-1)²` with `a(0)=1`
-/

namespace A083696.P18431486069192656597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) ^ 2 + 5 * A083697 (n - 1) ^ 2

end

end A083696.P18431486069192656597

noncomputable section

/-- A083696: a(n) = Sum_{r=0..2^(n-1)} (5^r/(2r)!)*Product_{k=0..2r-1} (2^n - k).

Offset 0, canonical program `A083696.P18431486069192656597`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A083696 (n : ℕ) : ℤ :=
  A083696.P18431486069192656597.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A083696.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A084854.P13726695903674628097

`(row(n)+1)*10^A055642(col(n)+1)+col(n)+1`
-/

namespace A084854.P13726695903674628097
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow n + 1 : ℚ) * (10 : ℚ) ^ (A055642 (SequenceMachineLib.triCol n + 1) : ℤ) + (SequenceMachineLib.triCol n + 1 : ℚ)

end

end A084854.P13726695903674628097

noncomputable section

/-- A084854: Triangular array, read by rows: T(n,k) = concatenated decimal representations of n and k, 1<=k<=n.

Offset 1, canonical program `A084854.P13726695903674628097`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A084854 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A084854.P13726695903674628097.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A084854.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A084855.P17956969381726171491

`(col(n)+1)*10^A055642(row(n)+1)+row(n)+1`
-/

namespace A084855.P17956969381726171491
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol n + 1 : ℚ) * (10 : ℚ) ^ (A055642 (SequenceMachineLib.triRow n + 1) : ℤ) + (SequenceMachineLib.triRow n + 1 : ℚ)

end

end A084855.P17956969381726171491

noncomputable section

/-- A084855: Triangular array, read by rows: T(n,k) = concatenated decimal representations of k and n, 1<=k<=n.

Offset 1, canonical program `A084855.P17956969381726171491`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A084855 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A084855.P17956969381726171491.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A084855.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A088841.P2753975684504278088

`(49*A268354(n+1)-1)/6`
-/

namespace A088841.P2753975684504278088
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (49 * A268354 (n + 1) - 1 : ℚ) / 6

end

end A088841.P2753975684504278088

noncomputable section

/-- A088841: Numerator of the quotient sigma(7*n)/sigma(n).

Offset 1, canonical program `A088841.P2753975684504278088`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A088841 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A088841.P2753975684504278088.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A088841.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A089893.P9272645442044993464

`(A001317(2*n)-1)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A089893.P9272645442044993464
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001317 (2 * n) - 1 : ℚ) / 4

end

end A089893.P9272645442044993464

noncomputable section

/-- A089893: a(n) = (A001317(2n)-1)/4.

Offset 0, canonical program `A089893.P9272645442044993464`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A089893 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A089893.P9272645442044993464.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A089893.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A090864.P15522354428474077468

`n+2+A085141(n)+A111651(n+1)`
-/

namespace A090864.P15522354428474077468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) + A085141 n + A111651 (n + 1)

end

end A090864.P15522354428474077468

noncomputable section

/-- A090864: Complement of generalized pentagonal numbers (A001318).

Offset 1, canonical program `A090864.P15522354428474077468`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A090864 (n : ℕ) : ℤ :=
  A090864.P15522354428474077468.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A090864.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A092778.P16093359121593778950

`A000045(n)*10^A055642(A000045(n+1))+A000045(n+1)`
-/

namespace A092778.P16093359121593778950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 n : ℚ) * (10 : ℚ) ^ (A055642 (A000045 (n + 1)).toNat : ℤ) + (A000045 (n + 1) : ℚ)

end

end A092778.P16093359121593778950

noncomputable section

/-- A092778: Concatenate pairs of successive Fibonacci numbers.

Offset 0, canonical program `A092778.P16093359121593778950`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A092778 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A092778.P16093359121593778950.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A092778.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A096288.P13797560073647368963

`A000120(n)+A053735(n)`
-/

namespace A096288.P13797560073647368963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n + A053735 n

end

end A096288.P13797560073647368963

noncomputable section

/-- A096288: Sum of digits of n in bases 2 and 3.

Offset 0, canonical program `A096288.P13797560073647368963`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A096288 (n : ℕ) : ℤ :=
  A096288.P13797560073647368963.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A096288.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A096494.P552534159965664402

`2*A000006(n+1)`
-/

namespace A096494.P552534159965664402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000006 (n + 1)

end

end A096494.P552534159965664402

noncomputable section

/-- A096494: Largest value in the periodic part of the continued fraction of sqrt(prime(n)).

Offset 1, canonical program `A096494.P552534159965664402`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A096494 (n : ℕ) : ℤ :=
  A096494.P552534159965664402.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A096494.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A097326.P10021405022841991495

`floor((10^A055642(n+1)-1)/(n+1))`
-/

namespace A097326.P10021405022841991495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((10 : ℚ) ^ (A055642 (n + 1) : ℤ) - 1) / (n + 1 : ℚ)⌋

end

end A097326.P10021405022841991495

noncomputable section

/-- A097326: Largest integer m such that m*n has the same decimal digit length as n.

Offset 1, canonical program `A097326.P10021405022841991495`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A097326 (n : ℕ) : ℤ :=
  A097326.P10021405022841991495.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A097326.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A097383.P11124350842977917727

`A123753(n+1)-floor(3*(n+2)/2)`
-/

namespace A097383.P11124350842977917727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123753 (n + 1) - ⌊(3 * (n + 2) : ℚ) / 2⌋

end

end A097383.P11124350842977917727

noncomputable section

/-- A097383: Minimum total number of comparisons to find each of the values 1 through n using a binary search with 3-way comparisons (less than, equal and greater than).

Offset 1, canonical program `A097383.P11124350842977917727`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A097383 (n : ℕ) : ℤ :=
  A097383.P11124350842977917727.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A097383.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A097944.P13040113314910335954

`A055642(A000040(n+1))`
-/

namespace A097944.P13040113314910335954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A000040 (n + 1)).toNat

end

end A097944.P13040113314910335954

noncomputable section

/-- A097944: Number of digits in n-th prime.

Offset 1, canonical program `A097944.P13040113314910335954`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A097944 (n : ℕ) : ℤ :=
  A097944.P13040113314910335954.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A097944.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A099884.P15567766785827251283

`2^(row(n)-col(n))*A001317(col(n))`
-/

namespace A099884.P15567766785827251283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ) * (A001317 (SequenceMachineLib.triCol n) : ℚ)

end

end A099884.P15567766785827251283

noncomputable section

/-- A099884: XOR difference triangle of the powers of 2, read by rows; Square array A(row,col): A(0,col) = 2^col, A(row,col) = A048724(A(row-1, col)) for row > 0, read by descending antidiagonals.

Offset 0, canonical program `A099884.P15567766785827251283`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A099884 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A099884.P15567766785827251283.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A099884.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A099885.P5795883260777038836

`2^floor((n+1)/2)*A001317(floor(n/2))`
-/

namespace A099885.P5795883260777038836
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊(n + 1 : ℚ) / 2⌋ : ℤ) * (A001317 ⌊(n : ℚ) / 2⌋.toNat : ℚ)

end

end A099885.P5795883260777038836

noncomputable section

/-- A099885: Central terms of the rows of the XOR difference triangle of the powers of 2 (A099884) so that a(n) = A099884(n, floor(n/2)).

Offset 0, canonical program `A099885.P5795883260777038836`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A099885 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A099885.P5795883260777038836.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A099885.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A101266.P11296860737574456655

`A101402(n+1)-A101402(n)`
-/

namespace A101266.P11296860737574456655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101402 (n + 1) - A101402 n

end

end A101266.P11296860737574456655

noncomputable section

/-- A101266: First differences of A101402.

Offset 0, canonical program `A101266.P11296860737574456655`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A101266 (n : ℕ) : ℤ :=
  A101266.P11296860737574456655.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A101266.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A102484.P8514199961919784412

`9*(1+10^(2*A055642(n)+1))+n*(10+10^(1+A055642(n)))`
-/

namespace A102484.P8514199961919784412
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  9 * (1 + (10 : ℚ) ^ (2 * A055642 n + 1 : ℤ)) + (n : ℚ) * (10 + (10 : ℚ) ^ (1 + A055642 n : ℤ))

end

end A102484.P8514199961919784412

noncomputable section

/-- A102484: Numbers of the concatenated form 9nn9.

Offset 1, canonical program `A102484.P8514199961919784412`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A102484 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A102484.P8514199961919784412.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A102484.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A105672.P2069037563154767662

`A064235(n+1)-a(n-A064235(n+1)/3)` with `a(0)=1`
-/

namespace A105672.P2069037563154767662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A064235 (n + 1) - a (SequenceMachineLib.roundAway ((n : ℚ) - (A064235 (n + 1) : ℚ) / 3)).toNat

end

end A105672.P2069037563154767662

noncomputable section

/-- A105672: a(1)=1, then bracketing n with powers of 3 as f(t)=3^t for f(t) < n <= f(t+1), a(n) = f(t+1) - a(n-f(t)).

Offset 1, canonical program `A105672.P2069037563154767662`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A105672 (n : ℕ) : ℤ :=
  A105672.P2069037563154767662.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A105672.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A110803.P6341764083761505143

`(n+1)*A055642(n+1)`
-/

namespace A110803.P6341764083761505143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A055642 (n + 1)

end

end A110803.P6341764083761505143

noncomputable section

/-- A110803: n times the number of digits in the decimal expansion of n.

Offset 1, canonical program `A110803.P6341764083761505143`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A110803 (n : ℕ) : ℤ :=
  A110803.P6341764083761505143.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A110803.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A113018.P1459564956732011392

`A010888(n)^A055642(n)`
-/

namespace A113018.P1459564956732011392
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010888 n : ℚ) ^ (A055642 n : ℤ)

end

end A113018.P1459564956732011392

noncomputable section

/-- A113018: {Digital root of n} raised to the power {number of digits of n}.

Offset 0, canonical program `A113018.P1459564956732011392`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A113018 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A113018.P1459564956732011392.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A113018.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A113019.P17489053355663883129

`A055642(n)^A010888(n)`
-/

namespace A113019.P17489053355663883129
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055642 n : ℚ) ^ (A010888 n : ℤ)

end

end A113019.P17489053355663883129

noncomputable section

/-- A113019: (Number of digits of n) raised to the power of (the digital root of n).

Offset 0, canonical program `A113019.P17489053355663883129`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A113019 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A113019.P17489053355663883129.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A113019.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A113396.P1500599838700234246

`A000040(n+2)-A167770(n+1)`
-/

namespace A113396.P1500599838700234246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) - A167770 (n + 1)

end

end A113396.P1500599838700234246

noncomputable section

/-- A113396: a(n) = -prime(n)^2 (mod prime(n+1)).

Offset 1, canonical program `A113396.P1500599838700234246`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A113396 (n : ℕ) : ℤ :=
  A113396.P1500599838700234246.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A113396.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A115362.P12022203208950917127

`1/3*(4+A053737(n)-A053737(n+1))`
-/

namespace A115362.P12022203208950917127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 3 * (4 + A053737 n - A053737 (n + 1) : ℚ)

end

end A115362.P12022203208950917127

noncomputable section

/-- A115362: Row sums of ((1,x) + (x,x^2))^(-1)*((1,x)-(x,x^2))^(-1) (using Riordan array notation).

Offset 0, canonical program `A115362.P12022203208950917127`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A115362 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A115362.P12022203208950917127.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A115362.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A115607.P10089454494571849752

`(-1)^n*A000593(n+1)`
-/

namespace A115607.P10089454494571849752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A000593 (n + 1)

end

end A115607.P10089454494571849752

noncomputable section

/-- A115607: Sum of odd divisors of n times (-1)^(n+1).

Offset 1, canonical program `A115607.P10089454494571849752`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A115607 (n : ℕ) : ℤ :=
  A115607.P10089454494571849752.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A115607.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A116640.P12883575542746410889

`2*a(floor(n/2))-A033999(n)*A048883(n)` with `a(0)=1`
-/

namespace A116640.P12883575542746410889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a ⌊(n : ℚ) / 2⌋.toNat - A033999 n * A048883 n

end

end A116640.P12883575542746410889

noncomputable section

/-- A116640: a(n) = A116623(A059893(n)).

Offset 0, canonical program `A116640.P12883575542746410889`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A116640 (n : ℕ) : ℤ :=
  A116640.P12883575542746410889.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A116640.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A117767.P658102371895706340

`2*A000006(n+1)+1`
-/

namespace A117767.P658102371895706340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000006 (n + 1) + 1

end

end A117767.P658102371895706340

noncomputable section

/-- A117767: a(n) is the difference between the smallest square greater than prime(n) and the largest square less than prime(n), where prime(n) = A000040(n) is the n-th prime number.

Offset 1, canonical program `A117767.P658102371895706340`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A117767 (n : ℕ) : ℤ :=
  A117767.P658102371895706340.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A117767.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A117804.P13819815151096407065

`1+A055642(n)*(n+1)-(10^A055642(n)-1)/9`
-/

namespace A117804.P13819815151096407065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + A055642 n * (n + 1 : ℤ) : ℚ) - ((10 : ℚ) ^ (A055642 n : ℤ) - 1) / 9

end

end A117804.P13819815151096407065

noncomputable section

/-- A117804: Natural position of n in the string 12345678910111213....

Offset 1, canonical program `A117804.P13819815151096407065`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A117804 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A117804.P13819815151096407065.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A117804.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A120777.P10380441015060415790

`2^A283208(n)`
-/

namespace A120777.P10380441015060415790
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A283208 n : ℤ)

end

end A120777.P10380441015060415790

noncomputable section

/-- A120777: a(n) = 2^(2*n - valuation(CatalanNumber(n), 2)).

Offset 0, canonical program `A120777.P10380441015060415790`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A120777 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A120777.P10380441015060415790.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A120777.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A082300.P16424528380583114676

`eq[1, A082299(n+1)]+1`
-/

namespace A082300.P16424528380583114676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082299 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A082300.P16424528380583114676

noncomputable section

/-- A082300: Numbers relatively prime to the sum of their prime factors (with repetition).

Offset 1, canonical program `A082300.P16424528380583114676`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082300 (n : ℕ) : ℤ :=
  (A082300.P16424528380583114676.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082300.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082343.P11638302062825757021

`A001414(n+1)/A082299(n+1)`
-/

namespace A082343.P11638302062825757021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001414 (n + 1) : ℚ) / (A082299 (n + 1) : ℚ)

end

end A082343.P11638302062825757021

noncomputable section

/-- A082343: Numerator of sopfr(n)/n, where sopfr=A001414 is the sum of prime factors (with repetition).

Offset 1, canonical program `A082343.P11638302062825757021`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, A082299, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A082343 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A082343.P11638302062825757021.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, A082299, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A082343.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A082344.P3644648653846769299

`(n+1)/A082299(n+1)`
-/

namespace A082344.P3644648653846769299
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A082299 (n + 1) : ℚ)

end

end A082344.P3644648653846769299

noncomputable section

/-- A082344: Denominator of sopfr(n)/n, where sopfr=A001414 is the sum of prime factors (with repetition).

Offset 1, canonical program `A082344.P3644648653846769299`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A082299, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A082344 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A082344.P3644648653846769299.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A082299, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A082344.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A082395.P766554720034617641

`∑[A005043(n)]`
-/

namespace A082395.P766554720034617641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005043 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082395.P766554720034617641

noncomputable section

/-- A082395: Number of shifted Young tableaux with height <= 3.

Offset 1, canonical program `A082395.P766554720034617641`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A082395 (n : ℕ) : ℤ :=
  A082395.P766554720034617641.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A082395.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082508.P5152993145593451446

`filter[A001223(n+1), A010055(#)]`
-/

namespace A082508.P5152993145593451446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010055 (f1 j).toNat = 1) n)

end

end A082508.P5152993145593451446

noncomputable section

/-- A082508: Differences between consecutive primes that are powers of 2 in order of their appearance. Differences that are not powers of 2 are deleted from A001223.

Offset 1, canonical program `A082508.P5152993145593451446`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082508 (n : ℕ) : ℤ :=
  A082508.P5152993145593451446.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082508.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082691.P16939966969154618591

`1-A004134(∑[char[A004134(n+1)]])+n`
-/

namespace A082691.P16939966969154618591
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004134 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A004134 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ)

end

end A082691.P16939966969154618591

noncomputable section

/-- A082691: a(1)=1, a(2)=2, then if the first 3*2^k-1 terms are a(1), a(2), ..., a(3*2^k - 1), the first 3*2^(k+1)-1 terms are a(1), a(2), ..., a(3*2^k - 1), a(1), a(2), ..., a(3*2^k - 1), a(3*2^k-1) + 1.

Offset 1, canonical program `A082691.P16939966969154618591`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082691 (n : ℕ) : ℤ :=
  A082691.P16939966969154618591.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082691.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082694.P15112384326944568904

`A082693(n)+a(n-1)` with `a(0)=1`
-/

namespace A082694.P15112384326944568904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A082693 n + a (n - 1)

end

end A082694.P15112384326944568904

noncomputable section

/-- A082694: Partial sums of A082693.

Offset 0, canonical program `A082694.P15112384326944568904`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082694 (n : ℕ) : ℤ :=
  A082694.P15112384326944568904.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082694.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082771.P10430934721500492141

`∑{d}[∑[A010054(n)], #^A002262(n)]`
-/

namespace A082771.P10430934721500492141
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℚ) ^ (A002262 n : ℤ)

end

end A082771.P10430934721500492141

noncomputable section

/-- A082771: Triangular array, read by rows: T(n,k) = Sum_{d|n} d^k, 0 <= k < n.

Offset 1, canonical program `A082771.P10430934721500492141`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1710 terms. -/
def A082771 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A082771.P10430934721500492141.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1710 terms. -/
def A082771.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082995.P3788078618634858335

`A055226(n+1)+A055226(n+1)-A066857(n+1)`
-/

namespace A082995.P3788078618634858335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055226 (n + 1) + (A055226 (n + 1) - A066857 (n + 1))

end

end A082995.P3788078618634858335

noncomputable section

/-- A082995: Distance from n!+1 to next larger square.

Offset 1, canonical program `A082995.P3788078618634858335`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A082995 (n : ℕ) : ℤ :=
  A082995.P3788078618634858335.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A082995.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082998.P15516512680143588984

`∑[A038189(∑{e}[∏{p}[n+1, #], #])]`
-/

namespace A082998.P15516512680143588984
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038189 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082998.P15516512680143588984

noncomputable section

/-- A082998: a(n) = card{ x <= n : omega(x) = 3 }.

Offset 1, canonical program `A082998.P15516512680143588984`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082998 (n : ℕ) : ℤ :=
  A082998.P15516512680143588984.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082998.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083015.P16803926072691412127

`A000302(n)-2*A058622(n)²`
-/

namespace A083015.P16803926072691412127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n - 2 * A058622 n ^ 2

end

end A083015.P16803926072691412127

noncomputable section

/-- A083015: a(n) = the number of ordered pairs of n-bit bit strings, such that both bit strings have at least n/2 one-bits, or both have at most n/2 one-bits.

Offset 0, canonical program `A083015.P16803926072691412127`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A083015 (n : ℕ) : ℤ :=
  A083015.P16803926072691412127.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A083015.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083051.P15776179668375550154

`A001951(n)+Δ[n²]`
-/

namespace A083051.P15776179668375550154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A083051.P15776179668375550154

noncomputable section

/-- A083051: First column of table A083050.

Offset 0, canonical program `A083051.P15776179668375550154`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083051 (n : ℕ) : ℤ :=
  A083051.P15776179668375550154.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083051.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083056.P3013421395682300767

`3*A083055(n+1)-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A083056.P3013421395682300767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A083055 (n + 1) - (n + 1 : ℤ)

end

end A083056.P3013421395682300767

noncomputable section

/-- A083056: a(n) = 3*A083055(n)-n.

Offset 1, canonical program `A083056.P3013421395682300767`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083055, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A083056 (n : ℕ) : ℤ :=
  A083056.P3013421395682300767.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083055, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A083056.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A083186.P11976608839394708486

`∑[A006450(n+1)]`
-/

namespace A083186.P11976608839394708486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083186.P11976608839394708486

noncomputable section

/-- A083186: Sum of the first n primes whose indices are primes.

Offset 1, canonical program `A083186.P11976608839394708486`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083186 (n : ℕ) : ℤ :=
  A083186.P11976608839394708486.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083186.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083199.P131418108510612791

`val(A006999(n)+1, 2)`
-/

namespace A083199.P131418108510612791
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A006999 n + 1).toNat 2

end

end A083199.P131418108510612791

noncomputable section

/-- A083199: Exponent of largest power of 2 dividing A061419(n).

Offset 1, canonical program `A083199.P131418108510612791`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 567 terms. -/
def A083199 (n : ℕ) : ℤ :=
  (A083199.P131418108510612791.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 567 terms. -/
def A083199.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083242.P7247398102828661569

`A008347(n)-a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A083242.P7247398102828661569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A008347 n - a (n - 2)

end

end A083242.P7247398102828661569

noncomputable section

/-- A083242: For n >= 3, a(n-3) + a(n-2) + a(n-1) + a(n) = prime(n); a(0) = 0, a(1) = 1, a(2) = 1.

Offset 0, canonical program `A083242.P7247398102828661569`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083242 (n : ℕ) : ℤ :=
  A083242.P7247398102828661569.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083242.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083364.P1998433297147206427

`∑[A181900(n)+∑[gcd(2, n+1)]]`
-/

namespace A083364.P1998433297147206427
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181900 n + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083364.P1998433297147206427

noncomputable section

/-- A083364: Antidiagonal sums of table A083362.

Offset 0, canonical program `A083364.P1998433297147206427`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083364 (n : ℕ) : ℤ :=
  A083364.P1998433297147206427.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083364.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083532.P14524837623737021936

`A007369(n+2)-A007369(n+1)`
-/

namespace A083532.P14524837623737021936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007369 (n + 2) - A007369 (n + 1)

end

end A083532.P14524837623737021936

noncomputable section

/-- A083532: First difference sequence of A007369. Differences between impossible values for sum of divisors of n.

Offset 1, canonical program `A083532.P14524837623737021936`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007369, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A083532 (n : ℕ) : ℤ :=
  A083532.P14524837623737021936.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007369, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A083532.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A083708.P12213489656389351217

`A083707(n)+a(n-3)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A083708.P12213489656389351217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  A083707 n + a (n - 3)

end

end A083708.P12213489656389351217

noncomputable section

/-- A083708: G.f.: (x+4*x^3+x^5)/((1-x)^2*(1-x^2)^2*(1-x^3)^2).

Offset 0, canonical program `A083708.P12213489656389351217`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083708 (n : ℕ) : ℤ :=
  A083708.P12213489656389351217.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083708.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083725.P6174861882792676472

`n*(A036439(n+1)-1)`
-/

namespace A083725.P6174861882792676472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A036439 (n + 1) - 1)

end

end A083725.P6174861882792676472

noncomputable section

/-- A083725: a(n) = n * [1 + sum(k=1 to n) prime(k)].

Offset 0, canonical program `A083725.P6174861882792676472`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083725 (n : ℕ) : ℤ :=
  A083725.P6174861882792676472.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083725.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083726.P16605921250459075972

`n*A008864(abs(1-n)+1)`
-/

namespace A083726.P16605921250459075972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A008864 (|1 - (n : ℤ)| + 1).toNat

end

end A083726.P16605921250459075972

noncomputable section

/-- A083726: a(n) = (prime(n)+1)*n.

Offset 0, canonical program `A083726.P16605921250459075972`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083726 (n : ℕ) : ℤ :=
  A083726.P16605921250459075972.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083726.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084077.P15331156053743558899

`Δ[A071356(n)]-a(n-1)` with `a(0)=1`
-/

namespace A084077.P15331156053743558899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071356 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n - a (n - 1)

end

end A084077.P15331156053743558899

noncomputable section

/-- A084077: Length of list created by n substitutions k -> Range(-abs(k+1), abs(k-1)) starting with {1}.

Offset 0, canonical program `A084077.P15331156053743558899`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 150 terms. -/
def A084077 (n : ℕ) : ℤ :=
  A084077.P15331156053743558899.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 150 terms. -/
def A084077.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084290.P12844808655589070540

`A001223(record[2*(n+1)/A001223(n+2)])`
-/

namespace A084290.P12844808655589070540
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℚ) / (A001223 (n + 2) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A084290.P12844808655589070540

noncomputable section

/-- A084290: Difference between consecutive primes arising before difference (d=2) between twin primes. In A001223, terms before the ones that equal 2.

Offset 1, canonical program `A084290.P12844808655589070540`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A084290 (n : ℕ) : ℤ :=
  A084290.P12844808655589070540.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A084290.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084291.P5500729874406725872

`A001223(eq[2, A001223(n+1)]+2)`
-/

namespace A084291.P5500729874406725872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A084291.P5500729874406725872

noncomputable section

/-- A084291: Difference between consecutive primes arising after difference (d=2) between twin primes. In A001223, terms succeeding those that equal 2.

Offset 1, canonical program `A084291.P5500729874406725872`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5423 terms. -/
def A084291 (n : ℕ) : ℤ :=
  A084291.P5500729874406725872.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5423 terms. -/
def A084291.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084320.P13942213847821796117

`A067850(n+2)-A067850(n+1)`
-/

namespace A084320.P13942213847821796117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067850 (n + 2) - A067850 (n + 1)

end

end A084320.P13942213847821796117

noncomputable section

/-- A084320: Number of powers of two between 2 consecutive factorials (2! including).

Offset 1, canonical program `A084320.P13942213847821796117`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067850, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A084320 (n : ℕ) : ℤ :=
  A084320.P13942213847821796117.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067850, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A084320.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A084346.P15684392109665983060

`A004277(A082375(n))+1`
-/

namespace A084346.P15684392109665983060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A082375 n).toNat + 1

end

end A084346.P15684392109665983060

noncomputable section

/-- A084346: Triangle read by rows in which row n gives decomposition of Fib(n)*Fib(n+1) into non-adjacent Fibonacci numbers (given by their indices).

Offset 1, canonical program `A084346.P15684392109665983060`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A084346 (n : ℕ) : ℤ :=
  A084346.P15684392109665983060.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A084346.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084792.P10596812045351244596

`A077152(n+1)-1`
-/

namespace A084792.P10596812045351244596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077152 (n + 1) - 1

end

end A084792.P10596812045351244596

noncomputable section

/-- A084792: Primes other than those of the form prime(prime(n)+n-1).

Offset 1, canonical program `A084792.P10596812045351244596`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A084792 (n : ℕ) : ℤ :=
  A084792.P10596812045351244596.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A084792.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084969.P18318459922529985573

`11*A008364(n+1)`
-/

namespace A084969.P18318459922529985573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A008364 (n + 1)

end

end A084969.P18318459922529985573

noncomputable section

/-- A084969: Numbers whose smallest prime factor is 11.

Offset 1, canonical program `A084969.P18318459922529985573`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008364, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A084969 (n : ℕ) : ℤ :=
  A084969.P18318459922529985573.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008364, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A084969.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A085004.P6951409150480316668

`2*A085003(n+1)-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A085004.P6951409150480316668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A085003 (n + 1) - (n + 1 : ℤ)

end

end A085004.P6951409150480316668

noncomputable section

/-- A085004: a(n)=2*A085003(n)-n.

Offset 1, canonical program `A085004.P6951409150480316668`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A085003, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A085004 (n : ℕ) : ℤ :=
  A085004.P6951409150480316668.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A085003, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A085004.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A085009.P7184989559632199993

`∑[A085008(n+1)+2]+2`
-/

namespace A085009.P7184989559632199993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085008 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A085009.P7184989559632199993

noncomputable section

/-- A085009: "Von Koch" sequence generated by {1,1,2}.

Offset 1, canonical program `A085009.P7184989559632199993`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085009 (n : ℕ) : ℤ :=
  A085009.P7184989559632199993.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085009.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A085388.P3862355329764916117

`A009999(n)-A004248(A038722(n+1))`
-/

namespace A085388.P3862355329764916117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009999 n - A004248 (A038722 (n + 1)).toNat

end

end A085388.P3862355329764916117

noncomputable section

/-- A085388: First differences of n^k.

Offset 1, canonical program `A085388.P3862355329764916117`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4726 terms. -/
def A085388 (n : ℕ) : ℤ :=
  A085388.P3862355329764916117.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4726 terms. -/
def A085388.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085425.P14460580140874115341

`A000120(and(n, -(3*(n+1))))`
-/

namespace A085425.P14460580140874115341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.land (n : ℤ) (-(3 * (n + 1) : ℤ))).toNat

end

end A085425.P14460580140874115341

noncomputable section

/-- A085425: Number of minus ones in the symmetric signed digit expansion of n with q=2 (i.e., the representation of n in the (-1,0,1)_2 number system).

Offset 1, canonical program `A085425.P14460580140874115341`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085425 (n : ℕ) : ℤ :=
  A085425.P14460580140874115341.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085425.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085604.P77828900822782128

`val(A002024(n+1)!, A037126(n+1))`
-/

namespace A085604.P77828900822782128
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.factorial (A002024 (n + 1)).toNat) (A037126 (n + 1)).toNat

end

end A085604.P77828900822782128

noncomputable section

/-- A085604: T(n,k) = highest power of prime(k) dividing n!, read by rows.

Offset 1, canonical program `A085604.P77828900822782128`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2415 terms. -/
def A085604 (n : ℕ) : ℤ :=
  (A085604.P77828900822782128.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2415 terms. -/
def A085604.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085739.P8566900589410183315

`∑[A034953(n+1)]`
-/

namespace A085739.P8566900589410183315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034953 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085739.P8566900589410183315

noncomputable section

/-- A085739: Partial sums of A034953(n).

Offset 1, canonical program `A085739.P8566900589410183315`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085739 (n : ℕ) : ℤ :=
  A085739.P8566900589410183315.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085739.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085856.P15661587018022403811

`∑{digits}[A000045(n), A002726(A002726(2*#+1)+1)]`
-/

namespace A085856.P15661587018022403811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A002726 (A002726 (2 * x + 1) + 1).toNat).sum

end

end A085856.P15661587018022403811

noncomputable section

/-- A085856: Number of 2's in decimal expansion of Fibonacci(n).

Offset 0, canonical program `A085856.P15661587018022403811`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A085856 (n : ℕ) : ℤ :=
  A085856.P15661587018022403811.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A085856.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085880.P13933320555991114901

`A007318(n)*A168256(n)`
-/

namespace A085880.P13933320555991114901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A168256 n

end

end A085880.P13933320555991114901

noncomputable section

/-- A085880: Triangle T(n,k) read by rows: multiply row n of Pascal's triangle (A007318) by the n-th Catalan number (A000108).

Offset 0, canonical program `A085880.P13933320555991114901`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6838 terms. -/
def A085880 (n : ℕ) : ℤ :=
  A085880.P13933320555991114901.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6838 terms. -/
def A085880.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086014.P12741057087969494046

`∑{digits}[n², A011675(#)]`
-/

namespace A086014.P12741057087969494046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A011675 x).sum

end

end A086014.P12741057087969494046

noncomputable section

/-- A086014: Number of 6's in decimal expansion of n^2.

Offset 0, canonical program `A086014.P12741057087969494046`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086014 (n : ℕ) : ℤ :=
  A086014.P12741057087969494046.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086014.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086085.P5689504261399692228

`p?[A001614(A006254(n+1))]`
-/

namespace A086085.P5689504261399692228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001614 (A006254 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A086085.P5689504261399692228

noncomputable section

/-- A086085: Primes p such that p + floor(sqrt(p)) is prime.

Offset 1, canonical program `A086085.P5689504261399692228`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 285 terms. -/
def A086085 (n : ℕ) : ℤ :=
  A086085.P5689504261399692228.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 285 terms. -/
def A086085.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086354.P11978846609188503568

`A051802(2^(n+1))`
-/

namespace A086354.P11978846609188503568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051802 (2 ^ (n + 1))

end

end A086354.P11978846609188503568

noncomputable section

/-- A086354: Fixed point if (nonzero-digit product)-function at initial value 2^n is iterated.

Offset 1, canonical program `A086354.P11978846609188503568`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051802, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A086354 (n : ℕ) : ℤ :=
  A086354.P11978846609188503568.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051802, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A086354.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A086355.P16316922587585958246

`A051802(A000040(n+1))`
-/

namespace A086355.P16316922587585958246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051802 (A000040 (n + 1)).toNat

end

end A086355.P16316922587585958246

noncomputable section

/-- A086355: Fixed point if [nonzero-digit product]-function at initial-value=prime(n) is iterated.

Offset 1, canonical program `A086355.P16316922587585958246`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051802, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A086355 (n : ℕ) : ℤ :=
  A086355.P16316922587585958246.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051802, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A086355.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A086360.P14079381084218253739

`dr((A006093(n)+1)*a(n-1))` with `a(0)=1`
-/

namespace A086360.P14079381084218253739
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.digitalRoot ((A006093 n + 1) * (a (n - 1) : ℤ))

end

end A086360.P14079381084218253739

noncomputable section

/-- A086360: The n-th primorial number reduced modulo 9.

Offset 0, canonical program `A086360.P14079381084218253739`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086360 (n : ℕ) : ℤ :=
  (A086360.P14079381084218253739.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086360.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A086871.P3333927499984275982

`(A057427(n)+1)*A059231(n)`
-/

namespace A086871.P3333927499984275982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057427 n + 1) * A059231 n

end

end A086871.P3333927499984275982

noncomputable section

/-- A086871: Row sums of A059450.

Offset 0, canonical program `A086871.P3333927499984275982`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. -/
def A086871 (n : ℕ) : ℤ :=
  A086871.P3333927499984275982.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. -/
def A086871.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086898.P9450987372198348200

`A049822(n+1)+A032741(n+1)`
-/

namespace A086898.P9450987372198348200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049822 (n + 1) + A032741 (n + 1)

end

end A086898.P9450987372198348200

noncomputable section

/-- A086898: a(n) = Sum_{d|n} tau(d-1).

Offset 1, canonical program `A086898.P9450987372198348200`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086898 (n : ℕ) : ℤ :=
  A086898.P9450987372198348200.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086898.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086954.P18319544927579439676

`or(A001787(n), A086953(n))`
-/

namespace A086954.P18319544927579439676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001787 n) (A086953 n)

end

end A086954.P18319544927579439676

noncomputable section

/-- A086954: Binomial transform of A061800.

Offset 0, canonical program `A086954.P18319544927579439676`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. -/
def A086954 (n : ℕ) : ℤ :=
  A086954.P18319544927579439676.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. -/
def A086954.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087060.P9090490820791322681

`abs(2*A057049(n+1)-A022846(n+1))`
-/

namespace A087060.P9090490820791322681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A057049 (n + 1) - A022846 (n + 1)|

end

end A087060.P9090490820791322681

noncomputable section

/-- A087060: Difference between 2n^2 and the nearest square number.

Offset 1, canonical program `A087060.P9090490820791322681`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087060 (n : ℕ) : ℤ :=
  A087060.P9090490820791322681.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087060.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087172.P11848992007905839176

`n+1-A066628(n+1)`
-/

namespace A087172.P11848992007905839176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A066628 (n + 1)

end

end A087172.P11848992007905839176

noncomputable section

/-- A087172: Greatest Fibonacci number that does not exceed n.

Offset 1, canonical program `A087172.P11848992007905839176`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066628, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A087172 (n : ℕ) : ℤ :=
  A087172.P11848992007905839176.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066628, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A087172.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A087269.P9929686044178286403

`A018252(eq[1, gcd(n+1, A018252(n+1))]+1)`
-/

namespace A087269.P9929686044178286403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A018252 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A087269.P9929686044178286403

noncomputable section

/-- A087269: Nonprime solutions to gcd(x, pi(x)) = gcd(x, A000720(x)) = 1.

Offset 1, canonical program `A087269.P9929686044178286403`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9973 terms. -/
def A087269 (n : ℕ) : ℤ :=
  A087269.P9929686044178286403.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9973 terms. -/
def A087269.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087397.P9932235160857220381

`A000217(A008864(n+1)-3%A000040(n+1))`
-/

namespace A087397.P9932235160857220381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A008864 (n + 1) - Int.tmod 3 (A000040 (n + 1))).toNat

end

end A087397.P9932235160857220381

noncomputable section

/-- A087397: Smallest triangular number > 1 and == 1 (mod prime(n)).

Offset 1, canonical program `A087397.P9932235160857220381`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3245 terms. -/
def A087397 (n : ℕ) : ℤ :=
  A087397.P9932235160857220381.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3245 terms. -/
def A087397.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087467.P17526908869040180663

`A087466(n+1)+1`
-/

namespace A087467.P17526908869040180663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087466 (n + 1) + 1

end

end A087467.P17526908869040180663

noncomputable section

/-- A087467: a(n) = number of the row (counting from initial row 1) of the array R in A087465 that contains n.

Offset 1, canonical program `A087467.P17526908869040180663`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087466, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A087467 (n : ℕ) : ℤ :=
  A087467.P17526908869040180663.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087466, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A087467.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A087479.P10953408168577437528

`A087475(A025581(n))%∑[A010054(n)]`
-/

namespace A087479.P10953408168577437528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087475 (A025581 n).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A087479.P10953408168577437528

noncomputable section

/-- A087479: Triangle read by rows where the n-th row has n terms: T(n,i)=i^2+4 mod n.

Offset 1, canonical program `A087479.P10953408168577437528`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. -/
def A087479 (n : ℕ) : ℤ :=
  A087479.P10953408168577437528.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. -/
def A087479.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087758.P10017905867318136785

`lt[0, A051105(abs(1-n)+1)]+1`
-/

namespace A087758.P10017905867318136785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051105 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A087758.P10017905867318136785

noncomputable section

/-- A087758: Index of first occurrence of n in A005229.

Offset 1, canonical program `A087758.P10017905867318136785`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6866 terms. -/
def A087758 (n : ℕ) : ℤ :=
  (A087758.P10017905867318136785.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6866 terms. -/
def A087758.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087915.P15618837605475670392

`2*(A005099(n+1)-1)`
-/

namespace A087915.P15618837605475670392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A005099 (n + 1) - 1)

end

end A087915.P15618837605475670392

noncomputable section

/-- A087915: Even numbers k such that 2*k+3 is a prime.

Offset 1, canonical program `A087915.P15618837605475670392`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087915 (n : ℕ) : ℤ :=
  A087915.P15618837605475670392.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087915.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087943.P15313803250055201287

`lt[A074941(n+1), 1]+1`
-/

namespace A087943.P15313803250055201287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074941 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A087943.P15313803250055201287

noncomputable section

/-- A087943: Numbers n such that 3 divides sigma(n).

Offset 1, canonical program `A087943.P15313803250055201287`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087943 (n : ℕ) : ℤ :=
  (A087943.P15313803250055201287.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087943.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088039.P3468968859594514563

`A088038(n+1)^(1/3)`
-/

namespace A088039.P3468968859594514563
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A088038 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A088039.P3468968859594514563

noncomputable section

/-- A088039: Smallest k such that k^3 == 1 (mod some n-th power), k > 1.

Offset 1, canonical program `A088039.P3468968859594514563`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088038, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A088039 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A088039.P3468968859594514563.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088038, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A088039.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A088135.P872632457780307146

`A007652(n+1)+A077648(n+1)`
-/

namespace A088135.P872632457780307146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007652 (n + 1) + A077648 (n + 1)

end

end A088135.P872632457780307146

noncomputable section

/-- A088135: Sum of first and last digits of n-th prime.

Offset 1, canonical program `A088135.P872632457780307146`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088135 (n : ℕ) : ℤ :=
  A088135.P872632457780307146.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088135.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088431.P14447499120009447117

`2-Δ[A073089(n+1)]`
-/

namespace A088431.P14447499120009447117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073089 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f1 (n + 1) - f1 n)

end

end A088431.P14447499120009447117

noncomputable section

/-- A088431: Half of the (n+1)-st component of the continued fraction expansion of Sum_{k>=0} 1/2^(2^k).

Offset 1, canonical program `A088431.P14447499120009447117`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088431 (n : ℕ) : ℤ :=
  A088431.P14447499120009447117.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088431.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088435.P13814468116043885168

`Δ[A073089(n+2)]+2`
-/

namespace A088435.P13814468116043885168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073089 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A088435.P13814468116043885168

noncomputable section

/-- A088435: 1/2 + half of the (n+1)-st component of the continued fraction expansion of sum(k>=1,1/3^(2^k)).

Offset 1, canonical program `A088435.P13814468116043885168`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088435 (n : ℕ) : ℤ :=
  A088435.P13814468116043885168.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088435.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088505.P18365809919237533500

`round(A004985(n+1)/2)`
-/

namespace A088505.P18365809919237533500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A004985 (n + 1) : ℚ) / 2)

end

end A088505.P18365809919237533500

noncomputable section

/-- A088505: a(n) = (2^(3*n-1))/(integral_{x=0..1} (1-x^4)^n dx).

Offset 1, canonical program `A088505.P18365809919237533500`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A088505 (n : ℕ) : ℤ :=
  A088505.P18365809919237533500.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A088505.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088686.P10388938499725904433

`eq[A074374(n), A111074(n)]`
-/

namespace A088686.P10388938499725904433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074374 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111074 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A088686.P10388938499725904433

noncomputable section

/-- A088686: Positions of the records in the sum-of-primes function sopfr(n) if sopfr(prime) is taken to be 0.

Offset 1, canonical program `A088686.P10388938499725904433`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 672 terms. -/
def A088686 (n : ℕ) : ℤ :=
  (A088686.P10388938499725904433.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 672 terms. -/
def A088686.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088829.P7745772889989253992

`2*A028983(n+1)`
-/

namespace A088829.P7745772889989253992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028983 (n + 1)

end

end A088829.P7745772889989253992

noncomputable section

/-- A088829: Even numbers with even abundance.

Offset 1, canonical program `A088829.P7745772889989253992`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088829 (n : ℕ) : ℤ :=
  A088829.P7745772889989253992.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088829.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088932.P12918642318921764939

`∑[A008643(n)]`
-/

namespace A088932.P12918642318921764939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008643 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088932.P12918642318921764939

noncomputable section

/-- A088932: G.f.: 1/((1-x)^2*(1-x^2)*(1-x^4)*(1-x^8)).

Offset 0, canonical program `A088932.P12918642318921764939`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088932 (n : ℕ) : ℤ :=
  A088932.P12918642318921764939.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088932.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088978.P15849920336664136640

`(A039702(n+1)+1)%3`
-/

namespace A088978.P15849920336664136640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039702 (n + 1) + 1) 3

end

end A088978.P15849920336664136640

noncomputable section

/-- A088978: Number of Pythagorean triangles having the n-th prime prime(n) as one of their sides.

Offset 1, canonical program `A088978.P15849920336664136640`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088978 (n : ℕ) : ℤ :=
  A088978.P15849920336664136640.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088978.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089038.P1158643592573954498

`A161720(n+3)+1`
-/

namespace A089038.P1158643592573954498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161720 (n + 3) + 1

end

end A089038.P1158643592573954498

noncomputable section

/-- A089038: Nonnegative numbers k such that 2k+5 is prime.

Offset 1, canonical program `A089038.P1158643592573954498`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089038 (n : ℕ) : ℤ :=
  A089038.P1158643592573954498.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089038.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089079.P830463903294487501

`(A045458(n+1)+23)/7`
-/

namespace A089079.P830463903294487501
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045458 (n + 1) + 23 : ℚ) / 7

end

end A089079.P830463903294487501

noncomputable section

/-- A089079: Numbers n such that 7*n - 23 is prime.

Offset 1, canonical program `A089079.P830463903294487501`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089079 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A089079.P830463903294487501.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089079.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089101.P14565553806755914979

`(A038194(n+1)+A020719(n))%10`
-/

namespace A089101.P14565553806755914979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038194 (n + 1) + A020719 n) 10

end

end A089101.P14565553806755914979

noncomputable section

/-- A089101: a(n) = (n - 4 + prime(n) mod 9) mod 10.

Offset 1, canonical program `A089101.P14565553806755914979`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089101 (n : ℕ) : ℤ :=
  A089101.P14565553806755914979.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089101.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089192.P5097066678155882464

`A006254(n+1)+3`
-/

namespace A089192.P5097066678155882464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (n + 1) + 3

end

end A089192.P5097066678155882464

noncomputable section

/-- A089192: Numbers n such that 2n - 7 is a prime.

Offset 1, canonical program `A089192.P5097066678155882464`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089192 (n : ℕ) : ℤ :=
  A089192.P5097066678155882464.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089192.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089309.P10120023621371103171

`A000120(and(n, xor(n, -n)-n))`
-/

namespace A089309.P10120023621371103171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.land (n : ℤ) (Int.xor (n : ℤ) (-(n : ℤ)) - (n : ℤ))).toNat

end

end A089309.P10120023621371103171

noncomputable section

/-- A089309: Write n in binary; a(n) = length of the rightmost run of 1's.

Offset 0, canonical program `A089309.P10120023621371103171`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089309 (n : ℕ) : ℤ :=
  A089309.P10120023621371103171.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089309.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089442.P1014451239977324603

`p?[10*A008864(n+1)+1]`
-/

namespace A089442.P1014451239977324603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A008864 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089442.P1014451239977324603

noncomputable section

/-- A089442: Primes p such that (p-11)/10 is also a prime.

Offset 1, canonical program `A089442.P1014451239977324603`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1496 terms. -/
def A089442 (n : ℕ) : ℤ :=
  A089442.P1014451239977324603.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1496 terms. -/
def A089442.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089655.P604208623789449129

`A003557(n+2)*A003557(A004277(n))`
-/

namespace A089655.P604208623789449129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 2) * A003557 (A004277 n).toNat

end

end A089655.P604208623789449129

noncomputable section

/-- A089655: a(1)=1 and for n>=2 a(n) is the denominator of A(n) (see comment for A(n) definition).

Offset 1, canonical program `A089655.P604208623789449129`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A089655 (n : ℕ) : ℤ :=
  A089655.P604208623789449129.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A089655.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089801.P7513188891248060037

`A033684(3*n+1)`
-/

namespace A089801.P7513188891248060037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033684 (3 * n + 1)

end

end A089801.P7513188891248060037

noncomputable section

/-- A089801: a(n) = 0 unless n = 3j^2 + 2j or 3j^2 + 4j + 1 for some j >= 0, in which case a(n) = 1.

Offset 0, canonical program `A089801.P7513188891248060037`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033684, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A089801 (n : ℕ) : ℤ :=
  A089801.P7513188891248060037.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033684, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A089801.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A089809.P658396964107344117

`gcd(2, A001961(n+1))-1`
-/

namespace A089809.P658396964107344117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A001961 (n + 1)) : ℤ) - 1

end

end A089809.P658396964107344117

noncomputable section

/-- A089809: Complement of A078588.

Offset 1, canonical program `A089809.P658396964107344117`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089809 (n : ℕ) : ℤ :=
  A089809.P658396964107344117.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089809.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089813.P17051657947873600064

`A005369(n)*A079757(n)`
-/

namespace A089813.P17051657947873600064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005369 n * A079757 n

end

end A089813.P17051657947873600064

noncomputable section

/-- A089813: Expansion of Jacobi theta function (theta_2(q) - 3*theta_2(q^9))/(2 q^(1/4)) in powers of q.

Offset 0, canonical program `A089813.P17051657947873600064`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089813 (n : ℕ) : ℤ :=
  A089813.P17051657947873600064.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089813.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089889.P34863561432279640

`Δ[A022554(n)]*A089887(n+1)`
-/

namespace A089889.P34863561432279640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022554 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A089887 (n + 1)

end

end A089889.P34863561432279640

noncomputable section

/-- A089889: Number of subsets of {1,.., n} containing exactly one square.

Offset 1, canonical program `A089889.P34863561432279640`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 346 terms. -/
def A089889 (n : ℕ) : ℤ :=
  A089889.P34863561432279640.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 346 terms. -/
def A089889.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089944.P785157555384208964

`A059298(n)/A007318(n)`
-/

namespace A089944.P785157555384208964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059298 n : ℚ) / (A007318 n : ℚ)

end

end A089944.P785157555384208964

noncomputable section

/-- A089944: Square array, read by antidiagonals, where the n-th row is the n-th binomial transform of the natural numbers, with T(0,k) = (k+1) for k>=0.

Offset 0, canonical program `A089944.P785157555384208964`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3342 terms. -/
def A089944 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A089944.P785157555384208964.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3342 terms. -/
def A089944.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089951.P17069640243098434441

`eq[A000030(n), A002993(n)]`
-/

namespace A089951.P17069640243098434441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002993 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A089951.P17069640243098434441

noncomputable section

/-- A089951: Numbers having the same leading decimal digits as their squares.

Offset 1, canonical program `A089951.P17069640243098434441`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1093 terms. -/
def A089951 (n : ℕ) : ℤ :=
  (A089951.P17069640243098434441.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1093 terms. -/
def A089951.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089986.P3429274986940726883

`A005099(n+1)-2`
-/

namespace A089986.P3429274986940726883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005099 (n + 1) - 2

end

end A089986.P3429274986940726883

noncomputable section

/-- A089986: Numbers n such that 4n + 7 is prime.

Offset 1, canonical program `A089986.P3429274986940726883`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005099, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A089986 (n : ℕ) : ℤ :=
  A089986.P3429274986940726883.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005099, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A089986.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A090438.P4783922868669573685

`abs(A062139(A007606(n+1)-1))`
-/

namespace A090438.P4783922868669573685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A062139 (A007606 (n + 1) - 1).toNat|

end

end A090438.P4783922868669573685

noncomputable section

/-- A090438: Generalized Stirling2 array (4,2).

Offset 1, canonical program `A090438.P4783922868669573685`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1156 terms. -/
def A090438 (n : ℕ) : ℤ :=
  A090438.P4783922868669573685.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1156 terms. -/
def A090438.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A090449.P5637902766167866403

`A004282(n+2)*A027764(n+3)`
-/

namespace A090449.P5637902766167866403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004282 (n + 2) * A027764 (n + 3)

end

end A090449.P5637902766167866403

noncomputable section

/-- A090449: Fifth column (m=4) of triangle A090447.

Offset 4, canonical program `A090449.P5637902766167866403`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A090449 (n : ℕ) : ℤ :=
  A090449.P5637902766167866403.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A090449.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A090491.P1940977484404229344

`A052282(n)+∑[A026810(n)]`
-/

namespace A090491.P1940977484404229344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052282 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090491.P1940977484404229344

noncomputable section

/-- A090491: G.f.: (1+x^3+x^4+x^5+x^6+x^9)/((1-x)*(1-x^2)^2*(1-x^3)*(1-x^4)).

Offset 0, canonical program `A090491.P1940977484404229344`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A090491 (n : ℕ) : ℤ :=
  A090491.P1940977484404229344.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A090491.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A090614.P12269328603561590849

`A089033(n+1)/2`
-/

namespace A090614.P12269328603561590849
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089033 (n + 1) : ℚ) / 2

end

end A090614.P12269328603561590849

noncomputable section

/-- A090614: Numbers n such that 14n+3 is prime.

Offset 1, canonical program `A090614.P12269328603561590849`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A089033, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A090614 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A090614.P12269328603561590849.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A089033, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A090614.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A090722.P4706722054819847709

`round(sqrt(A138401(n+4)%10))`
-/

namespace A090722.P4706722054819847709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (Int.tmod (A138401 (n + 4)) 10 : ℝ))

end

end A090722.P4706722054819847709

noncomputable section

/-- A090722: a(n) = if 10 - Mod(Prime(n),10) == {1,3,7,9} respectively then {1,2,3,0}.

Offset 4, canonical program `A090722.P4706722054819847709`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A090722 (n : ℕ) : ℤ :=
  A090722.P4706722054819847709.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A090722.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A090892.P11463110273139367639

`lt[A093178(A001951(n)), 2]`
-/

namespace A090892.P11463110273139367639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A001951 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A090892.P11463110273139367639

noncomputable section

/-- A090892: Solutions x to equation floor(x*r*floor(x/r)) = floor(x/r*floor(x*r)) when r = sqrt(2).

Offset 0, canonical program `A090892.P11463110273139367639`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A090892 (n : ℕ) : ℤ :=
  (A090892.P11463110273139367639.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A090892.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A090996.P13241265871716609042

`A000120(n-A087734(n))`
-/

namespace A090996.P13241265871716609042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 ((n : ℤ) - A087734 n).toNat

end

end A090996.P13241265871716609042

noncomputable section

/-- A090996: Number of leading 1's in binary expansion of n.

Offset 0, canonical program `A090996.P13241265871716609042`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A090996 (n : ℕ) : ℤ :=
  A090996.P13241265871716609042.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A090996.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091072.P3212609419497778136

`eq[1, A073089(2*n+1)]`
-/

namespace A091072.P3212609419497778136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073089 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A091072.P3212609419497778136

noncomputable section

/-- A091072: Positive numbers k such that the Kronecker Symbol (-1 / k) > 0.

Offset 1, canonical program `A091072.P3212609419497778136`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091072 (n : ℕ) : ℤ :=
  (A091072.P3212609419497778136.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091072.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091177.P17069457608177262001

`lt[1, A039701(n+1)]+1`
-/

namespace A091177.P17069457608177262001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039701 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A091177.P17069457608177262001

noncomputable section

/-- A091177: Numbers m such that the m-th prime is of the form 3*k-1.

Offset 1, canonical program `A091177.P17069457608177262001`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5011 terms. -/
def A091177 (n : ℕ) : ℤ :=
  (A091177.P17069457608177262001.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5011 terms. -/
def A091177.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091194.P8566147046527148789

`∑[round(A001065(n+1)/(2*n+3))]`
-/

namespace A091194.P8566147046527148789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001065 (n + 1) : ℚ) / (2 * n + 3 : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091194.P8566147046527148789

noncomputable section

/-- A091194: Number of abundant numbers <= n.

Offset 1, canonical program `A091194.P8566147046527148789`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091194 (n : ℕ) : ℤ :=
  A091194.P8566147046527148789.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091194.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091233.P10406429357354494568

`A005518(n+1)-A005517(n+1)+1`
-/

namespace A091233.P10406429357354494568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005518 (n + 1) - A005517 (n + 1) + 1

end

end A091233.P10406429357354494568

noncomputable section

/-- A091233: (Largest Matula-Goebel number encoding a tree with n nodes) - (smallest Matula-Goebel number encoding a tree with n nodes).

Offset 1, canonical program `A091233.P10406429357354494568`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005517, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A091233 (n : ℕ) : ℤ :=
  A091233.P10406429357354494568.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005517, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A091233.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A091259.P8343096031813082680

`A001158(n+1)/gcd(A001158(n+1), A074400(n+1))`
-/

namespace A091259.P8343096031813082680
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001158 (n + 1) : ℚ) / (Int.gcd (A001158 (n + 1)) (A074400 (n + 1)) : ℚ)

end

end A091259.P8343096031813082680

noncomputable section

/-- A091259: Numerator of sigma_3(n)/sigma(n).

Offset 1, canonical program `A091259.P8343096031813082680`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091259 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A091259.P8343096031813082680.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091259.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091290.P4448066283075349517

`lt[A092403(A028310(n)), A088580(2*n+1)]`
-/

namespace A091290.P4448066283075349517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092403 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A091290.P4448066283075349517

noncomputable section

/-- A091290: Numbers k such that sigma(k) + sigma(k+1) <= sigma(2*k+1).

Offset 1, canonical program `A091290.P4448066283075349517`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 908 terms. -/
def A091290 (n : ℕ) : ℤ :=
  (A091290.P4448066283075349517.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 908 terms. -/
def A091290.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091571.P3835739435343640567

`7*(n+1)+2*A087866(n)`
-/

namespace A091571.P3835739435343640567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * (n + 1) : ℤ) + 2 * A087866 n

end

end A091571.P3835739435343640567

noncomputable section

/-- A091571: Poincaré series [or Poincare series] of the preprojective algebra of an extended Dynkin diagram of type E_8.

Offset 0, canonical program `A091571.P3835739435343640567`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087866, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A091571 (n : ℕ) : ℤ :=
  A091571.P3835739435343640567.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087866, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A091571.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A091867.P15710449933827193925

`A007318(n)*A005043(A025581(n))`
-/

namespace A091867.P15710449933827193925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A005043 (A025581 n).toNat

end

end A091867.P15710449933827193925

noncomputable section

/-- A091867: Triangle read by rows: T(n,k) = number of Dyck paths of semilength n having k peaks at odd height.

Offset 0, canonical program `A091867.P15710449933827193925`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091867 (n : ℕ) : ℤ :=
  A091867.P15710449933827193925.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091867.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091869.P5949036612487565607

`A091187(A038722(n+1))`
-/

namespace A091869.P5949036612487565607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091187 (A038722 (n + 1)).toNat

end

end A091869.P5949036612487565607

noncomputable section

/-- A091869: Triangle read by rows: T(n,k) is the number of Dyck paths of semilength n having k peaks at even height.

Offset 1, canonical program `A091869.P5949036612487565607`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091869 (n : ℕ) : ℤ :=
  A091869.P5949036612487565607.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091869.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091918.P5621193398962617937

`A007318(n)*A038207(n*A010054(n))`
-/

namespace A091918.P5621193398962617937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A038207 ((n : ℤ) * A010054 n).toNat

end

end A091918.P5621193398962617937

noncomputable section

/-- A091918: Inverse of number triangle A091917.

Offset 0, canonical program `A091918.P5621193398962617937`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091918 (n : ℕ) : ℤ :=
  A091918.P5621193398962617937.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091918.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091931.P13188532409164898325

`A000040(n+1)-2^(A035100(n+1)-1)`
-/

namespace A091931.P13188532409164898325
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) - (2 : ℚ) ^ (A035100 (n + 1) - 1 : ℤ)

end

end A091931.P13188532409164898325

noncomputable section

/-- A091931: Change the first bit to 0 in binary notation for the n-th prime.

Offset 1, canonical program `A091931.P13188532409164898325`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035100, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A091931 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A091931.P13188532409164898325.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035100, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A091931.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A091971.P3439782580531750982

`∑[A004277(A047263(n+1))-A047342(n+1)]`
-/

namespace A091971.P3439782580531750982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A047263 (n + 1)).toNat - A047342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091971.P3439782580531750982

noncomputable section

/-- A091971: G.f.: (1+x^3)*(1+x^5)*(1+x^6)/((1-x^4)*(1-x^5)*(1-x^6)).

Offset 0, canonical program `A091971.P3439782580531750982`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8334 terms. -/
def A091971 (n : ℕ) : ℤ :=
  A091971.P3439782580531750982.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8334 terms. -/
def A091971.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092176.P14535964819899791975

`A111333(n+1)-A122958(n)`
-/

namespace A092176.P14535964819899791975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111333 (n + 1) - A122958 n

end

end A092176.P14535964819899791975

noncomputable section

/-- A092176: a(n) = A067076(n) + A000079(n)/2 with A067076(0)=0.

Offset 0, canonical program `A092176.P14535964819899791975`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A092176 (n : ℕ) : ℤ :=
  A092176.P14535964819899791975.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A092176.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092543.P4363946767756583020

`A110654(A002024(n+1))+A010751(n)`
-/

namespace A092543.P4363946767756583020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A002024 (n + 1)).toNat + A010751 n

end

end A092543.P4363946767756583020

noncomputable section

/-- A092543: Table below read by antidiagonals alternately upwards and downwards.

Offset 1, canonical program `A092543.P4363946767756583020`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092543 (n : ℕ) : ℤ :=
  A092543.P4363946767756583020.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092543.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092570.P1782335382594658961

`p?[A092569(p?[A092569(n)])]`
-/

namespace A092570.P1782335382594658961
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092569 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092569 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092570.P1782335382594658961

noncomputable section

/-- A092570: Primes p which become a prime q under transformation of inner bits of binary representation in A092569. In binary representation of p, transformation of inner bits, 1 <-> 0, gives binary representation of q.

Offset 1, canonical program `A092570.P1782335382594658961`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 338 terms. -/
def A092570 (n : ℕ) : ℤ :=
  A092570.P1782335382594658961.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 338 terms. -/
def A092570.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092621.P5799589778367909611

`A000040(eq[1, A109066(n+1)]+1)`
-/

namespace A092621.P5799589778367909611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109066 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A092621.P5799589778367909611

noncomputable section

/-- A092621: Primes with exactly one prime digit.

Offset 1, canonical program `A092621.P5799589778367909611`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2364 terms. -/
def A092621 (n : ℕ) : ℤ :=
  A092621.P5799589778367909611.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2364 terms. -/
def A092621.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092690.P2634630127419684393

`A132894(n)+A002426(n)`
-/

namespace A092690.P2634630127419684393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132894 n + A002426 n

end

end A092690.P2634630127419684393

noncomputable section

/-- A092690: Row sums of triangle A092689, which is related to the central trinomial coefficients (A002426).

Offset 0, canonical program `A092690.P2634630127419684393`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. -/
def A092690 (n : ℕ) : ℤ :=
  A092690.P2634630127419684393.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. -/
def A092690.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092695.P10644607240594613429

`n-∑[char[A080672(n+1)]]`
-/

namespace A092695.P10644607240594613429
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080672 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A092695.P10644607240594613429

noncomputable section

/-- A092695: Number of positive integers less than or equal to n which are not divisible by the primes 2,3,5,7.

Offset 0, canonical program `A092695.P10644607240594613429`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092695 (n : ℕ) : ℤ :=
  A092695.P10644607240594613429.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092695.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092738.P4329942104001365839

`p?[A001043(n+1)+1]`
-/

namespace A092738.P4329942104001365839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092738.P4329942104001365839

noncomputable section

/-- A092738: Primes of the form prime(x)+prime(x+1)+1.

Offset 1, canonical program `A092738.P4329942104001365839`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2282 terms. -/
def A092738 (n : ℕ) : ℤ :=
  A092738.P4329942104001365839.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2282 terms. -/
def A092738.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092777.P6149524983879065548

`∑[A029836(n)]`
-/

namespace A092777.P6149524983879065548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029836 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092777.P6149524983879065548

noncomputable section

/-- A092777: a(n) = Sum_{k=1..n} round(log(prime(k))).

Offset 1, canonical program `A092777.P6149524983879065548`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092777 (n : ℕ) : ℤ :=
  A092777.P6149524983879065548.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092777.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092847.P13850959851202236546

`∑[A002036(n+1)]`
-/

namespace A092847.P13850959851202236546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002036 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092847.P13850959851202236546

noncomputable section

/-- A092847: a(n) = Sum_{k=1..n} round(prime(k) / log(prime(k))).

Offset 1, canonical program `A092847.P13850959851202236546`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092847 (n : ℕ) : ℤ :=
  A092847.P13850959851202236546.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092847.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092879.P3272304402820809810

`gcd(A158909(A061579(n)), A198954(n))`
-/

namespace A092879.P3272304402820809810
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A158909 (A061579 n).toNat) (A198954 n)

end

end A092879.P3272304402820809810

noncomputable section

/-- A092879: Triangle of coefficients of the product of two consecutive Fibonacci polynomials.

Offset 0, canonical program `A092879.P3272304402820809810`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A092879 (n : ℕ) : ℤ :=
  (A092879.P3272304402820809810.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A092879.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092930.P3879885614855203798

`Δ[n*A018252(n+1)]`
-/

namespace A092930.P3879885614855203798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092930.P3879885614855203798

noncomputable section

/-- A092930: n-th partial arithmetic mean is equal to the n-th composite number.

Offset 1, canonical program `A092930.P3879885614855203798`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092930 (n : ℕ) : ℤ :=
  A092930.P3879885614855203798.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092930.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092984.P11196949858830115087

`char[∑{d}[A071726(n)+1, #]+n]+1`
-/

namespace A092984.P11196949858830115087
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071726 n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, d + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + 1

end

end A092984.P11196949858830115087

noncomputable section

/-- A092984: a(n) = the least k >= 1 such that n! + k is squarefree.

Offset 1, canonical program `A092984.P11196949858830115087`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A092984 (n : ℕ) : ℤ :=
  (A092984.P11196949858830115087.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A092984.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A093338.P12790822210776350752

`p?[A077648(n+1)]`
-/

namespace A093338.P12790822210776350752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077648 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A093338.P12790822210776350752

noncomputable section

/-- A093338: Scan primes, write down initial digit if it is a prime.

Offset 2, canonical program `A093338.P12790822210776350752`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A093338 (n : ℕ) : ℤ :=
  A093338.P12790822210776350752.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A093338.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A093348.P9820017468597884023

`a(n-1)+A060904(n)*A062157(n)` with `a(0)=0`
-/

namespace A093348.P9820017468597884023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A060904 n * A062157 n

end

end A093348.P9820017468597884023

noncomputable section

/-- A093348: A 5-fractal "castle" starting with 0.

Offset 1, canonical program `A093348.P9820017468597884023`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A093348 (n : ℕ) : ℤ :=
  A093348.P9820017468597884023.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A093348.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A093423.P17422038579525010043

`lcm(A068424(n+1), A141419(n+1))/A068424(n+1)`
-/

namespace A093423.P17422038579525010043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A068424 (n + 1)) (A141419 (n + 1)) : ℚ) / (A068424 (n + 1) : ℚ)

end

end A093423.P17422038579525010043

noncomputable section

/-- A093423: Consider the triangle whose first part is shown as an example in the entry A093422. If the n-th term of the triangle read by rows is a fraction then a(n) is the denominator of the fraction, otherwise a(n)=1.

Offset 1, canonical program `A093423.P17422038579525010043`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2413 terms. -/
def A093423 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A093423.P17422038579525010043.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2413 terms. -/
def A093423.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A093446.P18408503001264720502

`record[∑[A111651(n+1)]/A104709(n)]`
-/

namespace A093446.P18408503001264720502
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111651 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / (A104709 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093446.P18408503001264720502

noncomputable section

/-- A093446: Largest member of the n-th row of the triangular triangle (A093445).

Offset 1, canonical program `A093446.P18408503001264720502`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A093446 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A093446.P18408503001264720502.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A093446.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A093722.P2292201294812047524

`∑[A077814(n)+A026741(A026741(n))]`
-/

namespace A093722.P2292201294812047524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077814 n + A026741 (A026741 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093722.P2292201294812047524

noncomputable section

/-- A093722: Integers of the form (k^2 - 1) / 120.

Offset 1, canonical program `A093722.P2292201294812047524`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A093722 (n : ℕ) : ℤ :=
  A093722.P2292201294812047524.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A093722.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094064.P17439103977011875938

`A057427(A004442(n))+A020703(A028310(n))`
-/

namespace A094064.P17439103977011875938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A004442 n).toNat + A020703 (A028310 n).toNat

end

end A094064.P17439103977011875938

noncomputable section

/-- A094064: Sequences has the properties shown in the Comments lines.

Offset 0, canonical program `A094064.P17439103977011875938`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A094064 (n : ℕ) : ℤ :=
  A094064.P17439103977011875938.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A094064.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094069.P10196989370020764207

`p?[A006450(n+1)-4]`
-/

namespace A094069.P10196989370020764207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094069.P10196989370020764207

noncomputable section

/-- A094069: Prime(p)-4 for primes p such that prime(p) - 4 is prime.

Offset 1, canonical program `A094069.P10196989370020764207`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 778 terms. -/
def A094069 (n : ℕ) : ℤ :=
  A094069.P10196989370020764207.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 778 terms. -/
def A094069.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094102.P5158071478824962528

`A000045(A004737(n+1))`
-/

namespace A094102.P5158071478824962528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A004737 (n + 1)).toNat

end

end A094102.P5158071478824962528

noncomputable section

/-- A094102: Triangle read by rows in which row n contains Fib(1), ..., Fib(n-1), Fib(n), Fib(n-1), ..., Fib(1).

Offset 1, canonical program `A094102.P5158071478824962528`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A094102 (n : ℕ) : ℤ :=
  A094102.P5158071478824962528.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A094102.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094104.P401703695270972638

`p?[A001748(n+1)+A001223(n+1)]`
-/

namespace A094104.P401703695270972638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001748 (n + 1) + A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094104.P401703695270972638

noncomputable section

/-- A094104: Primes of the form 2*prime(n) + prime(n+1).

Offset 1, canonical program `A094104.P401703695270972638`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2488 terms. -/
def A094104 (n : ℕ) : ℤ :=
  A094104.P401703695270972638.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2488 terms. -/
def A094104.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094205.P2936233271097691643

`p?[A031215(n+1)-2]`
-/

namespace A094205.P2936233271097691643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094205.P2936233271097691643

noncomputable section

/-- A094205: Lower bounds of twin prime pairs of the form prime(2n+1).

Offset 0, canonical program `A094205.P2936233271097691643`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A094205 (n : ℕ) : ℤ :=
  A094205.P2936233271097691643.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A094205.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094414.P7599999752022155664

`A006002(∑[A010054(n)])-A094415(n)`
-/

namespace A094414.P7599999752022155664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006002 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A094415 n

end

end A094414.P7599999752022155664

noncomputable section

/-- A094414: Triangle T read by rows: dot product * .

Offset 0, canonical program `A094414.P7599999752022155664`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A094414 (n : ℕ) : ℤ :=
  A094414.P7599999752022155664.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A094414.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A094537.P10446689447530711500

`A094536(n)/2`
-/

namespace A094537.P10446689447530711500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094536 n : ℚ) / 2

end

end A094537.P10446689447530711500

noncomputable section

/-- A094537: A094536/2.

Offset 0, canonical program `A094537.P10446689447530711500`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A094537 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A094537.P10446689447530711500.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A094537.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094565.P10986564490219607756

`record[A058071(A002262(n)+n)]`
-/

namespace A094565.P10986564490219607756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058071 (A002262 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094565.P10986564490219607756

noncomputable section

/-- A094565: Triangle read by rows: binary products of Fibonacci numbers.

Offset 1, canonical program `A094565.P10986564490219607756`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2486 terms. -/
def A094565 (n : ℕ) : ℤ :=
  A094565.P10986564490219607756.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2486 terms. -/
def A094565.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094571.P6651088130842317953

`A007598(A002262(n))+A007598(A025581(n))`
-/

namespace A094571.P6651088130842317953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 (A002262 n).toNat + A007598 (A025581 n).toNat

end

end A094571.P6651088130842317953

noncomputable section

/-- A094571: Triangle of binary sums of squares of Fibonacci numbers.

Offset 0, canonical program `A094571.P6651088130842317953`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A094571 (n : ℕ) : ℤ :=
  A094571.P6651088130842317953.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A094571.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094632.P854567659462447146

`A093044(n)+A093045(n)/2`
-/

namespace A094632.P854567659462447146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093044 n : ℚ) + (A093045 n : ℚ) / 2

end

end A094632.P854567659462447146

noncomputable section

/-- A094632: A trace sequence for a Napoleon graph.

Offset 0, canonical program `A094632.P854567659462447146`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 198 terms. -/
def A094632 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A094632.P854567659462447146.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 198 terms. -/
def A094632.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094743.P3700161173286017778

`p?[xor(1, A008864(n+1))]`
-/

namespace A094743.P3700161173286017778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A008864 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094743.P3700161173286017778

noncomputable section

/-- A094743: Beginning with 2, increasing primes such that the sum of successive differences is also prime.

Offset 1, canonical program `A094743.P3700161173286017778`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A094743 (n : ℕ) : ℤ :=
  A094743.P3700161173286017778.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A094743.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095408.P2538879780517524759

`A095407(n+1)-A055642(n+1)`
-/

namespace A095408.P2538879780517524759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095407 (n + 1) - A055642 (n + 1)

end

end A095408.P2538879780517524759

noncomputable section

/-- A095408: Total number of decimal digits in all distinct prime factors of n minus number of digits in n.

Offset 1, canonical program `A095408.P2538879780517524759`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A095407, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A095408 (n : ℕ) : ℤ :=
  A095408.P2538879780517524759.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A095407, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A095408.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A095672.P5355300457214611570

`p?[A073273(n+3)-1]`
-/

namespace A095672.P5355300457214611570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073273 (n + 3) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095672.P5355300457214611570

noncomputable section

/-- A095672: Primes p = p_(n+1) such that p_n + p_(n+2) = 2*p_(n+1) + 4.

Offset 1, canonical program `A095672.P5355300457214611570`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 833 terms. -/
def A095672 (n : ℕ) : ℤ :=
  A095672.P5355300457214611570.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 833 terms. -/
def A095672.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095715.P4979844699181308193

`A023532(n)*A095713(n+1)`
-/

namespace A095715.P4979844699181308193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023532 n * A095713 (n + 1)

end

end A095715.P4979844699181308193

noncomputable section

/-- A095715: Triangle of numbers obtained by reversing the first n digits of 1/phi and juxtaposing (phi denotes the golden ratio: A001622).

Offset 1, canonical program `A095715.P4979844699181308193`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095715 (n : ℕ) : ℤ :=
  A095715.P4979844699181308193.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095715.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095771.P5222382847251483108

`Δ[record[(n+1)*A095770(n+1)]]`
-/

namespace A095771.P5222382847251483108
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A095770 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A095771.P5222382847251483108

noncomputable section

/-- A095771: Number of times n appears in A095769.

Offset 1, canonical program `A095771.P5222382847251483108`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A095771 (n : ℕ) : ℤ :=
  A095771.P5222382847251483108.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A095771.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095772.P9689434051256186322

`Δ[record[(n+1)*A094217(n+1)]]`
-/

namespace A095772.P9689434051256186322
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A094217 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A095772.P9689434051256186322

noncomputable section

/-- A095772: Number of times n appears in A093878.

Offset 1, canonical program `A095772.P9689434051256186322`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A095772 (n : ℕ) : ℤ :=
  A095772.P9689434051256186322.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A095772.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095775.P3833551508889081788

`A003160(eq[1, A095774(n+1)+1]+1)`
-/

namespace A095775.P3833551508889081788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095774 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003160 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A095775.P3833551508889081788

noncomputable section

/-- A095775: n/2 when 2*A003160(n) = n.

Offset 1, canonical program `A095775.P3833551508889081788`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A095775 (n : ℕ) : ℤ :=
  A095775.P3833551508889081788.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A095775.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A095864.P7106599436942101963

`A068093(n+2)-A068092(n+2)`
-/

namespace A095864.P7106599436942101963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068093 (n + 2) - A068092 (n + 2)

end

end A095864.P7106599436942101963

noncomputable section

/-- A095864: Largest n-digit triangular number.

Offset 1, canonical program `A095864.P7106599436942101963`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A068093, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A095864 (n : ℕ) : ℤ :=
  A095864.P7106599436942101963.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A068093, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A095864.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A095865.P3428909612435295110

`A068093(n+1)-10^n`
-/

namespace A095865.P3428909612435295110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068093 (n + 1) - (10 ^ n : ℤ)

end

end A095865.P3428909612435295110

noncomputable section

/-- A095865: Smallest n-digit triangular number - smallest n-digit number.

Offset 1, canonical program `A095865.P3428909612435295110`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A068093, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A095865 (n : ℕ) : ℤ :=
  A095865.P3428909612435295110.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A068093, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A095865.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A096034.P9733165752376480381

`A003462(A004736(n+1))*A074909(n)`
-/

namespace A096034.P9733165752376480381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 (A004736 (n + 1)).toNat * A074909 n

end

end A096034.P9733165752376480381

noncomputable section

/-- A096034: Triangle read by rows: T(n,k) = (n+1,k)-th element of (M^3-M)/2, where M is the infinite lower Pascal's triangle matrix, 1<=k<=n.

Offset 1, canonical program `A096034.P9733165752376480381`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A096034 (n : ℕ) : ℤ :=
  A096034.P9733165752376480381.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A096034.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096039.P14324154058973614487

`A003463(A004736(n+1))*A074909(n)`
-/

namespace A096039.P14324154058973614487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003463 (A004736 (n + 1)).toNat * A074909 n

end

end A096039.P14324154058973614487

noncomputable section

/-- A096039: Triangle read by rows: T(n,k) = (n+1,k)-th element of (M^5-M)/4, where M is the infinite lower Pascal's triangle matrix, 1<=k<=n.

Offset 1, canonical program `A096039.P14324154058973614487`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8532 terms. -/
def A096039 (n : ℕ) : ℤ :=
  A096039.P14324154058973614487.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8532 terms. -/
def A096039.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096040.P9837614522675498103

`A003464(A004736(n+1))*A074909(n)`
-/

namespace A096040.P9837614522675498103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003464 (A004736 (n + 1)).toNat * A074909 n

end

end A096040.P9837614522675498103

noncomputable section

/-- A096040: Triangle read by rows: T(n,k) = (n+1,k)-th element of (M^6-M)/5, where M is the infinite lower Pascal's triangle matrix, 1<=k<=n.

Offset 1, canonical program `A096040.P9837614522675498103`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7271 terms. -/
def A096040 (n : ℕ) : ℤ :=
  A096040.P9837614522675498103.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7271 terms. -/
def A096040.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096041.P7952884623463201919

`A023000(A004736(n+1))*A074909(n)`
-/

namespace A096041.P7952884623463201919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023000 (A004736 (n + 1)).toNat * A074909 n

end

end A096041.P7952884623463201919

noncomputable section

/-- A096041: Triangle read by rows: T(n,k) = (n+1,k)-th element of (M^7-M)/6, where M is the infinite lower Pascal's triangle matrix, 1<=k<=n.

Offset 1, canonical program `A096041.P7952884623463201919`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6338 terms. -/
def A096041 (n : ℕ) : ℤ :=
  A096041.P7952884623463201919.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6338 terms. -/
def A096041.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096042.P55449679465903240

`A023001(A004736(n+1))*A074909(n)`
-/

namespace A096042.P55449679465903240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023001 (A004736 (n + 1)).toNat * A074909 n

end

end A096042.P55449679465903240

noncomputable section

/-- A096042: Triangle read by rows: T(n,k) = (n+1,k)-th element of (M^8-M)/7, where M is the infinite lower Pascal's triangle matrix, 1<=k<=n.

Offset 1, canonical program `A096042.P55449679465903240`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5679 terms. -/
def A096042 (n : ℕ) : ℤ :=
  A096042.P55449679465903240.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5679 terms. -/
def A096042.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096111.P4945051898542242552

`A121663(ceil(n/2))`
-/

namespace A096111.P4945051898542242552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121663 ⌈(n : ℚ) / 2⌉.toNat

end

end A096111.P4945051898542242552

noncomputable section

/-- A096111: If n = 2^k - 1, then a(n) = k+1, otherwise a(n) = (A000523(n)+1)*a(A053645(n)).

Offset 0, canonical program `A096111.P4945051898542242552`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A096111 (n : ℕ) : ℤ :=
  A096111.P4945051898542242552.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A096111.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096218.P10209809842821438212

`p?[A000040(n+1)+2*A001043(n+1)]`
-/

namespace A096218.P10209809842821438212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 2 * A001043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A096218.P10209809842821438212

noncomputable section

/-- A096218: Primes of the form 3*prime(n) + 2*prime(n+1).

Offset 1, canonical program `A096218.P10209809842821438212`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2445 terms. -/
def A096218 (n : ℕ) : ℤ :=
  A096218.P10209809842821438212.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2445 terms. -/
def A096218.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096304.P11476468655270838725

`lt[0, A039969(n)]+1`
-/

namespace A096304.P11476468655270838725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039969 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A096304.P11476468655270838725

noncomputable section

/-- A096304: Numbers k such that 3k does not divide (6k-4)!/((3k-2)!*(3k-1)!).

Offset 1, canonical program `A096304.P11476468655270838725`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 600 terms. -/
def A096304 (n : ℕ) : ℤ :=
  (A096304.P11476468655270838725.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 600 terms. -/
def A096304.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096316.P161007698799923944

`A036439(n+2)%10`
-/

namespace A096316.P161007698799923944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036439 (n + 2)) 10

end

end A096316.P161007698799923944

noncomputable section

/-- A096316: Given the number wheel 0,1,2,3,4,5,6,7,8,9 then starting with 2, the next number is a prime p number of positions from the previous number found, for p=2,3,...

Offset 0, canonical program `A096316.P161007698799923944`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A096316 (n : ℕ) : ℤ :=
  A096316.P161007698799923944.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A096316.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A096766.P12794279211445644240

`A005181(abs(1-n))-A000045(n)`
-/

namespace A096766.P12794279211445644240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005181 |1 - (n : ℤ)|.toNat - A000045 n

end

end A096766.P12794279211445644240

noncomputable section

/-- A096766: Difference between ceiling(e^(n/2 - 1)) (A005181) and the n-th Fibonacci number (A000045).

Offset 0, canonical program `A096766.P12794279211445644240`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 463 terms. -/
def A096766 (n : ℕ) : ℤ :=
  A096766.P12794279211445644240.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 463 terms. -/
def A096766.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A097331.P4426990625459901142

`A208355(n-2)-a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A097331.P4426990625459901142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A208355 (n - 2) - a (n - 1)

end

end A097331.P4426990625459901142

noncomputable section

/-- A097331: Expansion of 1 + 2x/(1 + sqrt(1 - 4x^2)).

Offset 0, canonical program `A097331.P4426990625459901142`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 347 terms. -/
def A097331 (n : ℕ) : ℤ :=
  A097331.P4426990625459901142.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 347 terms. -/
def A097331.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A097361.P14403592286291128386

`p?[2*A001043(n+1)-1]`
-/

namespace A097361.P14403592286291128386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001043 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A097361.P14403592286291128386

noncomputable section

/-- A097361: Primes of the form 2(p+q) - 1, where p and q are consecutive primes.

Offset 1, canonical program `A097361.P14403592286291128386`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A097361 (n : ℕ) : ℤ :=
  A097361.P14403592286291128386.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A097361.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A097415.P765900112222958148

`lt[8, A008952(n)]`
-/

namespace A097415.P765900112222958148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008952 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A097415.P765900112222958148

noncomputable section

/-- A097415: Values of k such that the first digit of 2^k is 9.

Offset 1, canonical program `A097415.P765900112222958148`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2288 terms. -/
def A097415 (n : ℕ) : ℤ :=
  (A097415.P765900112222958148.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2288 terms. -/
def A097415.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A097455.P7800846484876980294

`gcd(A008864(n+1), A018252(n+1))`
-/

namespace A097455.P7800846484876980294
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008864 (n + 1)) (A018252 (n + 1))

end

end A097455.P7800846484876980294

noncomputable section

/-- A097455: a(n) = gcd(prime(n)+1, composite(n)).

Offset 1, canonical program `A097455.P7800846484876980294`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A097455 (n : ℕ) : ℤ :=
  (A097455.P7800846484876980294.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A097455.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A097894.P17020405718607012267

`∑[A014531(n+1)]`
-/

namespace A097894.P17020405718607012267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014531 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097894.P17020405718607012267

noncomputable section

/-- A097894: Partial sums of A014531.

Offset 1, canonical program `A097894.P17020405718607012267`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A097894 (n : ℕ) : ℤ :=
  A097894.P17020405718607012267.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A097894.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A097913.P2756264875088054421

`A008718(floor(n/2))`
-/

namespace A097913.P2756264875088054421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008718 ⌊(n : ℚ) / 2⌋.toNat

end

end A097913.P2756264875088054421

noncomputable section

/-- A097913: G.f.: (1+x^18)/((1-x)*(1-x^8)*(1-x^12)*(1-x^24)).

Offset 0, canonical program `A097913.P2756264875088054421`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097913 (n : ℕ) : ℤ :=
  A097913.P2756264875088054421.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097913.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A097974.P5758962285217898307

`∑{p}[A072504(n+1), #]`
-/

namespace A097974.P5758962285217898307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072504 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A097974.P5758962285217898307

noncomputable section

/-- A097974: Sum of distinct prime divisors of n which are <= sqrt(n).

Offset 1, canonical program `A097974.P5758962285217898307`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097974 (n : ℕ) : ℤ :=
  (A097974.P5758962285217898307.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097974.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098002.P16795242418287850417

`∑{p}[A072504(n+1), #²]`
-/

namespace A098002.P16795242418287850417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072504 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p ^ 2

end

end A098002.P16795242418287850417

noncomputable section

/-- A098002: Sum of squares of distinct prime divisors p of n, where each p <= sqrt(n).

Offset 1, canonical program `A098002.P16795242418287850417`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098002 (n : ℕ) : ℤ :=
  (A098002.P16795242418287850417.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098002.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098014.P11442637500900151086

`p?[Δ[A006254(n+1)]]`
-/

namespace A098014.P11442637500900151086
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098014.P11442637500900151086

noncomputable section

/-- A098014: A098013/2.

Offset 1, canonical program `A098014.P11442637500900151086`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A098014 (n : ℕ) : ℤ :=
  A098014.P11442637500900151086.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A098014.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A098201.P3345256809965612835

`a(A082023(2*n+1))+1` with `a(0)=2`
-/

namespace A098201.P3345256809965612835
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (A082023 (2 * n + 1)).toNat + 1

end

end A098201.P3345256809965612835

noncomputable section

/-- A098201: Number of distinct terms in iteration-list when cototient-function[=A051953] is iterated and the initial value is odd number.

Offset 1, canonical program `A098201.P3345256809965612835`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A098201 (n : ℕ) : ℤ :=
  (A098201.P3345256809965612835.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A098201.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098350.P11293678750609225420

`A000040(A004736(n+1))*A037126(n+1)`
-/

namespace A098350.P11293678750609225420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A004736 (n + 1)).toNat * A037126 (n + 1)

end

end A098350.P11293678750609225420

noncomputable section

/-- A098350: Multiplication table of the primes read by antidiagonals.

Offset 1, canonical program `A098350.P11293678750609225420`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098350 (n : ℕ) : ℤ :=
  A098350.P11293678750609225420.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098350.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098369.P15697729695012141091

`A095713(A038722(n+1))*A095713(n+1)`
-/

namespace A098369.P15697729695012141091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095713 (A038722 (n + 1)).toNat * A095713 (n + 1)

end

end A098369.P15697729695012141091

noncomputable section

/-- A098369: Multiplication table of the digits of the golden ratio read by antidiagonals.

Offset 0, canonical program `A098369.P15697729695012141091`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A098369 (n : ℕ) : ℤ :=
  A098369.P15697729695012141091.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A098369.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098390.P10528936941133441852

`A035100(n+1)+A006093(n+1)`
-/

namespace A098390.P10528936941133441852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035100 (n + 1) + A006093 (n + 1)

end

end A098390.P10528936941133441852

noncomputable section

/-- A098390: Prime(n)+Log2(prime(n)), where Log2=A000523.

Offset 1, canonical program `A098390.P10528936941133441852`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098390 (n : ℕ) : ℤ :=
  A098390.P10528936941133441852.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098390.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098392.P2010536417266136406

`A000040(n+1)-A000523(A098388(n+1))`
-/

namespace A098392.P2010536417266136406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A000523 (A098388 (n + 1)).toNat

end

end A098392.P2010536417266136406

noncomputable section

/-- A098392: Prime(n)-Log2(Log2(prime(n))), where Log2=A000523.

Offset 1, canonical program `A098392.P2010536417266136406`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098392 (n : ℕ) : ℤ :=
  A098392.P2010536417266136406.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098392.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098505.P5754595311087351672

`A007318(n)/gcd(A007318(n), A168256(n))`
-/

namespace A098505.P5754595311087351672
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℚ) / (Int.gcd (A007318 n) (A168256 n) : ℚ)

end

end A098505.P5754595311087351672

noncomputable section

/-- A098505: Numerators in inverse of a Catalan scaled binomial matrix.

Offset 0, canonical program `A098505.P5754595311087351672`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098505 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A098505.P5754595311087351672.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098505.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098649.P8053554610354284248

`p?[2*A001043(n+1)+1]`
-/

namespace A098649.P8053554610354284248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001043 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098649.P8053554610354284248

noncomputable section

/-- A098649: Primes of the form 2(p+q) + 1, where p and q are consecutive primes.

Offset 1, canonical program `A098649.P8053554610354284248`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A098649 (n : ℕ) : ℤ :=
  A098649.P8053554610354284248.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A098649.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098737.P17122941559797591169

`A075362(n+1)/2*A108872(n+1)`
-/

namespace A098737.P17122941559797591169
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075362 (n + 1) : ℚ) / 2 * (A108872 (n + 1) : ℚ)

end

end A098737.P17122941559797591169

noncomputable section

/-- A098737: Triangle read by rows: number of triangles formed by lines from two vertices of a triangle to the opposite side that segment the opposite sides into m and n segments. Since f(m,n) = f(n,m), it suffices to give the results in a triangular table.

Offset 1, canonical program `A098737.P17122941559797591169`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098737 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A098737.P17122941559797591169.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098737.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098761.P3457865346520638397

`p?[A096379(n+1)]`
-/

namespace A098761.P3457865346520638397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096379 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098761.P3457865346520638397

noncomputable section

/-- A098761: Primes of the form prime(n) + prime(n+1) - prime(n+2) with multiplicity, ordered by increasing n.

Offset 1, canonical program `A098761.P3457865346520638397`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1882 terms. -/
def A098761 (n : ℕ) : ℤ :=
  A098761.P3457865346520638397.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1882 terms. -/
def A098761.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098833.P11614478305007327553

`eq[0, A066628(A001414(n+1))]+1`
-/

namespace A098833.P11614478305007327553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066628 (A001414 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A098833.P11614478305007327553

noncomputable section

/-- A098833: Numbers n such that the sum of primes dividing n (with repetition) is a Fibonacci number.

Offset 1, canonical program `A098833.P11614478305007327553`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 220 terms. -/
def A098833 (n : ℕ) : ℤ :=
  (A098833.P11614478305007327553.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 220 terms. -/
def A098833.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098952.P494826860385429382

`eq[n, lcm(n, A055642(n))]`
-/

namespace A098952.P494826860385429382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A055642 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A098952.P494826860385429382

noncomputable section

/-- A098952: Integers divisible by their number of digits.

Offset 1, canonical program `A098952.P494826860385429382`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2606 terms. -/
def A098952 (n : ℕ) : ℤ :=
  (A098952.P494826860385429382.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2606 terms. -/
def A098952.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098999.P11172421746672696162

`∑[A030078(n+1)]`
-/

namespace A098999.P11172421746672696162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098999.P11172421746672696162

noncomputable section

/-- A098999: Sum of cubes of the first n primes.

Offset 1, canonical program `A098999.P11172421746672696162`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098999 (n : ℕ) : ℤ :=
  A098999.P11172421746672696162.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098999.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099026.P7282398254408915574

`A003986(n)-A002262(n)`
-/

namespace A099026.P7282398254408915574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003986 n - A002262 n

end

end A099026.P7282398254408915574

noncomputable section

/-- A099026: Array x AND NOT y, read by rising antidiagonals.

Offset 0, canonical program `A099026.P7282398254408915574`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099026 (n : ℕ) : ℤ :=
  A099026.P7282398254408915574.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099026.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099242.P10278770644118872281

`Δ[A371125(n)]`
-/

namespace A099242.P10278770644118872281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371125 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099242.P10278770644118872281

noncomputable section

/-- A099242: (6n+5)-th terms of expansion of 1/(1 - x - x^6).

Offset 0, canonical program `A099242.P10278770644118872281`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 153 terms. -/
def A099242 (n : ℕ) : ℤ :=
  A099242.P10278770644118872281.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 153 terms. -/
def A099242.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099251.P14211630278922990924

`A005043(2*n)`
-/

namespace A099251.P14211630278922990924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005043 (2 * n)

end

end A099251.P14211630278922990924

noncomputable section

/-- A099251: Bisection of Motzkin sums (A005043).

Offset 0, canonical program `A099251.P14211630278922990924`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. -/
def A099251 (n : ℕ) : ℤ :=
  A099251.P14211630278922990924.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. -/
def A099251.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099252.P12031571717558512345

`A005043(Δ[n²])`
-/

namespace A099252.P12031571717558512345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005043 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A099252.P12031571717558512345

noncomputable section

/-- A099252: Bisection of A005043.

Offset 0, canonical program `A099252.P12031571717558512345`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. -/
def A099252 (n : ℕ) : ℤ :=
  A099252.P12031571717558512345.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. -/
def A099252.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099253.P15001147378275106417

`Δ[A373907(n)]`
-/

namespace A099253.P15001147378275106417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373907 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099253.P15001147378275106417

noncomputable section

/-- A099253: (7*n+6)-th terms of expansion of 1/(1-x-x^7).

Offset 0, canonical program `A099253.P15001147378275106417`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A099253 (n : ℕ) : ℤ :=
  A099253.P15001147378275106417.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A099253.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099324.P10384757998136511703

`A168491(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A099324.P10384757998136511703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A168491 (n - 1) - a (n - 1)

end

end A099324.P10384757998136511703

noncomputable section

/-- A099324: Expansion of (1 + sqrt(1 + 4x))/(2(1 + x)).

Offset 0, canonical program `A099324.P10384757998136511703`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A099324 (n : ℕ) : ℤ :=
  A099324.P10384757998136511703.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A099324.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099326.P18251766925370423032

`A099325(n)+A001787(n)`
-/

namespace A099326.P18251766925370423032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099325 n + A001787 n

end

end A099326.P18251766925370423032

noncomputable section

/-- A099326: Expansion of ((1-2x)*sqrt(1+2x) + sqrt(1-2x))/(2*(1-2x)^(5/2)).

Offset 0, canonical program `A099326.P18251766925370423032`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. -/
def A099326 (n : ℕ) : ℤ :=
  A099326.P18251766925370423032.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. -/
def A099326.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099394.P8636766554940607301

`abs(A163626(n)*A262616(n))`
-/

namespace A099394.P8636766554940607301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A163626 n * A262616 n|

end

end A099394.P8636766554940607301

noncomputable section

/-- A099394: Triangle T(k,n) by rows: n! * A075499(k,n).

Offset 0, canonical program `A099394.P8636766554940607301`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1734 terms. -/
def A099394 (n : ℕ) : ℤ :=
  A099394.P8636766554940607301.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1734 terms. -/
def A099394.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099477.P7976891423228945274

`lt[A099475(n+1), 1]+1`
-/

namespace A099477.P7976891423228945274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099475 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A099477.P7976891423228945274

noncomputable section

/-- A099477: Numbers having no divisors d such that also d+2 is a divisor.

Offset 1, canonical program `A099477.P7976891423228945274`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4781 terms. -/
def A099477 (n : ℕ) : ℤ :=
  (A099477.P7976891423228945274.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4781 terms. -/
def A099477.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099483.P6445812526066757728

`A293544(2*(n+1))`
-/

namespace A099483.P6445812526066757728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293544 (2 * (n + 1))

end

end A099483.P6445812526066757728

noncomputable section

/-- A099483: A Fibonacci convolution.

Offset 0, canonical program `A099483.P6445812526066757728`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. -/
def A099483 (n : ℕ) : ℤ :=
  A099483.P6445812526066757728.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. -/
def A099483.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099572.P17108190012056641786

`A099571(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A099572.P17108190012056641786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A099571 n + a (n - 2)

end

end A099572.P17108190012056641786

noncomputable section

/-- A099572: a(n) = Sum_{k=0..floor(n/2)} binomial(n-k+4, k).

Offset 0, canonical program `A099572.P17108190012056641786`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 476 terms. -/
def A099572 (n : ℕ) : ℤ :=
  A099572.P17108190012056641786.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 476 terms. -/
def A099572.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099576.P506028318455163076

`(n+1)*A047749(n+1)`
-/

namespace A099576.P506028318455163076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A047749 (n + 1)

end

end A099576.P506028318455163076

noncomputable section

/-- A099576: Row sums of triangle A099575.

Offset 0, canonical program `A099576.P506028318455163076`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 244 terms. -/
def A099576 (n : ℕ) : ℤ :=
  A099576.P506028318455163076.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 244 terms. -/
def A099576.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099593.P12963312768206956457

`∑[A049419(n+1)]-1`
-/

namespace A099593.P12963312768206956457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A099593.P12963312768206956457

noncomputable section

/-- A099593: Sum of the number of e-divisors of all numbers from 2 up to n.

Offset 1, canonical program `A099593.P12963312768206956457`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099593 (n : ℕ) : ℤ :=
  A099593.P12963312768206956457.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099593.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099615.P5109352358618095330

`A075363(comp[∑[n]]+1)`
-/

namespace A099615.P5109352358618095330
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075363 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A099615.P5109352358618095330

noncomputable section

/-- A099615: Triangle read by rows, 2<=k<=n: T(n,k) = denominator of (1+1/n)^k-(1+k/n) and of (1-1/n)^k-(1-k/n).

Offset 1, canonical program `A099615.P5109352358618095330`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1595 terms. -/
def A099615 (n : ℕ) : ℤ :=
  A099615.P5109352358618095330.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1595 terms. -/
def A099615.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099850.P5992010022998124774

`∑[A004648(n+1)]`
-/

namespace A099850.P5992010022998124774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004648 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099850.P5992010022998124774

noncomputable section

/-- A099850: Partial sums of A004648.

Offset 1, canonical program `A099850.P5992010022998124774`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099850 (n : ℕ) : ℤ :=
  A099850.P5992010022998124774.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099850.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100279.P5782566387007979265

`A100107(A000032(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A100279.P5782566387007979265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100107 (A000032 n).toNat

end

end A100279.P5782566387007979265

noncomputable section

/-- A100279: a(n) = A100107(A000032(n)).

Offset 0, canonical program `A100279.P5782566387007979265`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A100107, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A100279 (n : ℕ) : ℤ :=
  A100279.P5782566387007979265.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A100107, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A100279.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A100470.P5715799717501174216

`a(n-A055642(a(n-1)))+1` with `a(0)=0`
-/

namespace A100470.P5715799717501174216
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ((n : ℤ) - A055642 (a (n - 1))).toNat + 1

end

end A100470.P5715799717501174216

noncomputable section

/-- A100470: n appears A055642(n) times (appearances equal number of decimal digits).

Offset 0, canonical program `A100470.P5715799717501174216`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100470 (n : ℕ) : ℤ :=
  (A100470.P5715799717501174216.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100470.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100612.P4523410804941101029

`A049782(eq[1, ∏{e}[n, #+1]-1])`
-/

namespace A100612.P4523410804941101029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1) : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049782 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A100612.P4523410804941101029

noncomputable section

/-- A100612: a(n) = (0! + 1! + ... + (p-1)!) mod p, where p = prime(n).

Offset 1, canonical program `A100612.P4523410804941101029`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A100612 (n : ℕ) : ℤ :=
  A100612.P4523410804941101029.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A100612.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100661.P2879437187524638000

`A080468(n+2)+1`
-/

namespace A100661.P2879437187524638000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080468 (n + 2) + 1

end

end A100661.P2879437187524638000

noncomputable section

/-- A100661: Quet transform of A006519 (see A101387 for definition). Also, least k such that n+k has at most k ones in its binary representation.

Offset 1, canonical program `A100661.P2879437187524638000`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100661 (n : ℕ) : ℤ :=
  A100661.P2879437187524638000.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100661.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100737.P7532990618770377108

`a(A004526(n))*A001317(n)` with `a(0)=1`
-/

namespace A100737.P7532990618770377108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A004526 n).toNat * A001317 n

end

end A100737.P7532990618770377108

noncomputable section

/-- A100737: Inverse modulo 2 binomial transform of 4^n.

Offset 0, canonical program `A100737.P7532990618770377108`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A100737 (n : ℕ) : ℤ :=
  A100737.P7532990618770377108.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A100737.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100746.P5629646402280203876

`a(A004526(n))*A001317(A004526(n))` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A100746.P5629646402280203876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 1] fun n a =>
  a (A004526 n).toNat * A001317 (A004526 n).toNat

end

end A100746.P5629646402280203876

noncomputable section

/-- A100746: Inverse modulo 2 binomial transform of Jacobsthal numbers J(n).

Offset 0, canonical program `A100746.P5629646402280203876`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A100746 (n : ℕ) : ℤ :=
  A100746.P5629646402280203876.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A100746.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100820.P11982638449188634560

`floor(A046933(n+1)/2)`
-/

namespace A100820.P11982638449188634560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A046933 (n + 1) : ℚ) / 2⌋

end

end A100820.P11982638449188634560

noncomputable section

/-- A100820: Number of odd numbers between prime(n) and prime(n+1).

Offset 1, canonical program `A100820.P11982638449188634560`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100820 (n : ℕ) : ℤ :=
  A100820.P11982638449188634560.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100820.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100846.P7539906209974408570

`1+10^(2*A055642(n)+1)+n*(10+10^(1+A055642(n)))`
-/

namespace A100846.P7539906209974408570
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 + (10 : ℚ) ^ (2 * A055642 n + 1 : ℤ) + (n : ℚ) * (10 + (10 : ℚ) ^ (1 + A055642 n : ℤ))

end

end A100846.P7539906209974408570

noncomputable section

/-- A100846: Concatenate (1,n,n,1).

Offset 0, canonical program `A100846.P7539906209974408570`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100846 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A100846.P7539906209974408570.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100846.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100990.P1137242080379291754

`A170786(n)%A199681(C(n, n²)!)`
-/

namespace A100990.P1137242080379291754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A170786 n) (A199681 (Nat.factorial (Nat.choose n (n ^ 2))))

end

end A100990.P1137242080379291754

noncomputable section

/-- A100990: a(n) = n^21 mod 100.

Offset 0, canonical program `A100990.P1137242080379291754`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100990 (n : ℕ) : ℤ :=
  A100990.P1137242080379291754.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100990.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101037.P18398048409852730149

`A057427(n)+A028310(A049581(n))`
-/

namespace A101037.P18398048409852730149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A028310 (A049581 n).toNat

end

end A101037.P18398048409852730149

noncomputable section

/-- A101037: Triangle read by rows: T(n,1) = T(n,n) = n and for 1

Offset 1, canonical program `A101037.P18398048409852730149`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101037 (n : ℕ) : ℤ :=
  A101037.P18398048409852730149.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101037.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101038.P1344624487250661860

`A065168(A004736(n+1))-A065164(A004736(n+1))`
-/

namespace A101038.P1344624487250661860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065168 (A004736 (n + 1)).toNat - A065164 (A004736 (n + 1)).toNat

end

end A101038.P1344624487250661860

noncomputable section

/-- A101038: Inverse to sequence matrix for odd numbers.

Offset 0, canonical program `A101038.P1344624487250661860`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101038 (n : ℕ) : ℤ :=
  A101038.P1344624487250661860.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101038.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101080.P10162260254502051975

`A000120(A003987(n))`
-/

namespace A101080.P10162260254502051975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A003987 n).toNat

end

end A101080.P10162260254502051975

noncomputable section

/-- A101080: Table of Hamming distances between binary vectors representing i and j, for i >= 0, j >= 0, read by antidiagonals.

Offset 0, canonical program `A101080.P10162260254502051975`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101080 (n : ℕ) : ℤ :=
  A101080.P10162260254502051975.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101080.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101098.P7047479912248879101

`∑[A101096(n+1)]`
-/

namespace A101098.P7047479912248879101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101096 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101098.P7047479912248879101

noncomputable section

/-- A101098: a(1)=1; thereafter, a(n+1) = 20*n^3 + 10*n.

Offset 1, canonical program `A101098.P7047479912248879101`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101098 (n : ℕ) : ℤ :=
  A101098.P7047479912248879101.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101098.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101306.P320530847100994328

`∑[A007652(n+1)]`
-/

namespace A101306.P320530847100994328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007652 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101306.P320530847100994328

noncomputable section

/-- A101306: a(n) = Sum_{i=1..n} {last digit of prime(i)}.

Offset 1, canonical program `A101306.P320530847100994328`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101306 (n : ℕ) : ℤ :=
  A101306.P320530847100994328.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101306.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101337.P13079162381244238891

`∑{digits}[n+1, #^A055642(n)]`
-/

namespace A101337.P13079162381244238891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => (x : ℚ) ^ (A055642 n : ℤ)).sum

end

end A101337.P13079162381244238891

noncomputable section

/-- A101337: Sum of (each digit of n raised to the power (number of digits in n)).

Offset 1, canonical program `A101337.P13079162381244238891`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101337 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A101337.P13079162381244238891.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101337.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101369.P1559296949486113777

`A086377(A008619(n))+A001057(n)`
-/

namespace A101369.P1559296949486113777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086377 (A008619 n).toNat + A001057 n

end

end A101369.P1559296949486113777

noncomputable section

/-- A101369: a(2n-1) = the smallest positive integer not occurring earlier in the sequence. a(2n) = the a(2n-1)th smallest positive integer among those not occurring earlier in the sequence.

Offset 1, canonical program `A101369.P1559296949486113777`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101369 (n : ℕ) : ℤ :=
  A101369.P1559296949486113777.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101369.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101436.P2181373059902386332

`val(A049599(n+1), 3)`
-/

namespace A101436.P2181373059902386332
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A049599 (n + 1)).toNat 3

end

end A101436.P2181373059902386332

noncomputable section

/-- A101436: Number of exponents in prime factorization of n which are primes.

Offset 1, canonical program `A101436.P2181373059902386332`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101436 (n : ℕ) : ℤ :=
  (A101436.P2181373059902386332.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101436.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101596.P1056686908292103334

`2^n*A002057(n)`
-/

namespace A101596.P1056686908292103334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A002057 n

end

end A101596.P1056686908292103334

noncomputable section

/-- A101596: Expansion of g.f. c(2*x)^4, where c(x) is the g.f. of A000108.

Offset 0, canonical program `A101596.P1056686908292103334`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A101596 (n : ℕ) : ℤ :=
  A101596.P1056686908292103334.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A101596.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101638.P11906782754422928034

`∑{d}[n+1, A101637(#)]`
-/

namespace A101638.P11906782754422928034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A101637 d

end

end A101638.P11906782754422928034

noncomputable section

/-- A101638: Number of distinct 4-almost primes A014613 which are factors of n.

Offset 1, canonical program `A101638.P11906782754422928034`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101638 (n : ℕ) : ℤ :=
  A101638.P11906782754422928034.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101638.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101681.P7450056971872264129

`lt[A056617(n), n]`
-/

namespace A101681.P7450056971872264129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056617 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A101681.P7450056971872264129

noncomputable section

/-- A101681: Numbers k such that gcd(C(2k,k), 2k+1) > 1.

Offset 1, canonical program `A101681.P7450056971872264129`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6666 terms. -/
def A101681 (n : ℕ) : ℤ :=
  (A101681.P7450056971872264129.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6666 terms. -/
def A101681.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101692.P8436950815142899831

`A001317(A006257(n+1)-1)`
-/

namespace A101692.P8436950815142899831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001317 (A006257 (n + 1) - 1).toNat

end

end A101692.P8436950815142899831

noncomputable section

/-- A101692: A modular binomial sum transform of 2^n.

Offset 0, canonical program `A101692.P8436950815142899831`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 422 terms. -/
def A101692 (n : ℕ) : ℤ :=
  A101692.P8436950815142899831.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 422 terms. -/
def A101692.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101864.P594561568129511261

`abs(3-A188438(n+1))`
-/

namespace A101864.P594561568129511261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - A188438 (n + 1)|

end

end A101864.P594561568129511261

noncomputable section

/-- A101864: Wythoff BB numbers.

Offset 1, canonical program `A101864.P594561568129511261`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A101864 (n : ℕ) : ℤ :=
  A101864.P594561568129511261.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A101864.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A102022.P4203008564041804460

`Δ[A109652(n+1)]`
-/

namespace A102022.P4203008564041804460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109652 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A102022.P4203008564041804460

noncomputable section

/-- A102022: First differences of A109652.

Offset 1, canonical program `A102022.P4203008564041804460`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A102022 (n : ℕ) : ℤ :=
  A102022.P4203008564041804460.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A102022.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A102318.P7695360913830832486

`(A005043(n)+∑[A002212(n)])/2`
-/

namespace A102318.P7695360913830832486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002212 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A005043 n + ∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A102318.P7695360913830832486

noncomputable section

/-- A102318: A mean binomial transform of the Catalan numbers.

Offset 0, canonical program `A102318.P7695360913830832486`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 148 terms. -/
def A102318 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A102318.P7695360913830832486.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 148 terms. -/
def A102318.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A102338.P67437949773924713

`A024913(n+1)-1`
-/

namespace A102338.P67437949773924713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024913 (n + 1) - 1

end

end A102338.P67437949773924713

noncomputable section

/-- A102338: Numbers k such that 10k+3 is prime.

Offset 1, canonical program `A102338.P67437949773924713`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A102338 (n : ℕ) : ℤ :=
  A102338.P67437949773924713.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A102338.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A102493.P17760226261126790933

`A001281(A056143(n)+n)`
-/

namespace A102493.P17760226261126790933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A056143 n + (n : ℤ)).toNat

end

end A102493.P17760226261126790933

noncomputable section

/-- A102493: Numbers in base-60 representation that can be written with decimal digits.

Offset 1, canonical program `A102493.P17760226261126790933`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A102493 (n : ℕ) : ℤ :=
  A102493.P17760226261126790933.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A102493.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A102593.P10801818663038716517

`A110616(n)-A110616(n+1)%A092276(n+1)`
-/

namespace A102593.P10801818663038716517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110616 n - Int.tmod (A110616 (n + 1)) (A092276 (n + 1))

end

end A102593.P10801818663038716517

noncomputable section

/-- A102593: Triangle read by rows: T(n,k) is the number of noncrossing trees with n edges in which the maximum number of contiguous border edges starting from the root in counterclockwise direction is equal to k.

Offset 0, canonical program `A102593.P10801818663038716517`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A102593 (n : ℕ) : ℤ :=
  A102593.P10801818663038716517.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A102593.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A102724.P16150721763580803239

`∑[A001043(n+1)]`
-/

namespace A102724.P16150721763580803239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102724.P16150721763580803239

noncomputable section

/-- A102724: Sum of the first n pairs of consecutive primes (for example, a(3) = (2+3) + (3+5) + (5+7) = 25).

Offset 1, canonical program `A102724.P16150721763580803239`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A102724 (n : ℕ) : ℤ :=
  A102724.P16150721763580803239.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A102724.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103114.P15093904350537325420

`abs(A000045(A113655(n+1))-A102905(n))`
-/

namespace A103114.P15093904350537325420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000045 (A113655 (n + 1)).toNat - A102905 n|

end

end A103114.P15093904350537325420

noncomputable section

/-- A103114: a(n) = abs( f(Fibonacci(n)) - Fibonacci(f(n)) ), where f(n) = n-2 if (n mod 3) = 0, f(n) = n+2 if (n mod 3) = 1, otherwise f(n) = n.

Offset 1, canonical program `A103114.P15093904350537325420`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A103114 (n : ℕ) : ℤ :=
  A103114.P15093904350537325420.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A103114.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103136.P17148923877267266007

`A033878(A061579(n))*A097807(n)`
-/

namespace A103136.P17148923877267266007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033878 (A061579 n).toNat * A097807 n

end

end A103136.P17148923877267266007

noncomputable section

/-- A103136: Inverse of the Delannoy triangle.

Offset 0, canonical program `A103136.P17148923877267266007`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9181 terms. -/
def A103136 (n : ℕ) : ℤ :=
  A103136.P17148923877267266007.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9181 terms. -/
def A103136.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103416.P11972475855525546389

`A103355(n+1)-1`
-/

namespace A103416.P11972475855525546389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103355 (n + 1) - 1

end

end A103416.P11972475855525546389

noncomputable section

/-- A103416: a(n) = n - ceiling(sqrt(prime(n))).

Offset 0, canonical program `A103416.P11972475855525546389`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A103416 (n : ℕ) : ℤ :=
  A103416.P11972475855525546389.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A103416.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103440.P2264346228062661877

`∑{d}[n+1, #*A162397(#)]`
-/

namespace A103440.P2264346228062661877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A162397 d

end

end A103440.P2264346228062661877

noncomputable section

/-- A103440: a(n) = Sum[d|n, d==1 (mod 3), d^2] - Sum[d|n, d==2 (mod 3), d^2].

Offset 1, canonical program `A103440.P2264346228062661877`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A103440 (n : ℕ) : ℤ :=
  A103440.P2264346228062661877.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A103440.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103450.P15759975905584063005

`A007318(n)+A025581(n)*A097805(n)`
-/

namespace A103450.P15759975905584063005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + A025581 n * A097805 n

end

end A103450.P15759975905584063005

noncomputable section

/-- A103450: A figurate number triangle read by rows.

Offset 0, canonical program `A103450.P15759975905584063005`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A103450 (n : ℕ) : ℤ :=
  A103450.P15759975905584063005.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A103450.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103567.P12673763267061478434

`∑[A065091(n+3)%5]`
-/

namespace A103567.P12673763267061478434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065091 (n + 3)) 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103567.P12673763267061478434

noncomputable section

/-- A103567: Sum of the (primes > 5 modulo 5).

Offset 1, canonical program `A103567.P12673763267061478434`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A103567 (n : ℕ) : ℤ :=
  A103567.P12673763267061478434.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A103567.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103588.P7339551686273575280

`1-A103582(n)`
-/

namespace A103588.P7339551686273575280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A103582 n

end

end A103588.P7339551686273575280

noncomputable section

/-- A103588: 1's complement of A103582.

Offset 0, canonical program `A103588.P7339551686273575280`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A103588 (n : ℕ) : ℤ :=
  A103588.P7339551686273575280.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A103588.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103636.P3747029318413453185

`∑{d}[n+1, (#-A091684(#))²]`
-/

namespace A103636.P3747029318413453185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) - A091684 d) ^ 2

end

end A103636.P3747029318413453185

noncomputable section

/-- A103636: a(n) = Sum_{d|n, d==0 mod 3} d^2.

Offset 1, canonical program `A103636.P3747029318413453185`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A103636 (n : ℕ) : ℤ :=
  A103636.P3747029318413453185.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A103636.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103745.P6321366916771548531

`A103528(n+1)+2^n`
-/

namespace A103745.P6321366916771548531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103528 (n + 1) + (2 ^ n : ℤ)

end

end A103745.P6321366916771548531

noncomputable section

/-- A103745: a(n) = (A102371(n) + n)/2.

Offset 1, canonical program `A103745.P6321366916771548531`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A103528, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A103745 (n : ℕ) : ℤ :=
  A103745.P6321366916771548531.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A103528, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A103745.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A103872.P2171439124764796495

`2*A005043(n+1)`
-/

namespace A103872.P2171439124764796495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005043 (n + 1)

end

end A103872.P2171439124764796495

noncomputable section

/-- A103872: a(n) = 3*trinomial(n+1,0) - trinomial(n+2,0).

Offset 0, canonical program `A103872.P2171439124764796495`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. -/
def A103872 (n : ℕ) : ℤ :=
  A103872.P2171439124764796495.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. -/
def A103872.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103976.P1403983906248291407

`∑[A040976(n+1)]`
-/

namespace A103976.P1403983906248291407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103976.P1403983906248291407

noncomputable section

/-- A103976: Partial sums of A040976 (= primes-2).

Offset 1, canonical program `A103976.P1403983906248291407`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A103976 (n : ℕ) : ℤ :=
  A103976.P1403983906248291407.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A103976.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104147.P7291418644979591770

`A263846(n+1)+1`
-/

namespace A104147.P7291418644979591770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263846 (n + 1) + 1

end

end A104147.P7291418644979591770

noncomputable section

/-- A104147: Number of cubes <= n-th prime.

Offset 0, canonical program `A104147.P7291418644979591770`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A104147 (n : ℕ) : ℤ :=
  A104147.P7291418644979591770.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A104147.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A104181.P5219235661978751105

`C(37, A039710(n+1))`
-/

namespace A104181.P5219235661978751105
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 37 (A039710 (n + 1)).toNat

end

end A104181.P5219235661978751105

noncomputable section

/-- A104181: Let f(n)=mod(prime(n),12); then a(n) = binomial(prime(12),f(n)).

Offset 1, canonical program `A104181.P5219235661978751105`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104181 (n : ℕ) : ℤ :=
  (A104181.P5219235661978751105.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104181.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104406.P1074933166497164848

`∑[A039966(n+1)]`
-/

namespace A104406.P1074933166497164848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104406.P1074933166497164848

noncomputable section

/-- A104406: Number of numbers <= n having no 2 in ternary representation.

Offset 1, canonical program `A104406.P1074933166497164848`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104406 (n : ℕ) : ℤ :=
  A104406.P1074933166497164848.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104406.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104553.P8611672560579935796

`∑[A047665(n+1)]`
-/

namespace A104553.P8611672560579935796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047665 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104553.P8611672560579935796

noncomputable section

/-- A104553: Sum of trapezoid weights of all Schroeder paths of length 2n.

Offset 1, canonical program `A104553.P8611672560579935796`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. -/
def A104553 (n : ℕ) : ℤ :=
  A104553.P8611672560579935796.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. -/
def A104553.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104567.P6724238172448212378

`gcd(2, A002260(n+1))*A004736(n+1)`
-/

namespace A104567.P6724238172448212378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A002260 (n + 1)) : ℤ) * A004736 (n + 1)

end

end A104567.P6724238172448212378

noncomputable section

/-- A104567: Triangle read by rows: T(i,j) = i-j+1 if j is odd; T(i,j) = 2(i-j+1) if j is even (1 <= j <= i).

Offset 1, canonical program `A104567.P6724238172448212378`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104567 (n : ℕ) : ℤ :=
  A104567.P6724238172448212378.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104567.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104574.P11918091381051242592

`∑[a(n-2)+A002426(n)-A005043(n)]` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A104574.P11918091381051242592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n f1 =>
  f1 (n - 2) + (A002426 n - A005043 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104574.P11918091381051242592

noncomputable section

/-- A104574: Sum of trapezoid weights of all Motzkin paths of length n.

Offset 1, canonical program `A104574.P11918091381051242592`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A104574 (n : ℕ) : ℤ :=
  A104574.P11918091381051242592.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A104574.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104641.P16051552740361381644

`eq[A104639(n+1), A104640(n+1)]+1`
-/

namespace A104641.P16051552740361381644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104640 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A104641.P16051552740361381644

noncomputable section

/-- A104641: Numbers n such that n^3 has equal number of odd and even digits.

Offset 1, canonical program `A104641.P16051552740361381644`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1500 terms. -/
def A104641 (n : ℕ) : ℤ :=
  (A104641.P16051552740361381644.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1500 terms. -/
def A104641.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104682.P12791735047777628454

`n*A104376(n)+1`
-/

namespace A104682.P12791735047777628454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A104376 n + 1

end

end A104682.P12791735047777628454

noncomputable section

/-- A104682: a(n) = Sum_{j=0..14} n^j.

Offset 0, canonical program `A104682.P12791735047777628454`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104682 (n : ℕ) : ℤ :=
  A104682.P12791735047777628454.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104682.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104692.P14109630690310913269

`lt[A104640(n+1), A104639(n+1)]+1`
-/

namespace A104692.P14109630690310913269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104640 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104639 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A104692.P14109630690310913269

noncomputable section

/-- A104692: Numbers n such that in n^3, number of odd digits is less than number of even digits.

Offset 1, canonical program `A104692.P14109630690310913269`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4292 terms. -/
def A104692 (n : ℕ) : ℤ :=
  (A104692.P14109630690310913269.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4292 terms. -/
def A104692.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104693.P4864952721135800102

`lt[A104639(n+1), A104640(n+1)]+1`
-/

namespace A104693.P4864952721135800102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104640 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A104693.P4864952721135800102

noncomputable section

/-- A104693: Numbers n such that in n^3, number of odd digits is larger than number of even digits.

Offset 1, canonical program `A104693.P4864952721135800102`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A104693 (n : ℕ) : ℤ :=
  (A104693.P4864952721135800102.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A104693.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A104797.P7553578064530354809

`A001924(A004736(n+1))`
-/

namespace A104797.P7553578064530354809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001924 (A004736 (n + 1)).toNat

end

end A104797.P7553578064530354809

noncomputable section

/-- A104797: Triangle T(n,k) = Fib(n-k+4)-n-k-3, n>=1, 0<=k

Offset 1, canonical program `A104797.P7553578064530354809`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104797 (n : ℕ) : ℤ :=
  A104797.P7553578064530354809.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104797.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104970.P3543221888348874227

`A004171(n)-A091520(n)`
-/

namespace A104970.P3543221888348874227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004171 n - A091520 n

end

end A104970.P3543221888348874227

noncomputable section

/-- A104970: Sum of squares of terms in even-indexed rows of triangle A104967.

Offset 0, canonical program `A104970.P3543221888348874227`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A104970 (n : ℕ) : ℤ :=
  A104970.P3543221888348874227.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A104970.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105070.P11783947484136715617

`A000079(A055087(n))*A034867(n)`
-/

namespace A105070.P11783947484136715617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A055087 n).toNat * A034867 n

end

end A105070.P11783947484136715617

noncomputable section

/-- A105070: T(n,k) = 2^k*binomial(n,2k+1), where 0 <= k <= floor((n-1)/2), n >= 1.

Offset 1, canonical program `A105070.P11783947484136715617`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105070 (n : ℕ) : ℤ :=
  A105070.P11783947484136715617.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105070.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105089.P15788366358881064948

`Δ[A036439(A016777(3*n))]`
-/

namespace A105089.P15788366358881064948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036439 (A016777 (3 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105089.P15788366358881064948

noncomputable section

/-- A105089: Sum of the primes in ordered 3 X 3 prime squares.

Offset 1, canonical program `A105089.P15788366358881064948`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A105089 (n : ℕ) : ℤ :=
  A105089.P15788366358881064948.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A105089.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105100.P7877407466230205485

`Δ[A036439(A016777(2*n))]`
-/

namespace A105100.P7877407466230205485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036439 (A016777 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105100.P7877407466230205485

noncomputable section

/-- A105100: Sum of ordered 3 prime sided prime triangles.

Offset 1, canonical program `A105100.P7877407466230205485`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A105100 (n : ℕ) : ℤ :=
  A105100.P7877407466230205485.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A105100.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105161.P5037065569945565347

`A065091(A064427(n+1)-n)-n`
-/

namespace A105161.P5037065569945565347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A064427 (n + 1) - (n : ℤ)).toNat - (n : ℤ)

end

end A105161.P5037065569945565347

noncomputable section

/-- A105161: Difference between n and the second-smallest prime larger than n.

Offset 0, canonical program `A105161.P5037065569945565347`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105161 (n : ℕ) : ℤ :=
  A105161.P5037065569945565347.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105161.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105235.P366460928391636486

`∑[A105234(n)]`
-/

namespace A105235.P366460928391636486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105234 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105235.P366460928391636486

noncomputable section

/-- A105235: Partial sums of the central column of a Moebius-binomial triangle.

Offset 0, canonical program `A105235.P366460928391636486`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105235 (n : ℕ) : ℤ :=
  A105235.P366460928391636486.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105235.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105392.P5573371112045407339

`record[A215602(n)-A288219(n)]`
-/

namespace A105392.P5573371112045407339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215602 n - A288219 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105392.P5573371112045407339

noncomputable section

/-- A105392: Frobenius number of the subsemigroup of the natural numbers generated by successive pairs of Lucas numbers.

Offset 1, canonical program `A105392.P5573371112045407339`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. -/
def A105392 (n : ℕ) : ℤ :=
  A105392.P5573371112045407339.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. -/
def A105392.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105438.P3295876938465010097

`2*A030111(n+1)-A168561(n)`
-/

namespace A105438.P3295876938465010097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A030111 (n + 1) - A168561 n

end

end A105438.P3295876938465010097

noncomputable section

/-- A105438: Triangle, row sums = (Fibonacci numbers - 2).

Offset 0, canonical program `A105438.P3295876938465010097`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105438 (n : ℕ) : ℤ :=
  A105438.P3295876938465010097.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105438.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105469.P5083937897985848993

`Δ[round(A102781(n+1)/3)]`
-/

namespace A105469.P5083937897985848993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A102781 (n + 1) : ℚ) / 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105469.P5083937897985848993

noncomputable section

/-- A105469: Number of numbers of the form 6k+3 with prime(n) <= 6k+3 < prime(n+1).

Offset 1, canonical program `A105469.P5083937897985848993`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A105469 (n : ℕ) : ℤ :=
  A105469.P5083937897985848993.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A105469.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105501.P5244751122571021061

`eq[1, A008963(n)]`
-/

namespace A105501.P5244751122571021061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008963 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A105501.P5244751122571021061

noncomputable section

/-- A105501: Numbers n such that 1 is the leading digit of the n-th Fibonacci number in decimal representation.

Offset 1, canonical program `A105501.P5244751122571021061`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3011 terms. -/
def A105501 (n : ℕ) : ℤ :=
  (A105501.P5244751122571021061.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3011 terms. -/
def A105501.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105502.P5982354816921253403

`eq[2, A008963(n)]`
-/

namespace A105502.P5982354816921253403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008963 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A105502.P5982354816921253403

noncomputable section

/-- A105502: Numbers m such that 2 is the leading digit of the m-th Fibonacci number in decimal representation.

Offset 1, canonical program `A105502.P5982354816921253403`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1762 terms. -/
def A105502 (n : ℕ) : ℤ :=
  (A105502.P5982354816921253403.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1762 terms. -/
def A105502.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105503.P13182227572281853625

`eq[3, A008963(n)]`
-/

namespace A105503.P13182227572281853625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008963 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A105503.P13182227572281853625

noncomputable section

/-- A105503: Numbers n such that 3 is the leading digit of the n-th Fibonacci number in decimal representation.

Offset 1, canonical program `A105503.P13182227572281853625`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1250 terms. -/
def A105503 (n : ℕ) : ℤ :=
  (A105503.P13182227572281853625.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1250 terms. -/
def A105503.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105504.P12281381645323141339

`eq[4, A008963(n)]`
-/

namespace A105504.P12281381645323141339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008963 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A105504.P12281381645323141339

noncomputable section

/-- A105504: Numbers m such that 4 is the leading digit of the n-th Fibonacci number in decimal representation.

Offset 1, canonical program `A105504.P12281381645323141339`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 968 terms. -/
def A105504 (n : ℕ) : ℤ :=
  (A105504.P12281381645323141339.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 968 terms. -/
def A105504.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105505.P6034328891926240916

`eq[5, A008963(n)]`
-/

namespace A105505.P6034328891926240916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008963 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A105505.P6034328891926240916

noncomputable section

/-- A105505: Numbers n such that 5 is the leading digit of the n-th Fibonacci number in decimal representation.

Offset 1, canonical program `A105505.P6034328891926240916`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 792 terms. -/
def A105505 (n : ℕ) : ℤ :=
  (A105505.P6034328891926240916.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 792 terms. -/
def A105505.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105506.P1349886026794230767

`eq[6, A008963(n)]`
-/

namespace A105506.P1349886026794230767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008963 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A105506.P1349886026794230767

noncomputable section

/-- A105506: Numbers m such that 6 is the leading digit of the n-th Fibonacci number in decimal representation.

Offset 1, canonical program `A105506.P1349886026794230767`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 668 terms. -/
def A105506 (n : ℕ) : ℤ :=
  (A105506.P1349886026794230767.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 668 terms. -/
def A105506.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105507.P15299317297022117526

`eq[7, A008963(n)]`
-/

namespace A105507.P15299317297022117526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008963 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A105507.P15299317297022117526

noncomputable section

/-- A105507: Numbers m such that 7 is the leading digit of the n-th Fibonacci number in decimal representation.

Offset 1, canonical program `A105507.P15299317297022117526`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 580 terms. -/
def A105507 (n : ℕ) : ℤ :=
  (A105507.P15299317297022117526.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 580 terms. -/
def A105507.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105509.P8616086371887791814

`lt[8, A008963(n)]`
-/

namespace A105509.P8616086371887791814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008963 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A105509.P8616086371887791814

noncomputable section

/-- A105509: Numbers m such that 9 is the leading digit of the m-th Fibonacci number in decimal representation.

Offset 1, canonical program `A105509.P8616086371887791814`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 456 terms. -/
def A105509 (n : ℕ) : ℤ :=
  (A105509.P8616086371887791814.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 456 terms. -/
def A105509.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105515.P13688755755943163422

`∑[val(A008963(A028310(n)), 5)]`
-/

namespace A105515.P13688755755943163422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A008963 (A028310 n).toNat).toNat 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105515.P13688755755943163422

noncomputable section

/-- A105515: Number of times 5 is the leading digit of the first n+1 Fibonacci numbers in decimal representation.

Offset 0, canonical program `A105515.P13688755755943163422`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105515 (n : ℕ) : ℤ :=
  (A105515.P13688755755943163422.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105515.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105516.P5711877861182647803

`∑[val(A008963(A028310(n)), 6)]`
-/

namespace A105516.P5711877861182647803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A008963 (A028310 n).toNat).toNat 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105516.P5711877861182647803

noncomputable section

/-- A105516: Number of times 6 is the leading digit of the first n+1 Fibonacci numbers in decimal representation.

Offset 0, canonical program `A105516.P5711877861182647803`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105516 (n : ℕ) : ℤ :=
  (A105516.P5711877861182647803.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105516.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105517.P17288421911646567995

`∑[val(A008963(A028310(n)), 7)]`
-/

namespace A105517.P17288421911646567995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A008963 (A028310 n).toNat).toNat 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105517.P17288421911646567995

noncomputable section

/-- A105517: Number of times 7 is the leading digit of the first n+1 Fibonacci numbers in decimal representation.

Offset 0, canonical program `A105517.P17288421911646567995`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105517 (n : ℕ) : ℤ :=
  (A105517.P17288421911646567995.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105517.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105518.P10973829342927970951

`∑[val(A008963(A028310(n)), 8)]`
-/

namespace A105518.P10973829342927970951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A008963 (A028310 n).toNat).toNat 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105518.P10973829342927970951

noncomputable section

/-- A105518: Number of times 8 is the leading digit of the first n+1 Fibonacci numbers in decimal representation.

Offset 0, canonical program `A105518.P10973829342927970951`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105518 (n : ℕ) : ℤ :=
  (A105518.P10973829342927970951.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105518.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105519.P16876643181777690168

`∑[C(A008963(n), 9)]`
-/

namespace A105519.P16876643181777690168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A008963 n).toNat 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105519.P16876643181777690168

noncomputable section

/-- A105519: Number of times 9 is the leading digit of the first n+1 Fibonacci numbers in decimal representation.

Offset 0, canonical program `A105519.P16876643181777690168`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105519 (n : ℕ) : ℤ :=
  (A105519.P16876643181777690168.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105519.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105598.P11298029730937636855

`∑[A105597(n)]`
-/

namespace A105598.P11298029730937636855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105597 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105598.P11298029730937636855

noncomputable section

/-- A105598: Partial sums of central numbers for a Moebius-binomial triangle.

Offset 0, canonical program `A105598.P11298029730937636855`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105598 (n : ℕ) : ℤ :=
  A105598.P11298029730937636855.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105598.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105755.P6113369147391080611

`A104144(n+10)+A104144(n)-A127193(n+1)`
-/

namespace A105755.P6113369147391080611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104144 (n + 10) + (A104144 n - A127193 (n + 1))

end

end A105755.P6113369147391080611

noncomputable section

/-- A105755: Lucas 9-step numbers.

Offset 1, canonical program `A105755.P6113369147391080611`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A105755 (n : ℕ) : ℤ :=
  A105755.P6113369147391080611.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A105755.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105772.P13562742460051906180

`round(A045392(n+1)/7)`
-/

namespace A105772.P13562742460051906180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A045392 (n + 1) : ℚ) / 7)

end

end A105772.P13562742460051906180

noncomputable section

/-- A105772: Numbers k such that 7*k + 2 is prime.

Offset 1, canonical program `A105772.P13562742460051906180`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105772 (n : ℕ) : ℤ :=
  A105772.P13562742460051906180.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105772.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105810.P17803328996045714001

`A097808(n)+∑[A130595(n)]-1`
-/

namespace A105810.P17803328996045714001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097808 n + (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A105810.P17803328996045714001

noncomputable section

/-- A105810: Inverse of a Fibonacci-Pascal matrix A105809.

Offset 0, canonical program `A105810.P17803328996045714001`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105810 (n : ℕ) : ℤ :=
  A105810.P17803328996045714001.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105810.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106035.P16227525705012729151

`A006340(A049473(n+1)-A049473(n))`
-/

namespace A106035.P16227525705012729151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006340 (A049473 (n + 1) - A049473 n).toNat

end

end A106035.P16227525705012729151

noncomputable section

/-- A106035: The "Octanacci" sequence: Trajectory of 1 under the morphism 1->{1,2,1}, 2->{1}.

Offset 0, canonical program `A106035.P16227525705012729151`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106035 (n : ℕ) : ℤ :=
  A106035.P16227525705012729151.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106035.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106269.P2701720384490681382

`ceil(A106188(n)/2)`
-/

namespace A106269.P2701720384490681382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A106188 n : ℚ) / 2⌉

end

end A106269.P2701720384490681382

noncomputable section

/-- A106269: Expansion of 1/((1 - x^2)*(2 - c(x))), where c(x) is the g.f. of A000108.

Offset 0, canonical program `A106269.P2701720384490681382`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A106269 (n : ℕ) : ℤ :=
  A106269.P2701720384490681382.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A106269.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106566.P15038054948988524136

`2*A100100(n)-A092392(n)`
-/

namespace A106566.P15038054948988524136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A100100 n - A092392 n

end

end A106566.P15038054948988524136

noncomputable section

/-- A106566: Triangle T(n,k), 0 <= k <= n, read by rows, given by [0, 1, 1, 1, 1, 1, 1, 1, ... ] DELTA [1, 0, 0, 0, 0, 0, 0, 0, ... ] where DELTA is the operator defined in A084938.

Offset 0, canonical program `A106566.P15038054948988524136`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106566 (n : ℕ) : ℤ :=
  A106566.P15038054948988524136.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106566.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106637.P9828308032645277911

`A004277(n)+gcd(6, A299255(n))`
-/

namespace A106637.P9828308032645277911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n + (Int.gcd 6 (A299255 n) : ℤ)

end

end A106637.P9828308032645277911

noncomputable section

/-- A106637: Accumulation of permutation sequence on three symbols such that a(n+2) - 2*a(n+1) - a(n) = 0 overall.

Offset 1, canonical program `A106637.P9828308032645277911`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106637 (n : ℕ) : ℤ :=
  A106637.P9828308032645277911.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106637.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106667.P4598466350426453199

`A154955(∑{e}[A052147(n+1), #])`
-/

namespace A106667.P4598466350426453199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154955 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A106667.P4598466350426453199

noncomputable section

/-- A106667: a(n) = 1 if prime(n) + 2 is a prime, a(n) = -1 if prime(n) + 2 is a semiprime, otherwise 0.

Offset 1, canonical program `A106667.P4598466350426453199`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106667 (n : ℕ) : ℤ :=
  A106667.P4598466350426453199.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106667.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106671.P17412400557065683852

`xor(1, A066116(n+3))%3`
-/

namespace A106671.P17412400557065683852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor 1 (A066116 (n + 3))) 3

end

end A106671.P17412400557065683852

noncomputable section

/-- A106671: a(n) = ( prime(n + 2) * prime(n) - prime(n + 1)^2 ) modulo 3.

Offset 1, canonical program `A106671.P17412400557065683852`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106671 (n : ℕ) : ℤ :=
  A106671.P17412400557065683852.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106671.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106740.P18203027849950181357

`A000045(gcd(A025581(n), A133196(n+1)))`
-/

namespace A106740.P18203027849950181357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.gcd (A025581 n) (A133196 (n + 1)))

end

end A106740.P18203027849950181357

noncomputable section

/-- A106740: Triangle read by rows: greatest common divisors of pairs of Fibonacci numbers greater than 1: T(n, k) = gcd(Fibonacci(n), Fibonacci(k)).

Offset 3, canonical program `A106740.P18203027849950181357`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A106740 (n : ℕ) : ℤ :=
  A106740.P18203027849950181357.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A106740.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106876.P9661437305989954609

`∩[A002145(n+1), A034027(n+1)]`
-/

namespace A106876.P9661437305989954609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034027 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106876.P9661437305989954609

noncomputable section

/-- A106876: Primes of the form 3x^2-2xy+3y^2, with x and y nonnegative.

Offset 1, canonical program `A106876.P9661437305989954609`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 692 terms. -/
def A106876 (n : ℕ) : ℤ :=
  (A106876.P9661437305989954609.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 692 terms. -/
def A106876.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106927.P1792570215804592626

`∩[A038894(n+1), A045373(n+1)]`
-/

namespace A106927.P1792570215804592626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038894 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106927.P1792570215804592626

noncomputable section

/-- A106927: Primes of the form 2x^2+xy+8y^2, with x and y any integer.

Offset 1, canonical program `A106927.P1792570215804592626`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5003 terms. -/
def A106927 (n : ℕ) : ℤ :=
  (A106927.P1792570215804592626.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5003 terms. -/
def A106927.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107108.P9202005962894118963

`A069100(n+1)-A178500(n)`
-/

namespace A107108.P9202005962894118963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069100 (n + 1) - A178500 n

end

end A107108.P9202005962894118963

noncomputable section

/-- A107108: Shorthand of n-th smallest n-digit prime, see comments.

Offset 1, canonical program `A107108.P9202005962894118963`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A107108 (n : ℕ) : ℤ :=
  A107108.P9202005962894118963.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A107108.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107227.P5941040212230299952

`∑[A306672(val(n+1, 2))]`
-/

namespace A107227.P5941040212230299952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306672 (SequenceMachineLib.valuation (n + 1) 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107227.P5941040212230299952

noncomputable section

/-- A107227: Numbers having no odd terms in their Zeckendorf representation.

Offset 1, canonical program `A107227.P5941040212230299952`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A107227 (n : ℕ) : ℤ :=
  A107227.P5941040212230299952.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A107227.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107587.P2188899179976675921

`(A343773(n)+A001006(n))/2`
-/

namespace A107587.P2188899179976675921
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343773 n + A001006 n : ℚ) / 2

end

end A107587.P2188899179976675921

noncomputable section

/-- A107587: Number of Motzkin n-paths with an even number of up steps.

Offset 0, canonical program `A107587.P2188899179976675921`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. -/
def A107587 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A107587.P2188899179976675921.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. -/
def A107587.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107711.P18303887428430519513

`gcd(A014473(n)+1, A097805(n+1))`
-/

namespace A107711.P18303887428430519513
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014473 n + 1) (A097805 (n + 1))

end

end A107711.P18303887428430519513

noncomputable section

/-- A107711: Triangle read by rows: T(0,0)=1, T(n,m) = binomial(n,m) * gcd(n,m)/n.

Offset 0, canonical program `A107711.P18303887428430519513`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107711 (n : ℕ) : ℤ :=
  (A107711.P18303887428430519513.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107711.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107730.P12269102477692489208

`lt[A001223(n+1)%5, 1]+1`
-/

namespace A107730.P12269102477692489208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001223 (n + 1)) 5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A107730.P12269102477692489208

noncomputable section

/-- A107730: Numbers n such that prime(n+1) has the same last digit as prime(n).

Offset 1, canonical program `A107730.P12269102477692489208`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7505 terms. -/
def A107730 (n : ℕ) : ℤ :=
  (A107730.P12269102477692489208.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7505 terms. -/
def A107730.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107958.P8038566449556300179

`A107947(2^(n+1)-1)`
-/

namespace A107958.P8038566449556300179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107947 (2 ^ (n + 1) - 1)

end

end A107958.P8038566449556300179

noncomputable section

/-- A107958: a(n) = term at position 2^n in A107957.

Offset 0, canonical program `A107958.P8038566449556300179`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A107947, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A107958 (n : ℕ) : ℤ :=
  A107958.P8038566449556300179.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A107947, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A107958.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A107968.P7358323612675776155

`2*A107956(n)-A107959(n)`
-/

namespace A107968.P7358323612675776155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A107956 n - A107959 n

end

end A107968.P7358323612675776155

noncomputable section

/-- A107968: a(n) = (n+1)*(n+2)^3*(n+3)^2*(n+4)*(3n+5)/1440.

Offset 0, canonical program `A107968.P7358323612675776155`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107968 (n : ℕ) : ℤ :=
  A107968.P7358323612675776155.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107968.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108063.P12610813069636294894

`A058071(n)-A006498(A003056(n))`
-/

namespace A108063.P12610813069636294894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058071 n - A006498 (A003056 n).toNat

end

end A108063.P12610813069636294894

noncomputable section

/-- A108063: Triangle, read by rows, where T(n,k) = A006498(n+1) - A106408(n,k). A006498 are the central numbers of A106408.

Offset 1, canonical program `A108063.P12610813069636294894`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A108063 (n : ℕ) : ℤ :=
  A108063.P12610813069636294894.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A108063.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108079.P2571972727151902477

`A117671(n)-A001791(n)`
-/

namespace A108079.P2571972727151902477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117671 n - A001791 n

end

end A108079.P2571972727151902477

noncomputable section

/-- A108079: a(n) = Sum_{i=0..n} C(2n+i,n+i).

Offset 0, canonical program `A108079.P2571972727151902477`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A108079 (n : ℕ) : ℤ :=
  A108079.P2571972727151902477.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A108079.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108283.P10789038000922945299

`A059045(A140978(n+1)-n)`
-/

namespace A108283.P10789038000922945299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059045 (A140978 (n + 1) - (n : ℤ)).toNat

end

end A108283.P10789038000922945299

noncomputable section

/-- A108283: Triangle read by rows, generated from (..., 3, 2, 1).

Offset 1, canonical program `A108283.P10789038000922945299`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4560 terms. -/
def A108283 (n : ℕ) : ℤ :=
  A108283.P10789038000922945299.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4560 terms. -/
def A108283.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108524.P1272162441215940971

`(A047891(n+1)+a(n-1))/2` with `a(0)=1`
-/

namespace A108524.P1272162441215940971
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((A047891 (n + 1) : ℚ) + a (n - 1)) / 2

end

end A108524.P1272162441215940971

noncomputable section

/-- A108524: Number of ordered rooted trees with n generators.

Offset 1, canonical program `A108524.P1272162441215940971`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A108524 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A108524.P1272162441215940971.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A108524.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108584.P13995613551814768691

`A024913(n+1)+9`
-/

namespace A108584.P13995613551814768691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024913 (n + 1) + 9

end

end A108584.P13995613551814768691

noncomputable section

/-- A108584: Numbers k such that 10*k - 97 is prime.

Offset 1, canonical program `A108584.P13995613551814768691`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108584 (n : ℕ) : ℤ :=
  A108584.P13995613551814768691.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108584.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108670.P1203074175847195670

`2*A107956(n)-A107962(n)`
-/

namespace A108670.P1203074175847195670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A107956 n - A107962 n

end

end A108670.P1203074175847195670

noncomputable section

/-- A108670: a(n) = (n+1)(n+2)^3*(n+3)(n+4)(5n^2 + 16n + 15)/1440.

Offset 0, canonical program `A108670.P1203074175847195670`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108670 (n : ℕ) : ℤ :=
  A108670.P1203074175847195670.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108670.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108753.P3416941755188249955

`∑[A073497(n+1)]`
-/

namespace A108753.P3416941755188249955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073497 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108753.P3416941755188249955

noncomputable section

/-- A108753: Difference between the n-th partial sum of the squares (A000330) and the n-th partial sum of the primes (A007504).

Offset 1, canonical program `A108753.P3416941755188249955`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108753 (n : ℕ) : ℤ :=
  A108753.P3416941755188249955.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108753.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108855.P10922145306609028773

`A108588(n+3)-3`
-/

namespace A108855.P10922145306609028773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108588 (n + 3) - 3

end

end A108855.P10922145306609028773

noncomputable section

/-- A108855: Numbers n such that 10*n + 127 is prime.

Offset 1, canonical program `A108855.P10922145306609028773`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A108855 (n : ℕ) : ℤ :=
  A108855.P10922145306609028773.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A108855.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108863.P15641938226968541285

`A027914(n)-A005717(n+1)`
-/

namespace A108863.P15641938226968541285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027914 n - A005717 (n + 1)

end

end A108863.P15641938226968541285

noncomputable section

/-- A108863: Number of Dyck paths containing exactly one UUUD.

Offset 0, canonical program `A108863.P15641938226968541285`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A108863 (n : ℕ) : ℤ :=
  A108863.P15641938226968541285.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A108863.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108946.P7071863590462326529

`n%2-A097948(n)`
-/

namespace A108946.P7071863590462326529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) - A097948 n

end

end A108946.P7071863590462326529

noncomputable section

/-- A108946: a(2n) = A001570(n), a(2n+1) = -A007654(n+1).

Offset 0, canonical program `A108946.P7071863590462326529`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 175 terms. -/
def A108946 (n : ℕ) : ℤ :=
  A108946.P7071863590462326529.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 175 terms. -/
def A108946.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109263.P13637171917933416295

`Δ[(A081696(abs(1-n))-1)/2]`
-/

namespace A109263.P13637171917933416295
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081696 |1 - (n : ℤ)|.toNat - 1 : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A109263.P13637171917933416295

noncomputable section

/-- A109263: A Catalan transform of F(n-1)-0^n.

Offset 0, canonical program `A109263.P13637171917933416295`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A109263 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A109263.P13637171917933416295.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A109263.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109386.P5253081201004666906

`∑{d}[n+1, A245579(#)]`
-/

namespace A109386.P5253081201004666906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A245579 d

end

end A109386.P5253081201004666906

noncomputable section

/-- A109386: G.f. is the logarithm of the g.f. of A107742: Sum_{n>=1} (a(n)/n)*x^n = log( Sum_{n>=0} A107742(n)*x^n ).

Offset 1, canonical program `A109386.P5253081201004666906`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109386 (n : ℕ) : ℤ :=
  A109386.P5253081201004666906.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109386.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109447.P904525505183481324

`A074909(2*n-A259361(n))`
-/

namespace A109447.P904525505183481324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 ((2 * n : ℤ) - A259361 n).toNat

end

end A109447.P904525505183481324

noncomputable section

/-- A109447: Binomial coefficients C(n,k) with n-k odd, read by rows.

Offset 1, canonical program `A109447.P904525505183481324`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5776 terms. -/
def A109447 (n : ℕ) : ℤ :=
  A109447.P904525505183481324.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5776 terms. -/
def A109447.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109555.P16983294411619929337

`p?[A006005(n+1)-A255270(A003056(n))]`
-/

namespace A109555.P16983294411619929337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1) - A255270 (A003056 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A109555.P16983294411619929337

noncomputable section

/-- A109555: prime(k) for those k where floor(2*(((prime(k + 1) - prime(k))*PrimePi(k)) mod (8*k)) / k) = m with m = 0.

Offset 1, canonical program `A109555.P16983294411619929337`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 446 terms. -/
def A109555 (n : ℕ) : ℤ :=
  A109555.P16983294411619929337.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 446 terms. -/
def A109555.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109579.P11529250460295610906

`∑[A109578(n+1)]`
-/

namespace A109579.P11529250460295610906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109579.P11529250460295610906

noncomputable section

/-- A109579: Sum([pi(j+1)-pi(j)][prime(j+1)-prime(j)],j=1..n), where pi(k) is the number of prime numbers less than or equal to k and prime(k) is the k-th prime.

Offset 1, canonical program `A109579.P11529250460295610906`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109579 (n : ℕ) : ℤ :=
  A109579.P11529250460295610906.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109579.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109770.P18199790595787796081

`∑[A011757(n+1)]`
-/

namespace A109770.P18199790595787796081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011757 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109770.P18199790595787796081

noncomputable section

/-- A109770: Partial sums of A011757.

Offset 1, canonical program `A109770.P18199790595787796081`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109770 (n : ℕ) : ℤ :=
  A109770.P18199790595787796081.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109770.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109796.P12640784627107827928

`∑[A109791(n+1)]`
-/

namespace A109796.P12640784627107827928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109791 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109796.P12640784627107827928

noncomputable section

/-- A109796: a(n) = prime(1^4) + prime(2^4) + ... + prime(n^4).

Offset 1, canonical program `A109796.P12640784627107827928`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A109796 (n : ℕ) : ℤ :=
  A109796.P12640784627107827928.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A109796.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109971.P6528677000630366975

`A143603(n+1)-A143603(n+2)%A092276(n+1)`
-/

namespace A109971.P6528677000630366975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143603 (n + 1) - Int.tmod (A143603 (n + 2)) (A092276 (n + 1))

end

end A109971.P6528677000630366975

noncomputable section

/-- A109971: Inverse of Riordan array (1,x(1-x)^2), A109970.

Offset 0, canonical program `A109971.P6528677000630366975`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7875 terms. -/
def A109971 (n : ℕ) : ℤ :=
  A109971.P6528677000630366975.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7875 terms. -/
def A109971.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109974.P2214011444914212300

`∑{d}[A004736(n+1), #^A002262(n)]`
-/

namespace A109974.P2214011444914212300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℚ) ^ (A002262 n : ℤ)

end

end A109974.P2214011444914212300

noncomputable section

/-- A109974: Array read by downwards antidiagonals: sigma_k(n) for n >= 1, k >= 0.

Offset 0, canonical program `A109974.P2214011444914212300`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4726 terms. -/
def A109974 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A109974.P2214011444914212300.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4726 terms. -/
def A109974.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110003.P13048558525306348465

`A110001(A116966(n))`
-/

namespace A110003.P13048558525306348465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110001 (A116966 n).toNat

end

end A110003.P13048558525306348465

noncomputable section

/-- A110003: n followed by n^3 followed by n^2 followed by n^4.

Offset 1, canonical program `A110003.P13048558525306348465`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110003 (n : ℕ) : ℤ :=
  A110003.P13048558525306348465.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110003.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110004.P6947858922265010117

`A110001(A056699(n+1))`
-/

namespace A110004.P6947858922265010117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110001 (A056699 (n + 1)).toNat

end

end A110004.P6947858922265010117

noncomputable section

/-- A110004: n followed by n^3 followed by n^4 followed by n^2.

Offset 1, canonical program `A110004.P6947858922265010117`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110004 (n : ℕ) : ℤ :=
  A110004.P6947858922265010117.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110004.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110006.P5526033503692058386

`n+1-A066096(A003622(n+1)%(n+1))`
-/

namespace A110006.P5526033503692058386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A066096 (Int.tmod (A003622 (n + 1)) (n + 1 : ℤ)).toNat

end

end A110006.P5526033503692058386

noncomputable section

/-- A110006: a(n) = n-F(F(n)) where F(x)=A120613(x)=floor(phi*floor(x/phi)) and phi=(1+sqrt(5))/2.

Offset 1, canonical program `A110006.P5526033503692058386`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110006 (n : ℕ) : ℤ :=
  A110006.P5526033503692058386.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110006.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110099.P9542804570626657309

`A053141(n)-A047665(n)`
-/

namespace A110099.P9542804570626657309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053141 n - A047665 n

end

end A110099.P9542804570626657309

noncomputable section

/-- A110099: Number of return steps to the line y = x from the line y = x+1 (i.e., E steps from the line y = x+1 to the line y = x) in all Delannoy paths of length n.

Offset 0, canonical program `A110099.P9542804570626657309`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. -/
def A110099 (n : ℕ) : ℤ :=
  A110099.P9542804570626657309.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. -/
def A110099.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110166.P3687076817918549492

`1/2*(5^n+A026375(n))`
-/

namespace A110166.P3687076817918549492
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * ((5 ^ n : ℤ) + A026375 n : ℚ)

end

end A110166.P3687076817918549492

noncomputable section

/-- A110166: Row sums of Riordan array A110165.

Offset 0, canonical program `A110166.P3687076817918549492`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026375, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A110166 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A110166.P3687076817918549492.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026375, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A110166.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A110212.P7093181171410648257

`A110211(n)+A110211(n)-A110210(n)`
-/

namespace A110212.P7093181171410648257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110211 n + (A110211 n - A110210 n)

end

end A110212.P7093181171410648257

noncomputable section

/-- A110212: a(n+3) = 6*a(n) - 5*a(n+2), a(0) = -1, a(1) = 5, a(2) = -25.

Offset 0, canonical program `A110212.P7093181171410648257`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 149 terms. -/
def A110212 (n : ℕ) : ℤ :=
  A110212.P7093181171410648257.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 149 terms. -/
def A110212.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110226.P14766994178741570182

`∑[record[n*A101637(n+1)]+1]`
-/

namespace A110226.P14766994178741570182
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A101637 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110226.P14766994178741570182

noncomputable section

/-- A110226: 1 + sum of first n 4-almost primes.

Offset 0, canonical program `A110226.P14766994178741570182`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110226 (n : ℕ) : ℤ :=
  A110226.P14766994178741570182.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110226.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110228.P56886554202489931

`lt[1, A082299(n+1)*A101637(n+1)]+1`
-/

namespace A110228.P56886554202489931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082299 (n + 1) * A101637 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A110228.P56886554202489931

noncomputable section

/-- A110228: 4-almost primes p * q * r * s not relatively prime to p + q + r + s.

Offset 1, canonical program `A110228.P56886554202489931`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1783 terms. -/
def A110228 (n : ℕ) : ℤ :=
  (A110228.P56886554202489931.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1783 terms. -/
def A110228.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110321.P1257881013958299813

`A001045(A004736(n+1))*A094587(n)`
-/

namespace A110321.P1257881013958299813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (A004736 (n + 1)).toNat * A094587 n

end

end A110321.P1257881013958299813

noncomputable section

/-- A110321: A Jacobsthal number related number triangle.

Offset 0, canonical program `A110321.P1257881013958299813`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1891 terms. -/
def A110321 (n : ℕ) : ℤ :=
  A110321.P1257881013958299813.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1891 terms. -/
def A110321.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110485.P11135789409240485846

`A110001(xor(1, n)+1)`
-/

namespace A110485.P11135789409240485846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110001 (Nat.xor 1 n + 1)

end

end A110485.P11135789409240485846

noncomputable section

/-- A110485: n^2 followed by n followed by n^4 followed by n^3.

Offset 1, canonical program `A110485.P11135789409240485846`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110485 (n : ℕ) : ℤ :=
  A110485.P11135789409240485846.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110485.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110535.P7686816047522917521

`ceil(A089072(n+1)/A075363(n+1))`
-/

namespace A110535.P7686816047522917521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A089072 (n + 1) : ℚ) / (A075363 (n + 1) : ℚ)⌉

end

end A110535.P7686816047522917521

noncomputable section

/-- A110535: Triangle formed from ceiling(k^n/n^k).

Offset 0, canonical program `A110535.P7686816047522917521`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1652 terms. -/
def A110535 (n : ℕ) : ℤ :=
  A110535.P7686816047522917521.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1652 terms. -/
def A110535.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110552.P17093704478189528423

`A097805(n+1)+A097805(n)*A137688(n)`
-/

namespace A110552.P17093704478189528423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (n + 1) + A097805 n * A137688 n

end

end A110552.P17093704478189528423

noncomputable section

/-- A110552: A triangular array related to A077028 and distributing the values of A007582.

Offset 1, canonical program `A110552.P17093704478189528423`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A110552 (n : ℕ) : ℤ :=
  A110552.P17093704478189528423.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A110552.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110555.P13250314358823884929

`A033999(A002262(n))*A071919(n)`
-/

namespace A110555.P13250314358823884929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A002262 n).toNat * A071919 n

end

end A110555.P13250314358823884929

noncomputable section

/-- A110555: Triangle of partial sums of alternating binomial coefficients: T(n, k) = Sum_{j=0..k} binomial(n, j)*(-1)^j, for n >= 0, 0 <= k <= n.

Offset 0, canonical program `A110555.P13250314358823884929`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110555 (n : ℕ) : ℤ :=
  A110555.P13250314358823884929.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110555.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110560.P3912990218243023519

`A090585(A131055(n+1))`
-/

namespace A110560.P3912990218243023519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090585 (A131055 (n + 1)).toNat

end

end A110560.P3912990218243023519

noncomputable section

/-- A110560: Numerators of T(n+1)/n! reduced to lowest terms, where T(n) are the triangular numbers A000217.

Offset 0, canonical program `A110560.P3912990218243023519`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110560 (n : ℕ) : ℤ :=
  A110560.P3912990218243023519.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110560.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110602.P5511609513092958212

`eq[2, ∑{e}[A007090(n), #]]`
-/

namespace A110602.P5511609513092958212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A110602.P5511609513092958212

noncomputable section

/-- A110602: Numbers n whose base 4 representations, interpreted as base 10 integers, are semiprimes.

Offset 1, canonical program `A110602.P5511609513092958212`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 828 terms. -/
def A110602 (n : ℕ) : ℤ :=
  (A110602.P5511609513092958212.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 828 terms. -/
def A110602.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110662.P17120547529489749073

`A160664(A002024(n+1))-A160664(A002262(n))`
-/

namespace A110662.P17120547529489749073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 (A002024 (n + 1)).toNat - A160664 (A002262 n).toNat

end

end A110662.P17120547529489749073

noncomputable section

/-- A110662: Triangle read by rows: T(n,k) is the sum of the sums of divisors of k, k+1, ..., n (1 <= k <= n).

Offset 1, canonical program `A110662.P17120547529489749073`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A110662 (n : ℕ) : ℤ :=
  A110662.P17120547529489749073.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A110662.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110671.P14702464879593556510

`∑[A110670(n)]`
-/

namespace A110671.P14702464879593556510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110670 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110671.P14702464879593556510

noncomputable section

/-- A110671: Sequence is {a(6,n)}, where a(m,n) is defined at sequence A110665.

Offset 0, canonical program `A110671.P14702464879593556510`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110671 (n : ℕ) : ℤ :=
  A110671.P14702464879593556510.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110671.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110769.P6747390078831941769

`A093445(A038722(n+1))`
-/

namespace A110769.P6747390078831941769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093445 (A038722 (n + 1)).toNat

end

end A110769.P6747390078831941769

noncomputable section

/-- A110769: The r-th term of the n-th row of the following triangle contains sum of r successive numbers in decreasing order beginning from T(n)-T(r-1) where T(n) is the n-th triangular number. 1 3 3 6 9 6 10 17 18 10 15 27 33 30 15 ... Sequence contains the triangle by rows.

Offset 1, canonical program `A110769.P6747390078831941769`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A110769 (n : ℕ) : ℤ :=
  A110769.P6747390078831941769.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A110769.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110805.P11855113545855583108

`∑{digits}[n+1, #*A055642(n+1)]`
-/

namespace A110805.P11855113545855583108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => (x : ℤ) * A055642 (n + 1)).sum

end

end A110805.P11855113545855583108

noncomputable section

/-- A110805: Sum of digits of n times number of digits of n.

Offset 1, canonical program `A110805.P11855113545855583108`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110805 (n : ℕ) : ℤ :=
  A110805.P11855113545855583108.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110805.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110914.P2878250641217037902

`A120880(floor((3*n+1)/2))-a(n-1)` with `a(0)=1`
-/

namespace A110914.P2878250641217037902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A120880 ⌊(3 * n + 1 : ℚ) / 2⌋.toNat - a (n - 1)

end

end A110914.P2878250641217037902

noncomputable section

/-- A110914: "Self-convolution mod 3" of central Delannoy numbers (see comment).

Offset 0, canonical program `A110914.P2878250641217037902`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 313 terms. -/
def A110914 (n : ℕ) : ℤ :=
  A110914.P2878250641217037902.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 313 terms. -/
def A110914.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111007.P10750197142784258135

`A368941(A004247(n))`
-/

namespace A111007.P10750197142784258135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368941 (A004247 n).toNat

end

end A111007.P10750197142784258135

noncomputable section

/-- A111007: Triangle T(n,m) which contains in row n the rounded ordinate value at abscissa m along the upper rim of the circle with diameter n centered at (n/2, 1).

Offset 0, canonical program `A111007.P10750197142784258135`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A111007 (n : ℕ) : ℤ :=
  A111007.P10750197142784258135.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A111007.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111020.P1849780843808022538

`eq[2, A039970(2*n+1)]`
-/

namespace A111020.P1849780843808022538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039970 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111020.P1849780843808022538

noncomputable section

/-- A111020: Indices of Catalan numbers (A000108) that are == 2 mod 3.

Offset 1, canonical program `A111020.P1849780843808022538`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 768 terms. -/
def A111020 (n : ℕ) : ℤ :=
  (A111020.P1849780843808022538.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 768 terms. -/
def A111020.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111037.P2009686031977942018

`A110916(n)+A111025(n)`
-/

namespace A111037.P2009686031977942018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110916 n + A111025 n

end

end A111037.P2009686031977942018

noncomputable section

/-- A111037: Number of squares plus number of cubes between 10n and 10n+9 (inclusive).

Offset 0, canonical program `A111037.P2009686031977942018`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A110916, A111025, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A111037 (n : ℕ) : ℤ :=
  A111037.P2009686031977942018.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A110916, A111025, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A111037.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A111102.P16224895778482294090

`∑[A000002(n+1)²]`
-/

namespace A111102.P16224895778482294090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111102.P16224895778482294090

noncomputable section

/-- A111102: Cumulative sum of squares of Kolakoski sequence (A000002).

Offset 1, canonical program `A111102.P16224895778482294090`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111102 (n : ℕ) : ℤ :=
  A111102.P16224895778482294090.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111102.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111213.P2402949892722593442

`p?[2*A104103(n+1)-1]`
-/

namespace A111213.P2402949892722593442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A104103 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A111213.P2402949892722593442

noncomputable section

/-- A111213: Difference between the closest squares surrounding prime p is prime.

Offset 1, canonical program `A111213.P2402949892722593442`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3339 terms. -/
def A111213 (n : ℕ) : ℤ :=
  A111213.P2402949892722593442.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3339 terms. -/
def A111213.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111225.P11920097496532907882

`A087505(n+2)-1`
-/

namespace A111225.P11920097496532907882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087505 (n + 2) - 1

end

end A111225.P11920097496532907882

noncomputable section

/-- A111225: Numbers n such that 5*n + 8 is prime.

Offset 1, canonical program `A111225.P11920097496532907882`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A111225 (n : ℕ) : ℤ :=
  A111225.P11920097496532907882.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A111225.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111226.P11734792993096453730

`A111224(n+2)-1`
-/

namespace A111226.P11734792993096453730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111224 (n + 2) - 1

end

end A111226.P11734792993096453730

noncomputable section

/-- A111226: Numbers n such that 5*n + 12 is prime.

Offset 1, canonical program `A111226.P11734792993096453730`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A111226 (n : ℕ) : ℤ :=
  A111226.P11734792993096453730.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A111226.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111250.P4066307919200103457

`A089033(n+2)-1`
-/

namespace A111250.P4066307919200103457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089033 (n + 2) - 1

end

end A111250.P4066307919200103457

noncomputable section

/-- A111250: Numbers n such that 7*n + 10 is prime.

Offset 1, canonical program `A111250.P4066307919200103457`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A111250 (n : ℕ) : ℤ :=
  A111250.P4066307919200103457.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A111250.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111255.P9134755311441869798

`p?[A008864(n+3)+A000040(n+1)]`
-/

namespace A111255.P9134755311441869798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 3) + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A111255.P9134755311441869798

noncomputable section

/-- A111255: Primes in A111254.

Offset 1, canonical program `A111255.P9134755311441869798`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2153 terms. -/
def A111255 (n : ℕ) : ℤ :=
  A111255.P9134755311441869798.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2153 terms. -/
def A111255.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111408.P2533623690227406188

`A051027(n+1)-∑{d}[∑{d}[n, #], #]`
-/

namespace A111408.P2533623690227406188
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051027 (n + 1) - ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)

end

end A111408.P2533623690227406188

noncomputable section

/-- A111408: f(f(n+1))-f(f(n)), where f(0)=0, and for m>0, f(m) = sigma(m) = A000203(m).

Offset 0, canonical program `A111408.P2533623690227406188`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111408 (n : ℕ) : ℤ :=
  A111408.P2533623690227406188.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111408.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111421.P15893860715280076949

`(A071901(n+1)+1)%10`
-/

namespace A111421.P15893860715280076949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071901 (n + 1) + 1) 10

end

end A111421.P15893860715280076949

noncomputable section

/-- A111421: a(n) = n-th decimal digit + 1 of the fractional part formed by the square root of the n-th prime.

Offset 2, canonical program `A111421.P15893860715280076949`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A111421 (n : ℕ) : ℤ :=
  A111421.P15893860715280076949.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A111421.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111489.P16863949455046068212

`p?[lt[0, A082023(n)]+A000040(n+1)]`
-/

namespace A111489.P16863949455046068212
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082023 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n : ℤ) + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A111489.P16863949455046068212

noncomputable section

/-- A111489: Primes of the form prime(k) + composite(k) for some k.

Offset 1, canonical program `A111489.P16863949455046068212`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1095 terms. -/
def A111489 (n : ℕ) : ℤ :=
  A111489.P16863949455046068212.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1095 terms. -/
def A111489.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111517.P10858931416104658569

`floor(2*A045471(n+1)/7)`
-/

namespace A111517.P10858931416104658569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * ((A045471 (n + 1) : ℚ) / 7)⌋

end

end A111517.P10858931416104658569

noncomputable section

/-- A111517: Numbers k such that (7*k + 1)/2 is prime.

Offset 1, canonical program `A111517.P10858931416104658569`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111517 (n : ℕ) : ℤ :=
  A111517.P10858931416104658569.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111517.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111851.P6379286893962933652

`∑[char[eq[1, A023961(n+1)]]]`
-/

namespace A111851.P6379286893962933652
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023961 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111851.P6379286893962933652

noncomputable section

/-- A111851: Number of numbers m <= n such that 1 equals the first digit after decimal point of square root of n in decimal representation.

Offset 1, canonical program `A111851.P6379286893962933652`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9840 terms. -/
def A111851 (n : ℕ) : ℤ :=
  (A111851.P6379286893962933652.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9840 terms. -/
def A111851.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111852.P16125321229967938784

`∑[char[eq[2, A023961(n+1)]]]`
-/

namespace A111852.P16125321229967938784
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023961 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111852.P16125321229967938784

noncomputable section

/-- A111852: Number of numbers m <= n such that 2 equals the first digit after decimal point of square root of n in decimal representation.

Offset 1, canonical program `A111852.P16125321229967938784`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9860 terms. -/
def A111852 (n : ℕ) : ℤ :=
  (A111852.P16125321229967938784.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9860 terms. -/
def A111852.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111853.P1744786022427487095

`∑[char[eq[3, A023961(n+1)]]]`
-/

namespace A111853.P1744786022427487095
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023961 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111853.P1744786022427487095

noncomputable section

/-- A111853: Number of numbers m <= n such that 3 equals the first digit after decimal point of square root of n in decimal representation.

Offset 1, canonical program `A111853.P1744786022427487095`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9880 terms. -/
def A111853 (n : ℕ) : ℤ :=
  (A111853.P1744786022427487095.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9880 terms. -/
def A111853.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111856.P3255611336082219841

`∑[val(A023961(Δ[n²]-n)+1, 7)]`
-/

namespace A111856.P3255611336082219841
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A023961 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat + 1).toNat 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111856.P3255611336082219841

noncomputable section

/-- A111856: Number of numbers m <= n such that 6 equals the first digit after decimal point of square root of n in decimal representation.

Offset 1, canonical program `A111856.P3255611336082219841`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111856 (n : ℕ) : ℤ :=
  (A111856.P3255611336082219841.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111856.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111858.P11714212007858520479

`∑[char[eq[8, A023961(n+1)]]]`
-/

namespace A111858.P11714212007858520479
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023961 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111858.P11714212007858520479

noncomputable section

/-- A111858: Number of numbers m <= n such that 8 equals the first digit after decimal point of square root of n in decimal representation.

Offset 1, canonical program `A111858.P11714212007858520479`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9980 terms. -/
def A111858 (n : ℕ) : ℤ :=
  (A111858.P11714212007858520479.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9980 terms. -/
def A111858.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111859.P11523082048664198437

`∑[C(A023961(n+1), 9)]`
-/

namespace A111859.P11523082048664198437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A023961 (n + 1)).toNat 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111859.P11523082048664198437

noncomputable section

/-- A111859: Number of numbers m <= n such that 9 equals the first digit after decimal point of square root of n in decimal representation.

Offset 1, canonical program `A111859.P11523082048664198437`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111859 (n : ℕ) : ℤ :=
  (A111859.P11523082048664198437.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111859.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A111994.P7383441932098773811

`A104219(A167499(n+4))`
-/

namespace A111994.P7383441932098773811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104219 (A167499 (n + 4)).toNat

end

end A111994.P7383441932098773811

noncomputable section

/-- A111994: Sixth convolution of Schroeder's (second problem) numbers A001003(n), n>=0.

Offset 0, canonical program `A111994.P7383441932098773811`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. -/
def A111994 (n : ℕ) : ℤ :=
  A111994.P7383441932098773811.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. -/
def A111994.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111995.P5784150889440224814

`A104219(eq[6, A002262(n)])`
-/

namespace A111995.P5784150889440224814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104219 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A111995.P5784150889440224814

noncomputable section

/-- A111995: Seventh convolution of Schroeder's (second problem) numbers A001003(n), n >= 0.

Offset 0, canonical program `A111995.P5784150889440224814`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. -/
def A111995 (n : ℕ) : ℤ :=
  A111995.P5784150889440224814.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. -/
def A111995.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111996.P7242478137024640384

`A104219(eq[7, A002262(n)])`
-/

namespace A111996.P7242478137024640384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104219 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A111996.P7242478137024640384

noncomputable section

/-- A111996: Eighth convolution of Schroeder's (second problem) numbers A001003(n), n>=0.

Offset 0, canonical program `A111996.P7242478137024640384`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A111996 (n : ℕ) : ℤ :=
  A111996.P7242478137024640384.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A111996.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111998.P7978582108229732031

`A104219(eq[9, A002262(n)])`
-/

namespace A111998.P7978582108229732031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104219 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A111998.P7978582108229732031

noncomputable section

/-- A111998: Tenth convolution of Schroeder's (second problem) numbers A001003(n), n>=0.

Offset 0, canonical program `A111998.P7978582108229732031`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. -/
def A111998 (n : ℕ) : ℤ :=
  A111998.P7978582108229732031.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. -/
def A111998.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112227.P5365847626436789325

`A007318(n)*A067994(A025581(n))`
-/

namespace A112227.P5365847626436789325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A067994 (A025581 n).toNat

end

end A112227.P5365847626436789325

noncomputable section

/-- A112227: A scaled Hermite triangle.

Offset 0, canonical program `A112227.P5365847626436789325`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5362 terms. -/
def A112227 (n : ℕ) : ℤ :=
  A112227.P5365847626436789325.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5362 terms. -/
def A112227.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112251.P16085361699206159827

`∩[A112249(n+1)+1, A112250(n+1)]`
-/

namespace A112251.P16085361699206159827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112249 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112250 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112251.P16085361699206159827

noncomputable section

/-- A112251: Numbers m such that m mod floor(log_2(m)) = 1.

Offset 1, canonical program `A112251.P16085361699206159827`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 975 terms. -/
def A112251 (n : ℕ) : ℤ :=
  (A112251.P16085361699206159827.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 975 terms. -/
def A112251.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112295.P3156740729499457564

`A085478(n)*A167374(n)`
-/

namespace A112295.P3156740729499457564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085478 n * A167374 n

end

end A112295.P3156740729499457564

noncomputable section

/-- A112295: Inverse of a double factorial related triangle.

Offset 0, canonical program `A112295.P3156740729499457564`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A112295 (n : ℕ) : ℤ :=
  A112295.P3156740729499457564.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A112295.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112334.P13246007352797609240

`A124819(n)*A167374(n)`
-/

namespace A112334.P13246007352797609240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124819 n * A167374 n

end

end A112334.P13246007352797609240

noncomputable section

/-- A112334: Inverse of number triangle A112333.

Offset 0, canonical program `A112334.P13246007352797609240`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A112334 (n : ℕ) : ℤ :=
  A112334.P13246007352797609240.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A112334.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112413.P7799178321871469342

`A000245(abs(1-A025581(n)))`
-/

namespace A112413.P7799178321871469342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 |1 - A025581 n|.toNat

end

end A112413.P7799178321871469342

noncomputable section

/-- A112413: Triangle read by rows: T(n,k) is the number of Dyck paths of semilength n and starting with exactly k UD's, where U=(1,1), D=(1,-1) (0 <= k <= n).

Offset 0, canonical program `A112413.P7799178321871469342`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A112413 (n : ℕ) : ℤ :=
  A112413.P7799178321871469342.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A112413.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112456.P13854223494093207296

`C(A039915(n+1)+1, 2)`
-/

namespace A112456.P13854223494093207296
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A039915 (n + 1) + 1).toNat 2

end

end A112456.P13854223494093207296

noncomputable section

/-- A112456: Least triangular number divisible by n-th prime.

Offset 1, canonical program `A112456.P13854223494093207296`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A112456 (n : ℕ) : ℤ :=
  (A112456.P13854223494093207296.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A112456.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A112632.P1974851305689260056

`∑[1-A008864(n+1)%3]`
-/

namespace A112632.P1974851305689260056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.tmod (A008864 (n + 1)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112632.P1974851305689260056

noncomputable section

/-- A112632: Excess of 3k - 1 primes over 3k + 1 primes, beginning with 2.

Offset 1, canonical program `A112632.P1974851305689260056`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A112632 (n : ℕ) : ℤ :=
  A112632.P1974851305689260056.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A112632.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112687.P16478719925873435881

`eq[1, A062108(a(A053186(n)))]` with `a(0)=25`
-/

namespace A112687.P16478719925873435881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [25] fun n f2 =>
  A062108 (f2 (A053186 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A112687.P16478719925873435881

noncomputable section

/-- A112687: Numbers n that cannot be decomposed into the sum of at most 4 square numbers when using the following algorithm: Repeat the following 2 steps 4 times: 1-find the largest square s smaller than n; 2-n=n-s Numbers that can be decomposed yield final values of n=0. The sequence presented is of those numbers where n is not 0 when this algorithm ends.

Offset 1, canonical program `A112687.P16478719925873435881`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3605 terms. -/
def A112687 (n : ℕ) : ℤ :=
  (A112687.P16478719925873435881.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3605 terms. -/
def A112687.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112696.P14907744198856643035

`∑[A151374(n)]`
-/

namespace A112696.P14907744198856643035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151374 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112696.P14907744198856643035

noncomputable section

/-- A112696: Partial sum of Catalan numbers A000108 multiplied by powers of 2.

Offset 0, canonical program `A112696.P14907744198856643035`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. -/
def A112696 (n : ℕ) : ℤ :=
  A112696.P14907744198856643035.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. -/
def A112696.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112715.P9692264855410737718

`p?[2*A082662(n+1)-1]`
-/

namespace A112715.P9692264855410737718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A082662 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A112715.P9692264855410737718

noncomputable section

/-- A112715: Primes in A112714.

Offset 1, canonical program `A112715.P9692264855410737718`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 274 terms. -/
def A112715 (n : ℕ) : ℤ :=
  A112715.P9692264855410737718.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 274 terms. -/
def A112715.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112849.P15650256239364234113

`A057427(n)+A001700(n)`
-/

namespace A112849.P15650256239364234113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A001700 n

end

end A112849.P15650256239364234113

noncomputable section

/-- A112849: Number of congruence classes (epimorphisms/vertex partitionings induced by graph endomorphisms) of undirected cycles of even length: |C(C_{2*n})|.

Offset 1, canonical program `A112849.P15650256239364234113`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A112849 (n : ℕ) : ℤ :=
  A112849.P15650256239364234113.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A112849.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113126.P12357649058000027626

`and(1, C(3, A004202(n+1)%(n+1)))*A002260(n+1)`
-/

namespace A113126.P12357649058000027626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 (Nat.choose 3 (Int.tmod (A004202 (n + 1)) (n + 1 : ℤ)).toNat) : ℤ) * A002260 (n + 1)

end

end A113126.P12357649058000027626

noncomputable section

/-- A113126: A simple 4-diagonal matrix.

Offset 0, canonical program `A113126.P12357649058000027626`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113126 (n : ℕ) : ℤ :=
  A113126.P12357649058000027626.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113126.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113196.P10602640479657975478

`A000045(n+1)/A113195(n+1)`
-/

namespace A113196.P10602640479657975478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 1) : ℚ) / (A113195 (n + 1) : ℚ)

end

end A113196.P10602640479657975478

noncomputable section

/-- A113196: a(n) = F(n)/Product_{p=primes} F(p^(m_{n,p})), where p^(m_{n,p}) is highest power of p dividing n, m= nonnegative integer and F(k) is the k-th Fibonacci number.

Offset 1, canonical program `A113196.P10602640479657975478`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113195, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A113196 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A113196.P10602640479657975478.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113195, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A113196.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A113215.P12781133178255026095

`∑[∏{e}[n, A027656(#)]]-1`
-/

namespace A113215.P12781133178255026095
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A027656 (Nat.factorization (f2 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A113215.P12781133178255026095

noncomputable section

/-- A113215: Repeat A006218(n) 2n+1 times.

Offset 0, canonical program `A113215.P12781133178255026095`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113215 (n : ℕ) : ℤ :=
  A113215.P12781133178255026095.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113215.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113250.P12128648228767955689

`(A079757(n+4)+1)*4^n`
-/

namespace A113250.P12128648228767955689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A079757 (n + 4) + 1) * (4 ^ n : ℤ)

end

end A113250.P12128648228767955689

noncomputable section

/-- A113250: Expansion of g.f. -(1 - 48*x^2 - 256*x^3) / ((1 - 4*x)*(1 + 4*x)*(1 + 4*x + 16*x^2)).

Offset 0, canonical program `A113250.P12128648228767955689`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A113250 (n : ℕ) : ℤ :=
  A113250.P12128648228767955689.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A113250.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113313.P6907104958604162947

`Δ[A097805(A083920(n))-A097805(n)]`
-/

namespace A113313.P6907104958604162947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (A083920 n).toNat - A097805 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A113313.P6907104958604162947

noncomputable section

/-- A113313: Riordan array (1-2x,x/(1-x)).

Offset 0, canonical program `A113313.P6907104958604162947`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113313 (n : ℕ) : ℤ :=
  A113313.P6907104958604162947.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113313.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113448.P12961173705019071715

`A049347(n)*A112848(n+1)`
-/

namespace A113448.P12961173705019071715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 n * A112848 (n + 1)

end

end A113448.P12961173705019071715

noncomputable section

/-- A113448: Expansion of (eta(q^2)^2 * eta(q^9) * eta(q^18)) / (eta(q) * eta(q^6)) in powers of q.

Offset 1, canonical program `A113448.P12961173705019071715`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113448 (n : ℕ) : ℤ :=
  A113448.P12961173705019071715.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113448.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113651.P7839326436900621094

`A004273(A051831(n+1))+A051831(n+1)²`
-/

namespace A113651.P7839326436900621094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A051831 (n + 1)).toNat + A051831 (n + 1) ^ 2

end

end A113651.P7839326436900621094

noncomputable section

/-- A113651: 2*JacobiSymbol(p,5) mod p^2 for p=prime(n).

Offset 1, canonical program `A113651.P7839326436900621094`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A113651 (n : ℕ) : ℤ :=
  A113651.P7839326436900621094.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A113651.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113729.P14761420094418722741

`A006093(n+4)-A006093(n+1)%A031165(n+1)`
-/

namespace A113729.P14761420094418722741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 4) - Int.tmod (A006093 (n + 1)) (A031165 (n + 1))

end

end A113729.P14761420094418722741

noncomputable section

/-- A113729: a(n) is the integer between p(n) and p(n+3) which is divisible by (p(n+3)-p(n)), where p(n) is the n-th prime.

Offset 1, canonical program `A113729.P14761420094418722741`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A113729 (n : ℕ) : ℤ :=
  A113729.P14761420094418722741.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A113729.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113979.P12179664378347389896

`Δ[Δ[A056326(A028310(n))]]`
-/

namespace A113979.P12179664378347389896
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056326 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A113979.P12179664378347389896

noncomputable section

/-- A113979: Number of compositions of n with an even number of 1's.

Offset 0, canonical program `A113979.P12179664378347389896`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A113979 (n : ℕ) : ℤ :=
  A113979.P12179664378347389896.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A113979.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114114.P179079981037864306

`A103128(n+1)+A340507(n+1)-A003056(n)`
-/

namespace A114114.P179079981037864306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103128 (n + 1) + (A340507 (n + 1) - A003056 n)

end

end A114114.P179079981037864306

noncomputable section

/-- A114114: An invertible partition matrix.

Offset 0, canonical program `A114114.P179079981037864306`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A114114 (n : ℕ) : ℤ :=
  A114114.P179079981037864306.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A114114.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114277.P12604113063236569068

`∑[A002057(n)]`
-/

namespace A114277.P12604113063236569068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114277.P12604113063236569068

noncomputable section

/-- A114277: Sum of the lengths of the second ascents in all Dyck paths of semilength n+2.

Offset 0, canonical program `A114277.P12604113063236569068`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A114277 (n : ℕ) : ℤ :=
  A114277.P12604113063236569068.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A114277.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114590.P10090074978158621732

`A014301(n+2)-A114515(n+1)`
-/

namespace A114590.P10090074978158621732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014301 (n + 2) - A114515 (n + 1)

end

end A114590.P10090074978158621732

noncomputable section

/-- A114590: Number of peaks at even levels in all hill-free Dyck paths of semilength n+2 (a hill in a Dyck path is a peak at level 1).

Offset 0, canonical program `A114590.P10090074978158621732`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A114590 (n : ℕ) : ℤ :=
  A114590.P10090074978158621732.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A114590.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114596.P17746190447375322614

`A000108(A002260(n+1))*A000957(A004736(n+1))`
-/

namespace A114596.P17746190447375322614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A002260 (n + 1)).toNat * A000957 (A004736 (n + 1)).toNat

end

end A114596.P17746190447375322614

noncomputable section

/-- A114596: Triangle read by rows: T(n,k) is the number of hill-free Dyck paths of semilength n and having abscissa of first return equal to 2k (2<=k<=n). A hill in a Dyck path is a peak at level 1.

Offset 2, canonical program `A114596.P17746190447375322614`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4950 terms. -/
def A114596 (n : ℕ) : ℤ :=
  A114596.P17746190447375322614.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4950 terms. -/
def A114596.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114703.P7889097354654684052

`A000045(A166517(n))*A117647(n)`
-/

namespace A114703.P7889097354654684052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A166517 n).toNat * A117647 n

end

end A114703.P7889097354654684052

noncomputable section

/-- A114703: a(2*n) = F(3*n)*F(3*n+2), a(2*n+1) = F(3*n+1)*F(3*n+2), where F = A000045.

Offset 0, canonical program `A114703.P7889097354654684052`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A114703 (n : ℕ) : ℤ :=
  A114703.P7889097354654684052.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A114703.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115141.P16815087321721103220

`xor(A063524(n), A115140(n))`
-/

namespace A115141.P16815087321721103220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A063524 n) (A115140 n)

end

end A115141.P16815087321721103220

noncomputable section

/-- A115141: Convolution of A115140 with itself.

Offset 0, canonical program `A115141.P16815087321721103220`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A115141 (n : ℕ) : ℤ :=
  A115141.P16815087321721103220.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A115141.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115218.P16102747875881407431

`and(A062289(n+1), A092323(n+1))`
-/

namespace A115218.P16102747875881407431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A062289 (n + 1)) (A092323 (n + 1))

end

end A115218.P16102747875881407431

noncomputable section

/-- A115218: Triangle read by rows: zeroth row is 0; to get row n >= 1, append next 2^n numbers to end of previous row.

Offset 0, canonical program `A115218.P16102747875881407431`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115218 (n : ℕ) : ℤ :=
  A115218.P16102747875881407431.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115218.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115228.P599005106752154386

`lt[A007913(2*n+1), A105570(n)]`
-/

namespace A115228.P599005106752154386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A115228.P599005106752154386

noncomputable section

/-- A115228: Nonsquarefree numbers n such that 2n+1 is also nonsquarefree (A013929).

Offset 1, canonical program `A115228.P599005106752154386`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3272 terms. -/
def A115228 (n : ℕ) : ℤ :=
  (A115228.P599005106752154386.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3272 terms. -/
def A115228.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115241.P10239762916805987824

`A071919(n)-(A007318(n)-A074909(n+1))`
-/

namespace A115241.P10239762916805987824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071919 n - (A007318 n - A074909 (n + 1))

end

end A115241.P10239762916805987824

noncomputable section

/-- A115241: Square array read by antidiagonals: T(n,p) is the number of linearly independent, homogeneous harmonic polynomials of degree n in p variables (n,p>=1).

Offset 1, canonical program `A115241.P10239762916805987824`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115241 (n : ℕ) : ℤ :=
  A115241.P10239762916805987824.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115241.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115259.P8985701988596292915

`A055017(A000040(n+1))`
-/

namespace A115259.P8985701988596292915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 (A000040 (n + 1)).toNat

end

end A115259.P8985701988596292915

noncomputable section

/-- A115259: Difference between the sum of digits in odd positions and the sum of digits in even positions of prime numbers.

Offset 1, canonical program `A115259.P8985701988596292915`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055017, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A115259 (n : ℕ) : ℤ :=
  A115259.P8985701988596292915.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055017, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A115259.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A115260.P9883255391846930332

`p?[abs(A055017(A000040(n+1)))]`
-/

namespace A115260.P9883255391846930332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A055017 (A000040 (n + 1)).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A115260.P9883255391846930332

noncomputable section

/-- A115260: Prime numbers in the sequence of the absolute difference of the sum of digits in odd positions and the sum of digits in even positions of prime numbers.

Offset 1, canonical program `A115260.P9883255391846930332`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 592 terms. -/
def A115260 (n : ℕ) : ℤ :=
  A115260.P9883255391846930332.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 592 terms. -/
def A115260.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115298.P2752483122679105280

`∑[A000040(n+2)-A109763(n+2)]`
-/

namespace A115298.P2752483122679105280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) - A109763 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115298.P2752483122679105280

noncomputable section

/-- A115298: Row sums of A115297.

Offset 1, canonical program `A115298.P2752483122679105280`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3000 terms. -/
def A115298 (n : ℕ) : ℤ :=
  A115298.P2752483122679105280.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3000 terms. -/
def A115298.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115352.P3098449421283651552

`A087734(n)+A038554(n-A087734(n))`
-/

namespace A115352.P3098449421283651552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087734 n + A038554 ((n : ℤ) - A087734 n).toNat

end

end A115352.P3098449421283651552

noncomputable section

/-- A115352: Concatenation of finite strings S_0, S_1, S_2, ..., where S_0 = {0} and for k >= 1, S_k is obtained from S_{k-1} by inserting the numbers 2^(k-1) through 2^k-1 after the initial 0.

Offset 0, canonical program `A115352.P3098449421283651552`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1023 terms. -/
def A115352 (n : ℕ) : ℤ :=
  A115352.P3098449421283651552.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1023 terms. -/
def A115352.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115953.P1207985049942794865

`A115714(n)%3`
-/

namespace A115953.P1207985049942794865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A115714 n) 3

end

end A115953.P1207985049942794865

noncomputable section

/-- A115953: Periodic {1,-1,0,0,1,-2,1,0,0,-1,1,-1}.

Offset 0, canonical program `A115953.P1207985049942794865`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115953 (n : ℕ) : ℤ :=
  A115953.P1207985049942794865.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115953.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116127.P9546234981588161604

`Δ[round(A006005(n+1)/3)]`
-/

namespace A116127.P9546234981588161604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A006005 (n + 1) : ℚ) / 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A116127.P9546234981588161604

noncomputable section

/-- A116127: Number of numbers that are congruent to {2, 4} mod 6 between prime(n) and prime(n+1) inclusive.

Offset 1, canonical program `A116127.P9546234981588161604`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A116127 (n : ℕ) : ℤ :=
  A116127.P9546234981588161604.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A116127.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116406.P2533668275764511831

`(A128014(n)+A011782(n))/2`
-/

namespace A116406.P2533668275764511831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128014 n + A011782 n : ℚ) / 2

end

end A116406.P2533668275764511831

noncomputable section

/-- A116406: Expansion of ((1 + x - 2x^2) + (1+x)*sqrt(1-4x^2))/(2(1-4x^2)).

Offset 0, canonical program `A116406.P2533668275764511831`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A116406 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A116406.P2533668275764511831.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A116406.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116410.P11469624891977256019

`A124302(n)+A097861(n)`
-/

namespace A116410.P11469624891977256019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124302 n + A097861 n

end

end A116410.P11469624891977256019

noncomputable section

/-- A116410: Expansion of (1-x-2x^2+sqrt(1-2x-3x^2))/(2*(1-2x-3x^2)).

Offset 0, canonical program `A116410.P11469624891977256019`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. -/
def A116410 (n : ℕ) : ℤ :=
  A116410.P11469624891977256019.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. -/
def A116410.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116545.P9412331065592776354

`∑[A115568(n+1)]`
-/

namespace A116545.P9412331065592776354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115568 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116545.P9412331065592776354

noncomputable section

/-- A116545: Sum of the largest Fibonacci exponent of prime factorizations of k, k=1..n.

Offset 1, canonical program `A116545.P9412331065592776354`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A116545 (n : ℕ) : ℤ :=
  A116545.P9412331065592776354.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A116545.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116570.P13366081958881133163

`A006094(A008619(n+1))%A037166(A008619(n)+1)`
-/

namespace A116570.P13366081958881133163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006094 (A008619 (n + 1)).toNat) (A037166 (A008619 n + 1).toNat)

end

end A116570.P13366081958881133163

noncomputable section

/-- A116570: a(2*n) = prime(n+1) * prime(n+2), a(2*n-1) = prime(n+1).

Offset 0, canonical program `A116570.P13366081958881133163`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A116570 (n : ℕ) : ℤ :=
  A116570.P13366081958881133163.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A116570.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116592.P5877210315008298987

`A285763(2*n+1)+A093879(n+1)`
-/

namespace A116592.P5877210315008298987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285763 (2 * n + 1) + A093879 (n + 1)

end

end A116592.P5877210315008298987

noncomputable section

/-- A116592: a(0)=1; a(n) = b(n+2) + b(n), where b(n) = A004001(n) is the Hofstadter-Conway sequence defined by b(1) = b(2) = 1, b(n) = b(b(n-1)) + b(n-b(n-1)) for n>2.

Offset 0, canonical program `A116592.P5877210315008298987`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A116592 (n : ℕ) : ℤ :=
  A116592.P5877210315008298987.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A116592.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116602.P13006145556663672467

`eq[5, A039710(2*(n+1))]+1`
-/

namespace A116602.P13006145556663672467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039710 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A116602.P13006145556663672467

noncomputable section

/-- A116602: Values n such that prime(2*n) mod 12 == 5.

Offset 1, canonical program `A116602.P13006145556663672467`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1304 terms. -/
def A116602 (n : ℕ) : ℤ :=
  (A116602.P13006145556663672467.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1304 terms. -/
def A116602.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116610.P10738996274935709144

`eq[11, A039710(A004277(n))]`
-/

namespace A116610.P10738996274935709144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039710 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A116610.P10738996274935709144

noncomputable section

/-- A116610: Values of n such that prime(2*n) mod 12 = 11.

Offset 1, canonical program `A116610.P10738996274935709144`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1223 terms. -/
def A116610 (n : ℕ) : ℤ :=
  (A116610.P10738996274935709144.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1223 terms. -/
def A116610.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116612.P6911931795379388631

`eq[1, A039710(2*n+1)]`
-/

namespace A116612.P6911931795379388631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039710 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A116612.P6911931795379388631

noncomputable section

/-- A116612: Values of n such that p(2n+1) mod 12 = 1, where p(j) denotes the j-th prime.

Offset 1, canonical program `A116612.P6911931795379388631`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1214 terms. -/
def A116612 (n : ℕ) : ℤ :=
  (A116612.P6911931795379388631.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1214 terms. -/
def A116612.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116613.P9128618355075332114

`eq[5, A039710(2*n+1)]`
-/

namespace A116613.P9128618355075332114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039710 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A116613.P9128618355075332114

noncomputable section

/-- A116613: Values of n such that prime(2n+1) mod 12 = 5.

Offset 1, canonical program `A116613.P9128618355075332114`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1203 terms. -/
def A116613 (n : ℕ) : ℤ :=
  (A116613.P9128618355075332114.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1203 terms. -/
def A116613.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116614.P7124806835608261155

`eq[1, A031215(n+1)%12]+1`
-/

namespace A116614.P7124806835608261155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031215 (n + 1)) 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A116614.P7124806835608261155

noncomputable section

/-- A116614: Values of n such that prime(2n) mod 12 = 1.

Offset 1, canonical program `A116614.P7124806835608261155`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2497 terms. -/
def A116614 (n : ℕ) : ℤ :=
  (A116614.P7124806835608261155.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2497 terms. -/
def A116614.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116616.P1011088262083713768

`eq[7, A039710(2*n+1)]`
-/

namespace A116616.P1011088262083713768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039710 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A116616.P1011088262083713768

noncomputable section

/-- A116616: Values of n such that prime(2n+1) mod 12 = 7.

Offset 1, canonical program `A116616.P1011088262083713768`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1302 terms. -/
def A116616 (n : ℕ) : ℤ :=
  (A116616.P1011088262083713768.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1302 terms. -/
def A116616.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116746.P3587289007981454688

`A008776(n)-∑[A094723(n)]`
-/

namespace A116746.P3587289007981454688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094723 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008776 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116746.P3587289007981454688

noncomputable section

/-- A116746: Number of permutations of length n which avoid the patterns 1243, 4123, 4213.

Offset 1, canonical program `A116746.P3587289007981454688`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. -/
def A116746 (n : ℕ) : ℤ :=
  A116746.P3587289007981454688.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. -/
def A116746.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116914.P14835137165361344811

`A114515(n)+A026641(n)`
-/

namespace A116914.P14835137165361344811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114515 n + A026641 n

end

end A116914.P14835137165361344811

noncomputable section

/-- A116914: Number of UUDD's, where U=(1,1) and D=(1,-1), in all hill-free Dyck paths of semilength n (a hill in a Dyck path is a peak at level 1).

Offset 2, canonical program `A116914.P14835137165361344811`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A116914 (n : ℕ) : ℤ :=
  A116914.P14835137165361344811.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A116914.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117120.P9394178660501111264

`A063946(A004756(n+1)-(2*n+3))`
-/

namespace A117120.P9394178660501111264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063946 (A004756 (n + 1) - (2 * n + 3 : ℤ)).toNat

end

end A117120.P9394178660501111264

noncomputable section

/-- A117120: a(1)=1. a(n) is smallest positive integer not occurring earlier in the sequence where a(n) is congruent to -1 (mod a(n-1)).

Offset 1, canonical program `A117120.P9394178660501111264`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117120 (n : ℕ) : ℤ :=
  A117120.P9394178660501111264.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117120.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117178.P12171852833970860923

`C(A002024(n+1), A026741(A108872(n+1)))`
-/

namespace A117178.P12171852833970860923
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002024 (n + 1)).toNat (A026741 (A108872 (n + 1)).toNat).toNat

end

end A117178.P12171852833970860923

noncomputable section

/-- A117178: Riordan array (c(x^2)/sqrt(1-4*x^2), x*c(x^2)), c(x) the g.f. of A000108.

Offset 0, canonical program `A117178.P12171852833970860923`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117178 (n : ℕ) : ℤ :=
  (A117178.P12171852833970860923.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117178.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117216.P14004553023379914469

`A152750(n)+A022146(n)`
-/

namespace A117216.P14004553023379914469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152750 n + A022146 n

end

end A117216.P14004553023379914469

noncomputable section

/-- A117216: Number of points in the standard root system version of the D_4 lattice having L_infinity norm n.

Offset 0, canonical program `A117216.P14004553023379914469`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117216 (n : ℕ) : ℤ :=
  A117216.P14004553023379914469.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117216.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117300.P2175943187349720183

`p?[A004218(A008864(n+1))+A000040(n+1)]`
-/

namespace A117300.P2175943187349720183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (A008864 (n + 1)).toNat + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A117300.P2175943187349720183

noncomputable section

/-- A117300: Consider all pairs (p,q) of consecutive primes such that p and q both have k digits and q-p = k; sequence lists the values of q.

Offset 1, canonical program `A117300.P2175943187349720183`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A117300 (n : ℕ) : ℤ :=
  A117300.P2175943187349720183.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A117300.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117362.P15678424001013400889

`A097807(n)*A113214(n)`
-/

namespace A117362.P15678424001013400889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A113214 n

end

end A117362.P15678424001013400889

noncomputable section

/-- A117362: Riordan array (1-2x,x(1-x)).

Offset 0, canonical program `A117362.P15678424001013400889`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117362 (n : ℕ) : ℤ :=
  A117362.P15678424001013400889.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117362.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117496.P6846209427400603046

`∩[A005823(n+1), A023709(n+1)]`
-/

namespace A117496.P6846209427400603046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005823 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023709 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117496.P6846209427400603046

noncomputable section

/-- A117496: Numbers with no 1's in base 3 & 4 expansions.

Offset 1, canonical program `A117496.P6846209427400603046`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A117496 (n : ℕ) : ℤ :=
  (A117496.P6846209427400603046.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A117496.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117502.P15260034701529770298

`A104763(A007401(n+2))`
-/

namespace A117502.P15260034701529770298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104763 (A007401 (n + 2)).toNat

end

end A117502.P15260034701529770298

noncomputable section

/-- A117502: Triangle, row sums = A001595.

Offset 1, canonical program `A117502.P15260034701529770298`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A117502 (n : ℕ) : ℤ :=
  A117502.P15260034701529770298.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A117502.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117712.P3082328782814083852

`Δ[A368088(n+1)+A057427(n)]`
-/

namespace A117712.P3082328782814083852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368088 (n + 1) + A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A117712.P3082328782814083852

noncomputable section

/-- A117712: Number of pentagonal numbers with n digits.

Offset 1, canonical program `A117712.P3082328782814083852`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A117712 (n : ℕ) : ℤ :=
  A117712.P3082328782814083852.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A117712.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117837.P9488833130415737170

`A065091(eq[A053666(n+1), A053666(n+2)])`
-/

namespace A117837.P9488833130415737170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053666 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053666 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A117837.P9488833130415737170

noncomputable section

/-- A117837: Smaller of two consecutive prime numbers with the same digital product.

Offset 1, canonical program `A117837.P9488833130415737170`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A117837 (n : ℕ) : ℤ :=
  A117837.P9488833130415737170.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A117837.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117904.P18293457615269671848

`2-A117898(n)`
-/

namespace A117904.P18293457615269671848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A117898 n

end

end A117904.P18293457615269671848

noncomputable section

/-- A117904: Number triangle [k<=n]*0^abs(L(C(n,2)/3) - L(C(k,2)/3)) where L(j/p) is the Legendre symbol of j and p.

Offset 0, canonical program `A117904.P18293457615269671848`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117904 (n : ℕ) : ℤ :=
  A117904.P18293457615269671848.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117904.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117946.P16806305034114280741

`A102283(n)*A120880(A064429(n))`
-/

namespace A117946.P16806305034114280741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 n * A120880 (A064429 n).toNat

end

end A117946.P16806305034114280741

noncomputable section

/-- A117946: a(3n)=0, a(3n+1)/a(1)=a(3n+2)/a(2)=A059151(n).

Offset 0, canonical program `A117946.P16806305034114280741`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1307 terms. -/
def A117946 (n : ℕ) : ℤ :=
  A117946.P16806305034114280741.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1307 terms. -/
def A117946.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117962.P8235667469965270824

`∑[A117961(n+1)]`
-/

namespace A117962.P8235667469965270824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117962.P8235667469965270824

noncomputable section

/-- A117962: Partial sums of hexagonal numbers with prime indices.

Offset 1, canonical program `A117962.P8235667469965270824`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117962 (n : ℕ) : ℤ :=
  A117962.P8235667469965270824.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117962.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118006.P10735077424851259672

`and(1, A080846(or(1, n))+n)`
-/

namespace A118006.P10735077424851259672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A080846 (Nat.lor 1 n) + (n : ℤ))

end

end A118006.P10735077424851259672

noncomputable section

/-- A118006: Define a sequence of binary words by w(1) = 01 and w(n+1) = w(n)w(n)Reverse[w(n)]. Sequence gives the limiting word w(infinity).

Offset 1, canonical program `A118006.P10735077424851259672`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A118006 (n : ℕ) : ℤ :=
  A118006.P10735077424851259672.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A118006.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118381.P10574708668957501424

`A060818(n+1)*A060828(n+1)`
-/

namespace A118381.P10574708668957501424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060818 (n + 1) * A060828 (n + 1)

end

end A118381.P10574708668957501424

noncomputable section

/-- A118381: Largest 3-smooth number dividing n!.

Offset 1, canonical program `A118381.P10574708668957501424`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060828, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A118381 (n : ℕ) : ℤ :=
  A118381.P10574708668957501424.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060828, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A118381.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A118425.P11488403813007551376

`∑[A006478(n)]`
-/

namespace A118425.P11488403813007551376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006478 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118425.P11488403813007551376

noncomputable section

/-- A118425: Number of binary sequences of length n containing exactly one subsequence 001.

Offset 0, canonical program `A118425.P11488403813007551376`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 467 terms. -/
def A118425 (n : ℕ) : ℤ :=
  A118425.P11488403813007551376.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 467 terms. -/
def A118425.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118444.P13603770497566065766

`A118443(n)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A118444.P13603770497566065766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118443 n : ℚ) / (n + 1 : ℚ)

end

end A118444.P13603770497566065766

noncomputable section

/-- A118444: a(n) = A118443(n)/(n+1), where A118443 is the row sums of triangle A118441.

Offset 0, canonical program `A118444.P13603770497566065766`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A118443, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A118444 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A118444.P13603770497566065766.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A118443, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A118444.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A118624.P709661768869797743

`p?[A226502(n+1)-1]`
-/

namespace A118624.P709661768869797743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226502 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A118624.P709661768869797743

noncomputable section

/-- A118624: Primes of the form prime(n+1)*prime(n+3) - prime(n)*prime(n+2) - 1, ordered by n.

Offset 1, canonical program `A118624.P709661768869797743`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 494 terms. -/
def A118624 (n : ℕ) : ℤ :=
  A118624.P709661768869797743.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 494 terms. -/
def A118624.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118885.P5821775642827842182

`∑[∑[A073778(n)]]`
-/

namespace A118885.P5821775642827842182
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073778 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118885.P5821775642827842182

noncomputable section

/-- A118885: Number of binary sequences of length n containing exactly one subsequence 0011.

Offset 0, canonical program `A118885.P5821775642827842182`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 372 terms. -/
def A118885 (n : ℕ) : ℤ :=
  A118885.P5821775642827842182.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 372 terms. -/
def A118885.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118973.P16395577257869652124

`A000957(n+1)+A000958(n+1)-A000108(n)`
-/

namespace A118973.P16395577257869652124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000957 (n + 1) + (A000958 (n + 1) - A000108 n)

end

end A118973.P16395577257869652124

noncomputable section

/-- A118973: Number of hill-free Dyck paths of semilength n+2 and having length of first descent equal to 2 (a hill in a Dyck path is a peak at level 1).

Offset 0, canonical program `A118973.P16395577257869652124`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A118973 (n : ℕ) : ℤ :=
  A118973.P16395577257869652124.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A118973.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A119275.P1197823847219350886

`A104556(n)*A130321(n)`
-/

namespace A119275.P1197823847219350886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104556 n * A130321 n

end

end A119275.P1197823847219350886

noncomputable section

/-- A119275: Inverse of triangle related to Padé approximation of exp(x).

Offset 0, canonical program `A119275.P1197823847219350886`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5307 terms. -/
def A119275 (n : ℕ) : ℤ :=
  A119275.P1197823847219350886.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5307 terms. -/
def A119275.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119283.P13203872640390937685

`∑[(-1)^n*A007598(n)]`
-/

namespace A119283.P13203872640390937685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A007598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119283.P13203872640390937685

noncomputable section

/-- A119283: Alternating sum of the squares of the first n Fibonacci numbers.

Offset 0, canonical program `A119283.P13203872640390937685`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. -/
def A119283 (n : ℕ) : ℤ :=
  A119283.P13203872640390937685.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. -/
def A119283.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119285.P16234836750788060480

`∑[(1-A001611(n))²²*(-1)^n]`
-/

namespace A119285.P16234836750788060480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - A001611 n) ^ 2) ^ 2 * (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119285.P16234836750788060480

noncomputable section

/-- A119285: Alternating sum of the fourth powers of the first n Fibonacci numbers.

Offset 0, canonical program `A119285.P16234836750788060480`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A119285 (n : ℕ) : ℤ :=
  A119285.P16234836750788060480.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A119285.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119428.P13055513674063080029

`∑{d}[A008619(A004273(n)), A330025(#)]`
-/

namespace A119428.P13055513674063080029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A330025 d

end

end A119428.P13055513674063080029

noncomputable section

/-- A119428: G.f.: A(x) = 1 + Sum_{n>=0} (-1)^n* Sum_{k=1..4} x^(5n+k)/(1-x^(5n+k)).

Offset 0, canonical program `A119428.P13055513674063080029`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A119428 (n : ℕ) : ℤ :=
  A119428.P13055513674063080029.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A119428.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119440.P10732176381343367218

`A098011(A082375(n)+2)`
-/

namespace A119440.P10732176381343367218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098011 (A082375 n + 2).toNat

end

end A119440.P10732176381343367218

noncomputable section

/-- A119440: Triangle read by rows: T(n,k) is the number of binary sequences of length n that start with exactly k 01's (0 <= k <= floor(n/2)).

Offset 0, canonical program `A119440.P10732176381343367218`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2550 terms. -/
def A119440 (n : ℕ) : ℤ :=
  A119440.P10732176381343367218.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2550 terms. -/
def A119440.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119457.P468492089180334650

`A292030(n)+A117501(n+1)`
-/

namespace A119457.P468492089180334650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292030 n + A117501 (n + 1)

end

end A119457.P468492089180334650

noncomputable section

/-- A119457: Triangle read by rows: T(n, 1) = n, T(n, 2) = 2*(n-1) for n>1 and T(n, k) = T(n-1, k-1) + T(n-2, k-2) for 2 < k <= n.

Offset 1, canonical program `A119457.P468492089180334650`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A119457 (n : ℕ) : ℤ :=
  A119457.P468492089180334650.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A119457.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119658.P11667563093156553318

`A000040(A000040(n+1))*A000040(A065091(n+1))`
-/

namespace A119658.P11667563093156553318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000040 (n + 1)).toNat * A000040 (A065091 (n + 1)).toNat

end

end A119658.P11667563093156553318

noncomputable section

/-- A119658: Area of consecutive Prime-Indexed Prime rectangles.

Offset 1, canonical program `A119658.P11667563093156553318`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A119658 (n : ℕ) : ℤ :=
  A119658.P11667563093156553318.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A119658.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119800.P2520394121948414267

`A113413(eq[0, A103452(n)])`
-/

namespace A119800.P2520394121948414267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113413 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A119800.P2520394121948414267

noncomputable section

/-- A119800: Array of coordination sequences for cubic lattices (rows) and of numbers of L1 forms in cubic lattices (columns) (array read by antidiagonals).

Offset 1, canonical program `A119800.P2520394121948414267`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9720 terms. -/
def A119800 (n : ℕ) : ℤ :=
  A119800.P2520394121948414267.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9720 terms. -/
def A119800.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119976.P8860550643367457755

`(n+2)/2*A071356(n)`
-/

namespace A119976.P8860550643367457755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / 2 * (A071356 n : ℚ)

end

end A119976.P8860550643367457755

noncomputable section

/-- A119976: E.g.f. exp(2x)*(Bessel_I(0,2*sqrt(2)x) + Bessel_I(1,2*sqrt(2)x)/sqrt(2)).

Offset 0, canonical program `A119976.P8860550643367457755`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 148 terms. -/
def A119976 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A119976.P8860550643367457755.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 148 terms. -/
def A119976.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120243.P8412210091431713488

`eq[1, A019426(A001951(2*n))]`
-/

namespace A120243.P8412210091431713488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (A001951 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A120243.P8412210091431713488

noncomputable section

/-- A120243: Numbers k such that {k*sqrt(2)} < 1/2, where { } = fractional part.

Offset 1, canonical program `A120243.P8412210091431713488`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A120243 (n : ℕ) : ℤ :=
  (A120243.P8412210091431713488.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A120243.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120326.P1315719158318225091

`∑[A039701(n+1)]`
-/

namespace A120326.P1315719158318225091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039701 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120326.P1315719158318225091

noncomputable section

/-- A120326: Cumulative sum of the remainders when dividing primes by 3.

Offset 1, canonical program `A120326.P1315719158318225091`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120326 (n : ℕ) : ℤ :=
  A120326.P1315719158318225091.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120326.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120439.P4767351886391421295

`A105825(p?[A000040(n+1)+2])-2`
-/

namespace A120439.P4767351886391421295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105825 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 2

end

end A120439.P4767351886391421295

noncomputable section

/-- A120439: Average of twin-prime pairs modulo 5.

Offset 1, canonical program `A120439.P4767351886391421295`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A120439 (n : ℕ) : ℤ :=
  A120439.P4767351886391421295.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A120439.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120588.P13914353350146187734

`abs(A115140(n))`
-/

namespace A120588.P13914353350146187734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A115140 n|

end

end A120588.P13914353350146187734

noncomputable section

/-- A120588: G.f. is 1 + x*c(x), where c(x) is the g.f. of the Catalan numbers (A000108).

Offset 0, canonical program `A120588.P13914353350146187734`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A120588 (n : ℕ) : ℤ :=
  A120588.P13914353350146187734.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A120588.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120769.P14757464538390453997

`a(A035327(n))*A080079(n)` with `a(0)=1`
-/

namespace A120769.P14757464538390453997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A035327 n).toNat * A080079 n

end

end A120769.P14757464538390453997

noncomputable section

/-- A120769: Starting from a(0)=1, recursively a(2^k+r) = (2^k-r)*a(2^k-1-r), 0<=r < 2^(k+1).

Offset 0, canonical program `A120769.P14757464538390453997`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120769 (n : ℕ) : ℤ :=
  A120769.P14757464538390453997.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120769.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121002.P11480597165247636129

`A046714(n)/gcd(A000351(n), A046714(n))`
-/

namespace A121002.P11480597165247636129
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046714 n : ℚ) / (Int.gcd (A000351 n) (A046714 n) : ℚ)

end

end A121002.P11480597165247636129

noncomputable section

/-- A121002: Numerators of partial sums of Catalan numbers scaled by powers of 1/5.

Offset 0, canonical program `A121002.P11480597165247636129`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A121002 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A121002.P11480597165247636129.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A121002.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121003.P1301101587900139317

`A000351(n)/gcd(A000351(n), A046714(n))`
-/

namespace A121003.P1301101587900139317
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000351 n : ℚ) / (Int.gcd (A000351 n) (A046714 n) : ℚ)

end

end A121003.P1301101587900139317

noncomputable section

/-- A121003: Denominators of partial sums of Catalan numbers scaled by powers of 1/5.

Offset 0, canonical program `A121003.P1301101587900139317`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A121003 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A121003.P1301101587900139317.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A121003.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121343.P4155292252380405521

`(A001611(n)-1)%A000217(A028310(n))`
-/

namespace A121343.P4155292252380405521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001611 n - 1) (A000217 (A028310 n).toNat)

end

end A121343.P4155292252380405521

noncomputable section

/-- A121343: a(n) = Fibonacci(n) mod n(n+1)/2.

Offset 0, canonical program `A121343.P4155292252380405521`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A121343 (n : ℕ) : ℤ :=
  A121343.P4155292252380405521.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A121343.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121447.P1797565767739298032

`Δ[A006630(n)]-record[A000139(n)]`
-/

namespace A121447.P1797565767739298032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006630 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000139 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A121447.P1797565767739298032

noncomputable section

/-- A121447: Level of the first leaf (in preorder traversal) of a ternary tree, summed over all ternary trees with n edges. A ternary tree is a rooted tree in which each vertex has at most three children and each child of a vertex is designated as its left or middle or right child.

Offset 1, canonical program `A121447.P1797565767739298032`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A121447 (n : ℕ) : ℤ :=
  A121447.P1797565767739298032.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A121447.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121456.P5897424446692227850

`(-1)^(n+2)*A111932(n+1)`
-/

namespace A121456.P5897424446692227850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n + 2) * A111932 (n + 1)

end

end A121456.P5897424446692227850

noncomputable section

/-- A121456: Expansion of q*(psi(-q)*psi(-q^3))^2 in powers of q where psi() is a Ramanujan theta function.

Offset 1, canonical program `A121456.P5897424446692227850`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A111932, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A121456 (n : ℕ) : ℤ :=
  A121456.P5897424446692227850.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A111932, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A121456.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A121536.P6253262290429947505

`A077107(n)^(1/3)`
-/

namespace A121536.P6253262290429947505
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A077107 n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A121536.P6253262290429947505

noncomputable section

/-- A121536: Smallest m such that m^3 >= n^2.

Offset 1, canonical program `A121536.P6253262290429947505`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A077107, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A121536 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A121536.P6253262290429947505.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A077107, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A121536.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A121547.P13517221816394167788

`A000292(A003056(n))*A097805(n)`
-/

namespace A121547.P13517221816394167788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A003056 n).toNat * A097805 n

end

end A121547.P13517221816394167788

noncomputable section

/-- A121547: Fourth slice along the 1-2-plane in the cube a(m,n,o) = a(m-1,n,o) + a(m,n-1,o) + a(m,n,o-1) for which the first slice is Pascal's triangle (slice read by antidiagonals).

Offset 0, canonical program `A121547.P13517221816394167788`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121547 (n : ℕ) : ℤ :=
  A121547.P13517221816394167788.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121547.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121566.P11132643645040493819

`A034386(n)/round(atan(n+11))`
-/

namespace A121566.P11132643645040493819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034386 n : ℚ) / (SequenceMachineLib.roundAway (Real.arctan (n + 11 : ℝ)) : ℚ)

end

end A121566.P11132643645040493819

noncomputable section

/-- A121566: a(n) is the denominator of Sum_{i=1..n} i!/(i^2).

Offset 0, canonical program `A121566.P11132643645040493819`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 251 terms. -/
def A121566 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A121566.P11132643645040493819.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 251 terms. -/
def A121566.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122102.P3417295557102748477

`∑[A030514(n+1)]`
-/

namespace A122102.P3417295557102748477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030514 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122102.P3417295557102748477

noncomputable section

/-- A122102: a(n) = Sum_{k=1..n} prime(k)^4.

Offset 1, canonical program `A122102.P3417295557102748477`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122102 (n : ℕ) : ℤ :=
  A122102.P3417295557102748477.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122102.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122103.P17960088911727487436

`∑[A050997(n+1)]`
-/

namespace A122103.P17960088911727487436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050997 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122103.P17960088911727487436

noncomputable section

/-- A122103: Sum of the fifth powers of the first n primes.

Offset 1, canonical program `A122103.P17960088911727487436`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122103 (n : ℕ) : ℤ :=
  A122103.P17960088911727487436.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122103.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122155.P17533266698539878574

`or(A035327(abs(1-n)), A053644(n))`
-/

namespace A122155.P17533266698539878574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A035327 |1 - (n : ℤ)|.toNat) (A053644 n)

end

end A122155.P17533266698539878574

noncomputable section

/-- A122155: Simple involution of natural numbers: List each block of (2^k)-1 numbers (from (2^k)+1 to 2^(k+1) - 1) in reverse order and fix the powers of 2.

Offset 0, canonical program `A122155.P17533266698539878574`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122155 (n : ℕ) : ℤ :=
  A122155.P17533266698539878574.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122155.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122188.P14169931470485161409

`Δ[-A010751(n+1)]`
-/

namespace A122188.P14169931470485161409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A010751 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122188.P14169931470485161409

noncomputable section

/-- A122188: Triangle read by rows, formed from the coefficients of characteristic polynomials of the following sequence of matrices: 2 X 2 {{0, 1}, {1, 1}}, 3 X 3 {{0, 1, 0}, {0, 0, 1}, {1, 1, 1}}, 4 X 4 {{0, 1,0, 0}, {0, 0, 1, 0}, {0, 0, 0, 1}, {1, 1, 1, 1}}, 5 X 5 {{0, 1, 0, 0, 0}, {0, 0, 1, 0, 0}, {0, 0, 0, 1, 0}, {0, 0, 0, 0, 1}, {1, 1, 1, 1, 1}}, ...

Offset 1, canonical program `A122188.P14169931470485161409`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A122188 (n : ℕ) : ℤ :=
  A122188.P14169931470485161409.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A122188.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122264.P4329901969960442374

`A001749(n+2)-(3*n+10)`
-/

namespace A122264.P4329901969960442374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001749 (n + 2) - (3 * n + 10 : ℤ)

end

end A122264.P4329901969960442374

noncomputable section

/-- A122264: a(n) = n + 1 + 2*Sum_{j=0..n-2} (j*prime(n-j+2) - (2*j-1)*prime(n-j+1) + (j-1)*prime(n-j)).

Offset 1, canonical program `A122264.P4329901969960442374`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122264 (n : ℕ) : ℤ :=
  A122264.P4329901969960442374.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122264.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122432.P16515211422386222308

`-A089594(A004736(n+1))`
-/

namespace A122432.P16515211422386222308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A089594 (A004736 (n + 1)).toNat

end

end A122432.P16515211422386222308

noncomputable section

/-- A122432: Riordan array (1/(1+x)^3,x).

Offset 0, canonical program `A122432.P16515211422386222308`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122432 (n : ℕ) : ℤ :=
  A122432.P16515211422386222308.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122432.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122766.P7340364842892422262

`A008619(A108872(n+1))*A122765(n+1)`
-/

namespace A122766.P7340364842892422262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A108872 (n + 1)).toNat * A122765 (n + 1)

end

end A122766.P7340364842892422262

noncomputable section

/-- A122766: Triangle read by rows: let p(n, x) = x*p(n-1, x) - p(n-2, x), then T(n, x) = d^2/dx^2 (p(n, x)).

Offset 1, canonical program `A122766.P7340364842892422262`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A122766 (n : ℕ) : ℤ :=
  A122766.P7340364842892422262.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A122766.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122800.P16993477240022882628

`A045928(n+1)-n`
-/

namespace A122800.P16993477240022882628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045928 (n + 1) - (n : ℤ)

end

end A122800.P16993477240022882628

noncomputable section

/-- A122800: A P_4-stuttered arithmetic progression with a(n+1)=a(n) if n is square, a(n+1)=a(n)+2 otherwise.

Offset 1, canonical program `A122800.P16993477240022882628`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045928, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A122800 (n : ℕ) : ℤ :=
  A122800.P16993477240022882628.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045928, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A122800.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A122877.P10339492444474054042

`Δ[A025235(n)/2]`
-/

namespace A122877.P10339492444474054042
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025235 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122877.P10339492444474054042

noncomputable section

/-- A122877: Expansion of (1-2*x-3*x^2-(1-x)*sqrt(1-2*x-7*x^2))/(8*x^3).

Offset 0, canonical program `A122877.P10339492444474054042`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 177 terms. -/
def A122877 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A122877.P10339492444474054042.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 177 terms. -/
def A122877.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123097.P13007430214341374216

`A097805(n+1)+A003506(n+1)`
-/

namespace A123097.P13007430214341374216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (n + 1) + A003506 (n + 1)

end

end A123097.P13007430214341374216

noncomputable section

/-- A123097: Triangle read by rows: T(n,k) = binomial(n-2, k-1) + n*binomial(n-1, k-1), 1 <= k <= n, starting with T(1, 1) = 1.

Offset 1, canonical program `A123097.P13007430214341374216`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123097 (n : ℕ) : ℤ :=
  A123097.P13007430214341374216.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123097.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123123.P9221843181498262709

`A052147(n+1)+C(n, n²)`
-/

namespace A123123.P9221843181498262709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (n + 1) + (Nat.choose n (n ^ 2) : ℤ)

end

end A123123.P9221843181498262709

noncomputable section

/-- A123123: Numbers m such that m mod k = 2 for only one integer k in 2..m.

Offset 1, canonical program `A123123.P9221843181498262709`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123123 (n : ℕ) : ℤ :=
  A123123.P9221843181498262709.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123123.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123157.P3168733411666123651

`∑{digits}[A001248(n+1), #]`
-/

namespace A123157.P3168733411666123651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A123157.P3168733411666123651

noncomputable section

/-- A123157: Sum of digits of the squares of prime numbers.

Offset 1, canonical program `A123157.P3168733411666123651`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123157 (n : ℕ) : ℤ :=
  (A123157.P3168733411666123651.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123157.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A123225.P10747356342280397472

`A094587(n)*A100100(A007401(n+1))`
-/

namespace A123225.P10747356342280397472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n * A100100 (A007401 (n + 1)).toNat

end

end A123225.P10747356342280397472

noncomputable section

/-- A123225: Triangle read by rows: T(n,d) = (n!/d!)*(n+1)*binomial(2n-d+1,n+1)/(n-d+1) (0 <= d <= n).

Offset 0, canonical program `A123225.P10747356342280397472`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1431 terms. -/
def A123225 (n : ℕ) : ℤ :=
  A123225.P10747356342280397472.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1431 terms. -/
def A123225.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123275.P16288348436701202687

`A002260(n+1)/gcd(A002260(n+1), A009999(n))`
-/

namespace A123275.P16288348436701202687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) / (Int.gcd (A002260 (n + 1)) (A009999 n) : ℚ)

end

end A123275.P16288348436701202687

noncomputable section

/-- A123275: Square array A(n,m) = largest divisor of m which is coprime to n, read by upwards antidiagonals.

Offset 1, canonical program `A123275.P16288348436701202687`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4726 terms. -/
def A123275 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A123275.P16288348436701202687.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4726 terms. -/
def A123275.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123331.P9518979506076851162

`abs(A122860(n+1))`
-/

namespace A123331.P9518979506076851162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A122860 (n + 1)|

end

end A123331.P9518979506076851162

noncomputable section

/-- A123331: Expansion of (c(q)^2/(3c(q^2))-1)/2 in powers of q where c(q) is a cubic AGM function.

Offset 1, canonical program `A123331.P9518979506076851162`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123331 (n : ℕ) : ℤ :=
  A123331.P9518979506076851162.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123331.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123513.P10972167970805802106

`A010027(A038722(n+1))`
-/

namespace A123513.P10972167970805802106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010027 (A038722 (n + 1)).toNat

end

end A123513.P10972167970805802106

noncomputable section

/-- A123513: Triangle read by rows: T(n,k) is the number of permutations of [n] having k small descents (n >= 1; 0 <= k <= n-1). A small descent in a permutation (x_1,x_2,...,x_n) is a position i such that x_i - x_(i+1) = 1.

Offset 1, canonical program `A123513.P10972167970805802106`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. -/
def A123513 (n : ℕ) : ℤ :=
  A123513.P10972167970805802106.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. -/
def A123513.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123530.P615654561327355968

`A112848(2*n+1)`
-/

namespace A123530.P615654561327355968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112848 (2 * n + 1)

end

end A123530.P615654561327355968

noncomputable section

/-- A123530: Expansion of q^(-1/2)*eta(q)^2*eta(q^6)^3/(eta(q^2)*eta(q^3)^2) in powers of q.

Offset 0, canonical program `A123530.P615654561327355968`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A112848, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A123530 (n : ℕ) : ℤ :=
  A123530.P615654561327355968.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A112848, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A123530.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A123554.P6569602096052592708

`A034870(eq[1, A010054(A000196(n))])`
-/

namespace A123554.P6569602096052592708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A000196 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034870 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A123554.P6569602096052592708

noncomputable section

/-- A123554: Triangle read by rows: T(n,k) = number of labeled loopless digraphs with n nodes and k arcs (n >= 1, 0 <= k <= n*(n-1)).

Offset 1, canonical program `A123554.P6569602096052592708`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 924 terms. -/
def A123554 (n : ℕ) : ℤ :=
  A123554.P6569602096052592708.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 924 terms. -/
def A123554.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123564.P1394772909650347147

`A096270(Δ[n²])+Δ[A001965(n)]`
-/

namespace A123564.P1394772909650347147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001965 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + (f2 (n + 1) - f2 n)

end

end A123564.P1394772909650347147

noncomputable section

/-- A123564: The infinite Fibonacci word reencoded by writing successive non-overlapping pairs of bits as decimal numbers.

Offset 1, canonical program `A123564.P1394772909650347147`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A123564 (n : ℕ) : ℤ :=
  A123564.P1394772909650347147.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A123564.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123737.P586469183867328966

`n+1-2*A083036(n+1)`
-/

namespace A123737.P586469183867328966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - 2 * A083036 (n + 1)

end

end A123737.P586469183867328966

noncomputable section

/-- A123737: Partial sums of (-1)^floor(n*sqrt(2)).

Offset 1, canonical program `A123737.P586469183867328966`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123737 (n : ℕ) : ℤ :=
  A123737.P586469183867328966.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123737.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123863.P1353437602911175689

`A010892(n)*A112848(n+1)`
-/

namespace A123863.P1353437602911175689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n * A112848 (n + 1)

end

end A123863.P1353437602911175689

noncomputable section

/-- A123863: Expansion of (c(q^3) - c(q^6) - 2*c(q^12)) / 3 in powers of q where c(q) is a cubic AGM theta function.

Offset 1, canonical program `A123863.P1353437602911175689`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123863 (n : ℕ) : ℤ :=
  A123863.P1353437602911175689.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123863.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123864.P5158556978074612341

`A035175(round(sqrt(n²+1)))`
-/

namespace A123864.P5158556978074612341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035175 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A123864.P5158556978074612341

noncomputable section

/-- A123864: Expansion of (eta(q^3) * eta(q^5))^2 / (eta(q) * eta(q^15)) in powers of q.

Offset 0, canonical program `A123864.P5158556978074612341`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123864 (n : ℕ) : ℤ :=
  A123864.P5158556978074612341.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123864.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123976.P17596081695645912205

`eq[1, A000007(A002752(n+1))]+1`
-/

namespace A123976.P17596081695645912205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A002752 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A123976.P17596081695645912205

noncomputable section

/-- A123976: Numbers k such that Fibonacci(k-1) is divisible by k.

Offset 1, canonical program `A123976.P17596081695645912205`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 617 terms. -/
def A123976 (n : ℕ) : ℤ :=
  (A123976.P17596081695645912205.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 617 terms. -/
def A123976.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124203.P14562224082085473422

`3*n+2-A055945(n)`
-/

namespace A124203.P14562224082085473422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) + (2 - A055945 n)

end

end A124203.P14562224082085473422

noncomputable section

/-- A124203: a(n) = 2n + "reverse of n-written-in-binary" + 2.

Offset 0, canonical program `A124203.P14562224082085473422`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A124203 (n : ℕ) : ℤ :=
  A124203.P14562224082085473422.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A124203.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124258.P17147279065324572627

`A004737(n+1)²`
-/

namespace A124258.P17147279065324572627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004737 (n + 1) ^ 2

end

end A124258.P17147279065324572627

noncomputable section

/-- A124258: Triangle whose rows are sequences of increasing and decreasing squares: 1; 1,4,1; 1,4,9,4,1; ...

Offset 1, canonical program `A124258.P17147279065324572627`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004737, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A124258 (n : ℕ) : ℤ :=
  A124258.P17147279065324572627.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004737, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A124258.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A124315.P11985262133393008342

`∏{e}[n+1, A025699(#)]`
-/

namespace A124315.P11985262133393008342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A025699 (Nat.factorization (f1 n) p)

end

end A124315.P11985262133393008342

noncomputable section

/-- A124315: a(n) = Sum_{d|n} tau(gcd(d,n/d)), where tau = sigma_0 = A000005.

Offset 1, canonical program `A124315.P11985262133393008342`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124315 (n : ℕ) : ℤ :=
  A124315.P11985262133393008342.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124315.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124584.P4878718695736530326

`A045344(lt[7, A046933(n+1)])`
-/

namespace A124584.P4878718695736530326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046933 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A124584.P4878718695736530326

noncomputable section

/-- A124584: Primes p such that q-p >= 10, where q is the next prime after p.

Offset 1, canonical program `A124584.P4878718695736530326`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A124584 (n : ℕ) : ℤ :=
  A124584.P4878718695736530326.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A124584.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124587.P17225293575173405852

`A065091(lt[14, A001223(n+1)])`
-/

namespace A124587.P17225293575173405852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A124587.P17225293575173405852

noncomputable section

/-- A124587: Primes p such that q-p >= 16, where q is the next prime after p.

Offset 1, canonical program `A124587.P17225293575173405852`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2180 terms. -/
def A124587 (n : ℕ) : ℤ :=
  A124587.P17225293575173405852.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2180 terms. -/
def A124587.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124590.P5839912544610622108

`A000040(lt[A001223(n+1), 8]+1)`
-/

namespace A124590.P5839912544610622108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A124590.P5839912544610622108

noncomputable section

/-- A124590: Primes p such that q-p <= 6, where q is the next prime after p.

Offset 1, canonical program `A124590.P5839912544610622108`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4546 terms. -/
def A124590 (n : ℕ) : ℤ :=
  A124590.P5839912544610622108.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4546 terms. -/
def A124590.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124591.P3235263655335918205

`A000040(lt[A001223(n+1), 10]+1)`
-/

namespace A124591.P3235263655335918205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A124591.P3235263655335918205

noncomputable section

/-- A124591: Primes p such that q-p <= 8, where q is the next prime after p.

Offset 1, canonical program `A124591.P3235263655335918205`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A124591 (n : ℕ) : ℤ :=
  A124591.P3235263655335918205.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A124591.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124659.P412689728244301623

`abs(3-(p?[A040976(n+1)]+1)²)`
-/

namespace A124659.P412689728244301623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1) ^ 2|

end

end A124659.P412689728244301623

noncomputable section

/-- A124659: Twin prime products minus 2.

Offset 1, canonical program `A124659.P412689728244301623`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A124659 (n : ℕ) : ℤ :=
  A124659.P412689728244301623.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A124659.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124678.P3388856193918197942

`A111333(n+1)+2`
-/

namespace A124678.P3388856193918197942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111333 (n + 1) + 2

end

end A124678.P3388856193918197942

noncomputable section

/-- A124678: Number of conjugacy classes in PSL_2(p), p = prime(n).

Offset 1, canonical program `A124678.P3388856193918197942`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124678 (n : ℕ) : ℤ :=
  A124678.P3388856193918197942.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124678.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124748.P5609394966842096316

`A000523(n+1)-A124737(n)`
-/

namespace A124748.P5609394966842096316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (n + 1) - A124737 n

end

end A124748.P5609394966842096316

noncomputable section

/-- A124748: Table where row n has k C(n,k) times, in reverse order.

Offset 0, canonical program `A124748.P5609394966842096316`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A124748 (n : ℕ) : ℤ :=
  A124748.P5609394966842096316.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A124748.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124860.P14852524666225097525

`A007318(n)*A001045(∑[A010054(n)])`
-/

namespace A124860.P14852524666225097525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A001045 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A124860.P14852524666225097525

noncomputable section

/-- A124860: A Jacobsthal-Pascal triangle.

Offset 0, canonical program `A124860.P14852524666225097525`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124860 (n : ℕ) : ℤ :=
  A124860.P14852524666225097525.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124860.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125059.P17901942141546187300

`∑{digits}[A006882(n), A055642(#)]`
-/

namespace A125059.P17901942141546187300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A055642 x).sum

end

end A125059.P17901942141546187300

noncomputable section

/-- A125059: Number of digits in n!!.

Offset 0, canonical program `A125059.P17901942141546187300`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A125059 (n : ℕ) : ℤ :=
  A125059.P17901942141546187300.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A125059.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125072.P10935672453325630625

`∑{e}[n+1, A010054(#)]`
-/

namespace A125072.P10935672453325630625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A010054 (Nat.factorization (f1 n) p)

end

end A125072.P10935672453325630625

noncomputable section

/-- A125072: a(n) = number of exponents in the prime-factorization of n which are triangular numbers.

Offset 1, canonical program `A125072.P10935672453325630625`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125072 (n : ℕ) : ℤ :=
  A125072.P10935672453325630625.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125072.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125073.P701990710138125406

`∑{e}[n+1, #*A010054(#)]`
-/

namespace A125073.P701990710138125406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p : ℤ) * A010054 (Nat.factorization (f1 n) p)

end

end A125073.P701990710138125406

noncomputable section

/-- A125073: a(n) = sum of the exponents in the prime factorization of n which are triangular numbers.

Offset 1, canonical program `A125073.P701990710138125406`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125073 (n : ℕ) : ℤ :=
  A125073.P701990710138125406.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125073.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A125575.P7635791061298922058

`A000030(A001248(n+1))`
-/

namespace A125575.P7635791061298922058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A001248 (n + 1)).toNat

end

end A125575.P7635791061298922058

noncomputable section

/-- A125575: Initial digit of squares of primes.

Offset 1, canonical program `A125575.P7635791061298922058`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000030, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A125575 (n : ℕ) : ℤ :=
  A125575.P7635791061298922058.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000030, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A125575.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A125585.P572809714441068377

`A077264(n)+1`
-/

namespace A125585.P572809714441068377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077264 n + 1

end

end A125585.P572809714441068377

noncomputable section

/-- A125585: Array of constant-spaced integers read by antidiagonals.

Offset 1, canonical program `A125585.P572809714441068377`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125585 (n : ℕ) : ℤ :=
  A125585.P572809714441068377.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125585.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126063.P4124651871844324285

`A013609(n)/A008459(n)*A176230(n)`
-/

namespace A126063.P4124651871844324285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013609 n : ℚ) / (A008459 n : ℚ) * (A176230 n : ℚ)

end

end A126063.P4124651871844324285

noncomputable section

/-- A126063: Triangle read by rows: see A128196 for definition.

Offset 0, canonical program `A126063.P4124651871844324285`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1773 terms. -/
def A126063 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A126063.P4124651871844324285.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1773 terms. -/
def A126063.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126180.P8482950412362727135

`A025238(n+3)+n*A045445(n+1)`
-/

namespace A126180.P8482950412362727135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025238 (n + 3) + (n : ℤ) * A045445 (n + 1)

end

end A126180.P8482950412362727135

noncomputable section

/-- A126180: Number of branches in all hex trees with n edges (n>=1).

Offset 1, canonical program `A126180.P8482950412362727135`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A126180 (n : ℕ) : ℤ :=
  A126180.P8482950412362727135.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A126180.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126185.P11307840141715013085

`(n-2)*A045445(A028310(n))/2`
-/

namespace A126185.P11307840141715013085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 2) * A045445 (A028310 n).toNat : ℚ) / 2

end

end A126185.P11307840141715013085

noncomputable section

/-- A126185: Number of nonroot nodes of outdegree 2 in all hex trees with n edges.

Offset 0, canonical program `A126185.P11307840141715013085`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A126185 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A126185.P11307840141715013085.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A126185.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126187.P12367951474002921347

`A045445(n+3)-A002212(n+2)`
-/

namespace A126187.P12367951474002921347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045445 (n + 3) - A002212 (n + 2)

end

end A126187.P12367951474002921347

noncomputable section

/-- A126187: Sum of the levels of the first leaf (in the preorder traversal) over all hex trees with n edges.

Offset 1, canonical program `A126187.P12367951474002921347`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A126187 (n : ℕ) : ℤ :=
  A126187.P12367951474002921347.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A126187.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126208.P1909337783113813203

`∑{digits}[A000400(n), A011686(#)]`
-/

namespace A126208.P1909337783113813203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000400 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A011686 x).sum

end

end A126208.P1909337783113813203

noncomputable section

/-- A126208: Number of 6's in decimal expansion of 6^n.

Offset 0, canonical program `A126208.P1909337783113813203`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A126208 (n : ℕ) : ℤ :=
  A126208.P1909337783113813203.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A126208.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126217.P2537515140714382913

`A120730(n)²`
-/

namespace A126217.P2537515140714382913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120730 n ^ 2

end

end A126217.P2537515140714382913

noncomputable section

/-- A126217: Triangle read by rows: T(n,k) is the number of 321-avoiding permutations of {1,2,...,n} having longest increasing subsequence of length k (0<=k<=n).

Offset 0, canonical program `A126217.P2537515140714382913`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A126217 (n : ℕ) : ℤ :=
  A126217.P2537515140714382913.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A126217.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126329.P10461060411431134265

`p?[6*A008864(n+1)-1]`
-/

namespace A126329.P10461060411431134265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A008864 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A126329.P10461060411431134265

noncomputable section

/-- A126329: Primes of the form 6p+5 where p is a prime.

Offset 1, canonical program `A126329.P10461060411431134265`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A126329 (n : ℕ) : ℤ :=
  A126329.P10461060411431134265.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A126329.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126966.P12794021674090702556

`A028329(n)-A082590(n)`
-/

namespace A126966.P12794021674090702556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028329 n - A082590 n

end

end A126966.P12794021674090702556

noncomputable section

/-- A126966: Expansion of sqrt(1 - 4*x)/(1 - 2*x).

Offset 0, canonical program `A126966.P12794021674090702556`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A082590, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A126966 (n : ℕ) : ℤ :=
  A126966.P12794021674090702556.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A082590, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A126966.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A126988.P9816827205040377566

`A010766(n+1)*A051731(n+1)`
-/

namespace A126988.P9816827205040377566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (n + 1) * A051731 (n + 1)

end

end A126988.P9816827205040377566

noncomputable section

/-- A126988: Triangle read by rows: T(n,k) = n/k if k is a divisor of n; T(n,k) = 0 if k is not a divisor of n (1 <= k <= n).

Offset 1, canonical program `A126988.P9816827205040377566`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A126988 (n : ℕ) : ℤ :=
  A126988.P9816827205040377566.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A126988.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127118.P4587657049897229788

`A000040(n+1)*A018252(n+1)`
-/

namespace A127118.P4587657049897229788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A018252 (n + 1)

end

end A127118.P4587657049897229788

noncomputable section

/-- A127118: a(n) = n-th prime * n-th nonprime.

Offset 1, canonical program `A127118.P4587657049897229788`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A127118 (n : ℕ) : ℤ :=
  A127118.P4587657049897229788.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A127118.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A127149.P11956640148928272579

`record[(A001748(n+1)/3)%(n+1)]`
-/

namespace A127149.P11956640148928272579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A001748 (n + 1) : ℚ) / 3)) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127149.P11956640148928272579

noncomputable section

/-- A127149: Records in A004648.

Offset 1, canonical program `A127149.P11956640148928272579`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1872 terms. -/
def A127149 (n : ℕ) : ℤ :=
  A127149.P11956640148928272579.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1872 terms. -/
def A127149.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A082513.P14151738527547448767

`A000720(n+1)-A000005(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A082513.P14151738527547448767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) - A000005 (n + 1)

end

end A082513.P14151738527547448767

noncomputable section

/-- A082513: a(n)=A000720(n)-A000005(n).

Offset 1, canonical program `A082513.P14151738527547448767`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000720(n+1)-A000005(n+1)` (program `A082513.P14151738527547448767`, by `A082513.P14151738527547448767.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A082513 (n : ℕ) : ℤ :=
  A082513.P14151738527547448767.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000720(n+1)-A000005(n+1)` (program `A082513.P14151738527547448767`, by `A082513.P14151738527547448767.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A082513.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A082514.P13229630575248176506

`A000720(n+1)+A000005(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A082514.P13229630575248176506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) + A000005 (n + 1)

end

end A082514.P13229630575248176506

noncomputable section

/-- A082514: a(n) = pi(n) + tau(n).

Offset 1, canonical program `A082514.P13229630575248176506`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000720(n+1)+A000005(n+1)` (program `A082514.P13229630575248176506`, by `A082514.P13229630575248176506.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A082514 (n : ℕ) : ℤ :=
  A082514.P13229630575248176506.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000720(n+1)+A000005(n+1)` (program `A082514.P13229630575248176506`, by `A082514.P13229630575248176506.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A082514.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A082649.P333713981762825280

`A156308(A038722(n+1))*A262616(n)`
-/

namespace A082649.P333713981762825280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156308 (A038722 (n + 1)).toNat * A262616 n

end

end A082649.P333713981762825280

noncomputable section

/-- A082649: Triangle of coefficients in expansion of sinh^2(n*x) in powers of sinh(x).

Offset 1, canonical program `A082649.P333713981762825280`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8814 terms. -/
def A082649 (n : ℕ) : ℤ :=
  A082649.P333713981762825280.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8814 terms. -/
def A082649.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082767.P5981552388376772469

`a(n-1)+1+A001221(n+1)` with `a(0)=1`
-/

namespace A082767.P5981552388376772469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 1 + A001221 (n + 1)

end

end A082767.P5981552388376772469

noncomputable section

/-- A082767: Number of edges in the prime graph.

Offset 1, canonical program `A082767.P5981552388376772469`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A082767 (n : ℕ) : ℤ :=
  A082767.P5981552388376772469.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A082767.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A082863.P15401385756754220590

`A001221((n+2)²-1)`
-/

namespace A082863.P15401385756754220590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 ((n + 2) ^ 2 - 1)

end

end A082863.P15401385756754220590

noncomputable section

/-- A082863: Number of distinct prime factors of n^2-1.

Offset 2, canonical program `A082863.P15401385756754220590`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A082863 (n : ℕ) : ℤ :=
  A082863.P15401385756754220590.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A082863.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A082916.P8694465094910218775

`record[A093527(n)-A000007(n)]`
-/

namespace A082916.P8694465094910218775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093527 n - A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082916.P8694465094910218775

noncomputable section

/-- A082916: Numbers k such that k and binomial(2*k, k) are relatively prime.

Offset 1, canonical program `A082916.P8694465094910218775`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1735 terms. -/
def A082916 (n : ℕ) : ℤ :=
  A082916.P8694465094910218775.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1735 terms. -/
def A082916.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082996.P7263893020435632494

`∑[A101637(n+1)]`
-/

namespace A082996.P7263893020435632494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101637 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082996.P7263893020435632494

noncomputable section

/-- A082996: a(n) = card{ x <= n : bigomega(x) = 4 }.

Offset 1, canonical program `A082996.P7263893020435632494`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082996 (n : ℕ) : ℤ :=
  A082996.P7263893020435632494.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082996.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083019.P18134695761732974330

`A000005(A104714(n+1))`
-/

namespace A083019.P18134695761732974330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A104714 (n + 1)).toNat

end

end A083019.P18134695761732974330

noncomputable section

/-- A083019: Number of common divisors of n and F(n) where F(n) denotes the n-th Fibonacci number.

Offset 1, canonical program `A083019.P18134695761732974330`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A083019 (n : ℕ) : ℤ :=
  A083019.P18134695761732974330.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A083019.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A083271.P13992173363591196257

`(n+1)*A000005(n+1)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A083271.P13992173363591196257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000005 (n + 1) + 1

end

end A083271.P13992173363591196257

noncomputable section

/-- A083271: a(n) = n*tau(n) + 1.

Offset 1, canonical program `A083271.P13992173363591196257`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*A000005(n+1)+1` (program `A083271.P13992173363591196257`, by `A083271.P13992173363591196257.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A083271 (n : ℕ) : ℤ :=
  A083271.P13992173363591196257.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*A000005(n+1)+1` (program `A083271.P13992173363591196257`, by `A083271.P13992173363591196257.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A083271.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A083272.P5000618419740904812

`n*A000005(a(n-1))+1` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A083272.P5000618419740904812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * A000005 (a (n - 1)).toNat + 1

end

end A083272.P5000618419740904812

noncomputable section

/-- A083272: a(n) = n*tau(a(n-1)) + 1 = n*A000005(a(n-1)) + 1, a(0) = 1.

Offset 0, canonical program `A083272.P5000618419740904812`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*A000005(a(n-1))+1` (program `A083272.P5000618419740904812`, by `A083272.P5000618419740904812.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A083272 (n : ℕ) : ℤ :=
  A083272.P5000618419740904812.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*A000005(a(n-1))+1` (program `A083272.P5000618419740904812`, by `A083272.P5000618419740904812.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A083272.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A083719.P11346569596693783378

`n*∑[A158611(n+1)]`
-/

namespace A083719.P11346569596693783378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A083719.P11346569596693783378

noncomputable section

/-- A083719: a(n) = n * [1 + sum(k=1 to n-1) prime(k)].

Offset 0, canonical program `A083719.P11346569596693783378`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083719 (n : ℕ) : ℤ :=
  A083719.P11346569596693783378.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083719.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083866.P1354389941836142156

`eq[0, A323908(n)]`
-/

namespace A083866.P1354389941836142156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323908 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A083866.P1354389941836142156

noncomputable section

/-- A083866: Positions of zeros in Per Nørgård's infinity sequence (A004718).

Offset 0, canonical program `A083866.P1354389941836142156`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5227 terms. -/
def A083866 (n : ℕ) : ℤ :=
  (A083866.P1354389941836142156.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5227 terms. -/
def A083866.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084296.P9456878335841744486

`A001221(A002110(row(n)+1)+col(n))`
-/

namespace A084296.P9456878335841744486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A002110 (SequenceMachineLib.triRow n + 1) + (SequenceMachineLib.triCol n : ℤ)).toNat

end

end A084296.P9456878335841744486

noncomputable section

/-- A084296: Triangle read by rows: T(n,k) = omega(prime(n)#+k) where prime(n)# is the n-th primorial (A002110) and omega is the number of distinct prime factors (A001221), 0 <= k < n.

Offset 1, canonical program `A084296.P9456878335841744486`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A084296 (n : ℕ) : ℤ :=
  A084296.P9456878335841744486.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A084296.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A084302.P16315070894676843448

`A000005(n+1)%6`
-/

namespace A084302.P16315070894676843448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (n + 1)) 6

end

end A084302.P16315070894676843448

noncomputable section

/-- A084302: Remainder of tau(n) modulo 6.

Offset 1, canonical program `A084302.P16315070894676843448`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A084302 (n : ℕ) : ℤ :=
  A084302.P16315070894676843448.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A084302.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A084400.P13046145720619798035

`record[n*A302777(n+1)+1]`
-/

namespace A084400.P13046145720619798035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A302777 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084400.P13046145720619798035

noncomputable section

/-- A084400: a(1) = 1; for n>1, a(n) = smallest number that does not divide the product of all previous terms.

Offset 1, canonical program `A084400.P13046145720619798035`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6607 terms. -/
def A084400 (n : ℕ) : ℤ :=
  A084400.P13046145720619798035.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6607 terms. -/
def A084400.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084471.P2112546054661529381

`A088697(n+1)-A124108(A035327(n+1))`
-/

namespace A084471.P2112546054661529381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088697 (n + 1) - A124108 (A035327 (n + 1)).toNat

end

end A084471.P2112546054661529381

noncomputable section

/-- A084471: Change 0 to 00 in binary representation of n.

Offset 1, canonical program `A084471.P2112546054661529381`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A084471 (n : ℕ) : ℤ :=
  A084471.P2112546054661529381.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A084471.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A084916.P17538053219360215237

`eq[1, char[A120865(n+1)]]`
-/

namespace A084916.P17538053219360215237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120865 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A084916.P17538053219360215237

noncomputable section

/-- A084916: Positive numbers of the form k = x^2 - 3*y^2.

Offset 1, canonical program `A084916.P17538053219360215237`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1315 terms. -/
def A084916 (n : ℕ) : ℤ :=
  (A084916.P17538053219360215237.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1315 terms. -/
def A084916.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084950.P11041438467242688939

`A011973(n)²*A082375(n)!`
-/

namespace A084950.P11041438467242688939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011973 n ^ 2 * (Nat.factorial (A082375 n).toNat : ℤ)

end

end A084950.P11041438467242688939

noncomputable section

/-- A084950: Array of coefficients of denominator polynomials of the n-th approximation of the continued fraction x/(1+x/(2+x/(3+..., related to Laguerre polynomial coefficients.

Offset 0, canonical program `A084950.P11041438467242688939`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1260 terms. -/
def A084950 (n : ℕ) : ℤ :=
  A084950.P11041438467242688939.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1260 terms. -/
def A084950.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085769.P15824904913732760678

`A253638(n+1)+A027870(n+1)`
-/

namespace A085769.P15824904913732760678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253638 (n + 1) + A027870 (n + 1)

end

end A085769.P15824904913732760678

noncomputable section

/-- A085769: Total number of zeros in the decimal expansions of 2^n and 5^n.

Offset 1, canonical program `A085769.P15824904913732760678`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A085769 (n : ℕ) : ℤ :=
  A085769.P15824904913732760678.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A085769.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085981.P2489929017691195311

`val(A101987(n+1), 7)`
-/

namespace A085981.P2489929017691195311
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A101987 (n + 1)).toNat 7

end

end A085981.P2489929017691195311

noncomputable section

/-- A085981: Number of 7's in decimal expansion of prime(n).

Offset 1, canonical program `A085981.P2489929017691195311`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085981 (n : ℕ) : ℤ :=
  (A085981.P2489929017691195311.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085981.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085982.P15034443967157609974

`∑{digits}[A000040(n+1), A253638(#)]`
-/

namespace A085982.P15034443967157609974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A253638 x).sum

end

end A085982.P15034443967157609974

noncomputable section

/-- A085982: Number of 8's in decimal expansion of prime(n).

Offset 1, canonical program `A085982.P15034443967157609974`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085982 (n : ℕ) : ℤ :=
  A085982.P15034443967157609974.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085982.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086096.P6781603370646093491

`lt[2, A105700(A000120(n))*A105700(n)]`
-/

namespace A086096.P6781603370646093491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A000120 n).toNat * A105700 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A086096.P6781603370646093491

noncomputable section

/-- A086096: Semiprimes with a semiprime number of 1's in their binary representation.

Offset 1, canonical program `A086096.P6781603370646093491`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1045 terms. -/
def A086096 (n : ℕ) : ℤ :=
  (A086096.P6781603370646093491.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1045 terms. -/
def A086096.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086246.P7157768835649708098

`A168049(C(2, n)+n)`
-/

namespace A086246.P7157768835649708098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168049 (Nat.choose 2 n + n)

end

end A086246.P7157768835649708098

noncomputable section

/-- A086246: Expansion of (1 + x - sqrt(1 - 2*x - 3*x^2)) / 2 in powers of x.

Offset 0, canonical program `A086246.P7157768835649708098`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. -/
def A086246 (n : ℕ) : ℤ :=
  A086246.P7157768835649708098.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. -/
def A086246.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086369.P7849830304355826184

`2*A000005(n+1)+(n+1)%2-2`
-/

namespace A086369.P7849830304355826184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000005 (n + 1) + (((n + 1) % 2 : ℕ) : ℤ) - 2

end

end A086369.P7849830304355826184

noncomputable section

/-- A086369: Number of factors over Q in the factorization of T_n(x) - 1 where T_n(x) is the Chebyshev polynomial of the first kind.

Offset 1, canonical program `A086369.P7849830304355826184`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A086369 (n : ℕ) : ℤ :=
  A086369.P7849830304355826184.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A086369.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A086398.P7357814214744844564

`A284753(n+1)-1`
-/

namespace A086398.P7357814214744844564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284753 (n + 1) - 1

end

end A086398.P7357814214744844564

noncomputable section

/-- A086398: a(1)=1; a(n)=a(n-1)+2 if n is in the sequence; a(n)=a(n-1)+2 if n and (n-1) are not in the sequence; a(n)=a(n-1)+4 if n is not in the sequence but (n-1) is in the sequence.

Offset 1, canonical program `A086398.P7357814214744844564`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284753, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A086398 (n : ℕ) : ℤ :=
  A086398.P7357814214744844564.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284753, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A086398.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A086670.P715310048333815188

`A286015(n+1)-A000593(n+1)`
-/

namespace A086670.P715310048333815188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286015 (n + 1) - A000593 (n + 1)

end

end A086670.P715310048333815188

noncomputable section

/-- A086670: Sum of floor(d/2) where d is a divisor of n.

Offset 1, canonical program `A086670.P715310048333815188`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A286015, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A086670 (n : ℕ) : ℤ :=
  A086670.P715310048333815188.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A286015, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A086670.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A086905.P17367873536697088158

`Δ[A174783(n)]`
-/

namespace A086905.P17367873536697088158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174783 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A086905.P17367873536697088158

noncomputable section

/-- A086905: a(n) = Sum_{k=0..n} (-1)^(n-k)*binomial(k,floor(k/2)).

Offset 0, canonical program `A086905.P17367873536697088158`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A086905 (n : ℕ) : ℤ :=
  A086905.P17367873536697088158.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A086905.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087245.P3262090180692247072

`record[A105570(A005101(n+1))]`
-/

namespace A087245.P3262090180692247072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (A005101 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087245.P3262090180692247072

noncomputable section

/-- A087245: Nonsquarefree abundant numbers.

Offset 1, canonical program `A087245.P3262090180692247072`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7795 terms. -/
def A087245 (n : ℕ) : ℤ :=
  A087245.P3262090180692247072.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7795 terms. -/
def A087245.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087801.P5296454190648317197

`gcd(A000203(n+1)+A000005(n+1), A000203(n+1)*A000005(n+1))`
-/

namespace A087801.P5296454190648317197
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (n + 1) + A000005 (n + 1)) (A000203 (n + 1) * A000005 (n + 1))

end

end A087801.P5296454190648317197

noncomputable section

/-- A087801: Greatest common divisor of tau(n)+sigma(n) and tau(n)*sigma(n), where tau = A000005 and sigma = A000203.

Offset 1, canonical program `A087801.P5296454190648317197`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A087801 (n : ℕ) : ℤ :=
  (A087801.P5296454190648317197.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A087801.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A088434.P6459778276779683770

`∑{d}[n+1, A152467(A014681(A000005(#)+1))]`
-/

namespace A088434.P6459778276779683770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A152467 (A014681 (A000005 d + 1).toNat).toNat

end

end A088434.P6459778276779683770

noncomputable section

/-- A088434: Number of ways to write n as n = u*v*w with 1 <= u < v < w.

Offset 1, canonical program `A088434.P6459778276779683770`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088434 (n : ℕ) : ℤ :=
  A088434.P6459778276779683770.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088434.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088482.P5121561930417053920

`(n+1)*A000005(gcd(n+2, (2-n)²))-(n-3)`
-/

namespace A088482.P5121561930417053920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000005 (Int.gcd (n + 2 : ℤ) ((2 - (n : ℤ)) ^ 2)) - ((n : ℤ) - 3)

end

end A088482.P5121561930417053920

noncomputable section

/-- A088482: a(n) = Sum_{k=1..4} floor(p(n,k) / p(n-1,k)) where p(n,k) = n! / (n-floor(n/2^k))!.

Offset 2, canonical program `A088482.P5121561930417053920`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9007 terms. -/
def A088482 (n : ℕ) : ℤ :=
  A088482.P5121561930417053920.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9007 terms. -/
def A088482.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088517.P6831708866838311153

`A001462(n+2)-A001462(n+1)`
-/

namespace A088517.P6831708866838311153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (n + 2) - A001462 (n + 1)

end

end A088517.P6831708866838311153

noncomputable section

/-- A088517: First differences of Golomb's sequence.

Offset 1, canonical program `A088517.P6831708866838311153`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A088517 (n : ℕ) : ℤ :=
  A088517.P6831708866838311153.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A088517.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A088526.P8703883917156406737

`A061017(n+1)-A000720(n+1)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A088526.P8703883917156406737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061017 (n + 1) - A000720 (n + 1) - 1

end

end A088526.P8703883917156406737

noncomputable section

/-- A088526: a(n) = A061017(n) - pi(n) - 1.

Offset 1, canonical program `A088526.P8703883917156406737`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061017, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A088526 (n : ℕ) : ℤ :=
  A088526.P8703883917156406737.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061017, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A088526.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A088555.P9450136171362117309

`5*A023219(n+1)+6`
-/

namespace A088555.P9450136171362117309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A023219 (n + 1) + 6

end

end A088555.P9450136171362117309

noncomputable section

/-- A088555: Primes of the form 5*p + 6 where p is a prime.

Offset 1, canonical program `A088555.P9450136171362117309`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023219, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A088555 (n : ℕ) : ℤ :=
  A088555.P9450136171362117309.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023219, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A088555.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A088922.P11172242905826586929

`A000005(n+1)+A110654(n+1)-2`
-/

namespace A088922.P11172242905826586929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + A110654 (n + 1) - 2

end

end A088922.P11172242905826586929

noncomputable section

/-- A088922: Consider the n X n matrix with entries (i*j mod n), where i,j=0..n-1; a(n) = rank of this matrix over the real numbers.

Offset 1, canonical program `A088922.P11172242905826586929`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A088922 (n : ℕ) : ℤ :=
  A088922.P11172242905826586929.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A088922.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A089398.P14975224840772739470

`A000120(A103530(n+3)-1)`
-/

namespace A089398.P14975224840772739470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A103530 (n + 3) - 1).toNat

end

end A089398.P14975224840772739470

noncomputable section

/-- A089398: a(n) = n-th column sum of binary digits of k*2^(k-1), where summation is over k>=1, without carrying between columns.

Offset 1, canonical program `A089398.P14975224840772739470`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A089398 (n : ℕ) : ℤ :=
  A089398.P14975224840772739470.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A089398.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089443.P3212227870292618403

`p?[A110801(n+1)-1]`
-/

namespace A089443.P3212227870292618403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110801 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089443.P3212227870292618403

noncomputable section

/-- A089443: Primes p such that 12*p + 13 is prime.

Offset 1, canonical program `A089443.P3212227870292618403`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 999 terms. -/
def A089443 (n : ℕ) : ℤ :=
  A089443.P3212227870292618403.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 999 terms. -/
def A089443.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089632.P9401451600053536138

`eq[0, val(A000005(A007947(n+1)+1), 2)]+1`
-/

namespace A089632.P9401451600053536138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000005 (A007947 (n + 1) + 1).toNat).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A089632.P9401451600053536138

noncomputable section

/-- A089632: 1 + product of prime factors of n is a perfect square.

Offset 1, canonical program `A089632.P9401451600053536138`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. -/
def A089632 (n : ℕ) : ℤ :=
  (A089632.P9401451600053536138.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. -/
def A089632.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A090161.P15352132429270474360

`A000720(A023219(n+1))`
-/

namespace A090161.P15352132429270474360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A023219 (n + 1)).toNat

end

end A090161.P15352132429270474360

noncomputable section

/-- A090161: A023219 indexed by A000040.

Offset 1, canonical program `A090161.P15352132429270474360`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023219, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A090161 (n : ℕ) : ℤ :=
  A090161.P15352132429270474360.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023219, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A090161.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A090634.P4273808198060522228

`A131135(n+1)/2`
-/

namespace A090634.P4273808198060522228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131135 (n + 1) : ℚ) / 2

end

end A090634.P4273808198060522228

noncomputable section

/-- A090634: Start with the sequence [1, 1/2, 1/3, ..., 1/n]; form new sequence of n-1 terms by taking averages of successive terms; repeat until reach a single number F(n); a(n) = denominator of F(n).

Offset 1, canonical program `A090634.P4273808198060522228`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A131135, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A090634 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A090634.P4273808198060522228.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A131135, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A090634.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A090648.P4535664779753439945

`A002450(n)/A177735(n)`
-/

namespace A090648.P4535664779753439945
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002450 n : ℚ) / (A177735 n : ℚ)

end

end A090648.P4535664779753439945

noncomputable section

/-- A090648: a(n)=2*(4^n-1)/denominator(B(2n)) where B(k) denotes the k-th Bernoulli number.

Offset 0, canonical program `A090648.P4535664779753439945`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A090648 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A090648.P4535664779753439945.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A090648.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A090736.P14073947983549201074

`∑[floor(atan(A000095(n+1)))]`
-/

namespace A090736.P14073947983549201074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (A000095 (n + 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090736.P14073947983549201074

noncomputable section

/-- A090736: Number of positive integers <= n that can be expressed as a sum of 2 coprime squares > 0.

Offset 1, canonical program `A090736.P14073947983549201074`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A090736 (n : ℕ) : ℤ :=
  A090736.P14073947983549201074.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A090736.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091178.P17670734462985012813

`∪[A160592(n+1), A160594(n+1)]`
-/

namespace A091178.P17670734462985012813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160592 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A091178.P17670734462985012813

noncomputable section

/-- A091178: Numbers k such that k-th prime is of the form 6*m+1.

Offset 1, canonical program `A091178.P17670734462985012813`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091178 (n : ℕ) : ℤ :=
  (A091178.P17670734462985012813.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091178.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091237.P6770545350464896014

`Δ[eq[0, A088705(A181346(n))]]`
-/

namespace A091237.P6770545350464896014
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 (A181346 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A091237.P6770545350464896014

noncomputable section

/-- A091237: Lengths of runs in A039702.

Offset 1, canonical program `A091237.P6770545350464896014`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5861 terms. -/
def A091237 (n : ℕ) : ℤ :=
  A091237.P6770545350464896014.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5861 terms. -/
def A091237.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091626.P11682952649921451722

`a(n-1)+ceil(A000005(n)/2)+1` with `a(0)=1, a(1)=2`
-/

namespace A091626.P11682952649921451722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + ⌈(A000005 n : ℚ) / 2⌉ + 1

end

end A091626.P11682952649921451722

noncomputable section

/-- A091626: Number of ordered integer pairs (b,c) with 0 <= b, c <= n such that both roots of x^2+bx+c=0 are integers.

Offset 0, canonical program `A091626.P11682952649921451722`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A091626 (n : ℕ) : ℤ :=
  A091626.P11682952649921451722.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A091626.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A091699.P9918362873456629507

`xor(-A138415(n), A033999(n))`
-/

namespace A091699.P9918362873456629507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-A138415 n) (A033999 n)

end

end A091699.P9918362873456629507

noncomputable section

/-- A091699: Row sums of triangle A091698.

Offset 0, canonical program `A091699.P9918362873456629507`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 150 terms. -/
def A091699 (n : ℕ) : ℤ :=
  A091699.P9918362873456629507.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 150 terms. -/
def A091699.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091785.P17722584434212151531

`A036554(2*(n+1))/2`
-/

namespace A091785.P17722584434212151531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036554 (2 * (n + 1)) : ℚ) / 2

end

end A091785.P17722584434212151531

noncomputable section

/-- A091785: Evil numbers (see A001969) in A003159.

Offset 1, canonical program `A091785.P17722584434212151531`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A036554, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A091785 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A091785.P17722584434212151531.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A036554, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A091785.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A092053.P1951445893658287448

`2^A092054(n+1)-A001902(n+1)`
-/

namespace A092053.P1951445893658287448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A092054 (n + 1) : ℤ) - (A001902 (n + 1) : ℚ)

end

end A092053.P1951445893658287448

noncomputable section

/-- A092053: Denominators of the convergents of the continued fraction expansion [1;1/2,1/3,1/4,...,1/n,...].

Offset 1, canonical program `A092053.P1951445893658287448`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001902, A092054, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A092053 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A092053.P1951445893658287448.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001902, A092054, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A092053.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A092344.P13515634055615059972

`A092347(n)-∑{d}[n, #]`
-/

namespace A092344.P13515634055615059972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092347 n - ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)

end

end A092344.P13515634055615059972

noncomputable section

/-- A092344: a(0)=1; a(n) = sigma_2(n) + sigma_3(n).

Offset 0, canonical program `A092344.P13515634055615059972`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092344 (n : ℕ) : ℤ :=
  A092344.P13515634055615059972.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092344.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092401.P10773884446493401631

`A007417(A008619(n))*A010684(n)`
-/

namespace A092401.P10773884446493401631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007417 (A008619 n).toNat * A010684 n

end

end A092401.P10773884446493401631

noncomputable section

/-- A092401: List of pairs n, 3n, where n is the least unused number so far.

Offset 1, canonical program `A092401.P10773884446493401631`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092401 (n : ℕ) : ℤ :=
  A092401.P10773884446493401631.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092401.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092405.P13454232516479669845

`A000005(n+1)+A000005(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A092405.P13454232516479669845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + A000005 (n + 2)

end

end A092405.P13454232516479669845

noncomputable section

/-- A092405: a(n) = tau(n) + tau(n+1), where tau(n) = A000005(n), the number of divisors of n.

Offset 1, canonical program `A092405.P13454232516479669845`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(n+1)+A000005(n+2)` (program `A092405.P13454232516479669845`, by `A092405.P13454232516479669845.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A092405 (n : ℕ) : ℤ :=
  A092405.P13454232516479669845.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(n+1)+A000005(n+2)` (program `A092405.P13454232516479669845`, by `A092405.P13454232516479669845.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A092405.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A092433.P2656392453258521260

`∪[A011537(n+1), 7*(n+1)]`
-/

namespace A092433.P2656392453258521260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011537 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A092433.P2656392453258521260

noncomputable section

/-- A092433: Positive numbers from the children's game "Buzz" or "Sevens": positive integers which are divisible by seven, or which contain a seven as a digit.

Offset 1, canonical program `A092433.P2656392453258521260`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092433 (n : ℕ) : ℤ :=
  (A092433.P2656392453258521260.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092433.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092451.P11472134814657966417

`comp[or(1, A052404(n+1))]`
-/

namespace A092451.P11472134814657966417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A052404 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A092451.P11472134814657966417

noncomputable section

/-- A092451: Numbers that either contain the digit 2 or are divisible by 2.

Offset 0, canonical program `A092451.P11472134814657966417`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092451 (n : ℕ) : ℤ :=
  (A092451.P11472134814657966417.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092451.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092454.P5847463884604930939

`∪[5*n, A011535(n+1)]`
-/

namespace A092454.P5847463884604930939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A092454.P5847463884604930939

noncomputable section

/-- A092454: Numbers that either contain the digit 5 or are divisible by 5.

Offset 0, canonical program `A092454.P5847463884604930939`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092454 (n : ℕ) : ℤ :=
  (A092454.P5847463884604930939.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092454.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092455.P1329306576228413859

`∪[A011536(n+1), 6*n]`
-/

namespace A092455.P1329306576228413859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011536 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A092455.P1329306576228413859

noncomputable section

/-- A092455: Numbers that either contain the digit 6 or are divisible by 6.

Offset 0, canonical program `A092455.P1329306576228413859`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092455 (n : ℕ) : ℤ :=
  (A092455.P1329306576228413859.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092455.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092456.P17302602622088378195

`∪[8*n, A011538(n+1)]`
-/

namespace A092456.P17302602622088378195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011538 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A092456.P17302602622088378195

noncomputable section

/-- A092456: Numbers that either contain the digit 8 or are divisible by 8.

Offset 0, canonical program `A092456.P17302602622088378195`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092456 (n : ℕ) : ℤ :=
  (A092456.P17302602622088378195.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092456.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092517.P9070741636698541799

`A000005((n+1)*(n+2))`
-/

namespace A092517.P9070741636698541799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((n + 1) * (n + 2))

end

end A092517.P9070741636698541799

noncomputable section

/-- A092517: Product of tau values for consecutive integers.

Offset 1, canonical program `A092517.P9070741636698541799`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A092517 (n : ℕ) : ℤ :=
  A092517.P9070741636698541799.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A092517.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A092523.P10829292723473762999

`A001221(2*n+1)`
-/

namespace A092523.P10829292723473762999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (2 * n + 1)

end

end A092523.P10829292723473762999

noncomputable section

/-- A092523: Number of distinct prime factors of n-th odd number.

Offset 1, canonical program `A092523.P10829292723473762999`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A092523 (n : ℕ) : ℤ :=
  A092523.P10829292723473762999.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A092523.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A092623.P15617629317689966350

`p?[A092625(n+1)]`
-/

namespace A092623.P15617629317689966350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092625 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092623.P15617629317689966350

noncomputable section

/-- A092623: Primes with exactly three prime digits.

Offset 1, canonical program `A092623.P15617629317689966350`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1096 terms. -/
def A092623 (n : ℕ) : ℤ :=
  A092623.P15617629317689966350.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1096 terms. -/
def A092623.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092865.P9800871042429563602

`A007318(A091995(n+1)-1)/A033999(A322832(n))`
-/

namespace A092865.P9800871042429563602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 (A091995 (n + 1) - 1).toNat : ℚ) / (A033999 (A322832 n).toNat : ℚ)

end

end A092865.P9800871042429563602

noncomputable section

/-- A092865: Nonzero elements in Klee's identity Sum[(-1)^k binomial[n,k]binomial[n+k,m],{k,0,n}] == (-1)^n binomial[n,m-n].

Offset 0, canonical program `A092865.P9800871042429563602`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5183 terms. -/
def A092865 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A092865.P9800871042429563602.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5183 terms. -/
def A092865.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A093515.P4013259352811988212

`lt[A323162(n+2), 1]+2`
-/

namespace A093515.P4013259352811988212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323162 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A093515.P4013259352811988212

noncomputable section

/-- A093515: Numbers k such that either k or k-1 is a prime.

Offset 1, canonical program `A093515.P4013259352811988212`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A093515 (n : ℕ) : ℤ :=
  (A093515.P4013259352811988212.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A093515.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A093811.P2245103281644187700

`∑{d}[n+1, A007954(#)]`
-/

namespace A093811.P2245103281644187700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007954 d

end

end A093811.P2245103281644187700

noncomputable section

/-- A093811: Sum of the digital products of the divisors of n.

Offset 1, canonical program `A093811.P2245103281644187700`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A093811 (n : ℕ) : ℤ :=
  A093811.P2245103281644187700.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A093811.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094021.P14788715465177345371

`A094040(A038722(n+1))`
-/

namespace A094021.P14788715465177345371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094040 (A038722 (n + 1)).toNat

end

end A094021.P14788715465177345371

noncomputable section

/-- A094021: Triangle read by rows: T(n,k) is the number of noncrossing forests with n vertices and k components (1<=k<=n).

Offset 1, canonical program `A094021.P14788715465177345371`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6670 terms. -/
def A094021 (n : ℕ) : ℤ :=
  A094021.P14788715465177345371.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6670 terms. -/
def A094021.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094222.P17658668068491929979

`a(n-1)+A001221(a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A094222.P17658668068491929979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + A001221 (a (n - 1)).toNat

end

end A094222.P17658668068491929979

noncomputable section

/-- A094222: a(n+1) = a(n) + (number of distinct prime factors of a(n)) for n>1; a(1)=1, a(2)=2.

Offset 1, canonical program `A094222.P17658668068491929979`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A094222 (n : ℕ) : ℤ :=
  A094222.P17658668068491929979.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A094222.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A094229.P9195071052336443656

`lt[n, A002387(A000005(n+1))]+1`
-/

namespace A094229.P9195071052336443656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002387 (A000005 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A094229.P9195071052336443656

noncomputable section

/-- A094229: Numbers k such that d(k) >= k-th harmonic number H(k) = Sum_{i=1..k} 1/i.

Offset 1, canonical program `A094229.P9195071052336443656`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A094229 (n : ℕ) : ℤ :=
  (A094229.P9195071052336443656.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A094229.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094405.P3151932794600885057

`floor(A066910(n+2)+acot(n))`
-/

namespace A094405.P3151932794600885057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A066910 (n + 2) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A094405.P3151932794600885057

noncomputable section

/-- A094405: a(1) = 1; a(n) = (sum of previous terms) mod n.

Offset 1, canonical program `A094405.P3151932794600885057`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A094405 (n : ℕ) : ℤ :=
  A094405.P3151932794600885057.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A094405.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094538.P4112405845201570244

`3^n-A019308(n)`
-/

namespace A094538.P4112405845201570244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - A019308 n

end

end A094538.P4112405845201570244

noncomputable section

/-- A094538: Number of ternary words of length n that are not "bifix-free".

Offset 0, canonical program `A094538.P4112405845201570244`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A019308, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A094538 (n : ℕ) : ℤ :=
  A094538.P4112405845201570244.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A019308, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A094538.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A094820.P5005010765945633983

`A211264(n+1)+A000196(n+1)`
-/

namespace A094820.P5005010765945633983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211264 (n + 1) + A000196 (n + 1)

end

end A094820.P5005010765945633983

noncomputable section

/-- A094820: Partial sums of A038548.

Offset 1, canonical program `A094820.P5005010765945633983`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A211264, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A094820 (n : ℕ) : ℤ :=
  A094820.P5005010765945633983.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A211264, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A094820.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A095345.P17455423609397731554

`gcd(3, A108103(n+1))`
-/

namespace A095345.P17455423609397731554
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A108103 (n + 1))

end

end A095345.P17455423609397731554

noncomputable section

/-- A095345: a(n) is the length of the n-th run in A095346.

Offset 1, canonical program `A095345.P17455423609397731554`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A095345 (n : ℕ) : ℤ :=
  (A095345.P17455423609397731554.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A095345.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095686.P4947105074170995595

`A000005(A000037(n+1))/2`
-/

namespace A095686.P4947105074170995595
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (A000037 (n + 1)).toNat : ℚ) / 2

end

end A095686.P4947105074170995595

noncomputable section

/-- A095686: Half the number of divisors of nonsquares (A000037).

Offset 1, canonical program `A095686.P4947105074170995595`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A095686 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A095686.P4947105074170995595.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A095686.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A095691.P1004978988256556663

`∏{e}[n+1, A230774(#²+1)]`
-/

namespace A095691.P1004978988256556663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A230774 (Nat.factorization (f1 n) p ^ 2 + 1)

end

end A095691.P1004978988256556663

noncomputable section

/-- A095691: Multiplicative with a(p^e) = A000720(e)+1.

Offset 1, canonical program `A095691.P1004978988256556663`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095691 (n : ℕ) : ℤ :=
  A095691.P1004978988256556663.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095691.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095711.P13774796746947022199

`A138115(A038722(n+1))`
-/

namespace A095711.P13774796746947022199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138115 (A038722 (n + 1)).toNat

end

end A095711.P13774796746947022199

noncomputable section

/-- A095711: Triangle of numbers obtained by reversing the first n digits of e and juxtaposing.

Offset 1, canonical program `A095711.P13774796746947022199`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A095711 (n : ℕ) : ℤ :=
  A095711.P13774796746947022199.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A095711.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095942.P15034568882361005307

`Δ[A138115(∑[n+1])]`
-/

namespace A095942.P15034568882361005307
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138115 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A095942.P15034568882361005307

noncomputable section

/-- A095942: Differences between adjacent digits of e.

Offset 1, canonical program `A095942.P15034568882361005307`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A095942 (n : ℕ) : ℤ :=
  A095942.P15034568882361005307.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A095942.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096026.P10109195778755460978

`A166931(record[A106612(n+1)])+4`
-/

namespace A096026.P10109195778755460978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166931 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 4

end

end A096026.P10109195778755460978

noncomputable section

/-- A096026: Numbers k such that (k+j) mod (2+j) = 1 for j from 0 to 8 and (k+9) mod 11 <> 1.

Offset 1, canonical program `A096026.P10109195778755460978`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9091 terms. -/
def A096026 (n : ℕ) : ℤ :=
  A096026.P10109195778755460978.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9091 terms. -/
def A096026.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096067.P16179009666601499113

`Δ[∪[A022330(n), A022331(n)]]-1`
-/

namespace A096067.P16179009666601499113
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022330 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022331 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1

end

end A096067.P16179009666601499113

noncomputable section

/-- A096067: Number of 3-smooth numbers between successive numbers that are powers of 2 or of 3.

Offset 1, canonical program `A096067.P16179009666601499113`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A096067 (n : ℕ) : ℤ :=
  A096067.P16179009666601499113.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A096067.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096457.P17542329655028534865

`Δ[A013632(n)]+2+n`
-/

namespace A096457.P17542329655028534865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2 + (n : ℤ)

end

end A096457.P17542329655028534865

noncomputable section

/-- A096457: If n is prime replace n with the next prime.

Offset 1, canonical program `A096457.P17542329655028534865`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A096457 (n : ℕ) : ℤ :=
  A096457.P17542329655028534865.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A096457.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A097902.P17574819608236868466

`A138114(A038722(n+1))*A138114(n+1)`
-/

namespace A097902.P17574819608236868466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138114 (A038722 (n + 1)).toNat * A138114 (n + 1)

end

end A097902.P17574819608236868466

noncomputable section

/-- A097902: Multiplication table of the digits of Pi read by antidiagonals.

Offset 0, canonical program `A097902.P17574819608236868466`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A097902 (n : ℕ) : ℤ :=
  A097902.P17574819608236868466.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A097902.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098357.P10267421569061637514

`A061017(n+1)-A000720(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A098357.P10267421569061637514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061017 (n + 1) - A000720 (n + 2)

end

end A098357.P10267421569061637514

noncomputable section

/-- A098357: a(n) = A061017(n) - pi(n+1).

Offset 1, canonical program `A098357.P10267421569061637514`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061017, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A098357 (n : ℕ) : ℤ :=
  A098357.P10267421569061637514.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061017, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A098357.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A098368.P456142889449428924

`A139261(A038722(n+1))*A139261(n+1)`
-/

namespace A098368.P456142889449428924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139261 (A038722 (n + 1)).toNat * A139261 (n + 1)

end

end A098368.P456142889449428924

noncomputable section

/-- A098368: Multiplication table of the digits of the Euler-Mascheroni constant read by antidiagonals.

Offset 0, canonical program `A098368.P456142889449428924`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A098368 (n : ℕ) : ℤ :=
  A098368.P456142889449428924.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A098368.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098394.P8766548074756510504

`A011540(n+1)+A000007(n)`
-/

namespace A098394.P8766548074756510504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011540 (n + 1) + A000007 n

end

end A098394.P8766548074756510504

noncomputable section

/-- A098394: Next larger integer including the smallest digit of n.

Offset 1, canonical program `A098394.P8766548074756510504`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098394 (n : ℕ) : ℤ :=
  A098394.P8766548074756510504.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098394.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098599.P12823978919337779786

`A097807(n)*A100218(n)`
-/

namespace A098599.P12823978919337779786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A100218 n

end

end A098599.P12823978919337779786

noncomputable section

/-- A098599: Riordan array ((1+2*x)/(1+x), (1+x)).

Offset 0, canonical program `A098599.P12823978919337779786`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098599 (n : ℕ) : ℤ :=
  A098599.P12823978919337779786.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098599.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098736.P3684253920314267868

`n*A007954(n)`
-/

namespace A098736.P3684253920314267868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A007954 n

end

end A098736.P3684253920314267868

noncomputable section

/-- A098736: a(n) = product of n and all its digits.

Offset 0, canonical program `A098736.P3684253920314267868`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007954, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A098736 (n : ℕ) : ℤ :=
  A098736.P3684253920314267868.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007954, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A098736.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A098905.P4396143342972297058

`lt[1, A349447(n+1)]+1`
-/

namespace A098905.P4396143342972297058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349447 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A098905.P4396143342972297058

noncomputable section

/-- A098905: Odd numbers whose number of distinct prime factors is positive and even.

Offset 1, canonical program `A098905.P4396143342972297058`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A098905 (n : ℕ) : ℤ :=
  (A098905.P4396143342972297058.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A098905.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098988.P773780292752232534

`gcd(n, n/A353688(n)*a(n-1))` with `a(0)=1`
-/

namespace A098988.P773780292752232534
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.gcd (n : ℤ) (SequenceMachineLib.roundAway ((n : ℚ) / (A353688 n : ℚ) * (a (n - 1) : ℚ)))

end

end A098988.P773780292752232534

noncomputable section

/-- A098988: Denominators in series expansion of log(Product_{m>=1} (1+q^m)).

Offset 0, canonical program `A098988.P773780292752232534`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098988 (n : ℕ) : ℤ :=
  (A098988.P773780292752232534.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098988.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099055.P11362990028236912789

`∑[A274010(2*n)]+2*n+1`
-/

namespace A099055.P11362990028236912789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274010 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 * n + 1 : ℤ)

end

end A099055.P11362990028236912789

noncomputable section

/-- A099055: A bisection of A054519.

Offset 0, canonical program `A099055.P11362990028236912789`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A099055 (n : ℕ) : ℤ :=
  A099055.P11362990028236912789.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A099055.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099265.P5234640297294895287

`∑[A056272(n+1)]`
-/

namespace A099265.P5234640297294895287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099265.P5234640297294895287

noncomputable section

/-- A099265: Partial sums of A056272.

Offset 1, canonical program `A099265.P5234640297294895287`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A099265 (n : ℕ) : ℤ :=
  A099265.P5234640297294895287.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A099265.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099454.P307280843929096596

`A131322(2*n+1)+2*A192232(2*(n+1))`
-/

namespace A099454.P307280843929096596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131322 (2 * n + 1) + 2 * A192232 (2 * (n + 1))

end

end A099454.P307280843929096596

noncomputable section

/-- A099454: A Chebyshev transform of A099453 associated to the knot 8_12.

Offset 0, canonical program `A099454.P307280843929096596`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 156 terms. -/
def A099454 (n : ℕ) : ℤ :=
  A099454.P307280843929096596.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 156 terms. -/
def A099454.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099774.P6953595514890795505

`A000005(2*n+1)`
-/

namespace A099774.P6953595514890795505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n + 1)

end

end A099774.P6953595514890795505

noncomputable section

/-- A099774: Number of divisors of 2*n-1.

Offset 1, canonical program `A099774.P6953595514890795505`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A099774 (n : ℕ) : ℤ :=
  A099774.P6953595514890795505.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A099774.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A099777.P11792433152824821401

`A000005(n+1)+A001227(n+1)`
-/

namespace A099777.P11792433152824821401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + A001227 (n + 1)

end

end A099777.P11792433152824821401

noncomputable section

/-- A099777: Number of divisors of 2n.

Offset 1, canonical program `A099777.P11792433152824821401`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A099777 (n : ℕ) : ℤ :=
  A099777.P11792433152824821401.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A099777.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A099812.P7682174187740935634

`A001221(2*(n+1))`
-/

namespace A099812.P7682174187740935634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (2 * (n + 1))

end

end A099812.P7682174187740935634

noncomputable section

/-- A099812: Number of distinct primes dividing 2n (i.e., omega(2n)).

Offset 1, canonical program `A099812.P7682174187740935634`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A099812 (n : ℕ) : ℤ :=
  A099812.P7682174187740935634.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A099812.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A099849.P9992613573656940042

`a(n-1)+A008480(n+1)` with `a(0)=1`
-/

namespace A099849.P9992613573656940042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A008480 (n + 1)

end

end A099849.P9992613573656940042

noncomputable section

/-- A099849: Partial sums of A008480.

Offset 1, canonical program `A099849.P9992613573656940042`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008480, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A099849 (n : ℕ) : ℤ :=
  A099849.P9992613573656940042.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008480, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A099849.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A099894.P11632390264748204457

`A048298(n+1)`
-/

namespace A099894.P11632390264748204457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048298 (n + 1)

end

end A099894.P11632390264748204457

noncomputable section

/-- A099894: XOR BINOMIAL transform of A038712.

Offset 0, canonical program `A099894.P11632390264748204457`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048298, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A099894 (n : ℕ) : ℤ :=
  A099894.P11632390264748204457.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048298, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A099894.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A099910.P17404540104649360656

`A001221((A000040(n+2)*(A000040(n+3)-1)+(A000040(n+2)-1)*A000040(n+3))/2)`
-/

namespace A099910.P17404540104649360656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway ((A000040 (n + 2) * (A000040 (n + 3) - 1) + (A000040 (n + 2) - 1) * A000040 (n + 3) : ℚ) / 2)).toNat

end

end A099910.P17404540104649360656

noncomputable section

/-- A099910: Number of distinct prime-factors of ((prime(n)*(prime(n+1)-1)+(prime(n)-1)*prime(n+1))/2).

Offset 2, canonical program `A099910.P17404540104649360656`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A099910 (n : ℕ) : ℤ :=
  A099910.P17404540104649360656.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A099910.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A100181.P3918827157118808602

`A120070(3*(n+1)-comp[n²]+1)`
-/

namespace A100181.P3918827157118808602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120070 ((3 * (n + 1) : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) + 1).toNat

end

end A100181.P3918827157118808602

noncomputable section

/-- A100181: Odd terms in A120070.

Offset 1, canonical program `A100181.P3918827157118808602`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100181 (n : ℕ) : ℤ :=
  A100181.P3918827157118808602.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100181.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100313.P12289164920810252229

`record[A081913(n)-A129953(n)]`
-/

namespace A100313.P12289164920810252229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081913 n - A129953 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100313.P12289164920810252229

noncomputable section

/-- A100313: Number of 4 X n binary matrices avoiding simultaneously the right angled numbered polyomino patterns (ranpp) (10;0) and (01;1).

Offset 0, canonical program `A100313.P12289164920810252229`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 309 terms. -/
def A100313 (n : ℕ) : ℤ :=
  A100313.P12289164920810252229.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 309 terms. -/
def A100313.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100565.P10112205214680248188

`(A000005((n+1)^3)+3*A000005(n+1)+2)/6`
-/

namespace A100565.P10112205214680248188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 ((n + 1) ^ 3) + 3 * A000005 (n + 1) + 2 : ℚ) / 6

end

end A100565.P10112205214680248188

noncomputable section

/-- A100565: a(n) = Card{(x,y,z) : x <= y <= z, x|n, y|n, z|n, gcd(x,y)=1, gcd(x,z)=1, gcd(y,z)=1}.

Offset 1, canonical program `A100565.P10112205214680248188`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A100565 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A100565.P10112205214680248188.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A100565.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A100577.P14492990794952470121

`2^(A000005(n+1)-1)`
-/

namespace A100577.P14492990794952470121
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000005 (n + 1) - 1 : ℤ)

end

end A100577.P14492990794952470121

noncomputable section

/-- A100577: Number of sets of divisors of n with an odd sum.

Offset 1, canonical program `A100577.P14492990794952470121`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A100577 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A100577.P14492990794952470121.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A100577.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A100587.P4523483955726030569

`2^A000005(n+1)-1`
-/

namespace A100587.P4523483955726030569
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000005 (n + 1) : ℤ) - 1

end

end A100587.P4523483955726030569

noncomputable section

/-- A100587: Number of nonempty subsets of divisors of n.

Offset 1, canonical program `A100587.P4523483955726030569`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A100587 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A100587.P4523483955726030569.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A100587.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A100817.P14953118249749826166

`A007954(n)*2^A055642(n)`
-/

namespace A100817.P14953118249749826166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007954 n : ℚ) * (2 : ℚ) ^ (A055642 n : ℤ)

end

end A100817.P14953118249749826166

noncomputable section

/-- A100817: Product of the digits of n, each doubled.

Offset 0, canonical program `A100817.P14953118249749826166`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007954, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A100817 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A100817.P14953118249749826166.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007954, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A100817.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A101256.P5238482961276576930

`A000217(n+1)-A034387(n+1)-1`
-/

namespace A101256.P5238482961276576930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) - A034387 (n + 1) - 1

end

end A101256.P5238482961276576930

noncomputable section

/-- A101256: Sum of composites <= n.

Offset 1, canonical program `A101256.P5238482961276576930`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034387, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A101256 (n : ℕ) : ℤ :=
  A101256.P5238482961276576930.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034387, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A101256.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A101433.P9572966156324699386

`∑[∑[A164349(n)]]`
-/

namespace A101433.P9572966156324699386
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164349 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101433.P9572966156324699386

noncomputable section

/-- A101433: Partial sums of A101402.

Offset 0, canonical program `A101433.P9572966156324699386`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101433 (n : ℕ) : ℤ :=
  A101433.P9572966156324699386.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101433.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A102217.P13849092126645086030

`3*A289142(n+2)`
-/

namespace A102217.P13849092126645086030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A289142 (n + 2)

end

end A102217.P13849092126645086030

noncomputable section

/-- A102217: 3-Suzanne numbers; composite multiples of 3 whose sum of prime factors with multiplicity is a multiple of 3.

Offset 1, canonical program `A102217.P13849092126645086030`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A289142, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A102217 (n : ℕ) : ℤ :=
  A102217.P13849092126645086030.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A289142, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A102217.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A102319.P7762194831115780730

`A242586(n)+A097861(n)`
-/

namespace A102319.P7762194831115780730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242586 n + A097861 n

end

end A102319.P7762194831115780730

noncomputable section

/-- A102319: A mean binomial transform of the central binomial numbers.

Offset 0, canonical program `A102319.P7762194831115780730`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. -/
def A102319 (n : ℕ) : ℤ :=
  A102319.P7762194831115780730.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. -/
def A102319.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A102546.P3323875871467671533

`floor(A062800(n+1)/10)`
-/

namespace A102546.P3323875871467671533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A062800 (n + 1) : ℚ) / 10⌋

end

end A102546.P3323875871467671533

noncomputable section

/-- A102546: Numbers t such that t1 is prime and t is a multiple of 10.

Offset 1, canonical program `A102546.P3323875871467671533`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A102546 (n : ℕ) : ℤ :=
  A102546.P3323875871467671533.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A102546.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A102553.P12254408032347522241

`eq[A001221(n+1), A102550(n+1)]+1`
-/

namespace A102553.P12254408032347522241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102550 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A102553.P12254408032347522241

noncomputable section

/-- A102553: Numbers k such that for all prime-factors p: p = (k AND p), bitwise.

Offset 1, canonical program `A102553.P12254408032347522241`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1541 terms. -/
def A102553 (n : ℕ) : ℤ :=
  (A102553.P12254408032347522241.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1541 terms. -/
def A102553.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A102611.P8027776513147577979

`eq[2, A000005(A053743(n)+32)]`
-/

namespace A102611.P8027776513147577979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A053743 n + 32).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102611.P8027776513147577979

noncomputable section

/-- A102611: Numbers k such that the number k77 is prime.

Offset 1, canonical program `A102611.P8027776513147577979`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 233 terms. -/
def A102611 (n : ℕ) : ℤ :=
  (A102611.P8027776513147577979.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 233 terms. -/
def A102611.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A102721.P3616189499359060768

`A111312(n+2)-1`
-/

namespace A102721.P3616189499359060768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111312 (n + 2) - 1

end

end A102721.P3616189499359060768

noncomputable section

/-- A102721: Numbers n such that 11*n + 13 is prime.

Offset 1, canonical program `A102721.P3616189499359060768`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A102721 (n : ℕ) : ℤ :=
  A102721.P3616189499359060768.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A102721.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A102831.P13488618990207071454

`A216658(2*(n+1))+A216658(2*n+1)`
-/

namespace A102831.P13488618990207071454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216658 (2 * (n + 1)) + A216658 (2 * n + 1)

end

end A102831.P13488618990207071454

noncomputable section

/-- A102831: Number of n-digit 4th powers.

Offset 1, canonical program `A102831.P13488618990207071454`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 401 terms. -/
def A102831 (n : ℕ) : ℤ :=
  A102831.P13488618990207071454.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 401 terms. -/
def A102831.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A102885.P15050759352946611380

`abs(A086936(n+1)-A055672(n))`
-/

namespace A102885.P15050759352946611380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A086936 (n + 1) - A055672 n|

end

end A102885.P15050759352946611380

noncomputable section

/-- A102885: Index of n in the primes A000040 or nonprimes A141468.

Offset 0, canonical program `A102885.P15050759352946611380`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A102885 (n : ℕ) : ℤ :=
  A102885.P15050759352946611380.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A102885.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103164.P6788878018473161368

`∑[2*n]-A103390(n+1)`
-/

namespace A103164.P6788878018473161368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A103390 (n + 1)

end

end A103164.P6788878018473161368

noncomputable section

/-- A103164: Integers but with the primes squared.

Offset 0, canonical program `A103164.P6788878018473161368`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A103164 (n : ℕ) : ℤ :=
  A103164.P6788878018473161368.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A103164.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103444.P17671933729630594425

`2^A001221(C(row(n), col(n)))`
-/

namespace A103444.P17671933729630594425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A001221 (Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n)) : ℤ)

end

end A103444.P17671933729630594425

noncomputable section

/-- A103444: Triangle read by rows: T(n,k) is number of unitary divisors of C(n,k), 0<=k<=n.

Offset 0, canonical program `A103444.P17671933729630594425`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A103444 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A103444.P17671933729630594425.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A103444.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A103451.P2977452712529643699

`abs(A103452(n))`
-/

namespace A103451.P2977452712529643699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A103452 n|

end

end A103451.P2977452712529643699

noncomputable section

/-- A103451: Triangular array T read by rows: T(n, 0) = T(n, n) = 1, T(n, k) = 0 for 0 < k < n.

Offset 0, canonical program `A103451.P2977452712529643699`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A103451 (n : ℕ) : ℤ :=
  A103451.P2977452712529643699.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A103451.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103579.P11185176783327409651

`floor(p?[A294091(n+1)]/2)`
-/

namespace A103579.P11185176783327409651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 2⌋

end

end A103579.P11185176783327409651

noncomputable section

/-- A103579: Sophie Germain primes that are not Lucasian primes: primes p not 3 (mod 4) such that 2p + 1 is prime.

Offset 1, canonical program `A103579.P11185176783327409651`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A103579 (n : ℕ) : ℤ :=
  A103579.P11185176783327409651.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A103579.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103664.P16967067740305570785

`p?[lt[A274010(n), A274010(n+1)]]`
-/

namespace A103664.P16967067740305570785
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274010 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274010 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A103664.P16967067740305570785

noncomputable section

/-- A103664: Primes p such that the number of divisors of p-1 is less than the number of divisors of p+1.

Offset 1, canonical program `A103664.P16967067740305570785`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 554 terms. -/
def A103664 (n : ℕ) : ℤ :=
  (A103664.P16967067740305570785.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 554 terms. -/
def A103664.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103697.P1410882151425409104

`A103704(n+1)-abs(A187036(n))`
-/

namespace A103697.P1410882151425409104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103704 (n + 1) - |A187036 n|

end

end A103697.P1410882151425409104

noncomputable section

/-- A103697: Add 5 to each of the preceding digits, beginning with 0.

Offset 0, canonical program `A103697.P1410882151425409104`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2184 terms. -/
def A103697 (n : ℕ) : ℤ :=
  A103697.P1410882151425409104.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2184 terms. -/
def A103697.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103871.P16562096325091225650

`eq[2, A000005(A017377(10*n+6))]`
-/

namespace A103871.P16562096325091225650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A017377 (10 * n + 6)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A103871.P16562096325091225650

noncomputable section

/-- A103871: Numbers n such that 100n + 69 is prime.

Offset 1, canonical program `A103871.P16562096325091225650`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 235 terms. -/
def A103871 (n : ℕ) : ℤ :=
  (A103871.P16562096325091225650.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 235 terms. -/
def A103871.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104044.P9215107508309263018

`floor(A166547(n+1)/10)`
-/

namespace A104044.P9215107508309263018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A166547 (n + 1) : ℚ) / 10⌋

end

end A104044.P9215107508309263018

noncomputable section

/-- A104044: Numbers k such that 10*k + 7 is prime and k is a multiple of ten.

Offset 1, canonical program `A104044.P9215107508309263018`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104044 (n : ℕ) : ℤ :=
  A104044.P9215107508309263018.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104044.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104048.P4278246881923550054

`∩[A101471(n+1), A008592(n)]`
-/

namespace A104048.P4278246881923550054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104048.P4278246881923550054

noncomputable section

/-- A104048: Numbers k such that k11 is prime and k is a multiple of ten.

Offset 1, canonical program `A104048.P4278246881923550054`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1007 terms. -/
def A104048 (n : ℕ) : ℤ :=
  (A104048.P4278246881923550054.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1007 terms. -/
def A104048.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104211.P8119416011438240202

`eq[0, A055672(∑{digits}[n+1, #])]+1`
-/

namespace A104211.P8119416011438240202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A104211.P8119416011438240202

noncomputable section

/-- A104211: Integers n such that the sum of the digits of n is not prime.

Offset 1, canonical program `A104211.P8119416011438240202`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6990 terms. -/
def A104211 (n : ℕ) : ℤ :=
  (A104211.P8119416011438240202.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6990 terms. -/
def A104211.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104236.P4332644214263664855

`(n+1)*A001462(n+1)`
-/

namespace A104236.P4332644214263664855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001462 (n + 1)

end

end A104236.P4332644214263664855

noncomputable section

/-- A104236: n*Golomb's sequence.

Offset 1, canonical program `A104236.P4332644214263664855`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A104236 (n : ℕ) : ℤ :=
  A104236.P4332644214263664855.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A104236.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A104248.P3887207961911586058

`A026465(2*(n+1))`
-/

namespace A104248.P3887207961911586058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026465 (2 * (n + 1))

end

end A104248.P3887207961911586058

noncomputable section

/-- A104248: Lengths of successive runs of 1's in the Thue-Morse sequence A010060.

Offset 1, canonical program `A104248.P3887207961911586058`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026465, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A104248 (n : ℕ) : ℤ :=
  A104248.P3887207961911586058.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026465, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A104248.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A104278.P9462042051971576230

`lt[3, A175851(2*n+1)]`
-/

namespace A104278.P9462042051971576230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A104278.P9462042051971576230

noncomputable section

/-- A104278: Numbers m such that 2m+1 and 2m-1 are not primes.

Offset 1, canonical program `A104278.P9462042051971576230`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104278 (n : ℕ) : ℤ :=
  (A104278.P9462042051971576230.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104278.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104455.P423400711868344588

`A182401(n-1)+3*a(n-1)` with `a(0)=1`
-/

namespace A104455.P423400711868344588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A182401 (n - 1) + 3 * a (n - 1)

end

end A104455.P423400711868344588

noncomputable section

/-- A104455: Expansion of e.g.f. exp(5*x)*(BesselI(0,2*x) - BesselI(1,2*x)).

Offset 0, canonical program `A104455.P423400711868344588`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A104455 (n : ℕ) : ℤ :=
  A104455.P423400711868344588.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A104455.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105106.P14951231802033951928

`eq[2, A105192(n)]`
-/

namespace A105106.P14951231802033951928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105192 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A105106.P14951231802033951928

noncomputable section

/-- A105106: Numbers k such that the string k101 is prime.

Offset 1, canonical program `A105106.P14951231802033951928`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1682 terms. -/
def A105106 (n : ℕ) : ℤ :=
  (A105106.P14951231802033951928.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1682 terms. -/
def A105106.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105284.P487824979078133755

`A045690(2*n+2)`
-/

namespace A105284.P487824979078133755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045690 (2 * n + 2)

end

end A105284.P487824979078133755

noncomputable section

/-- A105284: a(n)/4^n is the measure of the subset of [0,1] remaining when all intervals of the form [b/2^m - 1/2^(2m+1), b/2^m + 1/2^(2m+1)] have been removed, with b and m positive integers, b

Offset 0, canonical program `A105284.P487824979078133755`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045690, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A105284 (n : ℕ) : ℤ :=
  A105284.P487824979078133755.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045690, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A105284.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A105348.P15431712592980947353

`A130253(n)-A130250(n)`
-/

namespace A105348.P15431712592980947353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130253 n - A130250 n

end

end A105348.P15431712592980947353

noncomputable section

/-- A105348: An indicator sequence for the Jacobsthal numbers.

Offset 0, canonical program `A105348.P15431712592980947353`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130250, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A105348 (n : ℕ) : ℤ :=
  A105348.P15431712592980947353.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130250, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A105348.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A105470.P16886314090569139671

`A175191(n+1)%2`
-/

namespace A105470.P16886314090569139671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175191 (n + 1)) 2

end

end A105470.P16886314090569139671

noncomputable section

/-- A105470: a(n)=1 if there is number of the form 6k+3 with prime(n) <= 6k+3 <= prime(n+1), otherwise 0.

Offset 1, canonical program `A105470.P16886314090569139671`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A105470 (n : ℕ) : ℤ :=
  A105470.P16886314090569139671.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A105470.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105551.P10952115211423103239

`A001221(n^3+n²+71)`
-/

namespace A105551.P10952115211423103239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n ^ 3 + n ^ 2 + 71)

end

end A105551.P10952115211423103239

noncomputable section

/-- A105551: Number of distinct prime factors of n^3 + n^2 + 71.

Offset 0, canonical program `A105551.P10952115211423103239`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A105551 (n : ℕ) : ℤ :=
  A105551.P10952115211423103239.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A105551.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A105555.P17886283271184042861

`A000040(A000005(n+1))`
-/

namespace A105555.P17886283271184042861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000005 (n + 1)).toNat

end

end A105555.P17886283271184042861

noncomputable section

/-- A105555: Let d = number of divisors of n; a(n) = d-th prime.

Offset 1, canonical program `A105555.P17886283271184042861`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A105555 (n : ℕ) : ℤ :=
  A105555.P17886283271184042861.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A105555.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A105696.P5414802746298820381

`A005774(A289207(n))+A005773(n)`
-/

namespace A105696.P5414802746298820381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005774 (A289207 n).toNat + A005773 n

end

end A105696.P5414802746298820381

noncomputable section

/-- A105696: Expansion of (1-x)/sqrt((1-3*x)/(1+x)).

Offset 0, canonical program `A105696.P5414802746298820381`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A105696 (n : ℕ) : ℤ :=
  A105696.P5414802746298820381.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A105696.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106270.P1693461683916901715

`A115140(C(comp[∑[n]]-n, 2)-n-char[∑[n-1]])`
-/

namespace A106270.P1693461683916901715
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115140 ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) - ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A106270.P1693461683916901715

noncomputable section

/-- A106270: Inverse of number triangle A106268; triangle T(n,k), 0 <= k <= n.

Offset 0, canonical program `A106270.P1693461683916901715`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106270 (n : ℕ) : ℤ :=
  A106270.P1693461683916901715.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106270.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106467.P10514879498467039191

`A087960(A025581(n))*A106468(n)`
-/

namespace A106467.P10514879498467039191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (A025581 n).toNat * A106468 n

end

end A106467.P10514879498467039191

noncomputable section

/-- A106467: Inverse of number triangle A106465.

Offset 0, canonical program `A106467.P10514879498467039191`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106467 (n : ℕ) : ℤ :=
  A106467.P10514879498467039191.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106467.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106760.P3707916924756019867

`∩[A061238(n+1), A062340(n+1)]`
-/

namespace A106760.P3707916924756019867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062340 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106760.P3707916924756019867

noncomputable section

/-- A106760: Primes with digit sum = 20.

Offset 1, canonical program `A106760.P3707916924756019867`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3130 terms. -/
def A106760 (n : ℕ) : ℤ :=
  (A106760.P3707916924756019867.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3130 terms. -/
def A106760.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106763.P16920363089543575446

`∩[A061241(n+1), A062340(n+1)]`
-/

namespace A106763.P16920363089543575446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062340 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106763.P16920363089543575446

noncomputable section

/-- A106763: Primes with digit sum = 25.

Offset 1, canonical program `A106763.P16920363089543575446`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4321 terms. -/
def A106763 (n : ℕ) : ℤ :=
  (A106763.P16920363089543575446.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4321 terms. -/
def A106763.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106972.P7111820639917467714

`∩[A040117(n+1), A141160(n+1)]`
-/

namespace A106972.P7111820639917467714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106972.P7111820639917467714

noncomputable section

/-- A106972: Primes of the form 5x^2+4xy+5y^2, with x and y any integer.

Offset 1, canonical program `A106972.P7111820639917467714`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5003 terms. -/
def A106972 (n : ℕ) : ℤ :=
  (A106972.P7111820639917467714.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5003 terms. -/
def A106972.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107135.P2710238364664105918

`∪[A139856(n+1), A139859(n+1)]`
-/

namespace A107135.P2710238364664105918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139856 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A107135.P2710238364664105918

noncomputable section

/-- A107135: Primes of the form 5x^2 + 6y^2.

Offset 1, canonical program `A107135.P2710238364664105918`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107135 (n : ℕ) : ℤ :=
  (A107135.P2710238364664105918.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107135.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107144.P11431327978363662706

`∩[A007521(n+1), A141179(n+1)]`
-/

namespace A107144.P11431327978363662706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107144.P11431327978363662706

noncomputable section

/-- A107144: Primes of the form 5x^2 + 8y^2.

Offset 1, canonical program `A107144.P11431327978363662706`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5004 terms. -/
def A107144 (n : ℕ) : ℤ :=
  (A107144.P11431327978363662706.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5004 terms. -/
def A107144.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107180.P2579341068721493242

`∩[A045373(n+1), A141179(n+1)]`
-/

namespace A107180.P2579341068721493242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107180.P2579341068721493242

noncomputable section

/-- A107180: Primes of the form 2x^2 + 35y^2.

Offset 1, canonical program `A107180.P2579341068721493242`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A107180 (n : ℕ) : ℤ :=
  (A107180.P2579341068721493242.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A107180.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107309.P11158848255490810356

`A001704(p?[A000040(n+1)+2])-3`
-/

namespace A107309.P11158848255490810356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001704 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 3

end

end A107309.P11158848255490810356

noncomputable section

/-- A107309: Concatenation of twin primes in reverse order.

Offset 0, canonical program `A107309.P11158848255490810356`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 408 terms. -/
def A107309 (n : ℕ) : ℤ :=
  A107309.P11158848255490810356.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 408 terms. -/
def A107309.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107323.P12283925054271668122

`A000040(n+3)+2*A173950(n+3)`
-/

namespace A107323.P12283925054271668122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 3) + 2 * A173950 (n + 3)

end

end A107323.P12283925054271668122

noncomputable section

/-- A107323: If n-th prime is 6m-1, then a(n) = 6m+1. If n-th prime is 6m+1, then a(n) = 6m-1.

Offset 3, canonical program `A107323.P12283925054271668122`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173950, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A107323 (n : ℕ) : ℤ :=
  A107323.P12283925054271668122.a (n - 3)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173950, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A107323.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A107579.P17257510932600595643

`∩[A061237(n+1), A062340(n+1)]`
-/

namespace A107579.P17257510932600595643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062340 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107579.P17257510932600595643

noncomputable section

/-- A107579: Primes with digit sum 10.

Offset 1, canonical program `A107579.P17257510932600595643`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A107579 (n : ℕ) : ℤ :=
  (A107579.P17257510932600595643.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A107579.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107946.P13683536467666203313

`A107947(A065033(A006257(n)))`
-/

namespace A107946.P13683536467666203313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107947 (A065033 (A006257 n).toNat).toNat

end

end A107946.P13683536467666203313

noncomputable section

/-- A107946: Start with S(0)={1}, then S(k+1) equals the concatenation of S(k) with the partial sums of S(k); the limit gives this sequence.

Offset 1, canonical program `A107946.P13683536467666203313`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A107946 (n : ℕ) : ℤ :=
  A107946.P13683536467666203313.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A107946.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108036.P4284321019539104631

`A108037((n-1)%A007318(n)²)`
-/

namespace A108036.P4284321019539104631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108037 (Int.tmod ((n : ℤ) - 1) (A007318 n ^ 2)).toNat

end

end A108036.P4284321019539104631

noncomputable section

/-- A108036: Triangle read by rows: the triangle in A108035 surrounded by a border of 0's.

Offset 0, canonical program `A108036.P4284321019539104631`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108036 (n : ℕ) : ℤ :=
  A108036.P4284321019539104631.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108036.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108165.P8918085192420622400

`a(n-1)+A108173(n+2)-A108173(n+1)` with `a(0)=2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A108165.P8918085192420622400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + A108173 (n + 2) - A108173 (n + 1)

end

end A108165.P8918085192420622400

noncomputable section

/-- A108165: a(n) = a(n-1) + A108173(n+1) - A108173(n).

Offset 1, canonical program `A108165.P8918085192420622400`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A108173, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A108165 (n : ℕ) : ℤ :=
  A108165.P8918085192420622400.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A108173, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A108165.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A108171.P3412130508276658526

`abs(Δ[A108173(n+1)])`
-/

namespace A108171.P3412130508276658526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108173 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A108171.P3412130508276658526

noncomputable section

/-- A108171: Tribonacci version of A076662 using the positive real Pisot root of x^3 - x^2 - x - 1.

Offset 0, canonical program `A108171.P3412130508276658526`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A108171 (n : ℕ) : ℤ :=
  A108171.P3412130508276658526.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A108171.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108269.P11596501751048516182

`2*A036554(n+1)`
-/

namespace A108269.P11596501751048516182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A036554 (n + 1)

end

end A108269.P11596501751048516182

noncomputable section

/-- A108269: Numbers of the form (2*m - 1)*4^k where m >= 1, k >= 1.

Offset 1, canonical program `A108269.P11596501751048516182`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A036554, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A108269 (n : ℕ) : ℤ :=
  A108269.P11596501751048516182.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A036554, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A108269.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A108477.P16590142534064002431

`or(1, A297191(A133280(n)))`
-/

namespace A108477.P16590142534064002431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A297191 (A133280 n).toNat)

end

end A108477.P16590142534064002431

noncomputable section

/-- A108477: A symmetric number triangle based on 2^n.

Offset 0, canonical program `A108477.P16590142534064002431`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A108477 (n : ℕ) : ℤ :=
  A108477.P16590142534064002431.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A108477.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108906.P8516043697297774057

`Δ[A006899(n+1)]`
-/

namespace A108906.P8516043697297774057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108906.P8516043697297774057

noncomputable section

/-- A108906: First differences of A006899.

Offset 1, canonical program `A108906.P8516043697297774057`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 541 terms. -/
def A108906 (n : ℕ) : ℤ :=
  A108906.P8516043697297774057.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 541 terms. -/
def A108906.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109181.P10536304723542597617

`A003132(A052034(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A109181.P10536304723542597617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 (A052034 (n + 1)).toNat

end

end A109181.P10536304723542597617

noncomputable section

/-- A109181: a(n) = A003132(A052034(n)).

Offset 1, canonical program `A109181.P10536304723542597617`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003132, A052034, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A109181 (n : ℕ) : ℤ :=
  A109181.P10536304723542597617.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003132, A052034, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A109181.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A109595.P8129904845890612139

`gcd(A087508(n)², A006501(n))`
-/

namespace A109595.P8129904845890612139
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A087508 n ^ 2) (A006501 n)

end

end A109595.P8129904845890612139

noncomputable section

/-- A109595: n^3 followed by n^2 followed by n.

Offset 1, canonical program `A109595.P8129904845890612139`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109595 (n : ℕ) : ℤ :=
  (A109595.P8129904845890612139.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109595.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110088.P8337879305070338118

`A000005(n+1)^A001221(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A110088.P8337879305070338118
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) ^ (A001221 (n + 1) : ℤ)

end

end A110088.P8337879305070338118

noncomputable section

/-- A110088: a(n) = tau(n)^omega(n), where tau = A000005 and omega = A001221.

Offset 1, canonical program `A110088.P8337879305070338118`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A110088 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A110088.P8337879305070338118.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A110088.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A110110.P13743105257907173601

`∑[A247630(n)]`
-/

namespace A110110.P13743105257907173601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247630 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110110.P13743105257907173601

noncomputable section

/-- A110110: Number of symmetric Schroeder paths of length 2n (A Schroeder path of length 2n is a lattice path from (0,0) to (2n,0) consisting of U=(1,1), D=(1,-1) and H=(2,0) steps and never going below the x-axis).

Offset 0, canonical program `A110110.P13743105257907173601`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 265 terms. -/
def A110110 (n : ℕ) : ℤ :=
  A110110.P13743105257907173601.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 265 terms. -/
def A110110.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110607.P8308537065448000621

`eq[2, ∑{e}[A007095(n), #]]`
-/

namespace A110607.P8308537065448000621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A110607.P8308537065448000621

noncomputable section

/-- A110607: Numbers n whose base 9 representations, interpreted as base 10 integers, are semiprimes.

Offset 1, canonical program `A110607.P8308537065448000621`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2413 terms. -/
def A110607 (n : ℕ) : ℤ :=
  (A110607.P8308537065448000621.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2413 terms. -/
def A110607.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111141.P7448936264222878557

`gcd(A000045(n+1), A113222(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A111141.P7448936264222878557
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000045 (n + 1)) (A113222 (n + 1))

end

end A111141.P7448936264222878557

noncomputable section

/-- A111141: GCD(F(n),A113222(n)), where F(n) is n-th Fibonacci number.

Offset 1, canonical program `A111141.P7448936264222878557`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113222, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A111141 (n : ℕ) : ℤ :=
  (A111141.P7448936264222878557.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113222, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A111141.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A111142.P14739711800033483932

`gcd(n+1, A113222(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A111142.P14739711800033483932
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A113222 (n + 1))

end

end A111142.P14739711800033483932

noncomputable section

/-- A111142: a(n) = gcd(n, A113222(n)), where A113222(n) = Sum_{p^e || n} F(p^e), each p^e the highest power of prime p dividing n (with e > 0), and F(k) is the k-th Fibonacci number.

Offset 1, canonical program `A111142.P14739711800033483932`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113222, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A111142 (n : ℕ) : ℤ :=
  (A111142.P14739711800033483932.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113222, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A111142.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A111150.P16025781374777891923

`2*A000005(2*(n+1))-2`
-/

namespace A111150.P16025781374777891923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000005 (2 * (n + 1)) - 2

end

end A111150.P16025781374777891923

noncomputable section

/-- A111150: a(n) is the number of integers of the form (n+k)/|(n-k)| for k>0.

Offset 1, canonical program `A111150.P16025781374777891923`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A111150 (n : ℕ) : ℤ :=
  A111150.P16025781374777891923.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A111150.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A111249.P7340019097524648828

`A024905(n+1)-1`
-/

namespace A111249.P7340019097524648828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024905 (n + 1) - 1

end

end A111249.P7340019097524648828

noncomputable section

/-- A111249: Numbers k such that 7*k + 8 is prime.

Offset 1, canonical program `A111249.P7340019097524648828`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024905, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A111249 (n : ℕ) : ℤ :=
  A111249.P7340019097524648828.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024905, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A111249.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A111707.P13894172564347898371

`A169669(n)+A000038(A047809(n))`
-/

namespace A111707.P13894172564347898371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169669 n + A000038 (A047809 n).toNat

end

end A111707.P13894172564347898371

noncomputable section

/-- A111707: a(n) = Sum_{k = 1..ceiling(w/2)} d(k) * d(w+1-k), where (d(1), ..., d(w)) is the decimal expansion of n.

Offset 0, canonical program `A111707.P13894172564347898371`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A111707 (n : ℕ) : ℤ :=
  A111707.P13894172564347898371.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A111707.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111737.P5999545701186017771

`A013632(5*p?[xor(1, n)+1])`
-/

namespace A111737.P5999545701186017771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (5 * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A111737.P5999545701186017771

noncomputable section

/-- A111737: Distance between k*(n-th prime) and next prime, k=5 case.

Offset 1, canonical program `A111737.P5999545701186017771`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 303 terms. -/
def A111737 (n : ℕ) : ℤ :=
  A111737.P5999545701186017771.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 303 terms. -/
def A111737.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111741.P6922834761270398492

`A013632(9*p?[xor(1, n)+1])`
-/

namespace A111741.P6922834761270398492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (9 * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A111741.P6922834761270398492

noncomputable section

/-- A111741: Distance between k*(n-th prime) and next prime, k=9 case.

Offset 1, canonical program `A111741.P6922834761270398492`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 186 terms. -/
def A111741 (n : ℕ) : ℤ :=
  A111741.P6922834761270398492.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 186 terms. -/
def A111741.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112325.P16100179258016750283

`A055679(eq[2, A105700(n)])`
-/

namespace A112325.P16100179258016750283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055679 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A112325.P16100179258016750283

noncomputable section

/-- A112325: Number of even semiprimes <= semiprime(n).

Offset 1, canonical program `A112325.P16100179258016750283`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A112325 (n : ℕ) : ℤ :=
  A112325.P16100179258016750283.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A112325.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112351.P1091360848086057743

`A208904(A038722(n+1))`
-/

namespace A112351.P1091360848086057743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208904 (A038722 (n + 1)).toNat

end

end A112351.P1091360848086057743

noncomputable section

/-- A112351: Triangle read by rows, generated from (..., 5, 3, 1).

Offset 0, canonical program `A112351.P1091360848086057743`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A112351 (n : ℕ) : ℤ :=
  A112351.P1091360848086057743.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A112351.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112381.P16506309095590625013

`lt[A007954(n), A007954(n)*A105700(n)]`
-/

namespace A112381.P16506309095590625013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n * A105700 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A112381.P16506309095590625013

noncomputable section

/-- A112381: Zero-free semiprimes.

Offset 1, canonical program `A112381.P16506309095590625013`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2145 terms. -/
def A112381 (n : ℕ) : ℤ :=
  (A112381.P16506309095590625013.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2145 terms. -/
def A112381.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112556.P12431749656610637596

`A120305(n-1)-or(-1, a(n-1))` with `a(0)=1`
-/

namespace A112556.P12431749656610637596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A120305 (n - 1) - Int.lor (-1) (a (n - 1))

end

end A112556.P12431749656610637596

noncomputable section

/-- A112556: Sums of squared terms in rows of triangle A112555.

Offset 0, canonical program `A112556.P12431749656610637596`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A112556 (n : ℕ) : ℤ :=
  A112556.P12431749656610637596.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A112556.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112588.P10447318389527751841

`lt[A000005(A253909(n)), A254528(n)]`
-/

namespace A112588.P10447318389527751841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A253909 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254528 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A112588.P10447318389527751841

noncomputable section

/-- A112588: Numbers m such that phi(m) > 2*tau(m), where phi = A000010 and tau = A000005.

Offset 1, canonical program `A112588.P10447318389527751841`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 289 terms. -/
def A112588 (n : ℕ) : ℤ :=
  (A112588.P10447318389527751841.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 289 terms. -/
def A112588.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112714.P4485868673494609304

`A080075(n+1)-2`
-/

namespace A112714.P4485868673494609304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080075 (n + 1) - 2

end

end A112714.P4485868673494609304

noncomputable section

/-- A112714: Numbers of the form k*2^m-1 with k

Offset 1, canonical program `A112714.P4485868673494609304`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080075, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A112714 (n : ℕ) : ℤ :=
  A112714.P4485868673494609304.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080075, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A112714.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A113020.P10791682209444824867

`A396583(n)-A124844(n)`
-/

namespace A113020.P10791682209444824867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396583 n - A124844 n

end

end A113020.P10791682209444824867

noncomputable section

/-- A113020: Number triangle whose row sums are the Fibonacci numbers.

Offset 0, canonical program `A113020.P10791682209444824867`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8001 terms. -/
def A113020 (n : ℕ) : ℤ :=
  A113020.P10791682209444824867.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8001 terms. -/
def A113020.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113414.P14663272806087347822

`A001826(n+1)+(-1)^(n+1)*A001842(n+1)`
-/

namespace A113414.P14663272806087347822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001826 (n + 1) + (-1) ^ (n + 1) * A001842 (n + 1)

end

end A113414.P14663272806087347822

noncomputable section

/-- A113414: Expansion of Sum_{k>0} x^k/(1-(-x^2)^k).

Offset 1, canonical program `A113414.P14663272806087347822`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001826, A001842, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A113414 (n : ℕ) : ℤ :=
  A113414.P14663272806087347822.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001826, A001842, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A113414.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A113446.P13280159862498089368

`∑{d}[n+1, A244611(#)*A350872((n+1)/#)]`
-/

namespace A113446.P13280159862498089368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A244611 d * A350872 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A113446.P13280159862498089368

noncomputable section

/-- A113446: Expansion of (phi(q)^2 - phi(q^3)^2) / 4 in powers of q where phi() is a Ramanujan theta function.

Offset 1, canonical program `A113446.P13280159862498089368`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113446 (n : ℕ) : ℤ :=
  A113446.P13280159862498089368.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113446.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113661.P7577629174354355755

`A033999(n)*A122860(n+1)`
-/

namespace A113661.P7577629174354355755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A122860 (n + 1)

end

end A113661.P7577629174354355755

noncomputable section

/-- A113661: Expansion of (phi(x)^3/phi(x^3) - 1)/6 where phi() is a Ramanujan theta function.

Offset 1, canonical program `A113661.P7577629174354355755`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113661 (n : ℕ) : ℤ :=
  A113661.P7577629174354355755.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113661.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114003.P1695342291946871726

`2*A000005(n+1)-1`
-/

namespace A114003.P1695342291946871726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000005 (n + 1) - 1

end

end A114003.P1695342291946871726

noncomputable section

/-- A114003: Rows sums of triangle A114002.

Offset 1, canonical program `A114003.P1695342291946871726`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A114003 (n : ℕ) : ℤ :=
  A114003.P1695342291946871726.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A114003.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A114208.P14089421638251111156

`∑[n]+1-(A114210(n+1)+A114209(n+1))`
-/

namespace A114208.P14089421638251111156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) - (A114210 (n + 1) + A114209 (n + 1))

end

end A114208.P14089421638251111156

noncomputable section

/-- A114208: Number of permutations of [n] having exactly one fixed point and avoiding the patterns 123 and 231.

Offset 1, canonical program `A114208.P14089421638251111156`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A114208 (n : ℕ) : ℤ :=
  A114208.P14089421638251111156.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A114208.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114338.P14184367748492254408

`A000005(A006882(n))`
-/

namespace A114338.P14184367748492254408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A006882 n).toNat

end

end A114338.P14184367748492254408

noncomputable section

/-- A114338: Number of divisors of n!! (double factorial = A006882(n)).

Offset 0, canonical program `A114338.P14184367748492254408`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A114338 (n : ℕ) : ℤ :=
  A114338.P14184367748492254408.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A114338.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A114495.P3391984248548370264

`A014301(n+2)-Δ[A114515(n+1)]`
-/

namespace A114495.P3391984248548370264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114515 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014301 (n + 2) - (f1 (n + 1) - f1 n)

end

end A114495.P3391984248548370264

noncomputable section

/-- A114495: Number of returns to the x-axis in all hill-free Dyck paths of semilength n (a Dyck path is said to be hill-free if it has no peaks at level 1).

Offset 1, canonical program `A114495.P3391984248548370264`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A114495 (n : ℕ) : ℤ :=
  A114495.P3391984248548370264.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A114495.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114707.P3298939068066820916

`A001221((n+1)*a(n-1))-A001221(a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A114707.P3298939068066820916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001221 ((n + 1 : ℤ) * a (n - 1)).toNat - A001221 (a (n - 1)).toNat + a (n - 1)

end

end A114707.P3298939068066820916

noncomputable section

/-- A114707: a(1)=1. For n>1, a(n) = a(n-1) + (number of distinct primes dividing n but not a(n-1)).

Offset 1, canonical program `A114707.P3298939068066820916`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A114707 (n : ℕ) : ℤ :=
  A114707.P3298939068066820916.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A114707.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A114896.P7654343572320911277

`A000005(row(n)-col(n)+1)*A000005(col(n)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A114896.P7654343572320911277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1).toNat * A000005 (SequenceMachineLib.triCol n + 1)

end

end A114896.P7654343572320911277

noncomputable section

/-- A114896: A symmetrical triangle of weight coefficients using the Divisors Sigma function: t(n,m) = Sigma_0(n-m+1)*Sigma_0(m+1).

Offset 0, canonical program `A114896.P7654343572320911277`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(row(n)-col(n)+1)*A000005(col(n)+1)` (program `A114896.P7654343572320911277`, by `A114896.P7654343572320911277.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A114896 (n : ℕ) : ℤ :=
  A114896.P7654343572320911277.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(row(n)-col(n)+1)*A000005(col(n)+1)` (program `A114896.P7654343572320911277`, by `A114896.P7654343572320911277.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A114896.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A115240.P2043430779647816061

`A001672(n+1)-A115239(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A115240.P2043430779647816061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001672 (n + 1) - A115239 (n + 1)

end

end A115240.P2043430779647816061

noncomputable section

/-- A115240: a(n) = A001672(n) - A115239(n).

Offset 1, canonical program `A115240.P2043430779647816061`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001672, A115239, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A115240 (n : ℕ) : ℤ :=
  A115240.P2043430779647816061.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001672, A115239, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A115240.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A115358.P2052472132167437003

`A051731(n+1)*A154269(A010766(n+1))`
-/

namespace A115358.P2052472132167437003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A154269 (A010766 (n + 1)).toNat

end

end A115358.P2052472132167437003

noncomputable section

/-- A115358: Inverse of matrix (1,x)+(x,x^2) (expressed in Riordan array notation).

Offset 0, canonical program `A115358.P2052472132167437003`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115358 (n : ℕ) : ℤ :=
  A115358.P2052472132167437003.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115358.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115376.P8028506468420862594

`∑[∑[A165188(n+1)-a(n-1)]]` with `a(0)=1`
-/

namespace A115376.P8028506468420862594
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A165188 (n + 1) - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115376.P8028506468420862594

noncomputable section

/-- A115376: where h[d+1,d-1] is a homogeneous symmetric function, s[d,d] is a Schur function indexed by two parts, * represents the Kronecker product and <, > is the standard scalar product on symmetric functions.

Offset 2, canonical program `A115376.P8028506468420862594`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115376 (n : ℕ) : ℤ :=
  A115376.P8028506468420862594.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115376.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115423.P7439849481679969083

`∩[A115422(n+1), A115795(n+1)]`
-/

namespace A115423.P7439849481679969083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115795 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115423.P7439849481679969083

noncomputable section

/-- A115423: Integers n > 0 such that n XOR 30*n = 31*n.

Offset 1, canonical program `A115423.P7439849481679969083`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A115423 (n : ℕ) : ℤ :=
  (A115423.P7439849481679969083.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A115423.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115635.P17810721979096127821

`A115714(A057300(n)+4)`
-/

namespace A115635.P17810721979096127821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115714 (A057300 n + 4).toNat

end

end A115635.P17810721979096127821

noncomputable section

/-- A115635: Periodic {1,1,-5,0,1,-3,-1,0,-3,1,-1,-4}.

Offset 0, canonical program `A115635.P17810721979096127821`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5120 terms. -/
def A115635 (n : ℕ) : ℤ :=
  A115635.P17810721979096127821.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5120 terms. -/
def A115635.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116204.P4596117724917585290

`A000005(n/gcd(n, A010805(a(n-1))))` with `a(0)=1`
-/

namespace A116204.P4596117724917585290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000005 (SequenceMachineLib.roundAway ((n : ℚ) / (Int.gcd (n : ℤ) (A010805 (a (n - 1)).toNat) : ℚ))).toNat

end

end A116204.P4596117724917585290

noncomputable section

/-- A116204: a(0) = 1; for n >= 1, a(n) = the number of positive divisors of n which are coprime to a(n-1).

Offset 0, canonical program `A116204.P4596117724917585290`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A116204 (n : ℕ) : ℤ :=
  A116204.P4596117724917585290.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A116204.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117682.P12609232638035276645

`p?[n*A010054(A007954(n))]`
-/

namespace A117682.P12609232638035276645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A010054 (A007954 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A117682.P12609232638035276645

noncomputable section

/-- A117682: Prime numbers for which the product of the digits is a triangular number.

Offset 1, canonical program `A117682.P12609232638035276645`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A117682 (n : ℕ) : ℤ :=
  A117682.P12609232638035276645.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A117682.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117768.P14671149105729955350

`Δ[A184741(2*(n+3))]`
-/

namespace A117768.P14671149105729955350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184741 (2 * (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A117768.P14671149105729955350

noncomputable section

/-- A117768: Number of Lucas numbers with n digits.

Offset 0, canonical program `A117768.P14671149105729955350`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A117768 (n : ℕ) : ℤ :=
  A117768.P14671149105729955350.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A117768.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118590.P9922597422705317347

`p?[A267635(A001223(n+1))+A065091(n+1)]`
-/

namespace A118590.P9922597422705317347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267635 (A001223 (n + 1)).toNat + A065091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A118590.P9922597422705317347

noncomputable section

/-- A118590: Larger of two consecutive primes whose positive difference is a square.

Offset 1, canonical program `A118590.P9922597422705317347`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A118590 (n : ℕ) : ℤ :=
  A118590.P9922597422705317347.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A118590.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118623.P9012952356885345567

`A000290(a(n-1))+A000005(a(n-1))` with `a(0)=1`
-/

namespace A118623.P9012952356885345567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000290 (a (n - 1)).toNat + A000005 (a (n - 1)).toNat

end

end A118623.P9012952356885345567

noncomputable section

/-- A118623: a(0) = 1, a(n+1) = a(n)^2 + number of divisors of a(n).

Offset 0, canonical program `A118623.P9012952356885345567`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A118623 (n : ℕ) : ℤ :=
  A118623.P9012952356885345567.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A118623.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A118820.P9500766899894444633

`A345110(a(n-1))+2` with `a(0)=1`
-/

namespace A118820.P9500766899894444633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A345110 (a (n - 1)).toNat + 2

end

end A118820.P9500766899894444633

noncomputable section

/-- A118820: Start with 1 and repeatedly place the first digit at the end of the number and add 2.

Offset 1, canonical program `A118820.P9500766899894444633`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118820 (n : ℕ) : ℤ :=
  A118820.P9500766899894444633.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118820.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118837.P6293664689809340976

`A345110(a(n-1))+4` with `a(0)=1`
-/

namespace A118837.P6293664689809340976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A345110 (a (n - 1)).toNat + 4

end

end A118837.P6293664689809340976

noncomputable section

/-- A118837: Start with 1 and repeatedly place the first digit at the end of the number and add 4.

Offset 1, canonical program `A118837.P6293664689809340976`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118837 (n : ℕ) : ℤ :=
  A118837.P6293664689809340976.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118837.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119462.P8715434688808793854

`(A057427(n)+1)*A034839(n)`
-/

namespace A119462.P8715434688808793854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057427 n + 1) * A034839 n

end

end A119462.P8715434688808793854

noncomputable section

/-- A119462: Triangle read by rows: T(n,k) is the number of circular binary words of length n having k occurrences of 01 (0 <= k <= floor(n/2)).

Offset 0, canonical program `A119462.P8715434688808793854`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A119462 (n : ℕ) : ℤ :=
  A119462.P8715434688808793854.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A119462.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119791.P16998931998944088094

`A000005((n+1)*a(n-1))` with `a(0)=1`
-/

namespace A119791.P16998931998944088094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000005 ((n + 1 : ℤ) * a (n - 1)).toNat

end

end A119791.P16998931998944088094

noncomputable section

/-- A119791: a(1) = 1, a(n) = number of divisors of n*a(n-1).

Offset 1, canonical program `A119791.P16998931998944088094`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1260 terms. -/
def A119791 (n : ℕ) : ℤ :=
  A119791.P16998931998944088094.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1260 terms. -/
def A119791.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119885.P7055387291115707172

`eq[1, A102460(A000005(n+1))]+1`
-/

namespace A119885.P7055387291115707172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102460 (A000005 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A119885.P7055387291115707172

noncomputable section

/-- A119885: Natural numbers with number of divisors equal to a Lucas number.

Offset 1, canonical program `A119885.P7055387291115707172`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A119885 (n : ℕ) : ℤ :=
  (A119885.P7055387291115707172.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A119885.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119993.P13755993622550961966

`A000040(n+1+A001221(n+1))`
-/

namespace A119993.P13755993622550961966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ((n + 1 : ℤ) + A001221 (n + 1)).toNat

end

end A119993.P13755993622550961966

noncomputable section

/-- A119993: a(n) = n-th prime from among those primes which are coprime to n.

Offset 1, canonical program `A119993.P13755993622550961966`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A119993 (n : ℕ) : ℤ :=
  A119993.P13755993622550961966.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A119993.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A120072.P10510853006635335626

`A120070(n+2)/gcd(A120070(n+2), A133821(n+1))`
-/

namespace A120072.P10510853006635335626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120070 (n + 2) : ℚ) / (Int.gcd (A120070 (n + 2)) (A133821 (n + 1)) : ℚ)

end

end A120072.P10510853006635335626

noncomputable section

/-- A120072: Numerator triangle for hydrogen spectrum rationals.

Offset 2, canonical program `A120072.P10510853006635335626`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120072 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A120072.P10510853006635335626.a (n - 2))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120072.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120106.P17285156561798854868

`a(n-1)*A120114(n-1)+1` with `a(0)=1`
-/

namespace A120106.P17285156561798854868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A120114 (n - 1) + 1

end

end A120106.P17285156561798854868

noncomputable section

/-- A120106: a(n) = Sum_{k=0..n} lcm(1..2n+2)/lcm(1..2k+2).

Offset 0, canonical program `A120106.P17285156561798854868`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A120106 (n : ℕ) : ℤ :=
  A120106.P17285156561798854868.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A120106.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120226.P13386215019223714269

`∩[A172367(n+1), A230076(n+1)]`
-/

namespace A120226.P13386215019223714269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172367 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120226.P13386215019223714269

noncomputable section

/-- A120226: Numbers k such that 4+k and 4*k+1 are prime.

Offset 1, canonical program `A120226.P13386215019223714269`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3021 terms. -/
def A120226 (n : ℕ) : ℤ :=
  (A120226.P13386215019223714269.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3021 terms. -/
def A120226.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120481.P11454531323970913850

`A001221(A000045(n+1)+A000032(n+1))`
-/

namespace A120481.P11454531323970913850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000045 (n + 1) + A000032 (n + 1)).toNat

end

end A120481.P11454531323970913850

noncomputable section

/-- A120481: Number of distinct prime divisors of F(n) + L(n), where F(n) is the n-th Fibonacci number and L(n) is the n-th Lucas number.

Offset 1, canonical program `A120481.P11454531323970913850`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A120481 (n : ℕ) : ℤ :=
  A120481.P11454531323970913850.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A120481.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A120503.P17912308022700772714

`A007844(n+1)/3`
-/

namespace A120503.P17912308022700772714
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007844 (n + 1) : ℚ) / 3

end

end A120503.P17912308022700772714

noncomputable section

/-- A120503: Generalized meta-Fibonacci sequence a(n) with parameters s=0 and k=3.

Offset 1, canonical program `A120503.P17912308022700772714`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007844, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A120503 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A120503.P17912308022700772714.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007844, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A120503.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A120616.P17317531366549779970

`A009001(A051162(n))*A108044(n)`
-/

namespace A120616.P17317531366549779970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (A051162 n).toNat * A108044 n

end

end A120616.P17317531366549779970

noncomputable section

/-- A120616: Generalized Riordan array (1/sqrt(1+4x^2),(1-sqrt(1+4x^2))/(2x)).

Offset 0, canonical program `A120616.P17317531366549779970`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120616 (n : ℕ) : ℤ :=
  A120616.P17317531366549779970.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120616.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120672.P7875415182769187562

`A283353(n)-A081668(n)`
-/

namespace A120672.P7875415182769187562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283353 n - A081668 n

end

end A120672.P7875415182769187562

noncomputable section

/-- A120672: a(n) = 2 * A285917(n) for n >=2, a(0) = a(1) = 0.

Offset 0, canonical program `A120672.P7875415182769187562`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A120672 (n : ℕ) : ℤ :=
  A120672.P7875415182769187562.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A120672.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120675.P7049044633339083279

`A001221(A056911(n+1))`
-/

namespace A120675.P7049044633339083279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A056911 (n + 1)).toNat

end

end A120675.P7049044633339083279

noncomputable section

/-- A120675: Number of prime factors of odd squarefree numbers A056911.

Offset 1, canonical program `A120675.P7049044633339083279`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A056911, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A120675 (n : ℕ) : ℤ :=
  A120675.P7049044633339083279.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A056911, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A120675.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A121025.P17073191121720962736

`∩[A011535(n+1), A008587(n)]`
-/

namespace A121025.P17073191121720962736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011535 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121025.P17073191121720962736

noncomputable section

/-- A121025: Multiples of 5 containing a 5 in their decimal representation.

Offset 1, canonical program `A121025.P17073191121720962736`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3668 terms. -/
def A121025 (n : ℕ) : ℤ :=
  (A121025.P17073191121720962736.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3668 terms. -/
def A121025.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121026.P3500916075753283321

`filter[A011536(n+1), A079979(#)]`
-/

namespace A121026.P3500916075753283321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011536 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079979 (f1 j).toNat = 1) n)

end

end A121026.P3500916075753283321

noncomputable section

/-- A121026: Multiples of 6 containing a 6 in their decimal representation.

Offset 1, canonical program `A121026.P3500916075753283321`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2015 terms. -/
def A121026 (n : ℕ) : ℤ :=
  A121026.P3500916075753283321.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2015 terms. -/
def A121026.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121027.P4388213834179774910

`∩[A011537(n+1), 7*(n+1)]`
-/

namespace A121027.P4388213834179774910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011537 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A121027.P4388213834179774910

noncomputable section

/-- A121027: Multiples of 7 containing a 7 in their decimal representation.

Offset 1, canonical program `A121027.P4388213834179774910`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1429 terms. -/
def A121027 (n : ℕ) : ℤ :=
  (A121027.P4388213834179774910.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1429 terms. -/
def A121027.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121028.P12208025731756267144

`∩[8*n, A011538(n+1)]`
-/

namespace A121028.P12208025731756267144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011538 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121028.P12208025731756267144

noncomputable section

/-- A121028: Multiples of 8 containing an 8 in their decimal representation.

Offset 1, canonical program `A121028.P12208025731756267144`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1514 terms. -/
def A121028 (n : ℕ) : ℤ :=
  (A121028.P12208025731756267144.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1514 terms. -/
def A121028.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121242.P3942440470820535273

`∑[A085976(n+1)]`
-/

namespace A121242.P3942440470820535273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121242.P3942440470820535273

noncomputable section

/-- A121242: Number of 2's in first n primes.

Offset 1, canonical program `A121242.P3942440470820535273`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121242 (n : ℕ) : ℤ :=
  A121242.P3942440470820535273.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121242.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121285.P9254393504255520703

`A131352(n)-2*A191386(n)-A100071(n)`
-/

namespace A121285.P9254393504255520703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131352 n - 2 * A191386 n - A100071 n

end

end A121285.P9254393504255520703

noncomputable section

/-- A121285: a(0) = 1; for n>0, a(n) = (n+3)*2^(n-2)-n*binomial(n-1, floor( (n-1)/2 ))-(n-1)*binomial(n-2,floor((n-2)/2)).

Offset 0, canonical program `A121285.P9254393504255520703`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 326 terms. -/
def A121285 (n : ℕ) : ℤ :=
  A121285.P9254393504255520703.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 326 terms. -/
def A121285.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121842.P4729088766007939738

`A013632(n^3)`
-/

namespace A121842.P4729088766007939738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (n ^ 3)

end

end A121842.P4729088766007939738

noncomputable section

/-- A121842: Difference between n^3 and next prime.

Offset 0, canonical program `A121842.P4729088766007939738`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013632, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A121842 (n : ℕ) : ℤ :=
  A121842.P4729088766007939738.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013632, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A121842.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A121884.P5648599266500705925

`A175851(eq[2, A105700(n+1)])`
-/

namespace A121884.P5648599266500705925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A121884.P5648599266500705925

noncomputable section

/-- A121884: Excess of n-th semiprime over previous prime.

Offset 1, canonical program `A121884.P5648599266500705925`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A121884 (n : ℕ) : ℤ :=
  A121884.P5648599266500705925.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A121884.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122895.P9639352825295012405

`A010056(A000005(n+1))`
-/

namespace A122895.P9639352825295012405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010056 (A000005 (n + 1)).toNat

end

end A122895.P9639352825295012405

noncomputable section

/-- A122895: Characteristic function of natural numbers with number of divisors equal to a Fibonacci number.

Offset 1, canonical program `A122895.P9639352825295012405`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010056, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A122895 (n : ℕ) : ℤ :=
  A122895.P9639352825295012405.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010056, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A122895.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A123071.P17796605501176789475

`A135401(n+1)*A135401(n)`
-/

namespace A123071.P17796605501176789475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135401 (n + 1) * A135401 n

end

end A123071.P17796605501176789475

noncomputable section

/-- A123071: Bishops on a 2n+1 X 2n+1 board (see Robinson paper for details).

Offset 0, canonical program `A123071.P17796605501176789475`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A123071 (n : ℕ) : ℤ :=
  A123071.P17796605501176789475.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A123071.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123327.P12449877284529674263

`A000203(n+1)+A004125(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A123327.P12449877284529674263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + A004125 (n + 1)

end

end A123327.P12449877284529674263

noncomputable section

/-- A123327: a(n) = A000203(n) + A004125(n).

Offset 1, canonical program `A123327.P12449877284529674263`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004125, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A123327 (n : ℕ) : ℤ :=
  A123327.P12449877284529674263.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004125, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A123327.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A123747.P11724577684491997392

`A144635(n)/gcd(A000351(n), A144635(n))`
-/

namespace A123747.P11724577684491997392
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144635 n : ℚ) / (Int.gcd (A000351 n) (A144635 n) : ℚ)

end

end A123747.P11724577684491997392

noncomputable section

/-- A123747: Numerators of partial sums of a series for sqrt(5).

Offset 0, canonical program `A123747.P11724577684491997392`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A123747 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A123747.P11724577684491997392.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A123747.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123748.P791566555730532304

`A000351(n)/gcd(A000351(n), A144635(n))`
-/

namespace A123748.P791566555730532304
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000351 n : ℚ) / (Int.gcd (A000351 n) (A144635 n) : ℚ)

end

end A123748.P791566555730532304

noncomputable section

/-- A123748: Denominators of partial sums of a series for sqrt(5).

Offset 0, canonical program `A123748.P791566555730532304`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A123748 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A123748.P791566555730532304.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A123748.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123927.P16161483642695662520

`A102460(A000005(n+1))`
-/

namespace A123927.P16161483642695662520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102460 (A000005 (n + 1)).toNat

end

end A123927.P16161483642695662520

noncomputable section

/-- A123927: Characteristic function of natural numbers with number of divisors equal to a Lucas number.

Offset 1, canonical program `A123927.P16161483642695662520`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A102460, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A123927 (n : ℕ) : ℤ :=
  A123927.P16161483642695662520.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A102460, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A123927.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A124029.P7271807952739011343

`Δ[A010751(n)]*A159764(n)`
-/

namespace A124029.P7271807952739011343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010751 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A159764 n

end

end A124029.P7271807952739011343

noncomputable section

/-- A124029: Triangle T(n,k) with the coefficient [x^k] of the characteristic polynomial of the following n X n triangular matrix: 4 on the main diagonal, -1 of the two adjacent subdiagonals, 0 otherwise.

Offset 0, canonical program `A124029.P7271807952739011343`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A124029 (n : ℕ) : ℤ :=
  A124029.P7271807952739011343.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A124029.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124192.P10155367062783563682

`floor(p?[A186301(n+1)]/8)`
-/

namespace A124192.P10155367062783563682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186301 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 8⌋

end

end A124192.P10155367062783563682

noncomputable section

/-- A124192: Numbers k for which 8*k + 3 and 8*k + 5 are twin primes.

Offset 1, canonical program `A124192.P10155367062783563682`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1147 terms. -/
def A124192 (n : ℕ) : ℤ :=
  A124192.P10155367062783563682.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1147 terms. -/
def A124192.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124428.P14380578597492988547

`A152198(comp[(n+1)²])*A152198(n)`
-/

namespace A124428.P14380578597492988547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152198 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) * A152198 n

end

end A124428.P14380578597492988547

noncomputable section

/-- A124428: Triangle, read by rows: T(n,k) = binomial(floor(n/2),k)*binomial(floor((n+1)/2),k).

Offset 0, canonical program `A124428.P14380578597492988547`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9901 terms. -/
def A124428 (n : ℕ) : ℤ :=
  A124428.P14380578597492988547.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9901 terms. -/
def A124428.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124438.P3966376689597900397

`lt[A136176(n+1), A001221(n+1)]+1`
-/

namespace A124438.P3966376689597900397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A124438.P3966376689597900397

noncomputable section

/-- A124438: Numbers that are not divisible by at least one of the (positive) exponents in their prime factorization.

Offset 1, canonical program `A124438.P3966376689597900397`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7645 terms. -/
def A124438 (n : ℕ) : ℤ :=
  (A124438.P3966376689597900397.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7645 terms. -/
def A124438.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124642.P17409428497958016739

`A210736(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A124642.P17409428497958016739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A210736 n + a (n - 2)

end

end A124642.P17409428497958016739

noncomputable section

/-- A124642: Antidiagonal sums of A096465.

Offset 0, canonical program `A124642.P17409428497958016739`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 338 terms. -/
def A124642 (n : ℕ) : ℤ :=
  A124642.P17409428497958016739.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 338 terms. -/
def A124642.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124736.P895631553598970285

`A124737(n)+1`
-/

namespace A124736.P895631553598970285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124737 n + 1

end

end A124736.P895631553598970285

noncomputable section

/-- A124736: Table where row n has k C(n,k-1) times.

Offset 0, canonical program `A124736.P895631553598970285`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A124737, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A124736 (n : ℕ) : ℤ :=
  A124736.P895631553598970285.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A124737, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A124736.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A125047.P17736773129357693532

`A343180(eq[A014707(n), A038189(n)])`
-/

namespace A125047.P17736773129357693532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014707 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038189 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343180 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A125047.P17736773129357693532

noncomputable section

/-- A125047: Infinite word generated by mapping 1->12, 2->13, 3->43, 4->42 starting at 1.

Offset 1, canonical program `A125047.P17736773129357693532`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A125047 (n : ℕ) : ℤ :=
  A125047.P17736773129357693532.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A125047.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125115.P9586527931005899637

`A005101(n+2)-A005101(n+1)`
-/

namespace A125115.P9586527931005899637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 2) - A005101 (n + 1)

end

end A125115.P9586527931005899637

noncomputable section

/-- A125115: Differences between consecutive abundant numbers.

Offset 1, canonical program `A125115.P9586527931005899637`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005101, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A125115 (n : ℕ) : ℤ :=
  A125115.P9586527931005899637.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005101, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A125115.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A125238.P17761678390908912446

`A005100(n+2)-A005100(n+1)`
-/

namespace A125238.P17761678390908912446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (n + 2) - A005100 (n + 1)

end

end A125238.P17761678390908912446

noncomputable section

/-- A125238: Differences between consecutive deficient numbers.

Offset 1, canonical program `A125238.P17761678390908912446`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005100, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A125238 (n : ℕ) : ℤ :=
  A125238.P17761678390908912446.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005100, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A125238.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A125290.P9146773712146445150

`∩[A139819(n+1), A052382(n+1)]`
-/

namespace A125290.P9146773712146445150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139819 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125290.P9146773712146445150

noncomputable section

/-- A125290: Numbers with at least two distinct digits in decimal representation, none of which is 0.

Offset 1, canonical program `A125290.P9146773712146445150`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7344 terms. -/
def A125290 (n : ℕ) : ℤ :=
  (A125290.P9146773712146445150.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7344 terms. -/
def A125290.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125499.P3483996585675288903

`filter[A005100(n+1), A120325(#)]`
-/

namespace A125499.P3483996585675288903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A120325 (f1 j).toNat = 1) n)

end

end A125499.P3483996585675288903

noncomputable section

/-- A125499: Deficient even numbers.

Offset 1, canonical program `A125499.P3483996585675288903`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3375 terms. -/
def A125499 (n : ℕ) : ℤ :=
  A125499.P3483996585675288903.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3375 terms. -/
def A125499.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125518.P17286790597070241048

`A000005(n+1)*A000040(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A125518.P17286790597070241048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A000040 (n + 1)

end

end A125518.P17286790597070241048

noncomputable section

/-- A125518: a(n) = tau(n) * prime(n).

Offset 1, canonical program `A125518.P17286790597070241048`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(n+1)*A000040(n+1)` (program `A125518.P17286790597070241048`, by `A125518.P17286790597070241048.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A125518 (n : ℕ) : ℤ :=
  A125518.P17286790597070241048.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(n+1)*A000040(n+1)` (program `A125518.P17286790597070241048`, by `A125518.P17286790597070241048.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A125518.provenance : SequenceMachineLib.Provenance := .verified

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

/-! ## A084087.P14271585874331749264

`eq[1, A084091(n)²]`
-/

namespace A084087.P14271585874331749264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084091 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084087.P14271585874331749264

noncomputable section

/-- A084087: Numbers k not divisible by 3 such that the exponent of the highest power of 2 dividing k is even.

Offset 1, canonical program `A084087.P14271585874331749264`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A084087 (n : ℕ) : ℤ :=
  (A084087.P14271585874331749264.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A084087.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084089.P5876549493066983916

`eq[1, A084091(n)]`
-/

namespace A084089.P5876549493066983916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084091 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084089.P5876549493066983916

noncomputable section

/-- A084089: Numbers k such that k == 1 (mod 3) and the exponent of the highest power of 2 dividing k is even.

Offset 1, canonical program `A084089.P5876549493066983916`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A084089 (n : ℕ) : ℤ :=
  (A084089.P5876549493066983916.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A084089.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084090.P17348984621324137681

`eq[0, A084091(n)]`
-/

namespace A084090.P17348984621324137681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084091 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084090.P17348984621324137681

noncomputable section

/-- A084090: Numbers k such that k is divisible by 3 or the exponent of the highest power of 2 dividing k is odd. Complement of A084087.

Offset 1, canonical program `A084090.P17348984621324137681`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A084090 (n : ℕ) : ℤ :=
  (A084090.P17348984621324137681.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A084090.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084500.P364298964088149

`∑[char[A084505(n)+1]]`
-/

namespace A084500.P364298964088149
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084505 n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084500.P364298964088149

noncomputable section

/-- A084500: a(0)=0, after which each n occurs A084506(n) times.

Offset 0, canonical program `A084500.P364298964088149`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A084500 (n : ℕ) : ℤ :=
  (A084500.P364298964088149.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A084500.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087688.P13986308586954985851

`∑{d}[n+1, A114811(#)]`
-/

namespace A087688.P13986308586954985851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A114811 d

end

end A087688.P13986308586954985851

noncomputable section

/-- A087688: a(n) = number of solutions to x^3 - x == 0 (mod n).

Offset 1, canonical program `A087688.P13986308586954985851`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087688 (n : ℕ) : ℤ :=
  A087688.P13986308586954985851.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087688.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A090684.P12975898454914960534

`A157914(A143827(n+1))`
-/

namespace A090684.P12975898454914960534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157914 (A143827 (n + 1)).toNat

end

end A090684.P12975898454914960534

noncomputable section

/-- A090684: Primes of the form 8*k^2 - 1.

Offset 1, canonical program `A090684.P12975898454914960534`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2008 terms. -/
def A090684 (n : ℕ) : ℤ :=
  A090684.P12975898454914960534.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2008 terms. -/
def A090684.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A090894.P5043155219363739056

`A091995(n+1)-1`
-/

namespace A090894.P5043155219363739056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091995 (n + 1) - 1

end

end A090894.P5043155219363739056

noncomputable section

/-- A090894: Numbers in n-th downward diagonal of triangle T : 0; 1, 2; 3, 4, 5; 6, 7, 8, 9; ...

Offset 0, canonical program `A090894.P5043155219363739056`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091995, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A090894 (n : ℕ) : ℤ :=
  A090894.P5043155219363739056.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091995, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A090894.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A091069.P3313354712061999408

`Δ[xor(n, floor(n/4))]*A318608(n+1)`
-/

namespace A091069.P3313354712061999408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(n : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A318608 (n + 1)

end

end A091069.P3313354712061999408

noncomputable section

/-- A091069: Moebius mu sequence for real quadratic extension sqrt(2).

Offset 1, canonical program `A091069.P3313354712061999408`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091069 (n : ℕ) : ℤ :=
  A091069.P3313354712061999408.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091069.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091806.P2486439758366413823

`A092886(n)/gcd(A092886(n), A105309(n))`
-/

namespace A091806.P2486439758366413823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092886 n : ℚ) / (Int.gcd (A092886 n) (A105309 n) : ℚ)

end

end A091806.P2486439758366413823

noncomputable section

/-- A091806: Given the infinite continued fraction i+(i/(i+(i/(i+...)))), where i is the square root of (-1), this is the numerator of the real part of the convergents.

Offset 1, canonical program `A091806.P2486439758366413823`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 316 terms. -/
def A091806 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A091806.P2486439758366413823.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 316 terms. -/
def A091806.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095080.P7709350697235318281

`∪[A095082(n+1), A095281(n+1)]`
-/

namespace A095080.P7709350697235318281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095082 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095281 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A095080.P7709350697235318281

noncomputable section

/-- A095080: Fibeven primes, i.e., primes p whose Zeckendorf-expansion A014417(p) ends with zero.

Offset 1, canonical program `A095080.P7709350697235318281`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095080 (n : ℕ) : ℤ :=
  (A095080.P7709350697235318281.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095080.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105126.P17832281701404375684

`∪[A142038(n+1), A142045(n+1)]`
-/

namespace A105126.P17832281701404375684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142045 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A105126.P17832281701404375684

noncomputable section

/-- A105126: Primes of the form 16n+9.

Offset 1, canonical program `A105126.P17832281701404375684`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105126 (n : ℕ) : ℤ :=
  (A105126.P17832281701404375684.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105126.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105131.P10156080793421485626

`∩[A158231(2*n+1), A133870(n+2)]`
-/

namespace A105131.P10156080793421485626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158231 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133870 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105131.P10156080793421485626

noncomputable section

/-- A105131: Primes of the form 512n+257.

Offset 1, canonical program `A105131.P10156080793421485626`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 633 terms. -/
def A105131 (n : ℕ) : ℤ :=
  (A105131.P10156080793421485626.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 633 terms. -/
def A105131.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105202.P11734223398601534137

`A105203(A005408(n)-A132141(n+1))`
-/

namespace A105202.P11734223398601534137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105203 (A005408 n - A132141 (n + 1)).toNat

end

end A105202.P11734223398601534137

noncomputable section

/-- A105202: Irregular triangle read by rows: row n gives the word f(f(f(...(1)))) [with n applications of f], where f is the morphism 1->{1,2,1}, 2->{2,3,2}, 3->{3,1,3}.

Offset 0, canonical program `A105202.P11734223398601534137`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105202 (n : ℕ) : ℤ :=
  A105202.P11734223398601534137.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105202.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106104.P9737292907009489359

`p?[A284065(n+1)]`
-/

namespace A106104.P9737292907009489359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284065 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106104.P9737292907009489359

noncomputable section

/-- A106104: Primes with minimal digit = 4.

Offset 1, canonical program `A106104.P9737292907009489359`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 669 terms. -/
def A106104 (n : ℕ) : ℤ :=
  A106104.P9737292907009489359.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 669 terms. -/
def A106104.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106105.P11111167386212144028

`p?[A284066(n+1)]`
-/

namespace A106105.P11111167386212144028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284066 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106105.P11111167386212144028

noncomputable section

/-- A106105: Primes with minimal digit = 5.

Offset 1, canonical program `A106105.P11111167386212144028`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 724 terms. -/
def A106105 (n : ℕ) : ℤ :=
  A106105.P11111167386212144028.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 724 terms. -/
def A106105.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106106.P2162882083934937386

`p?[A284067(n+1)]`
-/

namespace A106106.P2162882083934937386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284067 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106106.P2162882083934937386

noncomputable section

/-- A106106: Primes with minimal digit = 6.

Offset 1, canonical program `A106106.P2162882083934937386`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 383 terms. -/
def A106106 (n : ℕ) : ℤ :=
  A106106.P2162882083934937386.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 383 terms. -/
def A106106.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107305.P9243721585746097380

`(A141856(n+1)+2)/11+1`
-/

namespace A107305.P9243721585746097380
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141856 (n + 1) + 2 : ℚ) / 11 + 1

end

end A107305.P9243721585746097380

noncomputable section

/-- A107305: Numbers k such that 11*k - 13 is prime.

Offset 1, canonical program `A107305.P9243721585746097380`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107305 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A107305.P9243721585746097380.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107305.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107306.P10736151722270908272

`(A140543(n+1)+19)/17`
-/

namespace A107306.P10736151722270908272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140543 (n + 1) + 19 : ℚ) / 17

end

end A107306.P10736151722270908272

noncomputable section

/-- A107306: Numbers k such that (17*k - 19) is prime.

Offset 1, canonical program `A107306.P10736151722270908272`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107306 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A107306.P10736151722270908272.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107306.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107960.P3984212502500301092

`ceil(A141857(n+1)/11)`
-/

namespace A107960.P3984212502500301092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A141857 (n + 1) : ℚ) / 11⌉

end

end A107960.P3984212502500301092

noncomputable section

/-- A107960: Numbers n such that 11*n - 1 is prime.

Offset 1, canonical program `A107960.P3984212502500301092`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107960 (n : ℕ) : ℤ :=
  A107960.P3984212502500301092.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107960.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107992.P639525701864077716

`ceil(A141855(n+1)/11)`
-/

namespace A107992.P639525701864077716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A141855 (n + 1) : ℚ) / 11⌉

end

end A107992.P639525701864077716

noncomputable section

/-- A107992: Numbers n such that 11*n - 3 is prime.

Offset 1, canonical program `A107992.P639525701864077716`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107992 (n : ℕ) : ℤ :=
  A107992.P639525701864077716.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107992.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107994.P14297671034442261939

`(A141856(n+1)+2)/11`
-/

namespace A107994.P14297671034442261939
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141856 (n + 1) + 2 : ℚ) / 11

end

end A107994.P14297671034442261939

noncomputable section

/-- A107994: Numbers n such that 11*n - 2 is prime.

Offset 1, canonical program `A107994.P14297671034442261939`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141856, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A107994 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A107994.P14297671034442261939.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141856, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A107994.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A108232.P12864365856612306352

`ceil(A141851(n+1)/11)`
-/

namespace A108232.P12864365856612306352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A141851 (n + 1) : ℚ) / 11⌉

end

end A108232.P12864365856612306352

noncomputable section

/-- A108232: Numbers n such that 11*n - 7 is prime.

Offset 1, canonical program `A108232.P12864365856612306352`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108232 (n : ℕ) : ℤ :=
  A108232.P12864365856612306352.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108232.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111369.P14796522210221468630

`floor(A140373(n+1)/13)`
-/

namespace A111369.P14796522210221468630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A140373 (n + 1) : ℚ) / 13⌋

end

end A111369.P14796522210221468630

noncomputable section

/-- A111369: Numbers k such that 13*k + 11 is prime.

Offset 1, canonical program `A111369.P14796522210221468630`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111369 (n : ℕ) : ℤ :=
  A111369.P14796522210221468630.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111369.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A119431.P16119249505349426533

`eq[1, A318875(n+1)]+1`
-/

namespace A119431.P16119249505349426533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318875 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A119431.P16119249505349426533

noncomputable section

/-- A119431: Primitive elements of A054741.

Offset 1, canonical program `A119431.P16119249505349426533`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2830 terms. -/
def A119431 (n : ℕ) : ℤ :=
  (A119431.P16119249505349426533.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2830 terms. -/
def A119431.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124759.P11258392673958110948

`A285097(n)+a(A004526(n))` with `a(0)=0`
-/

namespace A124759.P11258392673958110948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A285097 n + a (A004526 n).toNat

end

end A124759.P11258392673958110948

noncomputable section

/-- A124759: Sum of products of consecutive terms for compositions in standard order.

Offset 0, canonical program `A124759.P11258392673958110948`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A124759 (n : ℕ) : ℤ :=
  A124759.P11258392673958110948.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A124759.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082926.P7702197728168554890

`abs(A057627(n+1)+1-A000720(n+1))`
-/

namespace A082926.P7702197728168554890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A057627 (n + 1) + 1 - A000720 (n + 1)|

end

end A082926.P7702197728168554890

noncomputable section

/-- A082926: Difference between the number of primes equal to or less than n and (1 + the number of nonsquarefree numbers equal to or less than n).

Offset 1, canonical program `A082926.P7702197728168554890`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057627, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A082926 (n : ℕ) : ℤ :=
  A082926.P7702197728168554890.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057627, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A082926.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A083094.P9155610752686370673

`2*A074939(n)`
-/

namespace A083094.P9155610752686370673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A074939 n

end

end A083094.P9155610752686370673

noncomputable section

/-- A083094: Numbers k such that Sum_{j=0..k} (binomial(k,j) mod 3) is odd.

Offset 1, canonical program `A083094.P9155610752686370673`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A074939, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A083094 (n : ℕ) : ℤ :=
  A083094.P9155610752686370673.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A074939, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A083094.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A083912.P10595039226711258511

`A001876(∑[n]%(n+1))`
-/

namespace A083912.P10595039226711258511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001876 ((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1))

end

end A083912.P10595039226711258511

noncomputable section

/-- A083912: Number of divisors of n that are congruent to 2 modulo 10.

Offset 1, canonical program `A083912.P10595039226711258511`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083912 (n : ℕ) : ℤ :=
  A083912.P10595039226711258511.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083912.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083914.P15521831857978958629

`A001877(n+1-lcm(2, n+1)/2)`
-/

namespace A083914.P15521831857978958629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001877 (SequenceMachineLib.roundAway ((n + 1 : ℚ) - (Nat.lcm 2 (n + 1) : ℚ) / 2)).toNat

end

end A083914.P15521831857978958629

noncomputable section

/-- A083914: Number of divisors of n that are congruent to 4 modulo 10.

Offset 1, canonical program `A083914.P15521831857978958629`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083914 (n : ℕ) : ℤ :=
  A083914.P15521831857978958629.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083914.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084373.P17875525676827923178

`eq[A032741(n)+1, A054054(n)]`
-/

namespace A084373.P17875525676827923178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A084373.P17875525676827923178

noncomputable section

/-- A084373: Numbers k such that smallest digit of k = total number of divisors of k.

Offset 1, canonical program `A084373.P17875525676827923178`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 387 terms. -/
def A084373 (n : ℕ) : ℤ :=
  (A084373.P17875525676827923178.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 387 terms. -/
def A084373.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087370.P13081478273326354661

`A024893(n+1)+1`
-/

namespace A087370.P13081478273326354661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024893 (n + 1) + 1

end

end A087370.P13081478273326354661

noncomputable section

/-- A087370: Numbers n such that 3n - 1 is a prime.

Offset 1, canonical program `A087370.P13081478273326354661`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024893, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A087370 (n : ℕ) : ℤ :=
  A087370.P13081478273326354661.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024893, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A087370.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A088534.P9574496654145161148

`round(A002324(1-A057427(n)+n)/2)`
-/

namespace A088534.P9574496654145161148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A002324 (1 - A057427 n + (n : ℤ)).toNat : ℚ) / 2)

end

end A088534.P9574496654145161148

noncomputable section

/-- A088534: Number of representations of n by the quadratic form x^2 + xy + y^2 with 0 <= x <= y.

Offset 0, canonical program `A088534.P9574496654145161148`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088534 (n : ℕ) : ℤ :=
  A088534.P9574496654145161148.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088534.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088879.P17861856931991418043

`A024893(n+1)-1`
-/

namespace A088879.P17861856931991418043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024893 (n + 1) - 1

end

end A088879.P17861856931991418043

noncomputable section

/-- A088879: Numbers n such that 3n + 5 is a prime.

Offset 1, canonical program `A088879.P17861856931991418043`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024893, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A088879 (n : ℕ) : ℤ :=
  A088879.P17861856931991418043.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024893, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A088879.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A089807.P3156789895362518730

`A000122(n)-3*A033684(n)`
-/

namespace A089807.P3156789895362518730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 n - 3 * A033684 n

end

end A089807.P3156789895362518730

noncomputable section

/-- A089807: Expansion of Jacobi theta function (3theta_3(q^9)-theta_3(q))/2.

Offset 0, canonical program `A089807.P3156789895362518730`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089807 (n : ℕ) : ℤ :=
  A089807.P3156789895362518730.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089807.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A093829.P14089070398035005194

`A112848(A038502(n+1))`
-/

namespace A093829.P14089070398035005194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112848 (A038502 (n + 1)).toNat

end

end A093829.P14089070398035005194

noncomputable section

/-- A093829: Expansion of q * psi(q^3)^3 / psi(q) in powers of q where psi() is a Ramanujan theta function.

Offset 1, canonical program `A093829.P14089070398035005194`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A093829 (n : ℕ) : ℤ :=
  A093829.P14089070398035005194.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A093829.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096936.P4269923552205250814

`A002324(n+1)*A010684(n)`
-/

namespace A096936.P4269923552205250814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002324 (n + 1) * A010684 n

end

end A096936.P4269923552205250814

noncomputable section

/-- A096936: Half of number of integer solutions to the equation x^2 + 3y^2 = n.

Offset 1, canonical program `A096936.P4269923552205250814`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A096936 (n : ℕ) : ℤ :=
  A096936.P4269923552205250814.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A096936.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099637.P7631160485541919359

`lt[A099636(n+1), A099635(n+1)]+1`
-/

namespace A099637.P7631160485541919359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099635 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A099637.P7631160485541919359

noncomputable section

/-- A099637: Numbers such that gcd(Sum,n) = A099635 and gcd(Sum,Product) = A099636 are not identical. Sum and Product here are the sum and product of all distinct prime factors of n.

Offset 1, canonical program `A099637.P7631160485541919359`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 723 terms. -/
def A099637 (n : ℕ) : ℤ :=
  (A099637.P7631160485541919359.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 723 terms. -/
def A099637.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106404.P11986901570279237370

`A001221(gcd(xor(1, -n), ∑[n]))`
-/

namespace A106404.P11986901570279237370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.gcd (Int.xor 1 (-(n : ℤ))) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A106404.P11986901570279237370

noncomputable section

/-- A106404: Number of even semiprimes dividing n.

Offset 1, canonical program `A106404.P11986901570279237370`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106404 (n : ℕ) : ℤ :=
  A106404.P11986901570279237370.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106404.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108958.P4019298651770441770

`A088218(n+1)-A011782(n+1)`
-/

namespace A108958.P4019298651770441770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 (n + 1) - A011782 (n + 1)

end

end A108958.P4019298651770441770

noncomputable section

/-- A108958: Number of unordered pairs of distinct length-n binary words having the same number of 1's.

Offset 1, canonical program `A108958.P4019298651770441770`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088218, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A108958 (n : ℕ) : ℤ :=
  A108958.P4019298651770441770.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088218, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A108958.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A110556.P1180683033628972392

`A088218(n)*(-1)^n`
-/

namespace A110556.P1180683033628972392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 n * (-1) ^ n

end

end A110556.P1180683033628972392

noncomputable section

/-- A110556: a(n) = binomial(2*n-1, n)*(-1)^n.

Offset 0, canonical program `A110556.P1180683033628972392`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088218, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A110556 (n : ℕ) : ℤ :=
  A110556.P1180683033628972392.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088218, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A110556.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A111199.P3819509222948216455

`A005098(n+2)-2`
-/

namespace A111199.P3819509222948216455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005098 (n + 2) - 2

end

end A111199.P3819509222948216455

noncomputable section

/-- A111199: Numbers k such that 4k + 9 is prime.

Offset 1, canonical program `A111199.P3819509222948216455`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005098, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A111199 (n : ℕ) : ℤ :=
  A111199.P3819509222948216455.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005098, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A111199.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A111215.P14583532471026945765

`A005098(n+1)-1`
-/

namespace A111215.P14583532471026945765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005098 (n + 1) - 1

end

end A111215.P14583532471026945765

noncomputable section

/-- A111215: Numbers k such that 4k + 5 is prime.

Offset 1, canonical program `A111215.P14583532471026945765`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005098, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A111215 (n : ℕ) : ℤ :=
  A111215.P14583532471026945765.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005098, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A111215.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A111290.P9757641411941966186

`A074372(a(n-1))+n` with `a(0)=1`
-/

namespace A111290.P9757641411941966186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A074372 (a (n - 1)).toNat + (n : ℤ)

end

end A111290.P9757641411941966186

noncomputable section

/-- A111290: a(1)=1, a(n) = n + (sum of distinct primes dividing a(n-1)).

Offset 1, canonical program `A111290.P9757641411941966186`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A111290 (n : ℕ) : ℤ :=
  A111290.P9757641411941966186.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A111290.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112605.P15074569082545500884

`A002324(4*n+3)`
-/

namespace A112605.P15074569082545500884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002324 (4 * n + 3)

end

end A112605.P15074569082545500884

noncomputable section

/-- A112605: Number of representations of n as a sum of a square and six times a triangular number.

Offset 0, canonical program `A112605.P15074569082545500884`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002324, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A112605 (n : ℕ) : ℤ :=
  A112605.P15074569082545500884.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002324, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A112605.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A112608.P8858731485303109573

`A002324(8*n+3)`
-/

namespace A112608.P8858731485303109573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002324 (8 * n + 3)

end

end A112608.P8858731485303109573

noncomputable section

/-- A112608: Number of representations of n as a sum of a twice a square and three times a triangular number.

Offset 0, canonical program `A112608.P8858731485303109573`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002324, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A112608 (n : ℕ) : ℤ :=
  A112608.P8858731485303109573.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002324, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A112608.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A112930.P7126053726691172401

`A112929(n+1)+2`
-/

namespace A112930.P7126053726691172401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112929 (n + 1) + 2

end

end A112930.P7126053726691172401

noncomputable section

/-- A112930: a(n) = order of n-th term of A112926 among squarefree integers.

Offset 1, canonical program `A112930.P7126053726691172401`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A112930 (n : ℕ) : ℤ :=
  A112930.P7126053726691172401.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A112930.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117203.P1024184579012793752

`record[A007913(n+2+A007913(n+1))]`
-/

namespace A117203.P1024184579012793752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 ((n + 2 : ℤ) + A007913 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117203.P1024184579012793752

noncomputable section

/-- A117203: Odd squarefree positive integers k such that (k-1)/2 is also squarefree.

Offset 1, canonical program `A117203.P1024184579012793752`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117203 (n : ℕ) : ℤ :=
  A117203.P1024184579012793752.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117203.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117205.P13625184972565813265

`record[A007913(A007913(n+1)+n)]`
-/

namespace A117205.P13625184972565813265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A007913 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117205.P13625184972565813265

noncomputable section

/-- A117205: Odd squarefree positive integers k such that (k+1)/2 is also squarefree.

Offset 1, canonical program `A117205.P13625184972565813265`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117205 (n : ℕ) : ℤ :=
  A117205.P13625184972565813265.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117205.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095402.P3275104742656262928

`∑{p}[n+1, A007953(#)]`
-/

namespace A095402.P3275104742656262928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A007953 p

end

end A095402.P3275104742656262928

noncomputable section

/-- A095402: Sum of digits of all distinct prime factors of n.

Offset 1, canonical program `A095402.P3275104742656262928`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095402 (n : ℕ) : ℤ :=
  A095402.P3275104742656262928.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095402.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095404.P9061338840450113737

`lt[∑{p}[n, A007953(#)], A007953(n)]`
-/

namespace A095404.P9061338840450113737
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), A007953 p

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A095404.P9061338840450113737

noncomputable section

/-- A095404: Numbers whose sum of digits is greater than the sum of the digits of all of its distinct prime factors.

Offset 1, canonical program `A095404.P9061338840450113737`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4371 terms. -/
def A095404 (n : ℕ) : ℤ :=
  (A095404.P9061338840450113737.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4371 terms. -/
def A095404.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A097945.P10305260904060648773

`A008966(n+1)*A023900(n+1)`
-/

namespace A097945.P10305260904060648773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) * A023900 (n + 1)

end

end A097945.P10305260904060648773

noncomputable section

/-- A097945: a(n) = mu(n)*phi(n) where mu(n) is the Mobius function (A008683) and phi(n) is the Euler totient function (A000010).

Offset 1, canonical program `A097945.P10305260904060648773`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, A023900, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A097945 (n : ℕ) : ℤ :=
  A097945.P10305260904060648773.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, A023900, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A097945.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A098871.P11206898626946488056

`A000695(n)+1`
-/

namespace A098871.P11206898626946488056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 n + 1

end

end A098871.P11206898626946488056

noncomputable section

/-- A098871: Sums of distinct powers of 4 plus 1.

Offset 0, canonical program `A098871.P11206898626946488056`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000695, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A098871 (n : ℕ) : ℤ :=
  A098871.P11206898626946488056.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000695, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A098871.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A099820.P9969869862672452089

`A007088(2*n)`
-/

namespace A099820.P9969869862672452089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (2 * n)

end

end A099820.P9969869862672452089

noncomputable section

/-- A099820: Even nonnegative integers in base 2 (bisection of A007088).

Offset 0, canonical program `A099820.P9969869862672452089`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A099820 (n : ℕ) : ℤ :=
  A099820.P9969869862672452089.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A099820.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A099821.P15875521690874164687

`10*A007088(n)+1`
-/

namespace A099821.P15875521690874164687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A007088 n + 1

end

end A099821.P15875521690874164687

noncomputable section

/-- A099821: Odd positive integers in base 2 (bisection of A007088).

Offset 1, canonical program `A099821.P15875521690874164687`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A099821 (n : ℕ) : ℤ :=
  A099821.P15875521690874164687.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A099821.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A100112.P5701663947279075001

`(A013928(n+1)+1)*A008966(n+1)`
-/

namespace A100112.P5701663947279075001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A013928 (n + 1) + 1) * A008966 (n + 1)

end

end A100112.P5701663947279075001

noncomputable section

/-- A100112: If n is the k-th squarefree number then a(n) = k, otherwise a(n) = 0.

Offset 1, canonical program `A100112.P5701663947279075001`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, A013928, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A100112 (n : ℕ) : ℤ :=
  A100112.P5701663947279075001.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, A013928, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A100112.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A100791.P13433836889308004350

`Δ[A000217(A212013(n+1)-A004736(n+1))]`
-/

namespace A100791.P13433836889308004350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A212013 (n + 1) - A004736 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100791.P13433836889308004350

noncomputable section

/-- A100791: Group the natural numbers so that the n-th group contains n(n+1)/2 = T(n) terms: (1), (2,3,4), (5,6,7,8,9,10), (11,12,13,14,15,16,17,18,19,20),(21,22,23,24,25,26,27,28,29,30,31,32,33,34,35),... The n-th row of the following triangle is formed from the sum of first n terms, next n-1 terms,next n-2 terms ... of the n-th group; e.g. third row is (5+6+7), (8+9), (10) or 18,17,10. Sequence contains the triangle read by rows.

Offset 1, canonical program `A100791.P13433836889308004350`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1555 terms. -/
def A100791 (n : ℕ) : ℤ :=
  A100791.P13433836889308004350.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1555 terms. -/
def A100791.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103581.P9200771845542336394

`A007088(A102371(n+1))`
-/

namespace A103581.P9200771845542336394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A102371 (n + 1)).toNat

end

end A103581.P9200771845542336394

noncomputable section

/-- A103581: A102371 written in base 2.

Offset 1, canonical program `A103581.P9200771845542336394`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A102371, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A103581 (n : ℕ) : ℤ :=
  A103581.P9200771845542336394.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A102371, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A103581.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A104490.P4559893148070478827

`A007088(A104489(n+1))`
-/

namespace A104490.P4559893148070478827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A104489 (n + 1)).toNat

end

end A104490.P4559893148070478827

noncomputable section

/-- A104490: Read central column in Table 3 in reference from right to left.

Offset 1, canonical program `A104490.P4559893148070478827`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104490 (n : ℕ) : ℤ :=
  A104490.P4559893148070478827.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104490.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105026.P13435274364244972713

`A007088(A105025(n))`
-/

namespace A105026.P13435274364244972713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A105025 n).toNat

end

end A105026.P13435274364244972713

noncomputable section

/-- A105026: Binary equivalents of A105025.

Offset 0, canonical program `A105026.P13435274364244972713`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A105025, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A105026 (n : ℕ) : ℤ :=
  A105026.P13435274364244972713.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A105025, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A105026.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A107078.P17495564514640749054

`1-A008966(n+1)`
-/

namespace A107078.P17495564514640749054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A008966 (n + 1)

end

end A107078.P17495564514640749054

noncomputable section

/-- A107078: Whether n has non-unitary prime divisors.

Offset 1, canonical program `A107078.P17495564514640749054`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A107078 (n : ℕ) : ℤ :=
  A107078.P17495564514640749054.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A107078.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A108779.P13179977182298857629

`A001020(A002262(n))*A007088(A130321(n))`
-/

namespace A108779.P13179977182298857629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001020 (A002262 n).toNat * A007088 (A130321 n).toNat

end

end A108779.P13179977182298857629

noncomputable section

/-- A108779: Numbers of the form (10^i)*(11^j), with i, j >= 0.

Offset 1, canonical program `A108779.P13179977182298857629`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A108779 (n : ℕ) : ℤ :=
  A108779.P13179977182298857629.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A108779.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110728.P2872517974975332487

`n*A007953(a(n-1))` with `a(0)=1`
-/

namespace A110728.P2872517974975332487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * A007953 (a (n - 1)).toNat

end

end A110728.P2872517974975332487

noncomputable section

/-- A110728: Digital factorial: a(0) = 1, a(n) = n * (the sum of the digits of a(n-1)).

Offset 0, canonical program `A110728.P2872517974975332487`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 372 terms. -/
def A110728 (n : ℕ) : ℤ :=
  A110728.P2872517974975332487.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 372 terms. -/
def A110728.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112661.P14649977540274646719

`A007953(a(n-1)+a(n-2)+a(n-3))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A112661.P14649977540274646719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A007953 (a (n - 1) + (a (n - 2) + a (n - 3))).toNat

end

end A112661.P14649977540274646719

noncomputable section

/-- A112661: Sum of digits of sum of previous 3 terms.

Offset 0, canonical program `A112661.P14649977540274646719`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A112661 (n : ℕ) : ℤ :=
  A112661.P14649977540274646719.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A112661.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112677.P5150274563826689285

`A007953(a(n-1)+a(n-2)+a(n-3)+a(n-4))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A112677.P5150274563826689285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1] fun n a =>
  A007953 (a (n - 1) + a (n - 2) + a (n - 3) + a (n - 4)).toNat

end

end A112677.P5150274563826689285

noncomputable section

/-- A112677: Sum of digits of the sum of the previous 4 terms.

Offset 0, canonical program `A112677.P5150274563826689285`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A112677 (n : ℕ) : ℤ :=
  A112677.P5150274563826689285.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A112677.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A112678.P17134100635533295227

`A007953(a(n-1)+a(n-2)+a(n-3)+a(n-4)+a(n-5))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1`
-/

namespace A112678.P17134100635533295227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1, 1] fun n a =>
  A007953 (a (n - 1) + a (n - 2) + a (n - 3) + a (n - 4) + a (n - 5)).toNat

end

end A112678.P17134100635533295227

noncomputable section

/-- A112678: Sum of digits of previous 5 terms.

Offset 0, canonical program `A112678.P17134100635533295227`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A112678 (n : ℕ) : ℤ :=
  A112678.P17134100635533295227.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A112678.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A115637.P3484073724344734124

`A000695(A035327(n+2))`
-/

namespace A115637.P3484073724344734124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (A035327 (n + 2)).toNat

end

end A115637.P3484073724344734124

noncomputable section

/-- A115637: In the binary expansion of n+2, transform 0->1 and 1->0 then interpret as base 4.

Offset 0, canonical program `A115637.P3484073724344734124`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000695, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A115637 (n : ℕ) : ℤ :=
  A115637.P3484073724344734124.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000695, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A115637.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A115794.P4559744070722464181

`record[gcd(and(n, 10*n), A007088(n))]`
-/

namespace A115794.P4559744070722464181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.land n (10 * n) : ℤ) (A007088 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115794.P4559744070722464181

noncomputable section

/-- A115794: Sequence A115793 in binary.

Offset 0, canonical program `A115794.P4559744070722464181`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1144 terms. -/
def A115794 (n : ℕ) : ℤ :=
  (A115794.P4559744070722464181.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1144 terms. -/
def A115794.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115796.P9825240409534695713

`record[gcd(and(2*n, 9*n), A007088(n))]`
-/

namespace A115796.P9825240409534695713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.land (2 * n) (9 * n) : ℤ) (A007088 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115796.P9825240409534695713

noncomputable section

/-- A115796: Sequence A115795 in binary.

Offset 1, canonical program `A115796.P9825240409534695713`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 492 terms. -/
def A115796 (n : ℕ) : ℤ :=
  (A115796.P9825240409534695713.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 492 terms. -/
def A115796.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115798.P14531436441237878101

`A007088(A115797(n+1))`
-/

namespace A115798.P14531436441237878101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A115797 (n + 1)).toNat

end

end A115798.P14531436441237878101

noncomputable section

/-- A115798: Sequence A115797 in binary.

Offset 1, canonical program `A115798.P14531436441237878101`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A115797, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A115798 (n : ℕ) : ℤ :=
  A115798.P14531436441237878101.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A115797, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A115798.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A115800.P12968421985045041583

`A007088(eq[0, and(4*n, 7*n)])`
-/

namespace A115800.P12968421985045041583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (4 * n) (7 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A115800.P12968421985045041583

noncomputable section

/-- A115800: Sequence A115799 in binary.

Offset 0, canonical program `A115800.P12968421985045041583`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 261 terms. -/
def A115800 (n : ℕ) : ℤ :=
  A115800.P12968421985045041583.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 261 terms. -/
def A115800.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115814.P15307000509231881468

`A007088(A115813(n))`
-/

namespace A115814.P15307000509231881468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A115813 n).toNat

end

end A115814.P15307000509231881468

noncomputable section

/-- A115814: Sequence A115813 in binary.

Offset 0, canonical program `A115814.P15307000509231881468`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A115813, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A115814 (n : ℕ) : ℤ :=
  A115814.P15307000509231881468.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A115813, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A115814.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A115816.P6728982517791538173

`A007088(A115815(n))`
-/

namespace A115816.P6728982517791538173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A115815 n).toNat

end

end A115816.P6728982517791538173

noncomputable section

/-- A115816: Sequence A115815 in binary.

Offset 0, canonical program `A115816.P6728982517791538173`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A115815, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A115816 (n : ℕ) : ℤ :=
  A115816.P6728982517791538173.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A115815, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A115816.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A115818.P8141254646774440608

`A007088(A115817(n))`
-/

namespace A115818.P8141254646774440608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A115817 n).toNat

end

end A115818.P8141254646774440608

noncomputable section

/-- A115818: Sequence A115817 in binary.

Offset 0, canonical program `A115818.P8141254646774440608`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A115817, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A115818 (n : ℕ) : ℤ :=
  A115818.P8141254646774440608.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A115817, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A115818.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A115820.P5339563733588952292

`A007088(A115819(n+1))`
-/

namespace A115820.P5339563733588952292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A115819 (n + 1)).toNat

end

end A115820.P5339563733588952292

noncomputable section

/-- A115820: Sequence A115819 in binary.

Offset 0, canonical program `A115820.P5339563733588952292`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A115819, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A115820 (n : ℕ) : ℤ :=
  A115820.P5339563733588952292.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A115819, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A115820.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A115822.P17871558408820840963

`A007088(A115821(n))`
-/

namespace A115822.P17871558408820840963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A115821 n).toNat

end

end A115822.P17871558408820840963

noncomputable section

/-- A115822: Sequence A115821 in binary.

Offset 0, canonical program `A115822.P17871558408820840963`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A115821, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A115822 (n : ℕ) : ℤ :=
  A115822.P17871558408820840963.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A115821, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A115822.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A115824.P7796633499277232802

`A007088(eq[0, and(8*n, 13*n)])`
-/

namespace A115824.P7796633499277232802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (8 * n) (13 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A115824.P7796633499277232802

noncomputable section

/-- A115824: Sequence A115823 in binary.

Offset 0, canonical program `A115824.P7796633499277232802`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 541 terms. -/
def A115824 (n : ℕ) : ℤ :=
  A115824.P7796633499277232802.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 541 terms. -/
def A115824.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115828.P3340096945707249904

`A007088(A115827(n))`
-/

namespace A115828.P3340096945707249904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A115827 n).toNat

end

end A115828.P3340096945707249904

noncomputable section

/-- A115828: Sequence A115827 in binary.

Offset 0, canonical program `A115828.P3340096945707249904`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A115827, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A115828 (n : ℕ) : ℤ :=
  A115828.P3340096945707249904.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A115827, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A115828.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A115848.P4587930052848723337

`A007088(A115847(n))`
-/

namespace A115848.P4587930052848723337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A115847 n).toNat

end

end A115848.P4587930052848723337

noncomputable section

/-- A115848: Sequence A115847 in binary.

Offset 0, canonical program `A115848.P4587930052848723337`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2561 terms. -/
def A115848 (n : ℕ) : ℤ :=
  A115848.P4587930052848723337.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2561 terms. -/
def A115848.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118137.P7047369831656418636

`A007953(n)+A007953(n+1)`
-/

namespace A118137.P7047369831656418636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n + A007953 (n + 1)

end

end A118137.P7047369831656418636

noncomputable section

/-- A118137: Sum of decimal digits of two successive natural numbers.

Offset 0, canonical program `A118137.P7047369831656418636`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A118137 (n : ℕ) : ℤ :=
  A118137.P7047369831656418636.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A118137.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A118880.P13099714679656599745

`A007953(n)^3`
-/

namespace A118880.P13099714679656599745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n ^ 3

end

end A118880.P13099714679656599745

noncomputable section

/-- A118880: a(n) is the cube of the sum of digits of n.

Offset 0, canonical program `A118880.P13099714679656599745`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A118880 (n : ℕ) : ℤ :=
  A118880.P13099714679656599745.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A118880.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A118881.P8524186405013838056

`A007953(n)²`
-/

namespace A118881.P8524186405013838056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n ^ 2

end

end A118881.P8524186405013838056

noncomputable section

/-- A118881: Square of sum of decimal digits of n.

Offset 0, canonical program `A118881.P8524186405013838056`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A118881 (n : ℕ) : ℤ :=
  A118881.P8524186405013838056.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A118881.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A119281.P4500062069654907476

`A007953(n)-4*A102677(n)`
-/

namespace A119281.P4500062069654907476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n - 4 * A102677 n

end

end A119281.P4500062069654907476

noncomputable section

/-- A119281: Number of counting rods to represent n in the ancient Chinese rod numeral system.

Offset 0, canonical program `A119281.P4500062069654907476`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, A102677, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A119281 (n : ℕ) : ℤ :=
  A119281.P4500062069654907476.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, A102677, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A119281.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A123001.P475860141615088738

`A007088(lt[n, xor(n, floor(n/2))])`
-/

namespace A123001.P475860141615088738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A123001.P475860141615088738

noncomputable section

/-- A123001: Binary numbers that start 10...

Offset 1, canonical program `A123001.P475860141615088738`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1023 terms. -/
def A123001 (n : ℕ) : ℤ :=
  A123001.P475860141615088738.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1023 terms. -/
def A123001.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127271.P1641139788662325747

`eq[0, (n+1)%(A007953(n+2)+A007953(n))]`
-/

namespace A127271.P1641139788662325747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A007953 (n + 2) + A007953 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A127271.P1641139788662325747

noncomputable section

/-- A127271: Numbers n such that sum of the digits of n and n+2 divides n+1, n >= 1.

Offset 1, canonical program `A127271.P1641139788662325747`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 687 terms. -/
def A127271 (n : ℕ) : ℤ :=
  (A127271.P1641139788662325747.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 687 terms. -/
def A127271.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127318.P18366774478515647716

`C(n+1, A007953(n+1))%A007953(n+1)`
-/

namespace A127318.P18366774478515647716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.choose (n + 1) (A007953 (n + 1)).toNat : ℤ) (A007953 (n + 1))

end

end A127318.P18366774478515647716

noncomputable section

/-- A127318: a(n) = binomial(n, sd) mod sd, with sd = sum of decimal digits of n.

Offset 1, canonical program `A127318.P18366774478515647716`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A127318 (n : ℕ) : ℤ :=
  A127318.P18366774478515647716.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A127318.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A127319.P17408491599508182234

`C(n+1, A007953(n+1))%(n+1)`
-/

namespace A127319.P17408491599508182234
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A007953 (n + 1)).toNat % (n + 1)

end

end A127319.P17408491599508182234

noncomputable section

/-- A127319: a(n) = binomial(n, sd) mod n, with sd = sum of decimal digits of n.

Offset 1, canonical program `A127319.P17408491599508182234`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A127319 (n : ℕ) : ℤ :=
  (A127319.P17408491599508182234.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A127319.provenance : SequenceMachineLib.Provenance := .conditional

