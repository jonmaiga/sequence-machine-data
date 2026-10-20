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
import Seq.B000.C015
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A346633.P1782636682428832130

`A029837(n+1)-A209281(n+1)`
-/

namespace A346633.P1782636682428832130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (n + 1) - A209281 (n + 1)

end

end A346633.P1782636682428832130

noncomputable section

/-- A346633: Sum of even-indexed parts (even bisection) of the n-th composition in standard order.

Offset 0, canonical program `A346633.P1782636682428832130`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A346633 (n : ℕ) : ℤ :=
  A346633.P1782636682428832130.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A346633.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A380667.P7577621012878425073

`(A020985(n+1)-A020985(n))/2`
-/

namespace A380667.P7577621012878425073
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020985 (n + 1) - A020985 n : ℚ) / 2

end

end A380667.P7577621012878425073

noncomputable section

/-- A380667: First differences of the Golay-Rudin-Shapiro sequence (A020985), divided by 2.

Offset 0, canonical program `A380667.P7577621012878425073`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380667 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A380667.P7577621012878425073.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380667.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A357872.P17060854756529812207

`(n+1)*(3/2)^(A096268(n)-A182581(n+1))`
-/

namespace A357872.P17060854756529812207
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((3 : ℚ) / 2) ^ (A096268 n - A182581 (n + 1) : ℤ)

end

end A357872.P17060854756529812207

noncomputable section

/-- A357872: a(n) = n * (3/2)^(v(n, 2) - v(n, 3)) where v(n, k) = valuation(n, k) mod 2 for n > 0.

Offset 1, canonical program `A357872.P17060854756529812207`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A357872 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A357872.P17060854756529812207.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A357872.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A361025.P152739747742070564

`A336937(n+1)-A007814(n+1)`
-/

namespace A361025.P152739747742070564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336937 (n + 1) - A007814 (n + 1)

end

end A361025.P152739747742070564

noncomputable section

/-- A361025: a(n) = A007814(sigma(n)) - A007814(n), where A007814(n) gives the 2-adic valuation of n, and sigma is the sum of divisors function.

Offset 1, canonical program `A361025.P152739747742070564`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A361025 (n : ℕ) : ℤ :=
  A361025.P152739747742070564.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A361025.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A363228.P8730947747563985722

`floor(A090739(n+1)/2)`
-/

namespace A363228.P8730947747563985722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A090739 (n + 1) : ℚ) / 2⌋

end

end A363228.P8730947747563985722

noncomputable section

/-- A363228: Exponent of 4 in 9^n - 1.

Offset 1, canonical program `A363228.P8730947747563985722`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A363228 (n : ℕ) : ℤ :=
  A363228.P8730947747563985722.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A363228.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A375961.P871565758720273220

`A371093(n)+1`
-/

namespace A375961.P871565758720273220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371093 n + 1

end

end A375961.P871565758720273220

noncomputable section

/-- A375961: 2-adic valuation of 6*n + 2.

Offset 0, canonical program `A375961.P871565758720273220`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A375961 (n : ℕ) : ℤ :=
  A375961.P871565758720273220.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A375961.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A378999.P10244368131065604543

`A378998(A000290(n+1))`
-/

namespace A378999.P10244368131065604543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378998 (A000290 (n + 1)).toNat

end

end A378999.P10244368131065604543

noncomputable section

/-- A378999: Number of trailing 1-bits in the binary representation of sigma(n^2).

Offset 1, canonical program `A378999.P10244368131065604543`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378999 (n : ℕ) : ℤ :=
  A378999.P10244368131065604543.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378999.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A379007.P14069209523982296756

`A000225(A037227(n+1))`
-/

namespace A379007.P14069209523982296756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A037227 (n + 1)).toNat

end

end A379007.P14069209523982296756

noncomputable section

/-- A379007: a(n) = (n^2) XOR ((n^2)-1).

Offset 1, canonical program `A379007.P14069209523982296756`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A379007 (n : ℕ) : ℤ :=
  A379007.P14069209523982296756.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A379007.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A382487.P7296272307731951991

`A072078(n+1)-A001511(n+1)`
-/

namespace A382487.P7296272307731951991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072078 (n + 1) - A001511 (n + 1)

end

end A382487.P7296272307731951991

noncomputable section

/-- A382487: The number of divisors of n whose largest prime factor is 3.

Offset 1, canonical program `A382487.P7296272307731951991`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382487 (n : ℕ) : ℤ :=
  A382487.P7296272307731951991.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382487.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387377.P768530691220600906

`A181351(A064614(n+1))`
-/

namespace A387377.P768530691220600906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181351 (A064614 (n + 1)).toNat

end

end A387377.P768530691220600906

noncomputable section

/-- A387377: In the prime factorization of n, replace 2's with 3's, replace 3's with 5's and replace 5's with 2's.

Offset 1, canonical program `A387377.P768530691220600906`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387377 (n : ℕ) : ℤ :=
  A387377.P768530691220600906.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387377.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A369257.P15625440583035575775

`(A001227(n+1)+A053866(n+1))/2`
-/

namespace A369257.P15625440583035575775
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001227 (n + 1) + A053866 (n + 1) : ℚ) / 2

end

end A369257.P15625440583035575775

noncomputable section

/-- A369257: a(n) = number of odd divisors of n that have an even number of prime factors with multiplicity.

Offset 1, canonical program `A369257.P15625440583035575775`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369257 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A369257.P15625440583035575775.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369257.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A324799.P15549843488400113216

`A098350(n+1)-A000040(A003991(n+1))`
-/

namespace A324799.P15549843488400113216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098350 (n + 1) - A000040 (A003991 (n + 1)).toNat

end

end A324799.P15549843488400113216

noncomputable section

/-- A324799: Symmetric square array read by antidiagonals: T(n,k) = p(n)*p(k)-p(n*k), where p(i) = prime(i), for n>=1, k>=1.

Offset 1, canonical program `A324799.P15549843488400113216`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A324799 (n : ℕ) : ℤ :=
  A324799.P15549843488400113216.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A324799.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A325003.P6363565412475937123

`A198321(n+2)`
-/

namespace A325003.P6363565412475937123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198321 (n + 2)

end

end A325003.P6363565412475937123

noncomputable section

/-- A325003: Triangle read by rows: T(n,k) is the number of achiral colorings of the facets (or vertices) of a regular n-dimensional simplex using exactly k colors.

Offset 1, canonical program `A325003.P6363565412475937123`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1325 terms. -/
def A325003 (n : ℕ) : ℤ :=
  A325003.P6363565412475937123.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1325 terms. -/
def A325003.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A326813.P11104410736738472879

`and(1, A162419(n+1))*A115362(n)`
-/

namespace A326813.P11104410736738472879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A162419 (n + 1)) * A115362 n

end

end A326813.P11104410736738472879

noncomputable section

/-- A326813: Dirichlet g.f.: zeta(2*s) / (1 - 2^(-s)).

Offset 1, canonical program `A326813.P11104410736738472879`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326813 (n : ℕ) : ℤ :=
  A326813.P11104410736738472879.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326813.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A327318.P6576024194411720780

`A074909(n)*A130328(n)`
-/

namespace A327318.P6576024194411720780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n * A130328 n

end

end A327318.P6576024194411720780

noncomputable section

/-- A327318: Triangular array read by rows: row n shows the coefficients of this polynomial of degree n: p(x,n) = 2^(n-1) ((x+r)^n - (x+s)^n)/(r - s), where r = 1 and s = 1/2.

Offset 1, canonical program `A327318.P6576024194411720780`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327318 (n : ℕ) : ℤ :=
  A327318.P6576024194411720780.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327318.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328077.P1379957031522904004

`comp[-A254027(n)]`
-/

namespace A328077.P1379957031522904004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A254027 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A328077.P1379957031522904004

noncomputable section

/-- A328077: Complement of A192110.

Offset 1, canonical program `A328077.P1379957031522904004`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328077 (n : ℕ) : ℤ :=
  (A328077.P1379957031522904004.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328077.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328568.P3353613045222164027

`A003987(eq[n, A286099(n)])`
-/

namespace A328568.P3353613045222164027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003987 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A328568.P3353613045222164027

noncomputable section

/-- A328568: Irregular triangle read by rows; for n >= 0, the n-th row corresponds to the elements of the set {(n-k) XOR k, k = 0..n}, in ascending order (where XOR denotes the bitwise XOR operator).

Offset 0, canonical program `A328568.P3353613045222164027`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1259 terms. -/
def A328568 (n : ℕ) : ℤ :=
  A328568.P3353613045222164027.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1259 terms. -/
def A328568.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330613.P15871994643795830134

`A151890(A061579(n))+1`
-/

namespace A330613.P15871994643795830134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151890 (A061579 n).toNat + 1

end

end A330613.P15871994643795830134

noncomputable section

/-- A330613: Triangle read by rows: T(n, k) = 1 + k - 2*n - 2*k*n + 2*n^2, with 0 <= k < n.

Offset 1, canonical program `A330613.P15871994643795830134`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330613 (n : ℕ) : ℤ :=
  A330613.P15871994643795830134.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330613.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332790.P8415048500789957359

`A101447(n)+A083381(n)`
-/

namespace A332790.P8415048500789957359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101447 n + A083381 n

end

end A332790.P8415048500789957359

noncomputable section

/-- A332790: Triangle read by rows: T(n,k) = 1 + 2*n + k + 5*k(n-k) for n >= 0, 0 <= k <= n.

Offset 0, canonical program `A332790.P8415048500789957359`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A332790 (n : ℕ) : ℤ :=
  A332790.P8415048500789957359.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A332790.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333363.P17407315961805387594

`A059126(record[xor(3, n)])`
-/

namespace A333363.P17407315961805387594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059126 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A333363.P17407315961805387594

noncomputable section

/-- A333363: Horizontal visibility sequence at the onset of chaos in the 3-period cascade.

Offset 1, canonical program `A333363.P17407315961805387594`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3072 terms. -/
def A333363 (n : ℕ) : ℤ :=
  A333363.P17407315961805387594.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3072 terms. -/
def A333363.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333428.P1752145011509704751

`∩[A333427(n+1)-1, A333427(n+1)]`
-/

namespace A333428.P1752145011509704751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333427 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333428.P1752145011509704751

noncomputable section

/-- A333428: Starts of runs of 3 consecutive primorial base Niven numbers (A333426).

Offset 1, canonical program `A333428.P1752145011509704751`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. -/
def A333428 (n : ℕ) : ℤ :=
  (A333428.P1752145011509704751.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. -/
def A333428.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A335003.P13569162527481826655

`A000051(A002024(n+1))*A057728(A080036(n))`
-/

namespace A335003.P13569162527481826655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (A002024 (n + 1)).toNat * A057728 (A080036 n).toNat

end

end A335003.P13569162527481826655

noncomputable section

/-- A335003: Triangle read by rows where the n-th row is the cycle trajectory of 2^n+1 in the divide-or-choose 2 rule.

Offset 1, canonical program `A335003.P13569162527481826655`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A335003 (n : ℕ) : ℤ :=
  A335003.P13569162527481826655.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A335003.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336236.P15959386538483280478

`A182986(n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A336236.P15959386538483280478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A182986 n - a (n - 2)

end

end A336236.P15959386538483280478

noncomputable section

/-- A336236: a(n) = prime(n-2) - a(n-2) for n > 2, starting with a(1)=1, a(2)=1.

Offset 1, canonical program `A336236.P15959386538483280478`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336236 (n : ℕ) : ℤ :=
  A336236.P15959386538483280478.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336236.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A339116.P16320538012076833664

`filter[A087112(n+1), A049240(#)]`
-/

namespace A339116.P16320538012076833664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087112 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A339116.P16320538012076833664

noncomputable section

/-- A339116: Triangle of all squarefree semiprimes grouped by greater prime factor, read by rows.

Offset 2, canonical program `A339116.P16320538012076833664`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A339116 (n : ℕ) : ℤ :=
  A339116.P16320538012076833664.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A339116.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340068.P1048881016749436141

`∑[A151774(n)]`
-/

namespace A340068.P1048881016749436141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151774 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340068.P1048881016749436141

noncomputable section

/-- A340068: a(n) is the number of integers in the set {n+1, n+2, ..., 2*n} whose representation in base 2 contain exactly three digits 1's.

Offset 1, canonical program `A340068.P1048881016749436141`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340068 (n : ℕ) : ℤ :=
  A340068.P1048881016749436141.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340068.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340372.P5948154074390075712

`∑{d}[n+1, A053866(#)*A080545((n+1)/#)]`
-/

namespace A340372.P5948154074390075712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053866 d * A080545 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A340372.P5948154074390075712

noncomputable section

/-- A340372: a(n) = 1 if n has no more than one odd prime factor to an odd power in its prime factorization, 0 otherwise.

Offset 1, canonical program `A340372.P5948154074390075712`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340372 (n : ℕ) : ℤ :=
  A340372.P5948154074390075712.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340372.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340503.P1192746617364733996

`and(3, 2*(n+4)-A020987(n))`
-/

namespace A340503.P1192746617364733996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 ((2 * (n + 4) : ℤ) - A020987 n)

end

end A340503.P1192746617364733996

noncomputable section

/-- A340503: Fixed under 0 -> 02, 1 -> 32, 2 -> 01, 3 -> 31.

Offset 1, canonical program `A340503.P1192746617364733996`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340503 (n : ℕ) : ℤ :=
  A340503.P1192746617364733996.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340503.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342882.P14357648193117281886

`A003987(A286098(n+1)-A003056(n+1))`
-/

namespace A342882.P14357648193117281886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003987 (A286098 (n + 1) - A003056 (n + 1)).toNat

end

end A342882.P14357648193117281886

noncomputable section

/-- A342882: Array read by antidiagonals: Sprague Grundy values for two-dimensional Misère Nim game Gamma(P_{Mis}, C^2).

Offset 0, canonical program `A342882.P14357648193117281886`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342882 (n : ℕ) : ℤ :=
  A342882.P14357648193117281886.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342882.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343041.P18075580334422087876

`A200748(∑[char[A162608(n)]])`
-/

namespace A343041.P18075580334422087876
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162608 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200748 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A343041.P18075580334422087876

noncomputable section

/-- A343041: a(0) = 0 and for any n > 0, a(n) = A343040(a(n-1), n).

Offset 0, canonical program `A343041.P18075580334422087876`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5040 terms. -/
def A343041 (n : ℕ) : ℤ :=
  A343041.P18075580334422087876.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5040 terms. -/
def A343041.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343125.P13911590155244152463

`A209304(n+1)-A176270(n)`
-/

namespace A343125.P13911590155244152463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209304 (n + 1) - A176270 n

end

end A343125.P13911590155244152463

noncomputable section

/-- A343125: Triangle T(k, n) = (n+3)*(k-n) - 4, k >= 2, 1 <= n <= k-1, read by rows.

Offset 2, canonical program `A343125.P13911590155244152463`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A343125 (n : ℕ) : ℤ :=
  A343125.P13911590155244152463.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A343125.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343237.P10079992931022798806

`A051129(n+1)-A095884(A038722(n+1))`
-/

namespace A343237.P10079992931022798806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051129 (n + 1) - A095884 (A038722 (n + 1)).toNat

end

end A343237.P10079992931022798806

noncomputable section

/-- A343237: Triangle T obtained from the array A(n, k) = (k+1)^(n+1) - k^(n+1), n, k >= 0, by reading antidiagonals upwards.

Offset 0, canonical program `A343237.P10079992931022798806`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4579 terms. -/
def A343237 (n : ℕ) : ℤ :=
  A343237.P10079992931022798806.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4579 terms. -/
def A343237.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344344.P11501963061493860304

`∩[A344343(n+1)-1, A344343(n+1)]`
-/

namespace A344344.P11501963061493860304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344343 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344343 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A344344.P11501963061493860304

noncomputable section

/-- A344344: Starts of runs of 4 consecutive Gray-code Niven numbers (A344341).

Offset 1, canonical program `A344344.P11501963061493860304`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 557 terms. -/
def A344344 (n : ℕ) : ℤ :=
  (A344344.P11501963061493860304.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 557 terms. -/
def A344344.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A348336.P6212997742014445552

`1-A348110(n+1)+n`
-/

namespace A348336.P6212997742014445552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A348110 (n + 1) + (n : ℤ)

end

end A348336.P6212997742014445552

noncomputable section

/-- A348336: Number of positive integers <= n that have no middle divisors.

Offset 1, canonical program `A348336.P6212997742014445552`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348336 (n : ℕ) : ℤ :=
  A348336.P6212997742014445552.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348336.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349221.P9908063054946175766

`A000007(A231642(n+1))`
-/

namespace A349221.P9908063054946175766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A231642 (n + 1)).toNat

end

end A349221.P9908063054946175766

noncomputable section

/-- A349221: Triangle read by rows: T(n, k) = 1 if k divides binomial(n-1, k-1), T(n, k) = 0 otherwise (n >= 1, 1 <= k <= n).

Offset 1, canonical program `A349221.P9908063054946175766`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349221 (n : ℕ) : ℤ :=
  A349221.P9908063054946175766.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349221.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A350770.P10071145900335405838

`A131816(n)-1`
-/

namespace A350770.P10071145900335405838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131816 n - 1

end

end A350770.P10071145900335405838

noncomputable section

/-- A350770: Triangle read by rows: T(n, k) = 2^(n-k-1) + 2^k - 2, 0 <= k <= n-1.

Offset 1, canonical program `A350770.P10071145900335405838`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A350770 (n : ℕ) : ℤ :=
  A350770.P10071145900335405838.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A350770.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A352242.P5962883400353177970

`(A133819(n+1)+A001283(n+2))*A055461(n+1)`
-/

namespace A352242.P5962883400353177970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A133819 (n + 1) + A001283 (n + 2)) * A055461 (n + 1)

end

end A352242.P5962883400353177970

noncomputable section

/-- A352242: Regular triangle T(n,k) = (n-k)*(n^3-k^3) for n>=2 and 1 <= k <= n-1, read by rows.

Offset 2, canonical program `A352242.P5962883400353177970`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A352242 (n : ℕ) : ℤ :=
  A352242.P5962883400353177970.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A352242.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A352744.P6958021338167338995

`A292030(comp[∑[n]])-A292030(n)`
-/

namespace A352744.P6958021338167338995
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292030 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - A292030 n

end

end A352744.P6958021338167338995

noncomputable section

/-- A352744: Array read by ascending antidiagonals. Generalized Fibonacci numbers F(n, k) = (psi^k*(phi - n) - phi^k*(psi - n)) / (phi - psi) where phi = (1 + sqrt(5))/2 and psi = (1 - sqrt(5))/2. F(n, k) for n >= 0 and k >= 0.

Offset 0, canonical program `A352744.P6958021338167338995`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9860 terms. -/
def A352744 (n : ℕ) : ℤ :=
  A352744.P6958021338167338995.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9860 terms. -/
def A352744.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A352796.P15094064464508577221

`comp[A049207(n)]`
-/

namespace A352796.P15094064464508577221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049207 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A352796.P15094064464508577221

noncomputable section

/-- A352796: Numbers m such that {d + m/d : d | m } does not contain consecutive integers.

Offset 1, canonical program `A352796.P15094064464508577221`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A352796 (n : ℕ) : ℤ :=
  (A352796.P15094064464508577221.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A352796.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353293.P9603685169671466923

`A002260(eq[0, A089885(n)])`
-/

namespace A353293.P9603685169671466923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089885 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A353293.P9603685169671466923

noncomputable section

/-- A353293: Irregular table T(n, k), n > 0, k = 1..A353292(n), read by rows: the n-th row contains in ascending order the distinct positive integers k <= n that have at least one common 1-bit with n.

Offset 1, canonical program `A353293.P9603685169671466923`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7163 terms. -/
def A353293 (n : ℕ) : ℤ :=
  A353293.P9603685169671466923.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7163 terms. -/
def A353293.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A354330.P1810111766731009996

`A053616(A000292(n))`
-/

namespace A354330.P1810111766731009996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053616 (A000292 n).toNat

end

end A354330.P1810111766731009996

noncomputable section

/-- A354330: Distance from the sum of the first n positive triangular numbers to the nearest triangular number.

Offset 0, canonical program `A354330.P1810111766731009996`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053616, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A354330 (n : ℕ) : ℤ :=
  A354330.P1810111766731009996.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053616, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A354330.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A355709.P10371335287816262552

`eq[A169611(n+1)+1, A169611(A004277(n))]`
-/

namespace A355709.P10371335287816262552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169611 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169611 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A355709.P10371335287816262552

noncomputable section

/-- A355709: Numbers k such that k and k+1 have the same number of 3-smooth divisors.

Offset 1, canonical program `A355709.P10371335287816262552`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 664 terms. -/
def A355709 (n : ℕ) : ℤ :=
  (A355709.P10371335287816262552.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 664 terms. -/
def A355709.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A355726.P4645939845327956585

`A182986(n)+a(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A355726.P4645939845327956585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A182986 n + a (n - 2)

end

end A355726.P4645939845327956585

noncomputable section

/-- A355726: a(n) = a(n-2) + prime(n-1) for a(0) = a(1) = 0.

Offset 0, canonical program `A355726.P4645939845327956585`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A355726 (n : ℕ) : ℤ :=
  A355726.P4645939845327956585.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A355726.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356036.P16657453686198969897

`A059268(n)*A175840(n)`
-/

namespace A356036.P16657453686198969897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A175840 n

end

end A356036.P16657453686198969897

noncomputable section

/-- A356036: Triangle read by rows, giving in the first column the powers of 3 (A000244) and in the next columns 4/3 times the previous row entry.

Offset 0, canonical program `A356036.P16657453686198969897`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356036 (n : ℕ) : ℤ :=
  A356036.P16657453686198969897.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356036.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356241.P11760164375224009749

`∑{p}[n+1, A151774(#)]`
-/

namespace A356241.P11760164375224009749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A151774 p

end

end A356241.P11760164375224009749

noncomputable section

/-- A356241: a(n) is the number of distinct Fermat numbers dividing n.

Offset 1, canonical program `A356241.P11760164375224009749`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356241 (n : ℕ) : ℤ :=
  A356241.P11760164375224009749.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356241.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A357213.P15462031759184962589

`A004736(n+1)*A232089(n)`
-/

namespace A357213.P15462031759184962589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A232089 n

end

end A357213.P15462031759184962589

noncomputable section

/-- A357213: Triangular array read by rows: T(n, k) = number of subsets s of {1, 2, ..., n} such max(s) - min(s) = k, for n >= 1, 0 <= k <= n-1.

Offset 1, canonical program `A357213.P15462031759184962589`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A357213 (n : ℕ) : ℤ :=
  A357213.P15462031759184962589.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A357213.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A357724.P11815462529131865667

`A098356(n)%A104763(n+1)`
-/

namespace A357724.P11815462529131865667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A098356 n) (A104763 (n + 1))

end

end A357724.P11815462529131865667

noncomputable section

/-- A357724: Triangular array read by rows: T(n,k) = Fib(n) mod Fib(k) for 1 <= k <= n, where Fib(k) = A000045(k).

Offset 1, canonical program `A357724.P11815462529131865667`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A357724 (n : ℕ) : ℤ :=
  A357724.P11815462529131865667.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A357724.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358293.P4907253983415988777

`A098360(n+1)*A140978(n+1)`
-/

namespace A358293.P4907253983415988777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098360 (n + 1) * A140978 (n + 1)

end

end A358293.P4907253983415988777

noncomputable section

/-- A358293: Array read by antidiagonals: T(n,k) = n^3*k^3*(n+k)^2, n>=1, k>=1.

Offset 1, canonical program `A358293.P4907253983415988777`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358293 (n : ℕ) : ℤ :=
  A358293.P4907253983415988777.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358293.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360033.P8815063364067196511

`A130128(n+1)-A001045(A002262(n))`
-/

namespace A360033.P8815063364067196511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130128 (n + 1) - A001045 (A002262 n).toNat

end

end A360033.P8815063364067196511

noncomputable section

/-- A360033: Table T(n,k), n >= 1 and k >= 0, read by antidiagonals, related to Jacobsthal numbers A001045.

Offset 1, canonical program `A360033.P8815063364067196511`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360033 (n : ℕ) : ℤ :=
  A360033.P8815063364067196511.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360033.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360282.P12012788412935324034

`A092392(n)*A198321(n)`
-/

namespace A360282.P12012788412935324034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092392 n * A198321 n

end

end A360282.P12012788412935324034

noncomputable section

/-- A360282: Triangle read by rows. T(n, k) = (1/2) * binomial(2*(n - k + 1), n - k + 1) * binomial(2*n - k, k - 1) for n > 0, T(0, 0) = 1.

Offset 0, canonical program `A360282.P12012788412935324034`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A360282 (n : ℕ) : ℤ :=
  A360282.P12012788412935324034.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A360282.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A362197.P8596603980637624740

`A008862(n)-n`
-/

namespace A362197.P8596603980637624740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008862 n - (n : ℤ)

end

end A362197.P8596603980637624740

noncomputable section

/-- A362197: Number of Grassmannian permutations of size n that avoid a pattern, sigma, where sigma is a pattern of size 10 with exactly one descent.

Offset 0, canonical program `A362197.P8596603980637624740`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A362197 (n : ℕ) : ℤ :=
  A362197.P8596603980637624740.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A362197.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A367962.P16852134589639979687

`A334156(n+1)/A002024(n+1)`
-/

namespace A367962.P16852134589639979687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334156 (n + 1) : ℚ) / (A002024 (n + 1) : ℚ)

end

end A367962.P16852134589639979687

noncomputable section

/-- A367962: Triangle read by rows. T(n, k) = Sum_{j=0..k} (n!/j!).

Offset 0, canonical program `A367962.P16852134589639979687`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A367962 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A367962.P16852134589639979687.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A367962.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370232.P12782408000472018737

`A085478(n)²`
-/

namespace A370232.P12782408000472018737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085478 n ^ 2

end

end A370232.P12782408000472018737

noncomputable section

/-- A370232: Triangle read by rows. T(n, k) = binomial(n + k, 2*k)^2.

Offset 0, canonical program `A370232.P12782408000472018737`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7677 terms. -/
def A370232 (n : ℕ) : ℤ :=
  A370232.P12782408000472018737.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7677 terms. -/
def A370232.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370233.P8684832600924414137

`A085478(n)*A258993(n+1)`
-/

namespace A370233.P8684832600924414137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085478 n * A258993 (n + 1)

end

end A370233.P8684832600924414137

noncomputable section

/-- A370233: Triangle read by rows. T(n, k) = (n - k + 1) * binomial(n + k + 1, 2*k)^2 / (n + k + 1).

Offset 0, canonical program `A370233.P8684832600924414137`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7675 terms. -/
def A370233 (n : ℕ) : ℤ :=
  A370233.P8684832600924414137.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7675 terms. -/
def A370233.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A371400.P8491406579635507671

`A046899(n)*A092392(n)`
-/

namespace A371400.P8491406579635507671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 n * A092392 n

end

end A371400.P8491406579635507671

noncomputable section

/-- A371400: Triangle read by rows: T(n, k) = binomial(k + n, k)*binomial(2*n - k, n).

Offset 0, canonical program `A371400.P8491406579635507671`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7803 terms. -/
def A371400 (n : ℕ) : ℤ :=
  A371400.P8491406579635507671.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7803 terms. -/
def A371400.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372054.P363222448260310864

`(n+1)*A182986(n+1)+1`
-/

namespace A372054.P363222448260310864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A182986 (n + 1) + 1

end

end A372054.P363222448260310864

noncomputable section

/-- A372054: a(0)=1; thereafter a(n) = (n+1)*prime(n)+1.

Offset 0, canonical program `A372054.P363222448260310864`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372054 (n : ℕ) : ℤ :=
  A372054.P363222448260310864.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372054.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373839.P9268052509882335273

`eq[n, n*A373838(n)]`
-/

namespace A373839.P9268052509882335273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A373838 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A373839.P9268052509882335273

noncomputable section

/-- A373839: Numbers k such that k and A276150(k) are both multiples of 3, where A276150 is the digit sum in the primorial base.

Offset 1, canonical program `A373839.P9268052509882335273`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5556 terms. -/
def A373839 (n : ℕ) : ℤ :=
  (A373839.P9268052509882335273.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5556 terms. -/
def A373839.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373844.P17122979438263369272

`2*A087112(comp[∑[n]]+1)`
-/

namespace A373844.P17122979438263369272
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A087112 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A373844.P17122979438263369272

noncomputable section

/-- A373844: Triangle read by rows: T(n,k) = A276086(1 + A002110(n) + A002110(k)), 1 <= k <= n, where A276086 is the primorial base exp-function.

Offset 1, canonical program `A373844.P17122979438263369272`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9859 terms. -/
def A373844 (n : ℕ) : ℤ :=
  A373844.P17122979438263369272.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9859 terms. -/
def A373844.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382729.P18152922907771322413

`∑[A382723(n)]`
-/

namespace A382729.P18152922907771322413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382723 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382729.P18152922907771322413

noncomputable section

/-- A382729: Total number of entries in rows 0,1,...,n of Pascal's triangle not divisible by 4.

Offset 0, canonical program `A382729.P18152922907771322413`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7154 terms. -/
def A382729 (n : ℕ) : ℤ :=
  A382729.P18152922907771322413.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7154 terms. -/
def A382729.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384189.P11228189298359388274

`comp[A030130(n+1)]`
-/

namespace A384189.P11228189298359388274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030130 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A384189.P11228189298359388274

noncomputable section

/-- A384189: Numbers whose number of zeros in their binary representation is not equal to 1.

Offset 1, canonical program `A384189.P11228189298359388274`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384189 (n : ℕ) : ℤ :=
  (A384189.P11228189298359388274.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384189.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387657.P982859840005591800

`A123275(A056943(n)+1)`
-/

namespace A387657.P982859840005591800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123275 (A056943 n + 1).toNat

end

end A387657.P982859840005591800

noncomputable section

/-- A387657: Array read by ascending antidiagonals: A(n, k) = denominator(k^n/n), with k >= 0.

Offset 1, canonical program `A387657.P982859840005591800`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387657 (n : ℕ) : ℤ :=
  A387657.P982859840005591800.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387657.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A393211.P1663722993318290328

`n+1-A176965(A087230(n+1))`
-/

namespace A393211.P1663722993318290328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A176965 (A087230 (n + 1)).toNat

end

end A393211.P1663722993318290328

noncomputable section

/-- A393211: Number computed by Wolfram's 2-state 2-symbol Turing machine 773 when started with n on the tape.

Offset 1, canonical program `A393211.P1663722993318290328`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393211 (n : ℕ) : ℤ :=
  A393211.P1663722993318290328.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393211.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A393232.P14261252287719027146

`A047241(A087230(n+1))`
-/

namespace A393232.P14261252287719027146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047241 (A087230 (n + 1)).toNat

end

end A393232.P14261252287719027146

noncomputable section

/-- A393232: Halting time for Wolfram's 2-state 2-symbol Turing machine 897 when started with n on the tape.

Offset 1, canonical program `A393232.P14261252287719027146`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393232 (n : ℕ) : ℤ :=
  A393232.P14261252287719027146.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393232.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A393233.P12718541263085678576

`A163980(A087230(n+1))`
-/

namespace A393233.P12718541263085678576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163980 (A087230 (n + 1)).toNat

end

end A393233.P12718541263085678576

noncomputable section

/-- A393233: Halting time for Wolfram's 2-state 2-symbol Turing machine 919 when started with n on the tape.

Offset 1, canonical program `A393233.P12718541263085678576`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393233 (n : ℕ) : ℤ :=
  A393233.P12718541263085678576.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393233.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A326675.P16861146496266880653

`filter[A087087(n+1), A267579(#)]`
-/

namespace A326675.P16861146496266880653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087087 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267579 (f1 j).toNat = 1) n)

end

end A326675.P16861146496266880653

noncomputable section

/-- A326675: The positions of 1's in the reversed binary expansion of n are pairwise coprime, where a singleton is not coprime unless it is {1}.

Offset 1, canonical program `A326675.P16861146496266880653`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 506 terms. -/
def A326675 (n : ℕ) : ℤ :=
  A326675.P16861146496266880653.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 506 terms. -/
def A326675.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327222.P12522913140232998755

`char[A327224(n+1)]`
-/

namespace A327222.P12522913140232998755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327224 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A327222.P12522913140232998755

noncomputable section

/-- A327222: a(n) = [(2n+4)r] - [nr+4r] - [nr], where [ ] = floor and r = sqrt(2).

Offset 0, canonical program `A327222.P12522913140232998755`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327222 (n : ℕ) : ℤ :=
  (A327222.P12522913140232998755.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327222.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328223.P7310187365408105857

`∩[A020668(n+1)-4, A020668(n+1)]`
-/

namespace A328223.P7310187365408105857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020668 (n + 1) - 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020668 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328223.P7310187365408105857

noncomputable section

/-- A328223: Numbers k such that both k and k+4 are sums of two squares.

Offset 1, canonical program `A328223.P7310187365408105857`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3516 terms. -/
def A328223 (n : ℕ) : ℤ :=
  (A328223.P7310187365408105857.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3516 terms. -/
def A328223.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329243.P9180453080884109219

`A038698(n+1)+A321861(n+1)+A320858(n+1)`
-/

namespace A329243.P9180453080884109219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038698 (n + 1) + (A321861 (n + 1) + A320858 (n + 1))

end

end A329243.P9180453080884109219

noncomputable section

/-- A329243: a(n) = Pi(8,3)(prime(n)) + Pi(8,5)(prime(n)) + Pi(8,7)(prime(n)) - 3*Pi(8,1)(prime(n)), where Pi(a,b)(x) denotes the number of primes in the arithmetic progression a*k + b less than or equal to x.

Offset 1, canonical program `A329243.P9180453080884109219`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329243 (n : ℕ) : ℤ :=
  A329243.P9180453080884109219.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329243.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329273.P5366949048814216937

`A008347(A166597(n))%A014076(A013632(n))`
-/

namespace A329273.P5366949048814216937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008347 (A166597 n).toNat) (A014076 (A013632 n).toNat)

end

end A329273.P5366949048814216937

noncomputable section

/-- A329273: a(1)=1. If n is prime, a(n)=0; if not, a(n) = (the smallest prime number greater than n) minus (the largest prime number smaller than n) minus 1.

Offset 1, canonical program `A329273.P5366949048814216937`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A329273 (n : ℕ) : ℤ :=
  A329273.P5366949048814216937.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A329273.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330545.P6344628933996575445

`A330547(n+1)+n%2`
-/

namespace A330545.P6344628933996575445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330547 (n + 1) + ((n % 2 : ℕ) : ℤ)

end

end A330545.P6344628933996575445

noncomputable section

/-- A330545: a(1) = 2; thereafter a(n) = a(n-1) + (-1)^(n + 1)*(prime(n) - prime(n - 1) - 1) (where prime(k) denotes the k-th prime).

Offset 1, canonical program `A330545.P6344628933996575445`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330545 (n : ℕ) : ℤ :=
  A330545.P6344628933996575445.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330545.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A331260.P3025793374459626332

`lcm(3, A127345(n+1))/3`
-/

namespace A331260.P3025793374459626332
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 3 (A127345 (n + 1)) : ℚ) / 3

end

end A331260.P3025793374459626332

noncomputable section

/-- A331260: Denominator of harmonic mean of 3 consecutive primes. Numerators are A331259.

Offset 1, canonical program `A331260.P3025793374459626332`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A331260 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A331260.P3025793374459626332.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A331260.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A331431.P10460707022804183766

`A002457(A002262(n))*A053122(n)`
-/

namespace A331431.P10460707022804183766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002457 (A002262 n).toNat * A053122 n

end

end A331431.P10460707022804183766

noncomputable section

/-- A331431: Triangle read by rows: T(n,k) = (-1)^(n+k)*(n+k+1)*binomial(n,k)*binomial(n+k,k) for n >= k >= 0.

Offset 0, canonical program `A331431.P10460707022804183766`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A331431 (n : ℕ) : ℤ :=
  A331431.P10460707022804183766.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A331431.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A331748.P790098222198747257

`xor(A002487(A163511(n)), A002487(n))`
-/

namespace A331748.P790098222198747257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002487 (A163511 n).toNat) (A002487 n)

end

end A331748.P790098222198747257

noncomputable section

/-- A331748: a(n) = A002487(n) XOR A002487(A163511(n)).

Offset 0, canonical program `A331748.P790098222198747257`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A331748 (n : ℕ) : ℤ :=
  A331748.P790098222198747257.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A331748.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A331749.P3262571390583388432

`A002487(A163511(n))-A002487(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A331749.P3262571390583388432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A163511 n).toNat - A002487 n

end

end A331749.P3262571390583388432

noncomputable section

/-- A331749: a(n) = A002487(A163511(n)) - A002487(n).

Offset 0, canonical program `A331749.P3262571390583388432`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A331749 (n : ℕ) : ℤ :=
  A331749.P3262571390583388432.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A331749.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A333183.P12522991503939484636

`∑[∑{digits}[2*(n+1), A007318(A007318(#))]]`
-/

namespace A333183.P12522991503939484636
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => A007318 (A007318 x).toNat).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333183.P12522991503939484636

noncomputable section

/-- A333183: Number of digits in concatenation of first n positive even integers.

Offset 1, canonical program `A333183.P12522991503939484636`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333183 (n : ℕ) : ℤ :=
  A333183.P12522991503939484636.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333183.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333763.P14005245914271309442

`A161604(n+1)/A030101(A161604(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A333763.P14005245914271309442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161604 (n + 1) : ℚ) / (A030101 (A161604 (n + 1)).toNat : ℚ)

end

end A333763.P14005245914271309442

noncomputable section

/-- A333763: a(n) = A161604(n) / A030101(A161604(n)).

Offset 1, canonical program `A333763.P14005245914271309442`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030101, A161604, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A333763 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A333763.P14005245914271309442.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030101, A161604, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A333763.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A335322.P3876703138502484102

`A007318(floor(A189151(n+1)/2))`
-/

namespace A335322.P3876703138502484102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ⌊(A189151 (n + 1) : ℚ) / 2⌋.toNat

end

end A335322.P3876703138502484102

noncomputable section

/-- A335322: Triangle read by rows: T(n, k) = binomial(n, floor((n+k+1)/2)) with k <= n.

Offset 1, canonical program `A335322.P3876703138502484102`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A335322 (n : ℕ) : ℤ :=
  A335322.P3876703138502484102.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A335322.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A335420.P3300100389546647521

`A000120(A163511(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A335420.P3300100389546647521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A163511 n).toNat

end

end A335420.P3300100389546647521

noncomputable section

/-- A335420: a(n) = A000120(A163511(n)).

Offset 0, canonical program `A335420.P3300100389546647521`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A335420 (n : ℕ) : ℤ :=
  A335420.P3300100389546647521.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A335420.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336756.P6848481102697664019

`3*A038567(2*(n+1))`
-/

namespace A336756.P6848481102697664019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A038567 (2 * (n + 1))

end

end A336756.P6848481102697664019

noncomputable section

/-- A336756: Perimeters in increasing order of primitive integer-sided triangles whose sides a < b < c are in arithmetic progression.

Offset 1, canonical program `A336756.P6848481102697664019`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336756 (n : ℕ) : ℤ :=
  A336756.P6848481102697664019.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336756.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342381.P8416467622405171547

`A007318(n)*A000354(A025581(n))`
-/

namespace A342381.P8416467622405171547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A000354 (A025581 n).toNat

end

end A342381.P8416467622405171547

noncomputable section

/-- A342381: Triangle read by rows: T(n,k) is the number of symmetries of the n-dimensional hypercube that fix exactly 2*k facets; n,k >= 0.

Offset 0, canonical program `A342381.P8416467622405171547`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1891 terms. -/
def A342381 (n : ℕ) : ℤ :=
  A342381.P8416467622405171547.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1891 terms. -/
def A342381.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342604.P8903697158238511034

`∑[A000040(n+1)*A007318(n)]`
-/

namespace A342604.P8903697158238511034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342604.P8903697158238511034

noncomputable section

/-- A342604: a(n) = Sum_{j=1..n} A003718(j-1)*prime(j).

Offset 1, canonical program `A342604.P8903697158238511034`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342604 (n : ℕ) : ℤ :=
  A342604.P8903697158238511034.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342604.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344891.P4793939344871963479

`A000040(A343809(n+1))`
-/

namespace A344891.P4793939344871963479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A343809 (n + 1)).toNat

end

end A344891.P4793939344871963479

noncomputable section

/-- A344891: Divide the primes into subsets of lengths given by successive primes, then reverse the order of terms in each subset.

Offset 1, canonical program `A344891.P4793939344871963479`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A344891 (n : ℕ) : ℤ :=
  A344891.P4793939344871963479.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A344891.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345345.P14068785434058537424

`∑{d}[n+1, A124315(#)*A143519((n+1)/#)]`
-/

namespace A345345.P14068785434058537424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A124315 d * A143519 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A345345.P14068785434058537424

noncomputable section

/-- A345345: a(n) = Sum_{d^2|n} omega(n/d^2).

Offset 1, canonical program `A345345.P14068785434058537424`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345345 (n : ℕ) : ℤ :=
  A345345.P14068785434058537424.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345345.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345354.P8610858115869796837

`∑{d}[n+1, A062799(#)*A143519((n+1)/#)]`
-/

namespace A345354.P8610858115869796837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A062799 d * A143519 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A345354.P8610858115869796837

noncomputable section

/-- A345354: a(n) = Sum_{p|n, p prime} omega(n/p).

Offset 1, canonical program `A345354.P8610858115869796837`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345354 (n : ℕ) : ℤ :=
  A345354.P8610858115869796837.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345354.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A346868.P1835923217682902368

`A000203(A071561(n+1))`
-/

namespace A346868.P1835923217682902368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A071561 (n + 1)).toNat

end

end A346868.P1835923217682902368

noncomputable section

/-- A346868: Sum of divisors of the numbers with no middle divisors.

Offset 1, canonical program `A346868.P1835923217682902368`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071561, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A346868 (n : ℕ) : ℤ :=
  A346868.P1835923217682902368.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071561, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A346868.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349712.P13134166059387920886

`∑{p}[n+1, #*A319131((n+1)/#)]`
-/

namespace A349712.P13134166059387920886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (p : ℤ) * A319131 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (p : ℚ))).toNat

end

end A349712.P13134166059387920886

noncomputable section

/-- A349712: a(n) = Sum_{d|n} sopf(d) * sopf(n/d).

Offset 1, canonical program `A349712.P13134166059387920886`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349712 (n : ℕ) : ℤ :=
  A349712.P13134166059387920886.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349712.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349834.P13091528776294325392

`A208887(4*n+1)`
-/

namespace A349834.P13091528776294325392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208887 (4 * n + 1)

end

end A349834.P13091528776294325392

noncomputable section

/-- A349834: Expansion of sqrt(1 + 4*x)/(1 - 4*x).

Offset 0, canonical program `A349834.P13091528776294325392`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A349834 (n : ℕ) : ℤ :=
  A349834.P13091528776294325392.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A349834.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351249.P17573828479424842793

`∑{d}[n+1, A013957(#)*A143519((n+1)/#)]`
-/

namespace A351249.P17573828479424842793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A013957 d * A143519 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351249.P17573828479424842793

noncomputable section

/-- A351249: a(n) = n^9 * Sum_{p|n, p prime} 1/p^9.

Offset 1, canonical program `A351249.P17573828479424842793`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351249 (n : ℕ) : ℤ :=
  A351249.P17573828479424842793.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351249.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351262.P4449826971361662987

`∑{d}[n+1, A013958(#)*A143519((n+1)/#)]`
-/

namespace A351262.P4449826971361662987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A013958 d * A143519 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351262.P4449826971361662987

noncomputable section

/-- A351262: a(n) = n^10 * Sum_{p|n, p prime} 1/p^10.

Offset 1, canonical program `A351262.P4449826971361662987`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351262 (n : ℕ) : ℤ :=
  A351262.P4449826971361662987.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351262.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351265.P14147045059802980430

`abs(A328639(n+1))`
-/

namespace A351265.P14147045059802980430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A328639 (n + 1)|

end

end A351265.P14147045059802980430

noncomputable section

/-- A351265: Sum of the squares of the squarefree divisors of n.

Offset 1, canonical program `A351265.P14147045059802980430`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A328639, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351265 (n : ℕ) : ℤ :=
  A351265.P14147045059802980430.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A328639, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351265.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353663.P11512810289068741425

`A057427(A353612(n+1))`
-/

namespace A353663.P11512810289068741425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A353612 (n + 1)).toNat

end

end A353663.P11512810289068741425

noncomputable section

/-- A353663: Triangle read by rows: T(n,k) = 1 if n+k is a prime, otherwise T(n,k) = 0; n >= 1, k >= 1.

Offset 1, canonical program `A353663.P11512810289068741425`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353612, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353663 (n : ℕ) : ℤ :=
  A353663.P11512810289068741425.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353612, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353663.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A354108.P16647006842029194396

`A154269(A304182(A304182(n+1))²)`
-/

namespace A354108.P16647006842029194396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154269 (A304182 (A304182 (n + 1)).toNat ^ 2).toNat

end

end A354108.P16647006842029194396

noncomputable section

/-- A354108: a(n) = 1 if n is neither an odd prime power nor twice an odd prime power, otherwise 0.

Offset 1, canonical program `A354108.P16647006842029194396`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354108 (n : ℕ) : ℤ :=
  A354108.P16647006842029194396.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354108.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A354199.P14179796124610273351

`A053866(n+1)*(1-A353814(n+1))`
-/

namespace A354199.P14179796124610273351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053866 (n + 1) * (1 - A353814 (n + 1))

end

end A354199.P14179796124610273351

noncomputable section

/-- A354199: a(n) = 1 if in the prime factorization of n there is no prime factor of form 4k+1 and any prime factor of form 4k+3 occurs with an even multiplicity, otherwise 0.

Offset 1, canonical program `A354199.P14179796124610273351`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353814, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A354199 (n : ℕ) : ℤ :=
  A354199.P14179796124610273351.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353814, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A354199.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A356473.P6255297414268024719

`(n+1)/gcd(n+1, A209295(n+1))`
-/

namespace A356473.P6255297414268024719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A209295 (n + 1)) : ℚ)

end

end A356473.P6255297414268024719

noncomputable section

/-- A356473: Denominator of the average of gcd(i,n) for i = 1..n.

Offset 1, canonical program `A356473.P6255297414268024719`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356473 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A356473.P6255297414268024719.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356473.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359364.P6184962185695480939

`A007318(n)*A126120(A002262(n))`
-/

namespace A359364.P6184962185695480939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A126120 (A002262 n).toNat

end

end A359364.P6184962185695480939

noncomputable section

/-- A359364: Triangle read by rows. The Motzkin triangle, the coefficients of the Motzkin polynomials. M(n, k) = binomial(n, k) * CatalanNumber(k/2) if k is even, otherwise 0.

Offset 0, canonical program `A359364.P6184962185695480939`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359364 (n : ℕ) : ℤ :=
  A359364.P6184962185695480939.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359364.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360390.P9795167924610291332

`∑[A359485(n+1)]`
-/

namespace A360390.P9795167924610291332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359485 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360390.P9795167924610291332

noncomputable section

/-- A360390: a(1) = 1; a(n) = -Sum_{k=2..n} k^2 * a(floor(n/k)).

Offset 1, canonical program `A360390.P9795167924610291332`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360390 (n : ℕ) : ℤ :=
  A360390.P9795167924610291332.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360390.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360477.P935886871947782901

`comp[A359869(n+1)-1]+1`
-/

namespace A360477.P935886871947782901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359869 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A360477.P935886871947782901

noncomputable section

/-- A360477: Numbers whose product of distinct prime factors is greater than or equal to the sum of its prime factors (with repetition).

Offset 1, canonical program `A360477.P935886871947782901`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360477 (n : ℕ) : ℤ :=
  (A360477.P935886871947782901.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360477.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364255.P6900546977642634575

`gcd(n, A163511(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A364255.P6900546977642634575
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A163511 n)

end

end A364255.P6900546977642634575

noncomputable section

/-- A364255: a(n) = gcd(n, A163511(n)).

Offset 0, canonical program `A364255.P6900546977642634575`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364255 (n : ℕ) : ℤ :=
  (A364255.P6900546977642634575.a n : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364255.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A364258.P6786196179042320049

`A163511(n)-n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A364258.P6786196179042320049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163511 n - (n : ℤ)

end

end A364258.P6786196179042320049

noncomputable section

/-- A364258: a(n) = A163511(n) - n.

Offset 0, canonical program `A364258.P6786196179042320049`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364258 (n : ℕ) : ℤ :=
  A364258.P6786196179042320049.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364258.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A365807.P7768995048888628650

`A010052(A163511(n))`
-/

namespace A365807.P7768995048888628650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A163511 n).toNat

end

end A365807.P7768995048888628650

noncomputable section

/-- A365807: a(n) = 1 if A163511(n) is a square, 0 otherwise.

Offset 0, canonical program `A365807.P7768995048888628650`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010052, A163511, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A365807 (n : ℕ) : ℤ :=
  A365807.P7768995048888628650.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010052, A163511, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A365807.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366275.P12360444593326866610

`A163511(A057889(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A366275.P12360444593326866610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163511 (A057889 n).toNat

end

end A366275.P12360444593326866610

noncomputable section

/-- A366275: The Cat's tongue permutation: a(n) = A163511(A057889(n)).

Offset 0, canonical program `A366275.P12360444593326866610`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057889, A163511, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366275 (n : ℕ) : ℤ :=
  A366275.P12360444593326866610.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057889, A163511, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366275.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366797.P9156922134602193647

`A001227(A163511(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A366797.P9156922134602193647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A163511 n).toNat

end

end A366797.P9156922134602193647

noncomputable section

/-- A366797: Number of odd divisors permuted by A163511: a(n) = A001227(A163511(n)).

Offset 0, canonical program `A366797.P9156922134602193647`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366797 (n : ℕ) : ℤ :=
  A366797.P9156922134602193647.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366797.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366873.P10214570237099345026

`A113415(A163511(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A366873.P10214570237099345026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113415 (A163511 n).toNat

end

end A366873.P10214570237099345026

noncomputable section

/-- A366873: a(n) = A113415(A163511(n)), where A113415(n) is the average of number of and sum of odd divisors of n.

Offset 0, canonical program `A366873.P10214570237099345026`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113415, A163511, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366873 (n : ℕ) : ℤ :=
  A366873.P10214570237099345026.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113415, A163511, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366873.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366903.P9543273992660669983

`∑{d}[n+1, #*A355825(#)]`
-/

namespace A366903.P9543273992660669983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A355825 d

end

end A366903.P9543273992660669983

noncomputable section

/-- A366903: The sum of exponentially odious divisors of n.

Offset 1, canonical program `A366903.P9543273992660669983`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366903 (n : ℕ) : ℤ :=
  A366903.P9543273992660669983.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366903.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369747.P13998751493365301120

`∑{d}[n+1, A062774(#)*A143519((n+1)/#)]`
-/

namespace A369747.P13998751493365301120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A062774 d * A143519 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369747.P13998751493365301120

noncomputable section

/-- A369747: a(n) = Sum_{p|n, p prime} pi(n/p).

Offset 1, canonical program `A369747.P13998751493365301120`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369747 (n : ℕ) : ℤ :=
  A369747.P13998751493365301120.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369747.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369911.P11374327331023507626

`∑{d}[n+1, A137851(#)*A319131((n+1)/#)]`
-/

namespace A369911.P11374327331023507626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A137851 d * A319131 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369911.P11374327331023507626

noncomputable section

/-- A369911: a(n) = Sum_{p|n, p prime} p * sopf(n/p).

Offset 1, canonical program `A369911.P11374327331023507626`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369911 (n : ℕ) : ℤ :=
  A369911.P11374327331023507626.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369911.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373263.P11936545737331509118

`1-(A372573(n+1)+A373260(n+1))`
-/

namespace A373263.P11936545737331509118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A372573 (n + 1) + A373260 (n + 1))

end

end A373263.P11936545737331509118

noncomputable section

/-- A373263: a(n) = 1 if A276085(n) == -1 (mod 3), otherwise 0, where A276085 is the primorial base log-function.

Offset 1, canonical program `A373263.P11936545737331509118`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A372573, A373260, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A373263 (n : ℕ) : ℤ :=
  A373263.P11936545737331509118.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A372573, A373260, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A373263.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373376.P10229871634249009273

`∪[A335657(n+1), A016825(n)]`
-/

namespace A373376.P10229871634249009273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A373376.P10229871634249009273

noncomputable section

/-- A373376: Numbers k such that gcd(A001414(k), A003415(k)) is odd, where A001414 is the sum of prime factors with repetition, and A003415 is the arithmetic derivative.

Offset 1, canonical program `A373376.P10229871634249009273`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373376 (n : ℕ) : ℤ :=
  (A373376.P10229871634249009273.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373376.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373417.P9673982607469384349

`A007318(n)*A216778(A002262(n))`
-/

namespace A373417.P9673982607469384349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A216778 (A002262 n).toNat

end

end A373417.P9673982607469384349

noncomputable section

/-- A373417: Triangle T(n,k) for the number of permutations in symmetric group S_n with (n-k) fixed points and an even number of non-fixed point cycles. Equivalent to the number of cycles of n items with cycle type defined by non-unity partitions of k<=n that contain an even number of parts.

Offset 0, canonical program `A373417.P9673982607469384349`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2624 terms. -/
def A373417 (n : ℕ) : ℤ :=
  A373417.P9673982607469384349.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2624 terms. -/
def A373417.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A373837.P16736449207211495558

`eq[1, A373836(n+1)]+1`
-/

namespace A373837.P16736449207211495558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373836 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A373837.P16736449207211495558

noncomputable section

/-- A373837: Numbers k such that bigomega(k) and A276085(k) are both multiples of 3, where bigomega (A001222) and A276085 are fully additive with a(p) = 1 and a(p) = p#/p respectively.

Offset 1, canonical program `A373837.P16736449207211495558`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5322 terms. -/
def A373837 (n : ℕ) : ℤ :=
  (A373837.P16736449207211495558.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5322 terms. -/
def A373837.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374120.P17872071964718822810

`record[(n+1)*A374119(n+1)]`
-/

namespace A374120.P17872071964718822810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A374119 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A374120.P17872071964718822810

noncomputable section

/-- A374120: Numbers k such that A113177(k) and A276085(k) are both multiples of 3, where A113177 and A276085 are fully additive with a(p) = Fibonacci(p) and a(p) = p#/p, respectively.

Offset 1, canonical program `A374120.P17872071964718822810`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374120 (n : ℕ) : ℤ :=
  A374120.P17872071964718822810.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374120.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375008.P4839878587626124872

`A046301(A333231(n+1))`
-/

namespace A375008.P4839878587626124872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046301 (A333231 (n + 1)).toNat

end

end A375008.P4839878587626124872

noncomputable section

/-- A375008: Products m of k = 3 consecutive primes p_1..p_k, where only p_1 < m^(1/k).

Offset 1, canonical program `A375008.P4839878587626124872`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5198 terms. -/
def A375008 (n : ℕ) : ℤ :=
  A375008.P4839878587626124872.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5198 terms. -/
def A375008.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376599.P86518609693394274

`Δ[A375735(n+1)]`
-/

namespace A376599.P86518609693394274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375735 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A376599.P86518609693394274

noncomputable section

/-- A376599: Second differences of consecutive non-prime-powers inclusive (A024619). First differences of A375735.

Offset 1, canonical program `A376599.P86518609693394274`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A376599 (n : ℕ) : ℤ :=
  A376599.P86518609693394274.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A376599.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376827.P729589527535175197

`A002426(A003056(n))*A007318(n)`
-/

namespace A376827.P729589527535175197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002426 (A003056 n).toNat * A007318 n

end

end A376827.P729589527535175197

noncomputable section

/-- A376827: T(n, k) = binomial(n, k)*hypergeom([(1 - n)/2, -n/2], [1], 4).

Offset 0, canonical program `A376827.P729589527535175197`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8839 terms. -/
def A376827 (n : ℕ) : ℤ :=
  A376827.P729589527535175197.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8839 terms. -/
def A376827.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A377540.P8485193340030685808

`eq[1, A161996(n+1)]+1`
-/

namespace A377540.P8485193340030685808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161996 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A377540.P8485193340030685808

noncomputable section

/-- A377540: Numbers k such that at least one of the numbers 6k-1 or 6k+1 is prime.

Offset 1, canonical program `A377540.P8485193340030685808`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A377540 (n : ℕ) : ℤ :=
  (A377540.P8485193340030685808.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A377540.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384040.P5722598086975707309

`∑{d}[n+1, A130107(#)*A365550((n+1)/#)]`
-/

namespace A384040.P5722598086975707309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A130107 d * A365550 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A384040.P5722598086975707309

noncomputable section

/-- A384040: The number of integers k from 1 to n such that gcd(n,k) is a cubefull number.

Offset 1, canonical program `A384040.P5722598086975707309`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384040 (n : ℕ) : ℤ :=
  A384040.P5722598086975707309.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384040.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A390317.P12726225618828404859

`∑{d}[n+1, A060724(#)*A271102((n+1)/#)]`
-/

namespace A390317.P12726225618828404859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A060724 d * A271102 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A390317.P12726225618828404859

noncomputable section

/-- A390317: Multiplicative sequence a(n) with a(p^e) = 2 + (p^e + p^(e-1) - 2) * (p+1) / (p-1) for prime p and e > 0.

Offset 1, canonical program `A390317.P12726225618828404859`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390317 (n : ℕ) : ℤ :=
  A390317.P12726225618828404859.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390317.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391991.P1337276639088855244

`A055642(A007318(n))`
-/

namespace A391991.P1337276639088855244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A007318 n).toNat

end

end A391991.P1337276639088855244

noncomputable section

/-- A391991: Triangle read by rows: T(n,k) = number of digits in decimal representation of binomial(n,k), 0<=k<=n.

Offset 0, canonical program `A391991.P1337276639088855244`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007318, A055642, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A391991 (n : ℕ) : ℤ :=
  A391991.P1337276639088855244.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007318, A055642, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A391991.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A395611.P8386097740936724914

`A007318(n)*A058127(n+1)`
-/

namespace A395611.P8386097740936724914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A058127 (n + 1)

end

end A395611.P8386097740936724914

noncomputable section

/-- A395611: Triangle read by rows: coefficients of (1+x)*(1+(n+1)*x)^(n-1).

Offset 0, canonical program `A395611.P8386097740936724914`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1765 terms. -/
def A395611 (n : ℕ) : ℤ :=
  A395611.P8386097740936724914.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1765 terms. -/
def A395611.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A396348.P3604061063505832311

`A060176(A278818(n))`
-/

namespace A396348.P3604061063505832311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060176 (A278818 n).toNat

end

end A396348.P3604061063505832311

noncomputable section

/-- A396348: Array read by ascending antidiagonals: A(n,k) = prime(n)^A249344(n,k).

Offset 1, canonical program `A396348.P3604061063505832311`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A396348 (n : ℕ) : ℤ :=
  A396348.P3604061063505832311.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A396348.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397713.P732737537006810765

`A070939(A007318(n))`
-/

namespace A397713.P732737537006810765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A007318 n).toNat

end

end A397713.P732737537006810765

noncomputable section

/-- A397713: Triangle read by rows: T(n,k) is the number of binary digits in binomial(n,k).

Offset 0, canonical program `A397713.P732737537006810765`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007318, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A397713 (n : ℕ) : ℤ :=
  A397713.P732737537006810765.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007318, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A397713.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A325310.P15476195284828619111

`∑{d}[A325315(n+1), A209229(#)]`
-/

namespace A325310.P15476195284828619111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325315 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A209229 d

end

end A325310.P15476195284828619111

noncomputable section

/-- A325310: a(n) = A001511(A325315(n)), except when A325315(n) = 0, then a(n) = 0.

Offset 1, canonical program `A325310.P15476195284828619111`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A325310 (n : ℕ) : ℤ :=
  A325310.P15476195284828619111.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A325310.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A326398.P10411674836388057102

`ceil(2/A111742(n+1))`
-/

namespace A326398.P10411674836388057102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / (A111742 (n + 1) : ℚ)⌉

end

end A326398.P10411674836388057102

noncomputable section

/-- A326398: a(n) is the smallest k > 0 such that the concatenation prime(n)k is composite.

Offset 1, canonical program `A326398.P10411674836388057102`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326398 (n : ℕ) : ℤ :=
  A326398.P10411674836388057102.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326398.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327752.P6389492624928042465

`record[A008475(5*n+11)]`
-/

namespace A327752.P6389492624928042465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (5 * n + 11)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327752.P6389492624928042465

noncomputable section

/-- A327752: Primes powers (A246655) congruent to 1 mod 5.

Offset 1, canonical program `A327752.P6389492624928042465`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2429 terms. -/
def A327752 (n : ℕ) : ℤ :=
  A327752.P6389492624928042465.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2429 terms. -/
def A327752.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327753.P1018549127462246212

`record[A008475(5*n+4)]`
-/

namespace A327753.P1018549127462246212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (5 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327753.P1018549127462246212

noncomputable section

/-- A327753: Primes powers (A246655) congruent to 4 mod 5.

Offset 1, canonical program `A327753.P1018549127462246212`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2432 terms. -/
def A327753 (n : ℕ) : ℤ :=
  A327753.P1018549127462246212.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2432 terms. -/
def A327753.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327976.P13806618716666500198

`xor(A110240(n+1), 2*A265281(n))`
-/

namespace A327976.P13806618716666500198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A110240 (n + 1)) (2 * A265281 n)

end

end A327976.P13806618716666500198

noncomputable section

/-- A327976: Bitwise XOR of trajectories (centrally aligned) of rule 30, and its mirror image, rule 86, when both are started from a lone 1-bit, with the latter delayed by one step: a(n) = A110240(n) XOR 2*A265281(n-1).

Offset 1, canonical program `A327976.P13806618716666500198`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A110240, A265281, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A327976 (n : ℕ) : ℤ :=
  A327976.P13806618716666500198.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A110240, A265281, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A327976.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A328101.P6975989960955687215

`A000035(floor(A265281(n+1)/2^(n+2)))`
-/

namespace A328101.P6975989960955687215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 ⌊(A265281 (n + 1) : ℚ) / (2 ^ (n + 2) : ℚ)⌋.toNat

end

end A328101.P6975989960955687215

noncomputable section

/-- A328101: Column immediately right of the middle column of rule-30 1-D cellular automaton, when started from a lone 1 cell.

Offset 1, canonical program `A328101.P6975989960955687215`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A265281, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A328101 (n : ℕ) : ℤ :=
  A328101.P6975989960955687215.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A265281, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A328101.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A328708.P9117693535644354588

`A046079(n+1)-A024361(n+1)`
-/

namespace A328708.P9117693535644354588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046079 (n + 1) - A024361 (n + 1)

end

end A328708.P9117693535644354588

noncomputable section

/-- A328708: Number of non-primitive Pythagorean triples with leg n.

Offset 1, canonical program `A328708.P9117693535644354588`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024361, A046079, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A328708 (n : ℕ) : ℤ :=
  A328708.P9117693535644354588.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024361, A046079, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A328708.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A329835.P4757636539096207399

`comp[A329836(n+1)-1]+1`
-/

namespace A329835.P4757636539096207399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329836 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A329835.P4757636539096207399

noncomputable section

/-- A329835: Beatty sequence for (9+sqrt(101))/10.

Offset 1, canonical program `A329835.P4757636539096207399`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329835 (n : ℕ) : ℤ :=
  (A329835.P4757636539096207399.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329835.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330724.P16993520120125291857

`A001414(A038509(n+1))`
-/

namespace A330724.P16993520120125291857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A038509 (n + 1)).toNat

end

end A330724.P16993520120125291857

noncomputable section

/-- A330724: Sum of prime factors (with multiplicity) of the n-th composite number coprime to 6.

Offset 1, canonical program `A330724.P16993520120125291857`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, A038509, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A330724 (n : ℕ) : ℤ :=
  A330724.P16993520120125291857.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, A038509, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A330724.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A332049.P9341534089412861099

`A057661(n+1)-1`
-/

namespace A332049.P9341534089412861099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057661 (n + 1) - 1

end

end A332049.P9341534089412861099

noncomputable section

/-- A332049: a(n) = (1/2) * Sum_{d|n, d > 1} d * phi(d).

Offset 1, canonical program `A332049.P9341534089412861099`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057661, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A332049 (n : ℕ) : ℤ :=
  A332049.P9341534089412861099.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057661, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A332049.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A333214.P10257277763201580754

`filter[A319702(2*n+1), A131695(#)]`
-/

namespace A333214.P10257277763201580754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319702 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A131695 (f1 j).toNat = 1) n)

end

end A333214.P10257277763201580754

noncomputable section

/-- A333214: Positions of adjacent unequal terms in the sequence of differences between primes.

Offset 1, canonical program `A333214.P10257277763201580754`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9551 terms. -/
def A333214 (n : ℕ) : ℤ :=
  A333214.P10257277763201580754.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9551 terms. -/
def A333214.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333326.P2975719134818226365

`lt[3, A325937(n+1)]+1`
-/

namespace A333326.P2975719134818226365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325937 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A333326.P2975719134818226365

noncomputable section

/-- A333326: Odd numbers k such that k is the product of 2 numbers greater than one, in two or more ways.

Offset 1, canonical program `A333326.P2975719134818226365`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333326 (n : ℕ) : ℤ :=
  (A333326.P2975719134818226365.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333326.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333471.P5176765363356701147

`A007444(n+1)-A143444(n+1)`
-/

namespace A333471.P5176765363356701147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007444 (n + 1) - A143444 (n + 1)

end

end A333471.P5176765363356701147

noncomputable section

/-- A333471: a(n) = 2 * mu(n) + Sum_{d|n, d > 1} mu(n/d) * (prime(d) - prime(d-1)).

Offset 1, canonical program `A333471.P5176765363356701147`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333471 (n : ℕ) : ℤ :=
  A333471.P5176765363356701147.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333471.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334919.P14357513930265192530

`lt[1, A046079(3*n+1)]`
-/

namespace A334919.P14357513930265192530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046079 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A334919.P14357513930265192530

noncomputable section

/-- A334919: Numbers of the form i + j + 3*i*j for i,j >= 1 together with numbers of the form -i - j + 3*i*j for i,j >= 2.

Offset 1, canonical program `A334919.P14357513930265192530`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334919 (n : ℕ) : ℤ :=
  (A334919.P14357513930265192530.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334919.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A335021.P18155568080400955392

`A325937(A028310(n)+1)-1`
-/

namespace A335021.P18155568080400955392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325937 (A028310 n + 1).toNat - 1

end

end A335021.P18155568080400955392

noncomputable section

/-- A335021: a(n) = Sum_{d|n, 1 < d < n} (-1)^(d + 1).

Offset 1, canonical program `A335021.P18155568080400955392`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A335021 (n : ℕ) : ℤ :=
  A335021.P18155568080400955392.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A335021.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A339804.P4837831604045285266

`(n+1)*A153485(n+1)-A279847(n+1)`
-/

namespace A339804.P4837831604045285266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A153485 (n + 1) - A279847 (n + 1)

end

end A339804.P4837831604045285266

noncomputable section

/-- A339804: a(n) = Sum_{k=1..floor(n/2)} k * (n-k) * floor((n-k)/k).

Offset 1, canonical program `A339804.P4837831604045285266`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A153485, A279847, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A339804 (n : ℕ) : ℤ :=
  A339804.P4837831604045285266.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A153485, A279847, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A339804.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A346009.P10450314313708159874

`A062799(n+1)/A000005(n+1)*A346010(n+1)`
-/

namespace A346009.P10450314313708159874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062799 (n + 1) : ℚ) / (A000005 (n + 1) : ℚ) * (A346010 (n + 1) : ℚ)

end

end A346009.P10450314313708159874

noncomputable section

/-- A346009: a(n) is the numerator of the average number of distinct prime factors of the divisors of n.

Offset 1, canonical program `A346009.P10450314313708159874`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A346009 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A346009.P10450314313708159874.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A346009.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348933.P13259023024269002684

`∩[A007310(n+1), A072864(n+1)]`
-/

namespace A348933.P13259023024269002684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348933.P13259023024269002684

noncomputable section

/-- A348933: Numbers k congruent to 1 or 5 mod 6, for which A348930(k^2) < k^2.

Offset 1, canonical program `A348933.P13259023024269002684`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3517 terms. -/
def A348933 (n : ℕ) : ℤ :=
  (A348933.P13259023024269002684.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3517 terms. -/
def A348933.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348969.P3434171516532769019

`(n+1)/A348968(n+1)`
-/

namespace A348969.P3434171516532769019
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A348968 (n + 1) : ℚ)

end

end A348969.P3434171516532769019

noncomputable section

/-- A348969: a(n) = n / gcd(n, A099377(n)).

Offset 1, canonical program `A348969.P3434171516532769019`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A348968, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348969 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A348969.P3434171516532769019.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A348968, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348969.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349664.P7684518333172414269

`A046079((n+1)²)`
-/

namespace A349664.P7684518333172414269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046079 ((n + 1) ^ 2)

end

end A349664.P7684518333172414269

noncomputable section

/-- A349664: a(n) is the number of solutions for n^4 = z^2 - x^2 with {z,x} >= 1.

Offset 1, canonical program `A349664.P7684518333172414269`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 256 terms. -/
def A349664 (n : ℕ) : ℤ :=
  A349664.P7684518333172414269.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 256 terms. -/
def A349664.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351602.P15349090548129750929

`(n+1)²*A328271(n+1)`
-/

namespace A351602.P15349090548129750929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A328271 (n + 1)

end

end A351602.P15349090548129750929

noncomputable section

/-- A351602: a(n) = n^4 * Sum_{d^2|n} 1 / d^4.

Offset 1, canonical program `A351602.P15349090548129750929`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351602 (n : ℕ) : ℤ :=
  A351602.P15349090548129750929.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351602.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A352735.P7182467444972131953

`∩[A011538(n+1), A052406(n+1)]`
-/

namespace A352735.P7182467444972131953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011538 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052406 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352735.P7182467444972131953

noncomputable section

/-- A352735: Lucky numbers in Chinese: Numbers whose decimal expansion contains 8 but not 4.

Offset 1, canonical program `A352735.P7182467444972131953`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3439 terms. -/
def A352735 (n : ℕ) : ℤ :=
  (A352735.P7182467444972131953.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3439 terms. -/
def A352735.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353446.P1225759683580056269

`A008486(A353352(n+1))-Δ[A006218(n)]`
-/

namespace A353446.P1225759683580056269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A353352 (n + 1)).toNat - (f1 (n + 1) - f1 n)

end

end A353446.P1225759683580056269

noncomputable section

/-- A353446: Let g be the inverse Möbius transform of the Eisenstein integer-valued function f defined in A353445. a(n) is twice the real part of g(n).

Offset 1, canonical program `A353446.P1225759683580056269`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353446 (n : ℕ) : ℤ :=
  A353446.P1225759683580056269.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353446.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A354145.P7144256352306792372

`∩[A102467(n+1), A125493(n+1)]`
-/

namespace A354145.P7144256352306792372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102467 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125493 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354145.P7144256352306792372

noncomputable section

/-- A354145: Deficient numbers that are neither prime powers nor semiprimes.

Offset 1, canonical program `A354145.P7144256352306792372`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 502 terms. -/
def A354145 (n : ℕ) : ℤ :=
  (A354145.P7144256352306792372.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 502 terms. -/
def A354145.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360395.P2153048624438428772

`floor(3*(A285973(n+1)-n)/2)`
-/

namespace A360395.P2153048624438428772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 * (A285973 (n + 1) - (n : ℤ)) : ℚ) / 2⌋

end

end A360395.P2153048624438428772

noncomputable section

/-- A360395: Intersection of A026430 and A360393.

Offset 1, canonical program `A360395.P2153048624438428772`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360395 (n : ℕ) : ℤ :=
  A360395.P2153048624438428772.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360395.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363155.P8045732877436553929

`A363928(5*n+4)`
-/

namespace A363155.P8045732877436553929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363928 (5 * n + 4)

end

end A363155.P8045732877436553929

noncomputable section

/-- A363155: Expansion of Sum_{k>0} k * x^(3*k-1) / (1 - x^(5*k-2)).

Offset 1, canonical program `A363155.P8045732877436553929`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A363155 (n : ℕ) : ℤ :=
  A363155.P8045732877436553929.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A363155.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363156.P4260273011259054206

`A363928(A016885(n))`
-/

namespace A363156.P4260273011259054206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363928 (A016885 n).toNat

end

end A363156.P4260273011259054206

noncomputable section

/-- A363156: Expansion of Sum_{k>0} k * x^k / (1 - x^(5*k-2)).

Offset 1, canonical program `A363156.P4260273011259054206`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A363156 (n : ℕ) : ℤ :=
  A363156.P4260273011259054206.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A363156.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363157.P11495080749246290306

`A363928(5*n+2)`
-/

namespace A363157.P11495080749246290306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363928 (5 * n + 2)

end

end A363157.P11495080749246290306

noncomputable section

/-- A363157: Expansion of Sum_{k>0} k * x^(4*k-1) / (1 - x^(5*k-2)).

Offset 1, canonical program `A363157.P11495080749246290306`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A363157 (n : ℕ) : ℤ :=
  A363157.P11495080749246290306.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A363157.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363158.P2370107232160215343

`A363928(5*n+1)`
-/

namespace A363158.P2370107232160215343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363928 (5 * n + 1)

end

end A363158.P2370107232160215343

noncomputable section

/-- A363158: Expansion of Sum_{k>0} k * x^(2*k) / (1 - x^(5*k-2)).

Offset 1, canonical program `A363158.P2370107232160215343`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A363158 (n : ℕ) : ℤ :=
  A363158.P2370107232160215343.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A363158.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364015.P9253596090287980520

`A364012(n+1)-A121443(n+1)`
-/

namespace A364015.P9253596090287980520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364012 (n + 1) - A121443 (n + 1)

end

end A364015.P9253596090287980520

noncomputable section

/-- A364015: Expansion of Sum_{k>0} k * x^(2*k) / (1 + x^(3*k)).

Offset 1, canonical program `A364015.P9253596090287980520`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364015 (n : ℕ) : ℤ :=
  A364015.P9253596090287980520.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364015.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A373470.P8197949945481650246

`A043555(n+1)-A043555(n)`
-/

namespace A373470.P8197949945481650246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043555 (n + 1) - A043555 n

end

end A373470.P8197949945481650246

noncomputable section

/-- A373470: First differences of A043555 = number of runs in base-3 representation of n.

Offset 0, canonical program `A373470.P8197949945481650246`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A043555, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373470 (n : ℕ) : ℤ :=
  A373470.P8197949945481650246.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A043555, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373470.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A374015.P15186651085114264246

`A008904(n)%5`
-/

namespace A374015.P15186651085114264246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008904 n) 5

end

end A374015.P15186651085114264246

noncomputable section

/-- A374015: Residue modulo 5 of n! divided by the highest power of 10 which divides n!.

Offset 0, canonical program `A374015.P15186651085114264246`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374015 (n : ℕ) : ℤ :=
  A374015.P15186651085114264246.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374015.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374061.P16980433022031769018

`floor(A035185(n+1)/2)`
-/

namespace A374061.P16980433022031769018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A035185 (n + 1) : ℚ) / 2⌋

end

end A374061.P16980433022031769018

noncomputable section

/-- A374061: Number of solutions to a^2 + n = 2 * b^2 with 0 < a < b.

Offset 1, canonical program `A374061.P16980433022031769018`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374061 (n : ℕ) : ℤ :=
  A374061.P16980433022031769018.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374061.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380892.P2425458622169530326

`∩[A074315(n+1), A000384(n)]`
-/

namespace A380892.P2425458622169530326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380892.P2425458622169530326

noncomputable section

/-- A380892: Hexagonal numbers that are abundant.

Offset 1, canonical program `A380892.P2425458622169530326`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1430 terms. -/
def A380892 (n : ℕ) : ℤ :=
  (A380892.P2425458622169530326.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1430 terms. -/
def A380892.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386024.P17777215466388512273

`∩[A160337(n+1), A329760(n+1)]`
-/

namespace A386024.P17777215466388512273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386024.P17777215466388512273

noncomputable section

/-- A386024: Primes having only {0, 1, 3, 5} as digits.

Offset 1, canonical program `A386024.P17777215466388512273`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 535 terms. -/
def A386024 (n : ℕ) : ℤ :=
  (A386024.P17777215466388512273.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 535 terms. -/
def A386024.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386107.P9360061858123555193

`∩[A001729(n+1), A361822(n+1)]`
-/

namespace A386107.P9360061858123555193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361822 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386107.P9360061858123555193

noncomputable section

/-- A386107: Primes having only {1, 3, 4, 7} as digits.

Offset 1, canonical program `A386107.P9360061858123555193`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 290 terms. -/
def A386107 (n : ℕ) : ℤ :=
  (A386107.P9360061858123555193.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 290 terms. -/
def A386107.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386113.P5229020975382995121

`∩[A030096(n+1), A329760(n+1)]`
-/

namespace A386113.P5229020975382995121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386113.P5229020975382995121

noncomputable section

/-- A386113: Primes having only {1, 3, 5, 9} as digits.

Offset 1, canonical program `A386113.P5229020975382995121`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 881 terms. -/
def A386113 (n : ℕ) : ℤ :=
  (A386113.P5229020975382995121.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 881 terms. -/
def A386113.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390126.P4203344648687792492

`∪[A177492(n+1), A177493(n+1)]`
-/

namespace A390126.P4203344648687792492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177493 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A390126.P4203344648687792492

noncomputable section

/-- A390126: Powers k^m, m = 2..3, of squarefree composite k.

Offset 1, canonical program `A390126.P4203344648687792492`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390126 (n : ℕ) : ℤ :=
  (A390126.P4203344648687792492.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390126.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A391497.P15735606706962389679

`∩[A362148(n+1), A375072(n+1)]`
-/

namespace A391497.P15735606706962389679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375072 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391497.P15735606706962389679

noncomputable section

/-- A391497: Biquadratefree numbers that are neither cubefree nor cubefull.

Offset 1, canonical program `A391497.P15735606706962389679`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5507 terms. -/
def A391497 (n : ℕ) : ℤ :=
  (A391497.P15735606706962389679.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5507 terms. -/
def A391497.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A396283.P13868189083896900489

`(n+1)*(A000290(n+1)-2*A024916(n+1))+A350123(n+1)`
-/

namespace A396283.P13868189083896900489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A000290 (n + 1) - 2 * A024916 (n + 1)) + A350123 (n + 1)

end

end A396283.P13868189083896900489

noncomputable section

/-- A396283: a(n) = Sum_{k=1..n} (n mod k)^2.

Offset 1, canonical program `A396283.P13868189083896900489`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350123, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A396283 (n : ℕ) : ℤ :=
  A396283.P13868189083896900489.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350123, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A396283.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A396284.P3005908805938491279

`(n+1)*(A000578(n+1)-3*((n+1)*A024916(n+1)-A350123(n+1)))-A356249(n+1)`
-/

namespace A396284.P3005908805938491279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A000578 (n + 1) - 3 * ((n + 1 : ℤ) * A024916 (n + 1) - A350123 (n + 1))) - A356249 (n + 1)

end

end A396284.P3005908805938491279

noncomputable section

/-- A396284: a(n) = Sum_{k=1..n} (n mod k)^3.

Offset 1, canonical program `A396284.P3005908805938491279`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350123, A356249, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A396284 (n : ℕ) : ℤ :=
  A396284.P3005908805938491279.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350123, A356249, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A396284.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A327829.P6390908241327507115

`∩[A000469(n+1), A063989(n+1)]`
-/

namespace A327829.P6390908241327507115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063989 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327829.P6390908241327507115

noncomputable section

/-- A327829: Squarefree numbers with a prime number of prime factors.

Offset 1, canonical program `A327829.P6390908241327507115`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6930 terms. -/
def A327829 (n : ℕ) : ℤ :=
  (A327829.P6390908241327507115.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6930 terms. -/
def A327829.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353351.P1500515307686791628

`A000005(n+1)-A353352(n+1)`
-/

namespace A353351.P1500515307686791628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A353352 (n + 1)

end

end A353351.P1500515307686791628

noncomputable section

/-- A353351: Number of divisors d of n for which A048675(d) is not a multiple of 3.

Offset 1, canonical program `A353351.P1500515307686791628`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A353352, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353351 (n : ℕ) : ℤ :=
  A353351.P1500515307686791628.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A353352, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353351.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366562.P1526609418940830950

`∏{p}[n+1, 1-#]*A229297((n+1)²/∏{p}[n+1, #])`
-/

namespace A366562.P1526609418940830950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), (1 - (p : ℤ))) * A229297 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ))).toNat

end

end A366562.P1526609418940830950

noncomputable section

/-- A366562: a(n) = Sum_{k=1..n} A366561(n,k)*A023900(k)/n.

Offset 1, canonical program `A366562.P1526609418940830950`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 197 terms. -/
def A366562 (n : ℕ) : ℤ :=
  A366562.P1526609418940830950.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 197 terms. -/
def A366562.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366605.P16691471640151617697

`A046799(2*n)`
-/

namespace A366605.P16691471640151617697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046799 (2 * n)

end

end A366605.P16691471640151617697

noncomputable section

/-- A366605: Number of distinct prime divisors of 4^n + 1.

Offset 0, canonical program `A366605.P16691471640151617697`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046799, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366605 (n : ℕ) : ℤ :=
  A366605.P16691471640151617697.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046799, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366605.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366655.P3595836475585718572

`A046799(3*n)`
-/

namespace A366655.P3595836475585718572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046799 (3 * n)

end

end A366655.P3595836475585718572

noncomputable section

/-- A366655: Number of distinct prime divisors of 8^n + 1.

Offset 0, canonical program `A366655.P3595836475585718572`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046799, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366655 (n : ℕ) : ℤ :=
  A366655.P3595836475585718572.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046799, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366655.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A370082.P6772525730967909071

`7*A004613(n+1)-3`
-/

namespace A370082.P6772525730967909071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A004613 (n + 1) - 3

end

end A370082.P6772525730967909071

noncomputable section

/-- A370082: The number of square lattice nodes inside the n-th largest octagon with angles 3*Pi/4, along the perimeter of which there are only 8 lattice nodes - at the vertices of the octagon.

Offset 1, canonical program `A370082.P6772525730967909071`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004613, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A370082 (n : ℕ) : ℤ :=
  A370082.P6772525730967909071.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004613, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A370082.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A371698.P14444851263575026749

`2*A002003(n+1)-(1+(n+1)*(2^(n+1)-1))`
-/

namespace A371698.P14444851263575026749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002003 (n + 1) - (1 + (n + 1 : ℤ) * ((2 ^ (n + 1) : ℤ) - 1))

end

end A371698.P14444851263575026749

noncomputable section

/-- A371698: Number of partial order-preserving or -reversing transformations of a chain of length n.

Offset 1, canonical program `A371698.P14444851263575026749`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002003, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A371698 (n : ℕ) : ℤ :=
  A371698.P14444851263575026749.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002003, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A371698.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A372771.P4411749344407229713

`comp[A004273(comp[A004613(n+1)])]`
-/

namespace A372771.P4411749344407229713
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004613 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A372771.P4411749344407229713

noncomputable section

/-- A372771: Numbers m such that the congruence x^(m+1) == m (mod m+1) is solvable.

Offset 1, canonical program `A372771.P4411749344407229713`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372771 (n : ℕ) : ℤ :=
  (A372771.P4411749344407229713.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372771.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A377880.P16509850841699067558

`∪[A000469(n+1), A067259(n+1)]`
-/

namespace A377880.P16509850841699067558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A377880.P16509850841699067558

noncomputable section

/-- A377880: Nonprime cubefree numbers.

Offset 1, canonical program `A377880.P16509850841699067558`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A377880 (n : ℕ) : ℤ :=
  (A377880.P16509850841699067558.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A377880.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386018.P6227341428964575611

`∩[A160337(n+1), A386342(n+1)]`
-/

namespace A386018.P6227341428964575611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386018.P6227341428964575611

noncomputable section

/-- A386018: Primes having only {0, 1, 2, 5} as digits.

Offset 1, canonical program `A386018.P6227341428964575611`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 243 terms. -/
def A386018 (n : ℕ) : ℤ :=
  (A386018.P6227341428964575611.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 243 terms. -/
def A386018.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386125.P13342514555091089234

`∩[A038616(n+1), A152313(n+1)]`
-/

namespace A386125.P13342514555091089234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386125.P13342514555091089234

noncomputable section

/-- A386125: Primes having only {1, 4, 6, 9} as digits.

Offset 1, canonical program `A386125.P13342514555091089234`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 573 terms. -/
def A386125 (n : ℕ) : ℤ :=
  (A386125.P13342514555091089234.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 573 terms. -/
def A386125.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324904.P9223201305748335672

`A324902(n+1)+A324903(n+1)`
-/

namespace A324904.P9223201305748335672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324902 (n + 1) + A324903 (n + 1)

end

end A324904.P9223201305748335672

noncomputable section

/-- A324904: The 2-adic valuation of A318466(n), where A318466(n) = 2*n OR sigma(n).

Offset 1, canonical program `A324904.P9223201305748335672`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A324902, A324903, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A324904 (n : ℕ) : ℤ :=
  A324904.P9223201305748335672.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A324902, A324903, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A324904.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A330503.P8991438941767947125

`(n+2)*A002088(n+1)`
-/

namespace A330503.P8991438941767947125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A002088 (n + 1)

end

end A330503.P8991438941767947125

noncomputable section

/-- A330503: Number of Sós permutations of {0,1,...,n}.

Offset 1, canonical program `A330503.P8991438941767947125`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A330503 (n : ℕ) : ℤ :=
  A330503.P8991438941767947125.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A330503.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A332769.P9976973925860660972

`A258996(A054429(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A332769.P9976973925860660972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258996 (A054429 (n + 1)).toNat

end

end A332769.P9976973925860660972

noncomputable section

/-- A332769: Permutation of the positive integers: a(n) = A258996(A054429(n)) = A054429(A258996(n)).

Offset 1, canonical program `A332769.P9976973925860660972`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054429, A258996, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A332769 (n : ℕ) : ℤ :=
  A332769.P9976973925860660972.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054429, A258996, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A332769.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A333046.P18395749149837300678

`(n+1)*A325446(n+1)`
-/

namespace A333046.P18395749149837300678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A325446 (n + 1)

end

end A333046.P18395749149837300678

noncomputable section

/-- A333046: a(1) = 1; a(n) = n * Sum_{d|n, d < n, gcd(d, n/d) = 1} a(d) / d.

Offset 1, canonical program `A333046.P18395749149837300678`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333046 (n : ℕ) : ℤ :=
  A333046.P18395749149837300678.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333046.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333242.P7039414772818827549

`A000720(A262275(n+1))`
-/

namespace A333242.P7039414772818827549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A262275 (n + 1)).toNat

end

end A333242.P7039414772818827549

noncomputable section

/-- A333242: Prime numbers with an odd number of steps in their prime index chain.

Offset 1, canonical program `A333242.P7039414772818827549`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A262275, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A333242 (n : ℕ) : ℤ :=
  A333242.P7039414772818827549.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A262275, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A333242.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A333312.P3354544449326470189

`∪[2*A153238(n+1)+3, A156683(A009005(n+1))]`
-/

namespace A333312.P3354544449326470189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A153238 (n + 1) + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156683 (A009005 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A333312.P3354544449326470189

noncomputable section

/-- A333312: Positive integers m >= 2 such that there are at least two values of v such that the sequence {v, ..., v + m - 1} of m nonnegative integers can be partitioned into two subsets of consecutive integers with the same sum.

Offset 1, canonical program `A333312.P3354544449326470189`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333312 (n : ℕ) : ℤ :=
  (A333312.P3354544449326470189.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333312.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333465.P8571709817543642968

`A018804(n+1)+A333463(n+1)-A000203(n+1)`
-/

namespace A333465.P8571709817543642968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018804 (n + 1) + (A333463 (n + 1) - A000203 (n + 1))

end

end A333465.P8571709817543642968

noncomputable section

/-- A333465: a(n) = Sum_{k=1..n} ceiling(n/k) * gcd(n,k).

Offset 1, canonical program `A333465.P8571709817543642968`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333465 (n : ℕ) : ℤ :=
  A333465.P8571709817543642968.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333465.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333623.P14520114881090528427

`lt[(n+1)%A319715(n+1), 1]+1`
-/

namespace A333623.P14520114881090528427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A319715 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A333623.P14520114881090528427

noncomputable section

/-- A333623: Numbers k such that k is divisible by the sum of digits of all the divisors of k in primorial base (A319715).

Offset 1, canonical program `A333623.P14520114881090528427`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. -/
def A333623 (n : ℕ) : ℤ :=
  (A333623.P14520114881090528427.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. -/
def A333623.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333839.P8771621751461839963

`∑[A033597(n+4)-(n+4)]`
-/

namespace A333839.P8771621751461839963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033597 (n + 4) - (n + 4 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333839.P8771621751461839963

noncomputable section

/-- A333839: a(n) = Sum_{k = 4..n} ((prevprime(k) + nextprime(k))/2 - k).

Offset 4, canonical program `A333839.P8771621751461839963`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333839 (n : ℕ) : ℤ :=
  A333839.P8771621751461839963.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333839.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336411.P10199807446028668935

`A029707(n+3)-3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A336411.P10199807446028668935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029707 (n + 3) - 3

end

end A336411.P10199807446028668935

noncomputable section

/-- A336411: a(n) = A029707(n+2) - 3 for n >= 1.

Offset 1, canonical program `A336411.P10199807446028668935`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A029707, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336411 (n : ℕ) : ℤ :=
  A336411.P10199807446028668935.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A029707, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336411.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A340079.P6582088419165452979

`(n+1)/A340078(n+1)`
-/

namespace A340079.P6582088419165452979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A340078 (n + 1) : ℚ)

end

end A340079.P6582088419165452979

noncomputable section

/-- A340079: a(n) = n / gcd(n, 1+A018804(n)), where A018804(n) = Sum_{k=1..n} gcd(k, n).

Offset 1, canonical program `A340079.P6582088419165452979`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A340078, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A340079 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A340079.P6582088419165452979.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A340078, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A340079.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A340265.P8092916214538881554

`n+2-a(Δ[A002088(n)]-1)` with `a(0)=1`
-/

namespace A340265.P8092916214538881554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 2 : ℤ) - a (f1 (n + 1) - f1 n - 1).toNat

end

end A340265.P8092916214538881554

noncomputable section

/-- A340265: a(n) = n + 1 - a(phi(n)).

Offset 1, canonical program `A340265.P8092916214538881554`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340265 (n : ℕ) : ℤ :=
  A340265.P8092916214538881554.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340265.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343303.P7519863497709517625

`A231089(n+1)+A033999(p?[A016777(n)])`
-/

namespace A343303.P7519863497709517625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231089 (n + 1) + A033999 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A343303.P7519863497709517625

noncomputable section

/-- A343303: Numbers in A231626 but not in A343302; first of 5 consecutive deficient numbers in arithmetic progression with common difference > 1.

Offset 1, canonical program `A343303.P7519863497709517625`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 611 terms. -/
def A343303 (n : ℕ) : ℤ :=
  A343303.P7519863497709517625.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 611 terms. -/
def A343303.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343504.P12989595719974363290

`lcm(a(A257687(n)), A099563(n))` with `a(0)=1`
-/

namespace A343504.P12989595719974363290
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (a (A257687 n).toNat : ℤ) (A099563 n)

end

end A343504.P12989595719974363290

noncomputable section

/-- A343504: a(n) is the least common multiple of the nonzero digits in factorial base expansion of n.

Offset 0, canonical program `A343504.P12989595719974363290`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A343504 (n : ℕ) : ℤ :=
  (A343504.P12989595719974363290.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A343504.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344372.P8730494171943305758

`-A332794(2*(n+1))`
-/

namespace A344372.P8730494171943305758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A332794 (2 * (n + 1))

end

end A344372.P8730494171943305758

noncomputable section

/-- A344372: a(n) = Sum_{k = 1..n} gcd(2*k, n).

Offset 1, canonical program `A344372.P8730494171943305758`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A332794, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A344372 (n : ℕ) : ℤ :=
  A344372.P8730494171943305758.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A332794, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A344372.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A344521.P15693344205038939177

`∑[A309322(n+1)]`
-/

namespace A344521.P15693344205038939177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309322 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344521.P15693344205038939177

noncomputable section

/-- A344521: a(n) = Sum_{1 <= i <= j <= k <= n} gcd(i,j,k).

Offset 1, canonical program `A344521.P15693344205038939177`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344521 (n : ℕ) : ℤ :=
  A344521.P15693344205038939177.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344521.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345091.P9820535298903829219

`A023896(n+1)+1-Δ[A002088(n)]+n`
-/

namespace A345091.P9820535298903829219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023896 (n + 1) + (1 - (f1 (n + 1) - f1 n) + (n : ℤ))

end

end A345091.P9820535298903829219

noncomputable section

/-- A345091: a(n) = Sum_{k=1..n} k^floor(1/gcd(n,k)).

Offset 1, canonical program `A345091.P9820535298903829219`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345091 (n : ℕ) : ℤ :=
  A345091.P9820535298903829219.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345091.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348327.P11076907261933524591

`1-A347950(n+1)`
-/

namespace A348327.P11076907261933524591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A347950 (n + 1)

end

end A348327.P11076907261933524591

noncomputable section

/-- A348327: Characteristic function of numbers that have no middle divisors.

Offset 1, canonical program `A348327.P11076907261933524591`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A347950, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348327 (n : ℕ) : ℤ :=
  A348327.P11076907261933524591.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A347950, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348327.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348364.P5163504315235711716

`1+A347950(n+1)`
-/

namespace A348364.P5163504315235711716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A347950 (n + 1)

end

end A348364.P5163504315235711716

noncomputable section

/-- A348364: Number of vertices on the axis of symmetry of the symmetric representation of sigma(n).

Offset 1, canonical program `A348364.P5163504315235711716`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A347950, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348364 (n : ℕ) : ℤ :=
  A348364.P5163504315235711716.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A347950, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348364.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348471.P4748451350327565976

`eq[0, A347950(2*(n+1))]+1`
-/

namespace A348471.P4748451350327565976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347950 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A348471.P4748451350327565976

noncomputable section

/-- A348471: One half of the even numbers without middle divisors.

Offset 1, canonical program `A348471.P4748451350327565976`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348471 (n : ℕ) : ℤ :=
  (A348471.P4748451350327565976.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348471.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348677.P12041509539647670039

`A001223(A000720(A262275(n+1))-1)`
-/

namespace A348677.P12041509539647670039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A000720 (A262275 (n + 1)).toNat - 1).toNat

end

end A348677.P12041509539647670039

noncomputable section

/-- A348677: a(n) is the difference between A262275(n) and the next lower prime.

Offset 1, canonical program `A348677.P12041509539647670039`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A001223, A262275, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348677 (n : ℕ) : ℤ :=
  A348677.P12041509539647670039.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A001223, A262275, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348677.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348907.P8875665345231982490

`A008578(A342165(n+2))`
-/

namespace A348907.P8875665345231982490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A342165 (n + 2)).toNat

end

end A348907.P8875665345231982490

noncomputable section

/-- A348907: If n is prime, a(n) = n, else a(n) = a(n-pi(n)), n >= 2; where pi is the prime counting function A000720.

Offset 2, canonical program `A348907.P8875665345231982490`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A348907 (n : ℕ) : ℤ :=
  A348907.P8875665345231982490.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A348907.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A350162.P14962107190166092220

`2*A350166(n+1)-A014200(n+1)`
-/

namespace A350162.P14962107190166092220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A350166 (n + 1) - A014200 (n + 1)

end

end A350162.P14962107190166092220

noncomputable section

/-- A350162: a(n) = Sum_{k=1..n} (-1)^(k+1) * floor(n/(2*k-1))^2.

Offset 1, canonical program `A350162.P14962107190166092220`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014200, A350166, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A350162 (n : ℕ) : ℤ :=
  A350162.P14962107190166092220.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014200, A350166, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A350162.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351518.P3848727873794154647

`A007947(n+1)/A351517(n+1)`
-/

namespace A351518.P3848727873794154647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) / (A351517 (n + 1) : ℚ)

end

end A351518.P3848727873794154647

noncomputable section

/-- A351518: a(n) = Product_{p|n, p prime} p^((pi(p)+1) mod 2).

Offset 1, canonical program `A351518.P3848727873794154647`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A351517, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351518 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A351518.P3848727873794154647.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A351517, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351518.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353376.P17395599227026768174

`∑{d}[n+1, A353374(#)]`
-/

namespace A353376.P17395599227026768174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A353374 d

end

end A353376.P17395599227026768174

noncomputable section

/-- A353376: Inverse Möbius transform of A353374.

Offset 1, canonical program `A353376.P17395599227026768174`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353376 (n : ℕ) : ℤ :=
  A353376.P17395599227026768174.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353376.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353381.P8581295006819981312

`∑{d}[n+1, abs(A353354((n+1)/#))]`
-/

namespace A353381.P8581295006819981312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), |A353354 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat|

end

end A353381.P8581295006819981312

noncomputable section

/-- A353381: Number of divisors of n not in A353355.

Offset 1, canonical program `A353381.P8581295006819981312`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353381 (n : ℕ) : ℤ :=
  A353381.P8581295006819981312.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353381.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A354028.P1581446969738765077

`and(∑[n], A174275(n+1))`
-/

namespace A354028.P1581446969738765077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A174275 (n + 1))

end

end A354028.P1581446969738765077

noncomputable section

/-- A354028: a(n) = 1 if n is a prime power of the form 4m+3, otherwise 0.

Offset 1, canonical program `A354028.P1581446969738765077`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354028 (n : ℕ) : ℤ :=
  A354028.P1581446969738765077.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354028.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356229.P13870738333208729634

`A287170(2*(n+1))`
-/

namespace A356229.P13870738333208729634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287170 (2 * (n + 1))

end

end A356229.P13870738333208729634

noncomputable section

/-- A356229: Number of maximal gapless submultisets of the prime indices of 2n.

Offset 1, canonical program `A356229.P13870738333208729634`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A287170, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A356229 (n : ℕ) : ℤ :=
  A356229.P13870738333208729634.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A287170, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A356229.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A358775.P186316073311137484

`A065043(n+1)-A353374(n+1)`
-/

namespace A358775.P186316073311137484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065043 (n + 1) - A353374 (n + 1)

end

end A358775.P186316073311137484

noncomputable section

/-- A358775: a(n) = 1 if the prime factorization of n has an even number of prime factors that sum to an odd number, otherwise 0.

Offset 1, canonical program `A358775.P186316073311137484`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065043, A353374, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A358775 (n : ℕ) : ℤ :=
  A358775.P186316073311137484.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065043, A353374, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A358775.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A359042.P13411366105931231401

`A230877(n)+A080791(n)`
-/

namespace A359042.P13411366105931231401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230877 n + A080791 n

end

end A359042.P13411366105931231401

noncomputable section

/-- A359042: Sum of partial sums of the n-th composition in standard order (A066099).

Offset 0, canonical program `A359042.P13411366105931231401`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A359042 (n : ℕ) : ℤ :=
  A359042.P13411366105931231401.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A359042.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A360323.P5397994935056253969

`A079458(A000040(n+1))`
-/

namespace A360323.P5397994935056253969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079458 (A000040 (n + 1)).toNat

end

end A360323.P5397994935056253969

noncomputable section

/-- A360323: a(n) is the number of solutions to gcd(a^2 + b^2, p) = 1 where p is the n-th prime and 0 <= a,b <= p-1.

Offset 1, canonical program `A360323.P5397994935056253969`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A079458, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A360323 (n : ℕ) : ℤ :=
  A360323.P5397994935056253969.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A079458, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A360323.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363341.P11856642166053254809

`A014200(2*(n+1))-(n+1)`
-/

namespace A363341.P11856642166053254809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014200 (2 * (n + 1)) - (n + 1 : ℤ)

end

end A363341.P11856642166053254809

noncomputable section

/-- A363341: Number of positive integers k <= n such that round(n/k) is odd.

Offset 1, canonical program `A363341.P11856642166053254809`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A363341 (n : ℕ) : ℤ :=
  A363341.P11856642166053254809.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A363341.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366309.P14240225199999852292

`2^A366247(n+1)`
-/

namespace A366309.P14240225199999852292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A366247 (n + 1) : ℤ)

end

end A366309.P14240225199999852292

noncomputable section

/-- A366309: The number of infinitary divisors of n that are terms of A366243.

Offset 1, canonical program `A366309.P14240225199999852292`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A366247, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366309 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A366309.P14240225199999852292.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A366247, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366309.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A369894.P6022834030566867297

`∑{d}[n+1, A347134(#)]`
-/

namespace A369894.P6022834030566867297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A347134 d

end

end A369894.P6022834030566867297

noncomputable section

/-- A369894: a(n) = n * Sum_{p|n, p prime} tau(n/p) / p.

Offset 1, canonical program `A369894.P6022834030566867297`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369894 (n : ℕ) : ℤ :=
  A369894.P6022834030566867297.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369894.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369914.P9923414443239536090

`∑{d}[n+1, A143519(#)*A344578((n+1)/#)]`
-/

namespace A369914.P9923414443239536090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A143519 d * A344578 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369914.P9923414443239536090

noncomputable section

/-- A369914: a(n) = n * Sum_{p|n, p prime} sopf(n/p) / p.

Offset 1, canonical program `A369914.P9923414443239536090`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369914 (n : ℕ) : ℤ :=
  A369914.P9923414443239536090.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369914.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A371907.P13863929953614005785

`A357215(n+1)-A371906(n+1)`
-/

namespace A371907.P13863929953614005785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357215 (n + 1) - A371906 (n + 1)

end

end A371907.P13863929953614005785

noncomputable section

/-- A371907: a(n) = sum of 2^(k-1) such that floor(n/prime(k)) is even.

Offset 1, canonical program `A371907.P13863929953614005785`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A357215, A371906, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A371907 (n : ℕ) : ℤ :=
  A371907.P13863929953614005785.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A357215, A371906, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A371907.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A372635.P16336776361319886160

`A002088(n+1)²`
-/

namespace A372635.P16336776361319886160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 (n + 1) ^ 2

end

end A372635.P16336776361319886160

noncomputable section

/-- A372635: a(n) = Sum_{j=1..n} Sum_{k=1..n} phi(j)*phi(k).

Offset 1, canonical program `A372635.P16336776361319886160`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372635 (n : ℕ) : ℤ :=
  A372635.P16336776361319886160.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372635.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A377802.P6352226413421692588

`round(A109857(n+1)/2)`
-/

namespace A377802.P6352226413421692588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A109857 (n + 1) : ℚ) / 2)

end

end A377802.P6352226413421692588

noncomputable section

/-- A377802: Triangle read by rows: T(n, k) = (2 * (n+1)^2 + 7 - (-1)^n) / 8 - k.

Offset 1, canonical program `A377802.P6352226413421692588`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A377802 (n : ℕ) : ℤ :=
  A377802.P6352226413421692588.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A377802.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380549.P9090149559368070588

`lt[A172187(n+2), A172187(A364085(n+1))]`
-/

namespace A380549.P9090149559368070588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172187 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172187 (A364085 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A380549.P9090149559368070588

noncomputable section

/-- A380549: List of numbers of the form i + 3*j + 4*i*j for i, j >= 1.

Offset 1, canonical program `A380549.P9090149559368070588`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4672 terms. -/
def A380549 (n : ℕ) : ℤ :=
  (A380549.P9090149559368070588.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4672 terms. -/
def A380549.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A382291.P6985755138510803654

`2^A382290(n+1)`
-/

namespace A382291.P6985755138510803654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A382290 (n + 1) : ℤ)

end

end A382291.P6985755138510803654

noncomputable section

/-- A382291: a(n) = A037445(n)/A034444(n).

Offset 1, canonical program `A382291.P6985755138510803654`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A382290, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382291 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A382291.P6985755138510803654.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A382290, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382291.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A385682.P9546998427617128553

`n*(A002088(n+1)-1)`
-/

namespace A385682.P9546998427617128553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A002088 (n + 1) - 1)

end

end A385682.P9546998427617128553

noncomputable section

/-- A385682: a(n) = (n - 1) * Sum_{k=2..n} A000010(k).

Offset 1, canonical program `A385682.P9546998427617128553`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A385682 (n : ℕ) : ℤ :=
  A385682.P9546998427617128553.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A385682.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A396515.P9540040117226872358

`A000005(n+1)+A396514(n+1)`
-/

namespace A396515.P9540040117226872358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + A396514 (n + 1)

end

end A396515.P9540040117226872358

noncomputable section

/-- A396515: a(n) = Sum_{k=1..n} gcd(k,n)^(ceiling(n/k) - floor(n/k)).

Offset 1, canonical program `A396515.P9540040117226872358`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A396514, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A396515 (n : ℕ) : ℤ :=
  A396515.P9540040117226872358.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A396514, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A396515.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A328103.P14408953863942436734

`xor(A110240(n), A267357(n))`
-/

namespace A328103.P14408953863942436734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A110240 n) (A267357 n)

end

end A328103.P14408953863942436734

noncomputable section

/-- A328103: Bitwise XOR of trajectories of rule 30 and rule 124, when both are started from a lone 1 cell: a(n) = A110240(n) XOR A267357(n).

Offset 0, canonical program `A328103.P14408953863942436734`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A110240, A267357, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A328103 (n : ℕ) : ℤ :=
  A328103.P14408953863942436734.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A110240, A267357, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A328103.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A329242.P1185710204891356265

`A033270(n+1)-4*A071839(n+1)`
-/

namespace A329242.P1185710204891356265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (n + 1) - 4 * A071839 (n + 1)

end

end A329242.P1185710204891356265

noncomputable section

/-- A329242: a(n) = Pi(8,3)(n) + Pi(8,5)(n) + Pi(8,7)(n) - 3*Pi(8,1)(n), where Pi(a,b)(x) denotes the number of primes in the arithmetic progression a*k + b less than or equal to x.

Offset 1, canonical program `A329242.P1185710204891356265`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329242 (n : ℕ) : ℤ :=
  A329242.P1185710204891356265.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329242.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330393.P4639006219673885269

`A003602(n+1)+A007814(n+1)`
-/

namespace A330393.P4639006219673885269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (n + 1) + A007814 (n + 1)

end

end A330393.P4639006219673885269

noncomputable section

/-- A330393: A 2-regular sequence whose reciprocal is not 2-regular.

Offset 0, canonical program `A330393.P4639006219673885269`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A330393 (n : ℕ) : ℤ :=
  A330393.P4639006219673885269.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A330393.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A331281.P996979535116224856

`A057427(C(A086436(n+1), A061395(n+1)))`
-/

namespace A331281.P996979535116224856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (Nat.choose (A086436 (n + 1)).toNat (A061395 (n + 1)).toNat)

end

end A331281.P996979535116224856

noncomputable section

/-- A331281: If A061395(n) <= A001222(n), then a(n) = 1, otherwise a(n) = 0.

Offset 1, canonical program `A331281.P996979535116224856`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A331281 (n : ℕ) : ℤ :=
  A331281.P996979535116224856.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A331281.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A331282.P7456881985685693272

`char[lt[A061395(n+1), ∑{e}[n+1, #]]]`
-/

namespace A331282.P7456881985685693272
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), Nat.factorization (f4 n) p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A331282.P7456881985685693272

noncomputable section

/-- A331282: If A061395(n) < A001222(n), then a(n) = 1, otherwise a(n) = 0.

Offset 1, canonical program `A331282.P7456881985685693272`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A331282 (n : ℕ) : ℤ :=
  (A331282.P7456881985685693272.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A331282.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A331893.P3755749678923990802

`∩[A331891(n+1), A331892(n+1)]`
-/

namespace A331893.P3755749678923990802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331891 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331892 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331893.P3755749678923990802

noncomputable section

/-- A331893: Positive numbers k such that both k and -k are a palindromes in negabinary representation.

Offset 1, canonical program `A331893.P3755749678923990802`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 930 terms. -/
def A331893 (n : ℕ) : ℤ :=
  (A331893.P3755749678923990802.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 930 terms. -/
def A331893.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A331894.P10099918075872049775

`∩[A180204(n+1), A331891(n+1)]`
-/

namespace A331894.P10099918075872049775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180204 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331894.P10099918075872049775

noncomputable section

/-- A331894: Positive numbers such that both their binary and negabinary representations are palindromic.

Offset 1, canonical program `A331894.P10099918075872049775`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 270 terms. -/
def A331894 (n : ℕ) : ℤ :=
  (A331894.P10099918075872049775.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 270 terms. -/
def A331894.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332422.P2549243754206614322

`∑{p}[n+1, A181983(A026238(#))]`
-/

namespace A332422.P2549243754206614322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A181983 (A026238 p).toNat

end

end A332422.P2549243754206614322

noncomputable section

/-- A332422: If n = Product (p_j^k_j) then a(n) = Sum ((-1)^(pi(p_j) + 1) * pi(p_j)), where pi = A000720.

Offset 1, canonical program `A332422.P2549243754206614322`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A332422 (n : ℕ) : ℤ :=
  A332422.P2549243754206614322.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A332422.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334469.P12018164679622748302

`record[3-A000040(A061395(n+2))+n]`
-/

namespace A334469.P12018164679622748302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A000040 (A061395 (n + 2)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334469.P12018164679622748302

noncomputable section

/-- A334469: Indices of zero or positive first differences in A217287.

Offset 1, canonical program `A334469.P12018164679622748302`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5504 terms. -/
def A334469 (n : ℕ) : ℤ :=
  A334469.P12018164679622748302.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5504 terms. -/
def A334469.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336371.P14472383251782372685

`A061395(∏{d}[A336373(n+1), #])`
-/

namespace A336371.P14472383251782372685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336373 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A336371.P14472383251782372685

noncomputable section

/-- A336371: Numbers k such that gcd(k, prime(k) + prime(k-1)) > 1.

Offset 1, canonical program `A336371.P14472383251782372685`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6169 terms. -/
def A336371 (n : ℕ) : ℤ :=
  A336371.P14472383251782372685.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6169 terms. -/
def A336371.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338245.P9307757376313236030

`A117966(record[A330740(n)])`
-/

namespace A338245.P9307757376313236030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330740 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A338245.P9307757376313236030

noncomputable section

/-- A338245: Nonnegative values in A117966, in order of appearance.

Offset 0, canonical program `A338245.P9307757376313236030`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9842 terms. -/
def A338245 (n : ℕ) : ℤ :=
  A338245.P9307757376313236030.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9842 terms. -/
def A338245.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338453.P14158950893179917223

`∩[A338452(n+1)-1, A338452(n+1)]`
-/

namespace A338453.P14158950893179917223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338452 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338452 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338453.P14158950893179917223

noncomputable section

/-- A338453: Starts of runs of 3 consecutive numbers with the same total binary weight of their divisors (A093653).

Offset 1, canonical program `A338453.P14158950893179917223`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. -/
def A338453 (n : ℕ) : ℤ :=
  (A338453.P14158950893179917223.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. -/
def A338453.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338514.P16262333784085285906

`∩[A093705(n+1)-1, A093705(n+1)]`
-/

namespace A338514.P16262333784085285906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093705 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093705 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338514.P16262333784085285906

noncomputable section

/-- A338514: Numbers k such that k and k+1 are both divisible by the total binary weight of their divisors (A093653).

Offset 1, canonical program `A338514.P16262333784085285906`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A338514 (n : ℕ) : ℤ :=
  (A338514.P16262333784085285906.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A338514.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345039.P8520321823126508405

`A057860(n+1)%A008619(A016035(n+1))`
-/

namespace A345039.P8520321823126508405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057860 (n + 1)) (A008619 (A016035 (n + 1)).toNat)

end

end A345039.P8520321823126508405

noncomputable section

/-- A345039: Number of partitions of n into two composite parts that share a nontrivial divisor.

Offset 1, canonical program `A345039.P8520321823126508405`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345039 (n : ℕ) : ℤ :=
  A345039.P8520321823126508405.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345039.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349370.P8267721681669448935

`∑{d}[n+1, A003602(#)*A003602((n+1)/#)]`
-/

namespace A349370.P8267721681669448935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003602 d * A003602 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349370.P8267721681669448935

noncomputable section

/-- A349370: Dirichlet convolution of Kimberling's paraphrase, A003602, with itself.

Offset 1, canonical program `A349370.P8267721681669448935`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349370 (n : ℕ) : ℤ :=
  A349370.P8267721681669448935.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349370.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349612.P9375249722541774064

`∑{d}[A349394(n+1), A125131(#)]`
-/

namespace A349612.P9375249722541774064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349394 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A125131 d

end

end A349612.P9375249722541774064

noncomputable section

/-- A349612: Dirichlet convolution of A342001 [{arithmetic derivative of n}/A003557(n)] with A325126 [Dirichlet inverse of rad(n)].

Offset 1, canonical program `A349612.P9375249722541774064`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349612 (n : ℕ) : ℤ :=
  A349612.P9375249722541774064.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349612.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351460.P8243129244187876021

`A003602(n+1)+A001065(A008578(3*n+1))`
-/

namespace A351460.P8243129244187876021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (n + 1) + A001065 (A008578 (3 * n + 1)).toNat

end

end A351460.P8243129244187876021

noncomputable section

/-- A351460: Lexicographically earliest infinite sequence such that a(i) = a(j) => A006530(i) = A006530(j), A206787(i) = A206787(j) and A336651(i) = A336651(j) for all i, j >= 1.

Offset 1, canonical program `A351460.P8243129244187876021`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 410 terms. -/
def A351460 (n : ℕ) : ℤ :=
  A351460.P8243129244187876021.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 410 terms. -/
def A351460.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A352775.P2048892064585624364

`A352753(n+1)+A352754(n+1)`
-/

namespace A352775.P2048892064585624364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352753 (n + 1) + A352754 (n + 1)

end

end A352775.P2048892064585624364

noncomputable section

/-- A352775: a(n) = pi(n) * (Sum_{n <= q < 2n, q prime} q) + (pi(2n-1) - pi(n-1)) * (Sum_{p <= n, p prime} p).

Offset 1, canonical program `A352775.P2048892064585624364`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A352753, A352754, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A352775 (n : ℕ) : ℤ :=
  A352775.P2048892064585624364.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A352753, A352754, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A352775.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A358654.P4638968349516908894

`A003602(eq[A001511(n+1), A023416(n)]+1)-1`
-/

namespace A358654.P4638968349516908894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1) - 1

end

end A358654.P4638968349516908894

noncomputable section

/-- A358654: a(n) = A025480(A353654(n+1) - 1).

Offset 0, canonical program `A358654.P4638968349516908894`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 403 terms. -/
def A358654 (n : ℕ) : ℤ :=
  A358654.P4638968349516908894.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 403 terms. -/
def A358654.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359371.P15865394443635031041

`lt[0, A359370(n+1)]+1`
-/

namespace A359371.P15865394443635031041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359370 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A359371.P15865394443635031041

noncomputable section

/-- A359371: Nonmultiples of 4 that have an even number of prime factors (with multiplicity).

Offset 1, canonical program `A359371.P15865394443635031041`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359371 (n : ℕ) : ℤ :=
  (A359371.P15865394443635031041.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359371.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359464.P323897448991584528

`ceil(A064179(n+1)/2)`
-/

namespace A359464.P323897448991584528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A064179 (n + 1) : ℚ) / 2⌉

end

end A359464.P323897448991584528

noncomputable section

/-- A359464: a(n) = 1 if the total number of 1-bits in the exponents of prime factorization n is even, otherwise 0.

Offset 1, canonical program `A359464.P323897448991584528`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359464 (n : ℕ) : ℤ :=
  A359464.P323897448991584528.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359464.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A362160.P8719433231678747217

`A003188(A281589(n+1)-1)`
-/

namespace A362160.P8719433231678747217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A281589 (n + 1) - 1).toNat

end

end A362160.P8719433231678747217

noncomputable section

/-- A362160: Irregular triangle read by rows: The n-th row contains 2^n integers corresponding to the words of the n-bit Gray code with the most significant bits changing fastest.

Offset 0, canonical program `A362160.P8719433231678747217`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A362160 (n : ℕ) : ℤ :=
  A362160.P8719433231678747217.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A362160.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366887.P16462098823577047798

`A206787(A163511(n))`
-/

namespace A366887.P16462098823577047798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206787 (A163511 n).toNat

end

end A366887.P16462098823577047798

noncomputable section

/-- A366887: Sum of the odd squarefree divisors permuted by A163511.

Offset 0, canonical program `A366887.P16462098823577047798`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, A206787, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366887 (n : ℕ) : ℤ :=
  A366887.P16462098823577047798.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, A206787, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366887.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366893.P9479425675284615300

`A003602(A000007(n²)+n)`
-/

namespace A366893.P9479425675284615300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A000007 (n ^ 2) + (n : ℤ)).toNat

end

end A366893.P9479425675284615300

noncomputable section

/-- A366893: Lexicographically earliest infinite sequence such that a(i) = a(j) => A366892(i) = A366892(j) for all i, j >= 0.

Offset 0, canonical program `A366893.P9479425675284615300`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A366893 (n : ℕ) : ℤ :=
  A366893.P9479425675284615300.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A366893.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369667.P13821816702914872275

`char[A369668(n+1)]`
-/

namespace A369667.P13821816702914872275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369668 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A369667.P13821816702914872275

noncomputable section

/-- A369667: a(n) = 1 if n' == 3 (mod 4) and n has an even number of prime factors with multiplicity, otherwise 0. Here n' stands for the arithmetic derivative of n, A003415(n).

Offset 0, canonical program `A369667.P13821816702914872275`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369667 (n : ℕ) : ℤ :=
  (A369667.P13821816702914872275.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369667.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369865.P17682209453494408525

`∑{d}[n+1, A048250(#)*A143519((n+1)/#)]`
-/

namespace A369865.P17682209453494408525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048250 d * A143519 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369865.P17682209453494408525

noncomputable section

/-- A369865: a(n) = n * Sum_{p|n, p prime} mu(n/p)^2 / p.

Offset 1, canonical program `A369865.P17682209453494408525`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369865 (n : ℕ) : ℤ :=
  A369865.P17682209453494408525.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369865.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372059.P3781003696721754099

`filter[A117285(n+1), A355937(#)]`
-/

namespace A372059.P3781003696721754099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A372059.P3781003696721754099

noncomputable section

/-- A372059: Indices of record high-points in A280741.

Offset 1, canonical program `A372059.P3781003696721754099`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5177 terms. -/
def A372059 (n : ℕ) : ℤ :=
  A372059.P3781003696721754099.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5177 terms. -/
def A372059.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372442.P7915193120500991903

`A070939(n+2)-A061395(n+2)`
-/

namespace A372442.P7915193120500991903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (n + 2) - A061395 (n + 2)

end

end A372442.P7915193120500991903

noncomputable section

/-- A372442: (Greatest binary index of n) minus (greatest prime index of n).

Offset 2, canonical program `A372442.P7915193120500991903`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061395, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372442 (n : ℕ) : ℤ :=
  A372442.P7915193120500991903.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061395, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372442.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A378542.P16518719972786175247

`A000203(n+1)-A378543(n+1)`
-/

namespace A378542.P16518719972786175247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A378543 (n + 1)

end

end A378542.P16518719972786175247

noncomputable section

/-- A378542: Sum of divisors d of n such that n/d has an even number of prime factors (counted with multiplicity).

Offset 1, canonical program `A378542.P16518719972786175247`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A378543, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378542 (n : ℕ) : ℤ :=
  A378542.P16518719972786175247.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A378543, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378542.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A381542.P14309629720636309362

`eq[A051903(n+1), A061395(2*(n+1))]+1`
-/

namespace A381542.P14309629720636309362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A381542.P14309629720636309362

noncomputable section

/-- A381542: Numbers > 1 whose greatest prime index equals their greatest prime multiplicity.

Offset 1, canonical program `A381542.P14309629720636309362`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 176 terms. -/
def A381542 (n : ℕ) : ℤ :=
  (A381542.P14309629720636309362.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 176 terms. -/
def A381542.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382129.P11262417196826873827

`A000040(A003602(n+1))`
-/

namespace A382129.P11262417196826873827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A003602 (n + 1)).toNat

end

end A382129.P11262417196826873827

noncomputable section

/-- A382129: Fractalization of the prime numbers.

Offset 1, canonical program `A382129.P11262417196826873827`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A003602, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382129 (n : ℕ) : ℤ :=
  A382129.P11262417196826873827.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A003602, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382129.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A387319.P17597783198726216255

`A343311(n+1)-A063524(n)`
-/

namespace A387319.P17597783198726216255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343311 (n + 1) - A063524 n

end

end A387319.P17597783198726216255

noncomputable section

/-- A387319: Numbers k for which modulo 3 and modulo another multiple of 3 are coincident among the fractions (2*k mod m)/m for 1 <= m <= k.

Offset 1, canonical program `A387319.P17597783198726216255`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387319 (n : ℕ) : ℤ :=
  A387319.P17597783198726216255.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387319.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387351.P5126227165797472721

`A387350(n+1)+A005652(n+1)`
-/

namespace A387351.P5126227165797472721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387350 (n + 1) + A005652 (n + 1)

end

end A387351.P5126227165797472721

noncomputable section

/-- A387351: Positions of -1's in A387348.

Offset 1, canonical program `A387351.P5126227165797472721`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387351 (n : ℕ) : ℤ :=
  A387351.P5126227165797472721.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387351.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389481.P15172081649911050968

`p?[A080541(p?[2*n+1])]`
-/

namespace A389481.P15172081649911050968
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080541 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A389481.P15172081649911050968

noncomputable section

/-- A389481: Primes that remain prime when their binary digits are rotated once to the right.

Offset 1, canonical program `A389481.P15172081649911050968`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A389481 (n : ℕ) : ℤ :=
  A389481.P15172081649911050968.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A389481.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390128.P3065140226531891146

`filter[A375072(n+1), A389905(#)]`
-/

namespace A390128.P3065140226531891146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375072 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A390128.P3065140226531891146

noncomputable section

/-- A390128: Biquadratefree numbers that are neither cubefree nor squareful.

Offset 1, canonical program `A390128.P3065140226531891146`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5907 terms. -/
def A390128 (n : ℕ) : ℤ :=
  A390128.P3065140226531891146.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5907 terms. -/
def A390128.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391319.P17833975388560488226

`filter[A362148(n+1), A389905(#)]`
-/

namespace A391319.P17833975388560488226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362148 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A391319.P17833975388560488226

noncomputable section

/-- A391319: Numbers that are neither cubefree nor powerful.

Offset 1, canonical program `A391319.P17833975388560488226`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9779 terms. -/
def A391319 (n : ℕ) : ℤ :=
  A391319.P17833975388560488226.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9779 terms. -/
def A391319.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A326055.P11347868664017450431

`A326054(n+1)+A033879(n+1)`
-/

namespace A326055.P11347868664017450431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326054 (n + 1) + A033879 (n + 1)

end

end A326055.P11347868664017450431

noncomputable section

/-- A326055: a(n) = n - {the largest square that divides n}.

Offset 1, canonical program `A326055.P11347868664017450431`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326054, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326055 (n : ℕ) : ℤ :=
  A326055.P11347868664017450431.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326054, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326055.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A326195.P2163876731620684191

`1+a(A009195(n+1)-1)` with `a(0)=0, a(1)=1`
-/

namespace A326195.P2163876731620684191
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  1 + a (A009195 (n + 1) - 1).toNat

end

end A326195.P2163876731620684191

noncomputable section

/-- A326195: Number of iterations of x -> A009195(x) needed to reach 1 when starting from x = n, where A009195(x) = gcd(x, phi(x)).

Offset 1, canonical program `A326195.P2163876731620684191`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009195, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326195 (n : ℕ) : ℤ :=
  (A326195.P2163876731620684191.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009195, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326195.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A327171.P16996833286360269017

`A000010(n+1)*A007913(n+1)`
-/

namespace A327171.P16996833286360269017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A007913 (n + 1)

end

end A327171.P16996833286360269017

noncomputable section

/-- A327171: a(n) = phi(n) * core(n), where phi is Euler totient function, and core gives the squarefree part of n.

Offset 1, canonical program `A327171.P16996833286360269017`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A007913, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A327171 (n : ℕ) : ℤ :=
  A327171.P16996833286360269017.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A007913, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A327171.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A328160.P15930249408114745958

`p?[2*A276305(n+1)-1]`
-/

namespace A328160.P15930249408114745958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A276305 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A328160.P15930249408114745958

noncomputable section

/-- A328160: Terms k of A112998 such that k+2 is nonsquarefree.

Offset 1, canonical program `A328160.P15930249408114745958`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A328160 (n : ℕ) : ℤ :=
  A328160.P15930249408114745958.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A328160.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329935.P4917152360086528643

`∩[A019506(n+1)-1, A019506(n+1)]`
-/

namespace A329935.P4917152360086528643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019506 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329935.P4917152360086528643

noncomputable section

/-- A329935: Numbers k such that k and k+1 are both hoax numbers (A019506).

Offset 1, canonical program `A329935.P4917152360086528643`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 308 terms. -/
def A329935 (n : ℕ) : ℤ :=
  (A329935.P4917152360086528643.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 308 terms. -/
def A329935.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A331109.P2249905351014711055

`2^∑{e}[n+1, A112310(#)]`
-/

namespace A331109.P2249905351014711055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ p ∈ Nat.primeFactors (f1 n), A112310 (Nat.factorization (f1 n) p) : ℤ)

end

end A331109.P2249905351014711055

noncomputable section

/-- A331109: The number of dual-Zeckendorf-infinitary divisors of n = Product_{i} p(i)^r(i): divisors d = Product_{i} p(i)^s(i), such that the dual Zeckendorf expansion (A104326) of each s(i) contains only terms that are in the dual Zeckendorf expansion of r(i).

Offset 1, canonical program `A331109.P2249905351014711055`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A331109 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A331109.P2249905351014711055.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A331109.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332513.P9883121993506999507

`eq[4, A000010(n+1)%12]+1`
-/

namespace A332513.P9883121993506999507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (n + 1)) 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A332513.P9883121993506999507

noncomputable section

/-- A332513: Numbers k such that phi(k) == 4 (mod 12), where phi is the Euler totient function (A000010).

Offset 1, canonical program `A332513.P9883121993506999507`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7755 terms. -/
def A332513 (n : ℕ) : ℤ :=
  (A332513.P9883121993506999507.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7755 terms. -/
def A332513.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332514.P10691463017122802451

`eq[6, A000010(n+1)%12]+1`
-/

namespace A332514.P10691463017122802451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (n + 1)) 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A332514.P10691463017122802451

noncomputable section

/-- A332514: Numbers k such that phi(k) == 6 (mod 12), where phi is the Euler totient function (A000010).

Offset 1, canonical program `A332514.P10691463017122802451`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2036 terms. -/
def A332514 (n : ℕ) : ℤ :=
  (A332514.P10691463017122802451.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2036 terms. -/
def A332514.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332515.P15703317837093587620

`eq[8, A000010(n+1)%12]+1`
-/

namespace A332515.P15703317837093587620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (n + 1)) 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A332515.P15703317837093587620

noncomputable section

/-- A332515: Numbers k such that phi(k) == 8 (mod 12), where phi is the Euler totient function (A000010).

Offset 1, canonical program `A332515.P15703317837093587620`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5592 terms. -/
def A332515 (n : ℕ) : ℤ :=
  (A332515.P15703317837093587620.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5592 terms. -/
def A332515.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332713.P16432043159449943199

`∑{d}[n+1, A000010((n+1)/gcd(n+1, #²))]`
-/

namespace A332713.P16432043159449943199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Nat.gcd (n + 1) (d ^ 2) : ℚ))).toNat

end

end A332713.P16432043159449943199

noncomputable section

/-- A332713: a(n) = Sum_{d|n} phi(d/gcd(d, n/d)).

Offset 1, canonical program `A332713.P16432043159449943199`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A332713 (n : ℕ) : ℤ :=
  A332713.P16432043159449943199.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A332713.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333169.P8041061752242929731

`A000010(A002522(n))`
-/

namespace A333169.P8041061752242929731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A002522 n).toNat

end

end A333169.P8041061752242929731

noncomputable section

/-- A333169: a(n) = phi(n^2 + 1), where phi is the Euler totient function (A000010).

Offset 0, canonical program `A333169.P8041061752242929731`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A333169 (n : ℕ) : ℤ :=
  A333169.P8041061752242929731.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A333169.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A333558.P15456896144681005881

`∑{d}[n+1, A000040(#)*A000010(#)]`
-/

namespace A333558.P15456896144681005881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000040 d * A000010 d

end

end A333558.P15456896144681005881

noncomputable section

/-- A333558: a(n) = Sum_{d|n} phi(d) * prime(d).

Offset 1, canonical program `A333558.P15456896144681005881`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333558 (n : ℕ) : ℤ :=
  A333558.P15456896144681005881.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333558.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333618.P6178487430166416808

`∑{d}[n+1, A112310(#)]`
-/

namespace A333618.P6178487430166416808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A112310 d

end

end A333618.P6178487430166416808

noncomputable section

/-- A333618: a(n) is the total number of terms (1-digits) in the dual Zeckendorf representation of all divisors of n.

Offset 1, canonical program `A333618.P6178487430166416808`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333618 (n : ℕ) : ℤ :=
  A333618.P6178487430166416808.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333618.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333698.P12169548625343565124

`∑{p}[n+1, A000010(A000720(#))]`
-/

namespace A333698.P12169548625343565124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A000010 (A000720 p).toNat

end

end A333698.P12169548625343565124

noncomputable section

/-- A333698: G.f.: Sum_{k>=1} phi(k) * x^prime(k) / (1 - x^prime(k)).

Offset 1, canonical program `A333698.P12169548625343565124`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333698 (n : ℕ) : ℤ :=
  A333698.P12169548625343565124.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333698.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336224.P7478826169894314693

`record[A056192(A336222(n+1))]`
-/

namespace A336224.P7478826169894314693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056192 (A336222 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336224.P7478826169894314693

noncomputable section

/-- A336224: Numbers k such that the largest square dividing k is a unitary divisor of k and its square root has an even number of prime divisors (counted with multiplicity).

Offset 1, canonical program `A336224.P7478826169894314693`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6663 terms. -/
def A336224 (n : ℕ) : ℤ :=
  A336224.P7478826169894314693.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6663 terms. -/
def A336224.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336477.P16648333239125872670

`A209229(A000010(n+1))`
-/

namespace A336477.P16648333239125872670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A000010 (n + 1)).toNat

end

end A336477.P16648333239125872670

noncomputable section

/-- A336477: a(n) = 1 if a regular n-gon is constructible with ruler (or, more precisely, an unmarked straightedge) and compass, 0 otherwise.

Offset 1, canonical program `A336477.P16648333239125872670`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A209229, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A336477 (n : ℕ) : ℤ :=
  A336477.P16648333239125872670.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A209229, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A336477.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336591.P6846533338555796771

`record[lcm(A007913(n+1), A056191(n+1))]`
-/

namespace A336591.P6846533338555796771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007913 (n + 1)) (A056191 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336591.P6846533338555796771

noncomputable section

/-- A336591: Numbers whose exponents in their prime factorization are either 1, 3, or both.

Offset 1, canonical program `A336591.P6846533338555796771`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336591 (n : ℕ) : ℤ :=
  (A336591.P6846533338555796771.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336591.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336645.P7716507073345907638

`n+1-A326129(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A336645.P7716507073345907638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A326129 (n + 1)

end

end A336645.P7716507073345907638

noncomputable section

/-- A336645: a(n) = n - A326129(n).

Offset 1, canonical program `A336645.P7716507073345907638`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326129, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336645 (n : ℕ) : ℤ :=
  A336645.P7716507073345907638.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326129, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336645.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A337937.P8302761239617674556

`A000010(A001651(n+1))`
-/

namespace A337937.P8302761239617674556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A001651 (n + 1)).toNat

end

end A337937.P8302761239617674556

noncomputable section

/-- A337937: a(n) = Euler totient function phi = A000010 evaluated at N(n) = floor((3*n-1)/2) = A001651(n), for n >= 1.

Offset 1, canonical program `A337937.P8302761239617674556`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A337937 (n : ℕ) : ℤ :=
  A337937.P8302761239617674556.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A337937.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A338522.P13173507621041795602

`A000010(n+1)*A000142(n+1)`
-/

namespace A338522.P13173507621041795602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A000142 (n + 1)

end

end A338522.P13173507621041795602

noncomputable section

/-- A338522: Number of cyclic Latin squares of order n.

Offset 1, canonical program `A338522.P13173507621041795602`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A338522 (n : ℕ) : ℤ :=
  A338522.P13173507621041795602.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A338522.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A340762.P17623527530836035086

`eq[2, A000005(a(A000010(n)))]` with `a(0)=1, a(1)=0, a(2)=1, a(3)=0, a(4)=2`
-/

namespace A340762.P17623527530836035086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 0, 2] fun n f2 =>
  A000005 (f2 (A000010 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A340762.P17623527530836035086

noncomputable section

/-- A340762: Numbers k such that iterations of phi(k), phi(phi(k)), ... end in ... 4, 2, 1.

Offset 1, canonical program `A340762.P17623527530836035086`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340762 (n : ℕ) : ℤ :=
  (A340762.P17623527530836035086.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340762.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341746.P1855135683892942832

`A341916(A053644(n+1)*A280995(n+1))`
-/

namespace A341746.P1855135683892942832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341916 (A053644 (n + 1) * A280995 (n + 1)).toNat

end

end A341746.P1855135683892942832

noncomputable section

/-- A341746: If the runs in the binary expansion of n are (r_1, ..., r_k), then the runs in the binary expansion of a(n) are (r_1 + ... + r_k, r_1, ..., r_{k-1}).

Offset 1, canonical program `A341746.P1855135683892942832`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. -/
def A341746 (n : ℕ) : ℤ :=
  A341746.P1855135683892942832.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. -/
def A341746.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342424.P4079614756208477528

`∑{d}[n+1, ((n+1)/#)^#*A000010(#)]`
-/

namespace A342424.P4079614756208477528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((n + 1 : ℚ) / (d : ℚ)) ^ d * (A000010 d : ℚ)

end

end A342424.P4079614756208477528

noncomputable section

/-- A342424: a(n) = Sum_{k=1..n} gcd(k,n)^(n/gcd(k,n)).

Offset 1, canonical program `A342424.P4079614756208477528`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 614 terms. -/
def A342424 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A342424.P4079614756208477528.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 614 terms. -/
def A342424.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342607.P1887899099928198745

`∑{d}[n+1, A000010(#)^(n+1-#)]`
-/

namespace A342607.P1887899099928198745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A000010 d : ℚ) ^ ((n + 1 : ℤ) - (d : ℤ) : ℤ)

end

end A342607.P1887899099928198745

noncomputable section

/-- A342607: a(n) = Sum_{d|n} phi(d)^(n-d).

Offset 1, canonical program `A342607.P1887899099928198745`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A342607 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A342607.P1887899099928198745.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A342607.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342617.P12995369555951692482

`∑{d}[n+1, A000010(#)^(n+2-#)]`
-/

namespace A342617.P12995369555951692482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A000010 d : ℚ) ^ ((n + 2 : ℤ) - (d : ℤ) : ℤ)

end

end A342617.P12995369555951692482

noncomputable section

/-- A342617: a(n) = Sum_{d|n} phi(d)^(n-d+1).

Offset 1, canonical program `A342617.P12995369555951692482`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A342617 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A342617.P12995369555951692482.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A342617.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343228.P395779845011442952

`A289831(A060372(n))`
-/

namespace A343228.P395779845011442952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289831 (A060372 n).toNat

end

end A343228.P395779845011442952

noncomputable section

/-- A343228: A binary encoding of the digits "+1" in balanced ternary representation of n.

Offset 0, canonical program `A343228.P395779845011442952`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060372, A289831, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A343228 (n : ℕ) : ℤ :=
  A343228.P395779845011442952.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060372, A289831, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A343228.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A344224.P938351998722366507

`∑{d}[n+1, A000010(#)*A062319((n+1)/#)]`
-/

namespace A344224.P938351998722366507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A062319 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344224.P938351998722366507

noncomputable section

/-- A344224: a(n) = Sum_{k=1..n} tau(gcd(k,n)^gcd(k,n)), where tau(n) is the number of divisors of n.

Offset 1, canonical program `A344224.P938351998722366507`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344224 (n : ℕ) : ℤ :=
  A344224.P938351998722366507.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344224.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344484.P17175931869047417338

`∑{d}[n+1, ((n+1)/#)^A000010(#)]`
-/

namespace A344484.P17175931869047417338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((n + 1 : ℚ) / (d : ℚ)) ^ (A000010 d : ℤ)

end

end A344484.P17175931869047417338

noncomputable section

/-- A344484: a(n) = Sum_{d|n} d^phi(n/d).

Offset 1, canonical program `A344484.P17175931869047417338`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 632 terms. -/
def A344484 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A344484.P17175931869047417338.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 632 terms. -/
def A344484.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344996.P14741742852646072087

`A048250(n+1)*A051709(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A344996.P14741742852646072087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (n + 1) * A051709 (n + 1)

end

end A344996.P14741742852646072087

noncomputable section

/-- A344996: a(n) = A048250(n) * A051709(n).

Offset 1, canonical program `A344996.P14741742852646072087`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048250, A051709, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A344996 (n : ℕ) : ℤ :=
  A344996.P14741742852646072087.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048250, A051709, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A344996.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A345201.P2335743236257920929

`A022290(A057889(A003714(n)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A345201.P2335743236257920929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022290 (A057889 (A003714 n).toNat).toNat

end

end A345201.P2335743236257920929

noncomputable section

/-- A345201: Bit-reverse the odd part of the Zeckendorf representation of n: a(n) = A022290(A057889(A003714(n))).

Offset 0, canonical program `A345201.P2335743236257920929`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003714, A022290, A057889, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A345201 (n : ℕ) : ℤ :=
  A345201.P2335743236257920929.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003714, A022290, A057889, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A345201.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A345266.P10002656146987510819

`A056169(n+1)+A063958(n+1)`
-/

namespace A345266.P10002656146987510819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (n + 1) + A063958 (n + 1)

end

end A345266.P10002656146987510819

noncomputable section

/-- A345266: a(n) = Sum_{p|n, p prime} gcd(p,n/p).

Offset 1, canonical program `A345266.P10002656146987510819`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056169, A063958, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A345266 (n : ℕ) : ℤ :=
  A345266.P10002656146987510819.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056169, A063958, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A345266.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A345531.P10760789407017531318

`A000015(A008864(n+1))`
-/

namespace A345531.P10760789407017531318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (A008864 (n + 1)).toNat

end

end A345531.P10760789407017531318

noncomputable section

/-- A345531: Smallest prime power greater than the n-th prime.

Offset 1, canonical program `A345531.P10760789407017531318`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000015, A008864, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A345531 (n : ℕ) : ℤ :=
  A345531.P10760789407017531318.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000015, A008864, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A345531.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348193.P14696204599237552078

`A348195(n+1)-A348196(n+1)`
-/

namespace A348193.P14696204599237552078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348195 (n + 1) - A348196 (n + 1)

end

end A348193.P14696204599237552078

noncomputable section

/-- A348193: (Number of primes == 3 mod 4 less than n^2) - (number of primes == 1 mod 4 less than n^2).

Offset 1, canonical program `A348193.P14696204599237552078`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A348195, A348196, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348193 (n : ℕ) : ℤ :=
  A348193.P14696204599237552078.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A348195, A348196, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348193.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349124.P9173573936416537419

`A349123(n+1)/A003557(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A349124.P9173573936416537419
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349123 (n + 1) : ℚ) / (A003557 (n + 1) : ℚ)

end

end A349124.P9173573936416537419

noncomputable section

/-- A349124: a(n) = A349123(n) / A003557(n), where A349123 is the Dirichlet convolution of the arithmetic derivative with n*tau(n).

Offset 1, canonical program `A349124.P9173573936416537419`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003557, A349123, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349124 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A349124.P9173573936416537419.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003557, A349123, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349124.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349137.P16019714478779195286

`A000010(A003602(n+1))`
-/

namespace A349137.P16019714478779195286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A003602 (n + 1)).toNat

end

end A349137.P16019714478779195286

noncomputable section

/-- A349137: a(n) = phi(A003602(n)), where A003602 is Kimberling's paraphrase of the binary number system, and phi is Euler totient function.

Offset 1, canonical program `A349137.P16019714478779195286`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A003602, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349137 (n : ℕ) : ℤ :=
  A349137.P16019714478779195286.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A003602, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349137.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349306.P17180493539953707188

`lt[(A000010(n+1)^3)%(n+1)², 1]+1`
-/

namespace A349306.P17180493539953707188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (n + 1) ^ 3) ((n + 1) ^ 2 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A349306.P17180493539953707188

noncomputable section

/-- A349306: Numbers k that divide A092694(k).

Offset 1, canonical program `A349306.P17180493539953707188`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A349306 (n : ℕ) : ℤ :=
  (A349306.P17180493539953707188.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A349306.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349679.P14975392500775805578

`A000010(n+1)+A067392(n+1)`
-/

namespace A349679.P14975392500775805578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + A067392 (n + 1)

end

end A349679.P14975392500775805578

noncomputable section

/-- A349679: a(n) = n*(n+1)/2 - (n-2)*phi(n)/2 for n >= 2, with a(1)=1.

Offset 1, canonical program `A349679.P14975392500775805578`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A067392, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349679 (n : ℕ) : ℤ :=
  A349679.P14975392500775805578.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A067392, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349679.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351714.P12398140737547645289

`lt[lcm(n, A116543(n))-n, n]`
-/

namespace A351714.P12398140737547645289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n : ℤ) (A116543 n) : ℤ) - (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A351714.P12398140737547645289

noncomputable section

/-- A351714: Lucas-Niven numbers: numbers that are divisible by the number of terms in their minimal (or greedy) representation in terms of the Lucas numbers (A130310).

Offset 1, canonical program `A351714.P12398140737547645289`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1993 terms. -/
def A351714 (n : ℕ) : ℤ :=
  (A351714.P12398140737547645289.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1993 terms. -/
def A351714.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353579.P9200688838139276790

`record[A006068(A180200(n))+1]`
-/

namespace A353579.P9200688838139276790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A180200 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A353579.P9200688838139276790

noncomputable section

/-- A353579: Numbers in the smallest subset of N containing 1 and closed under the mappings k->2^n + k, k->3*2^{n+1} + k, and k->3*2^{n+2} + k where n = ceiling(log_2(k)).

Offset 1, canonical program `A353579.P9200688838139276790`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 714 terms. -/
def A353579 (n : ℕ) : ℤ :=
  A353579.P9200688838139276790.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 714 terms. -/
def A353579.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353768.P17938488479660551072

`A010873(A000010(n+1))`
-/

namespace A353768.P17938488479660551072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A000010 (n + 1)).toNat

end

end A353768.P17938488479660551072

noncomputable section

/-- A353768: a(n) = phi(n) mod 4; Euler totient function reduced modulo 4.

Offset 1, canonical program `A353768.P17938488479660551072`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353768 (n : ℕ) : ℤ :=
  A353768.P17938488479660551072.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353768.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353830.P1157779251727351386

`-A338241(A140263(2*n))`
-/

namespace A353830.P1157779251727351386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A338241 (A140263 (2 * n)).toNat

end

end A353830.P1157779251727351386

noncomputable section

/-- A353830: The positions of nonzero digits in the balanced ternary expansions of n and a(n) are the same, and the k-th rightmost nonzero digit in a(n) equals the product of the k rightmost nonzero digits in n.

Offset 0, canonical program `A353830.P1157779251727351386`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1094 terms. -/
def A353830 (n : ℕ) : ℤ :=
  A353830.P1157779251727351386.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1094 terms. -/
def A353830.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A354099.P1471750204109004553

`A007949(A000010(n+1))`
-/

namespace A354099.P1471750204109004553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A000010 (n + 1)).toNat

end

end A354099.P1471750204109004553

noncomputable section

/-- A354099: The 3-adic valuation of Euler totient function phi.

Offset 1, canonical program `A354099.P1471750204109004553`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A354099 (n : ℕ) : ℤ :=
  A354099.P1471750204109004553.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A354099.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A357684.P3972615468113836153

`A007913(record[A056192(n+1)])`
-/

namespace A357684.P3972615468113836153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056192 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A357684.P3972615468113836153

noncomputable section

/-- A357684: The squarefree part (A007913) of numbers whose squarefree part is a unitary divisor (A335275).

Offset 1, canonical program `A357684.P3972615468113836153`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8816 terms. -/
def A357684 (n : ℕ) : ℤ :=
  A357684.P3972615468113836153.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8816 terms. -/
def A357684.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A357698.P16927008949739962515

`A073185(n+1)-A212793(n+1)*(n+1)`
-/

namespace A357698.P16927008949739962515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073185 (n + 1) - A212793 (n + 1) * (n + 1 : ℤ)

end

end A357698.P16927008949739962515

noncomputable section

/-- A357698: a(n) is the sum of the aliquot divisors of n that are cubefree.

Offset 1, canonical program `A357698.P16927008949739962515`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A073185, A212793, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A357698 (n : ℕ) : ℤ :=
  A357698.P16927008949739962515.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A073185, A212793, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A357698.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A358039.P2500782259090983351

`A000010(A004709(n+1))`
-/

namespace A358039.P2500782259090983351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A004709 (n + 1)).toNat

end

end A358039.P2500782259090983351

noncomputable section

/-- A358039: a(n) is the Euler totient function phi applied to the n-th cubefree number.

Offset 1, canonical program `A358039.P2500782259090983351`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A004709, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A358039 (n : ℕ) : ℤ :=
  A358039.P2500782259090983351.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A004709, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A358039.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A358839.P16533912957850485554

`A359370(n+1)-A359372(n+1)`
-/

namespace A358839.P16533912957850485554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359370 (n + 1) - A359372 (n + 1)

end

end A358839.P16533912957850485554

noncomputable section

/-- A358839: Dirichlet inverse of A353627, the characteristic function of the squarefree numbers multiplied by binary powers.

Offset 1, canonical program `A358839.P16533912957850485554`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359370, A359372, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A358839 (n : ℕ) : ℤ :=
  A358839.P16533912957850485554.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359370, A359372, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A358839.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A359949.P7223717125220601482

`∑{d}[n+1, A029935(#)*A073185((n+1)/#)]`
-/

namespace A359949.P7223717125220601482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A029935 d * A073185 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A359949.P7223717125220601482

noncomputable section

/-- A359949: Multiplicative sequence with a(p) = 3*p-1 and a(p^e) = (3*e*(p-1) + 3) * p^(e-1) for e > 1 and prime p.

Offset 1, canonical program `A359949.P7223717125220601482`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359949 (n : ℕ) : ℤ :=
  A359949.P7223717125220601482.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359949.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A362594.P5891847164442960394

`filter[A378767(n+1), A295316(#)]`
-/

namespace A362594.P5891847164442960394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378767 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A362594.P5891847164442960394

noncomputable section

/-- A362594: Exponentially odd numbers that are neither squarefree nor prime powers.

Offset 1, canonical program `A362594.P5891847164442960394`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5751 terms. -/
def A362594 (n : ℕ) : ℤ :=
  A362594.P5891847164442960394.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5751 terms. -/
def A362594.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A364020.P9511425186973274188

`∑{d}[n+1, A000010(#)*A364044((n+1)/#)]`
-/

namespace A364020.P9511425186973274188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A364044 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A364020.P9511425186973274188

noncomputable section

/-- A364020: Expansion of Sum_{k>0} k * x^(2*k) / (1 + x^(5*k)).

Offset 1, canonical program `A364020.P9511425186973274188`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364020 (n : ℕ) : ℤ :=
  A364020.P9511425186973274188.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364020.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364021.P12955701881080745028

`∑{d}[n+1, A000010(#)*A364045((n+1)/#)]`
-/

namespace A364021.P12955701881080745028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A364045 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A364021.P12955701881080745028

noncomputable section

/-- A364021: Expansion of Sum_{k>0} k * x^(3*k) / (1 + x^(5*k)).

Offset 1, canonical program `A364021.P12955701881080745028`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364021 (n : ℕ) : ℤ :=
  A364021.P12955701881080745028.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364021.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364022.P2819897864541114288

`∑{d}[n+1, A000010(#)*A364046((n+1)/#)]`
-/

namespace A364022.P2819897864541114288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A364046 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A364022.P2819897864541114288

noncomputable section

/-- A364022: Expansion of Sum_{k>0} k * x^(4*k) / (1 + x^(5*k)).

Offset 1, canonical program `A364022.P2819897864541114288`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364022 (n : ℕ) : ℤ :=
  A364022.P2819897864541114288.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364022.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A364932.P6679838922947751694`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A001615, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A364932 (n : ℕ) : ℤ :=
  A364932.P6679838922947751694.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A001615, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A364932.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A366623.P5821396399983570635

`A000010(A024062(n+1))`
-/

namespace A366623.P5821396399983570635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A024062 (n + 1)).toNat

end

end A366623.P5821396399983570635

noncomputable section

/-- A366623: a(n) = phi(6^n-1), where phi is Euler's totient function (A000010).

Offset 1, canonical program `A366623.P5821396399983570635`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366623 (n : ℕ) : ℤ :=
  A366623.P5821396399983570635.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366623.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A366759.P15869912079136289307

`A000010(A033312(n+2))`
-/

namespace A366759.P15869912079136289307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A033312 (n + 2)).toNat

end

end A366759.P15869912079136289307

noncomputable section

/-- A366759: a(n) = phi(n!-1), where phi is Euler's totient function (A000010).

Offset 2, canonical program `A366759.P15869912079136289307`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366759 (n : ℕ) : ℤ :=
  A366759.P15869912079136289307.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366759.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A366773.P9585367470475040452

`A000010(A001045(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A366773.P9585367470475040452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A001045 (n + 1)).toNat

end

end A366773.P9585367470475040452

noncomputable section

/-- A366773: a(n) = A000010(A001045(n)).

Offset 1, canonical program `A366773.P9585367470475040452`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366773 (n : ℕ) : ℤ :=
  A366773.P9585367470475040452.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366773.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366821.P17988796898813791288

`A000010(A048861(n+2))`
-/

namespace A366821.P17988796898813791288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A048861 (n + 2)).toNat

end

end A366821.P17988796898813791288

noncomputable section

/-- A366821: a(n) is phi(n^n-1) where phi is the Euler totient function.

Offset 2, canonical program `A366821.P17988796898813791288`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366821 (n : ℕ) : ℤ :=
  A366821.P17988796898813791288.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366821.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A366955.P14364530625403978192

`A000010(A007908(n+1))`
-/

namespace A366955.P14364530625403978192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A007908 (n + 1)).toNat

end

end A366955.P14364530625403978192

noncomputable section

/-- A366955: a(n) is the Euler totient function of the concatenation of 1,2,3,...,n.

Offset 1, canonical program `A366955.P14364530625403978192`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366955 (n : ℕ) : ℤ :=
  A366955.P14364530625403978192.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366955.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A368171.P3649920215832031940

`(n+1)/A368170(n+1)`
-/

namespace A368171.P3649920215832031940
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A368170 (n + 1) : ℚ)

end

end A368171.P3649920215832031940

noncomputable section

/-- A368171: a(n) is the smallest divisor d of n such that n/d is a cubefull exponentially odd number (A335988).

Offset 1, canonical program `A368171.P3649920215832031940`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A368170, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368171 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A368171.P3649920215832031940.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A368170, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368171.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A368172.P14008522485894596196

`A000005(A368170(n+1))`
-/

namespace A368172.P14008522485894596196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A368170 (n + 1)).toNat

end

end A368172.P14008522485894596196

noncomputable section

/-- A368172: The number of divisors of the largest cubefull exponentially odd divisor of n (A368170).

Offset 1, canonical program `A368172.P14008522485894596196`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A368170, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368172 (n : ℕ) : ℤ :=
  A368172.P14008522485894596196.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A368170, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368172.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A368738.P15555068762873214386

`∑{d}[n+1, A000010(#)*A038502((n+1)/#)]`
-/

namespace A368738.P15555068762873214386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A038502 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A368738.P15555068762873214386

noncomputable section

/-- A368738: a(n) = Sum_{k = 1..n} gcd(3*k + 1, n).

Offset 1, canonical program `A368738.P15555068762873214386`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368738 (n : ℕ) : ℤ :=
  A368738.P15555068762873214386.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368738.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A369716.P4935667274442389698

`A000005(A197863(n+1))`
-/

namespace A369716.P4935667274442389698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A197863 (n + 1)).toNat

end

end A369716.P4935667274442389698

noncomputable section

/-- A369716: The number of divisors of the smallest powerful number that is a multiple of n.

Offset 1, canonical program `A369716.P4935667274442389698`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A197863, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A369716 (n : ℕ) : ℤ :=
  A369716.P4935667274442389698.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A197863, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A369716.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A369717.P11411986062886320830

`A000203(A197863(n+1))`
-/

namespace A369717.P11411986062886320830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A197863 (n + 1)).toNat

end

end A369717.P11411986062886320830

noncomputable section

/-- A369717: The sum of divisors of the smallest powerful number that is a multiple of n.

Offset 1, canonical program `A369717.P11411986062886320830`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A197863, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369717 (n : ℕ) : ℤ :=
  A369717.P11411986062886320830.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A197863, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369717.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A371238.P16159629807628423493

`A000010(A048701(n+1))`
-/

namespace A371238.P16159629807628423493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A048701 (n + 1)).toNat

end

end A371238.P16159629807628423493

noncomputable section

/-- A371238: Euler totient function applied to the binary palindromes of even length.

Offset 1, canonical program `A371238.P16159629807628423493`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A048701, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A371238 (n : ℕ) : ℤ :=
  A371238.P16159629807628423493.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A048701, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A371238.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A371241.P3336735415354653583`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A371241 (n : ℕ) : ℤ :=
  A371241.P3336735415354653583.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A371241.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A374456.P3778587499414482557

`A000010(A268335(n+1))`
-/

namespace A374456.P3778587499414482557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A268335 (n + 1)).toNat

end

end A374456.P3778587499414482557

noncomputable section

/-- A374456: The Euler phi function values of the exponentially odd numbers (A268335).

Offset 1, canonical program `A374456.P3778587499414482557`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A268335, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A374456 (n : ℕ) : ℤ :=
  A374456.P3778587499414482557.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A268335, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A374456.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A375270.P13061720832720025766

`filter[A115975(n+1), A181183(#)]`
-/

namespace A375270.P13061720832720025766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115975 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A181183 (f1 j).toNat = 1) n)

end

end A375270.P13061720832720025766

noncomputable section

/-- A375270: Numbers of the form p^Fibonacci(2*k), where p is a prime and k >= 0.

Offset 1, canonical program `A375270.P13061720832720025766`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6558 terms. -/
def A375270 (n : ℕ) : ℤ :=
  A375270.P13061720832720025766.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6558 terms. -/
def A375270.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A377674.P11450829007157849169

`A000010(A066068(n+1))`
-/

namespace A377674.P11450829007157849169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A066068 (n + 1)).toNat

end

end A377674.P11450829007157849169

noncomputable section

/-- A377674: a(n) = phi(n^n + n) where phi is the Euler totient function.

Offset 1, canonical program `A377674.P11450829007157849169`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A377674 (n : ℕ) : ℤ :=
  A377674.P11450829007157849169.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A377674.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A377678.P7286090810318958759

`A000010(A061190(n+2))`
-/

namespace A377678.P7286090810318958759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A061190 (n + 2)).toNat

end

end A377678.P7286090810318958759

noncomputable section

/-- A377678: a(n) = phi(n^n - n) where phi is the Euler totient function.

Offset 2, canonical program `A377678.P7286090810318958759`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A377678 (n : ℕ) : ℤ :=
  A377678.P7286090810318958759.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A377678.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A377780.P12783059637083081395

`Δ[A000015(n+1)]%(n+1)`
-/

namespace A377780.P12783059637083081395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (n + 1 : ℤ)

end

end A377780.P12783059637083081395

noncomputable section

/-- A377780: First differences of A000015 (smallest prime-power >= n).

Offset 1, canonical program `A377780.P12783059637083081395`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A377780 (n : ℕ) : ℤ :=
  A377780.P12783059637083081395.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A377780.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378370.P12947003761999164007

`A000015(n+1)-(n+1)`
-/

namespace A378370.P12947003761999164007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (n + 1) - (n + 1 : ℤ)

end

end A378370.P12947003761999164007

noncomputable section

/-- A378370: Distance between n and the least prime power >= n, allowing 1.

Offset 1, canonical program `A378370.P12947003761999164007`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000015, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378370 (n : ℕ) : ℤ :=
  A378370.P12947003761999164007.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000015, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378370.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A378986.P11070086807176810028

`2*A000010(2*(n+1))-2*(n+1)`
-/

namespace A378986.P11070086807176810028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000010 (2 * (n + 1)) - (2 * (n + 1) : ℤ)

end

end A378986.P11070086807176810028

noncomputable section

/-- A378986: a(n) = 2*phi(2*n) - 2*n, where phi is Euler totient function.

Offset 1, canonical program `A378986.P11070086807176810028`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378986 (n : ℕ) : ℤ :=
  A378986.P11070086807176810028.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378986.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379705.P4574485097972664711

`A242219(n+1)²/(n+1)`
-/

namespace A379705.P4574485097972664711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242219 (n + 1) ^ 2 : ℚ) / (n + 1 : ℚ)

end

end A379705.P4574485097972664711

noncomputable section

/-- A379705: a(n) is the least integer k > n such that integers p, q exist for which n, p, k are in arithmetic and n, q, k are in geometric progression.

Offset 1, canonical program `A379705.P4574485097972664711`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379705 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A379705.P4574485097972664711.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379705.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380160.P4546654920462723161

`A000010(A057521(n+1))`
-/

namespace A380160.P4546654920462723161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A057521 (n + 1)).toNat

end

end A380160.P4546654920462723161

noncomputable section

/-- A380160: a(n) is the value of the Euler totient function when applied to the powerful part of n.

Offset 1, canonical program `A380160.P4546654920462723161`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A057521, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A380160 (n : ℕ) : ℤ :=
  A380160.P4546654920462723161.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A057521, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A380160.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A380161.P11294645984776540590

`A000010(A055231(n+1))`
-/

namespace A380161.P11294645984776540590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A055231 (n + 1)).toNat

end

end A380161.P11294645984776540590

noncomputable section

/-- A380161: a(n) is the value of the Euler totient function when applied to the powerfree part of n.

Offset 1, canonical program `A380161.P11294645984776540590`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A055231, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A380161 (n : ℕ) : ℤ :=
  A380161.P11294645984776540590.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A055231, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A380161.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A380162.P3923099972505538438

`A000010(A008833(n+1))`
-/

namespace A380162.P3923099972505538438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A008833 (n + 1)).toNat

end

end A380162.P3923099972505538438

noncomputable section

/-- A380162: a(n) is the value of the Euler totient function when applied to the largest square dividing n.

Offset 1, canonical program `A380162.P3923099972505538438`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A008833, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A380162 (n : ℕ) : ℤ :=
  A380162.P3923099972505538438.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A008833, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A380162.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A380163.P2401699286330584637

`A000010(A007913(n+1))`
-/

namespace A380163.P2401699286330584637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A007913 (n + 1)).toNat

end

end A380163.P2401699286330584637

noncomputable section

/-- A380163: a(n) is the value of the Euler totient function when applied to the squarefree part of n.

Offset 1, canonical program `A380163.P2401699286330584637`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A007913, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A380163 (n : ℕ) : ℤ :=
  A380163.P2401699286330584637.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A007913, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A380163.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A382113.P6513657586340795000

`A022290(A006068(A003714(n)))`
-/

namespace A382113.P6513657586340795000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022290 (A006068 (A003714 n).toNat).toNat

end

end A382113.P6513657586340795000

noncomputable section

/-- A382113: Gray code transformation of the Zeckendorf representation of n.

Offset 0, canonical program `A382113.P6513657586340795000`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003714, A006068, A022290, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382113 (n : ℕ) : ℤ :=
  A382113.P6513657586340795000.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003714, A006068, A022290, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382113.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A382787.P14011713050077807300

`A005361(record[A056192(n+1)])`
-/

namespace A382787.P14011713050077807300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056192 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A382787.P14011713050077807300

noncomputable section

/-- A382787: The product of exponents in the prime factorization of the numbers whose prime factorization contains exponents that are either 1 or even.

Offset 1, canonical program `A382787.P14011713050077807300`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8816 terms. -/
def A382787 (n : ℕ) : ℤ :=
  A382787.P14011713050077807300.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8816 terms. -/
def A382787.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382906.P11250018393502254710

`A046100(n+1)/A382905(n+1)`
-/

namespace A382906.P11250018393502254710
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046100 (n + 1) : ℚ) / (A382905 (n + 1) : ℚ)

end

end A382906.P11250018393502254710

noncomputable section

/-- A382906: The powerful part of the n-th biquadratefree number.

Offset 1, canonical program `A382906.P11250018393502254710`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046100, A382905, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382906 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A382906.P11250018393502254710.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046100, A382905, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382906.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A384041.P8191093603258971194

`∑{d}[n+1, A007432(#)*A332730((n+1)/#)]`
-/

namespace A384041.P8191093603258971194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007432 d * A332730 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A384041.P8191093603258971194

noncomputable section

/-- A384041: The number of integers k from 1 to n such that gcd(n,k) is an exponentially odd number.

Offset 1, canonical program `A384041.P8191093603258971194`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384041 (n : ℕ) : ℤ :=
  A384041.P8191093603258971194.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384041.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384042.P14644639506772566122

`A000010(A065331(n+1))*A065330(n+1)`
-/

namespace A384042.P14644639506772566122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A065331 (n + 1)).toNat * A065330 (n + 1)

end

end A384042.P14644639506772566122

noncomputable section

/-- A384042: The number of integers k from 1 to n such that gcd(n,k) is a 5-rough number (A007310).

Offset 1, canonical program `A384042.P14644639506772566122`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A384042 (n : ℕ) : ℤ :=
  A384042.P14644639506772566122.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A384042.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A384050.P7808103291810137926

`A000010(A055231(n+1))*A057521(n+1)`
-/

namespace A384050.P7808103291810137926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A055231 (n + 1)).toNat * A057521 (n + 1)

end

end A384050.P7808103291810137926

noncomputable section

/-- A384050: The number of integers k from 1 to n such that the greatest divisor of k that is a unitary divisor of n is a powerful number.

Offset 1, canonical program `A384050.P7808103291810137926`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A055231, A057521, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A384050 (n : ℕ) : ℤ :=
  A384050.P7808103291810137926.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A055231, A057521, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A384050.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A384716.P11863616275653796637

`A000010(A061537(n+1))`
-/

namespace A384716.P11863616275653796637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A061537 (n + 1)).toNat

end

end A384716.P11863616275653796637

noncomputable section

/-- A384716: The totient of the product of unitary divisors of n.

Offset 1, canonical program `A384716.P11863616275653796637`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A061537, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A384716 (n : ℕ) : ℤ :=
  A384716.P11863616275653796637.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A061537, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A384716.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A390752.P14431979490250258811

`A000010(A019554(n+1))`
-/

namespace A390752.P14431979490250258811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A019554 (n + 1)).toNat

end

end A390752.P14431979490250258811

noncomputable section

/-- A390752: The Euler totient of the smallest number whose square is divisible by n.

Offset 1, canonical program `A390752.P14431979490250258811`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A019554, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A390752 (n : ℕ) : ℤ :=
  A390752.P14431979490250258811.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A019554, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A390752.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A390755.P10814338958508066738

`A000010(A197863(n+1))`
-/

namespace A390755.P10814338958508066738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A197863 (n + 1)).toNat

end

end A390755.P10814338958508066738

noncomputable section

/-- A390755: The Euler totient of the smallest powerful number divisible by n.

Offset 1, canonical program `A390755.P10814338958508066738`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A197863, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A390755 (n : ℕ) : ℤ :=
  A390755.P10814338958508066738.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A197863, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A390755.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A390756.P11425298169468382512

`A000010(A356193(n+1))`
-/

namespace A390756.P11425298169468382512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A356193 (n + 1)).toNat

end

end A390756.P11425298169468382512

noncomputable section

/-- A390756: The Euler totient of the smallest cubefull number divisible by n.

Offset 1, canonical program `A390756.P11425298169468382512`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A356193, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A390756 (n : ℕ) : ℤ :=
  A390756.P11425298169468382512.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A356193, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A390756.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A391585.P14461622973833260868

`∪[A003714(n), A048717(n)]`
-/

namespace A391585.P14461622973833260868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048717 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391585.P14461622973833260868

noncomputable section

/-- A391585: Numbers k such that 3*k = A048720(m,k) for some m, where A048720 is carryless base-2 multiplication.

Offset 1, canonical program `A391585.P14461622973833260868`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391585 (n : ℕ) : ℤ :=
  (A391585.P14461622973833260868.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391585.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392170.P11667223152530943360

`A001615(A197863(n+1))`
-/

namespace A392170.P11667223152530943360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (A197863 (n + 1)).toNat

end

end A392170.P11667223152530943360

noncomputable section

/-- A392170: The Dedekind psi function value of the smallest powerful number that is a multiple of n.

Offset 1, canonical program `A392170.P11667223152530943360`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001615, A197863, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A392170 (n : ℕ) : ℤ :=
  A392170.P11667223152530943360.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001615, A197863, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A392170.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A394085.P10152136709517601280

`A000203(n+1)-A063956(n+1)+A056169(n+1)`
-/

namespace A394085.P10152136709517601280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A063956 (n + 1) + A056169 (n + 1)

end

end A394085.P10152136709517601280

noncomputable section

/-- A394085: a(n) = sigma(n) - Sum_{p|n, p prime, gcd(p,n/p) = 1} (p-1).

Offset 1, canonical program `A394085.P10152136709517601280`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056169, A063956, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A394085 (n : ℕ) : ℤ :=
  A394085.P10152136709517601280.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056169, A063956, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A394085.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A394470.P12281335905416762997

`(n+1)*A000005(n+1)-n*A056169(n+1)`
-/

namespace A394470.P12281335905416762997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000005 (n + 1) - (n : ℤ) * A056169 (n + 1)

end

end A394470.P12281335905416762997

noncomputable section

/-- A394470: a(n) = n*tau(n) - (n-1)*Sum_{p|n, p prime} [gcd(p,n/p) = 1], where [ ] is the Iverson bracket.

Offset 1, canonical program `A394470.P12281335905416762997`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A056169, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A394470 (n : ℕ) : ℤ :=
  A394470.P12281335905416762997.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A056169, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A394470.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A395491.P9780452655082946417

`A000005(n+1)+n*A056169(n+1)`
-/

namespace A395491.P9780452655082946417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (n : ℤ) * A056169 (n + 1)

end

end A395491.P9780452655082946417

noncomputable section

/-- A395491: a(n) = tau(n) + (n-1) * Sum_{p|n, p prime} [gcd(p,n/p) = 1], where [ ] is the Iverson bracket.

Offset 1, canonical program `A395491.P9780452655082946417`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A056169, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A395491 (n : ℕ) : ℤ :=
  A395491.P9780452655082946417.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A056169, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A395491.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A326039.P9256592062457246146

`A326038(n+1)²`
-/

namespace A326039.P9256592062457246146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326038 (n + 1) ^ 2

end

end A326039.P9256592062457246146

noncomputable section

/-- A326039: Largest square dividing the sum of divisors of n: a(n) = A008833(sigma(n)).

Offset 1, canonical program `A326039.P9256592062457246146`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326038, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326039 (n : ℕ) : ℤ :=
  A326039.P9256592062457246146.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326038, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326039.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A335738.P7632343520013467693

`lt[n*a(A057918(n+1))/(n-1), 2]+1` with `a(0)=2, a(1)=0`
-/

namespace A335738.P7632343520013467693
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2, 0] fun n f1 =>
  (n : ℚ) * (f1 (A057918 (n + 1)).toNat / ((n : ℤ) - 1 : ℚ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n + 1

end

end A335738.P7632343520013467693

noncomputable section

/-- A335738: Factorize each integer m >= 2 as the product of powers of nonunit squarefree numbers with distinct exponents that are powers of 2. The sequence lists m such that the factor with the largest exponent is a power of 2.

Offset 1, canonical program `A335738.P7632343520013467693`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2141 terms. -/
def A335738 (n : ℕ) : ℤ :=
  (A335738.P7632343520013467693.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2141 terms. -/
def A335738.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A335962.P2671901003866590585

`eq[A051903(A010000(n)), A059592(n)]`
-/

namespace A335962.P2671901003866590585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A010000 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059592 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A335962.P2671901003866590585

noncomputable section

/-- A335962: Numbers k such that k^2 + 1 and k^2 + 2 are both squarefree.

Offset 1, canonical program `A335962.P2671901003866590585`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A335962 (n : ℕ) : ℤ :=
  (A335962.P2671901003866590585.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A335962.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336319.P15871671878372422181

`A038040(n+1)/A000290(A336318(n+1))`
-/

namespace A336319.P15871671878372422181
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038040 (n + 1) : ℚ) / (A000290 (A336318 (n + 1)).toNat : ℚ)

end

end A336319.P15871671878372422181

noncomputable section

/-- A336319: Squarefree part of n*d(n), where d(n) = number of divisors of n (A000005).

Offset 1, canonical program `A336319.P15871671878372422181`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038040, A336318, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A336319 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A336319.P15871671878372422181.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038040, A336318, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A336319.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A337110.P12482005991552372209

`a(n-1)+1+6*A057918(n+1)` with `a(0)=1`
-/

namespace A337110.P12482005991552372209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 1 + 6 * A057918 (n + 1)

end

end A337110.P12482005991552372209

noncomputable section

/-- A337110: Number of length three 1..n vectors that contain their geometric mean.

Offset 1, canonical program `A337110.P12482005991552372209`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057918, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A337110 (n : ℕ) : ℤ :=
  A337110.P12482005991552372209.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057918, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A337110.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A344313.P8586429644628599476

`eq[0, Δ[A286324(n+1)]]+1`
-/

namespace A344313.P8586429644628599476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286324 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A344313.P8586429644628599476

noncomputable section

/-- A344313: Number k such that k and k+1 have the same number of bi-unitary divisors (A286324).

Offset 1, canonical program `A344313.P8586429644628599476`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2108 terms. -/
def A344313 (n : ℕ) : ℤ :=
  (A344313.P8586429644628599476.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2108 terms. -/
def A344313.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345320.P2768063189840868714

`A000203(n+1)-A069290(n+1)`
-/

namespace A345320.P2768063189840868714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A069290 (n + 1)

end

end A345320.P2768063189840868714

noncomputable section

/-- A345320: Sum of the divisors of n whose square does not divide n.

Offset 1, canonical program `A345320.P2768063189840868714`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069290, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A345320 (n : ℕ) : ℤ :=
  A345320.P2768063189840868714.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069290, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A345320.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A347130.P3321341918347765023

`∑{d}[n+1, A347131(#)]`
-/

namespace A347130.P3321341918347765023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A347131 d

end

end A347130.P3321341918347765023

noncomputable section

/-- A347130: a(n) = Sum_{d|n} d * A003415(n/d), where A003415 is the arithmetic derivative.

Offset 1, canonical program `A347130.P3321341918347765023`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347130 (n : ℕ) : ℤ :=
  A347130.P3321341918347765023.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347130.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348976.P9987790780550882752

`A000010(n+1)+A300251(n+1)`
-/

namespace A348976.P9987790780550882752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + A300251 (n + 1)

end

end A348976.P9987790780550882752

noncomputable section

/-- A348976: Möbius transform of A129283, which is sum of n and its arithmetic derivative.

Offset 1, canonical program `A348976.P9987790780550882752`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A300251, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348976 (n : ℕ) : ℤ :=
  A348976.P9987790780550882752.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A300251, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348976.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A350389.P11774881852585828410

`(n+1)/A350388(n+1)`
-/

namespace A350389.P11774881852585828410
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A350388 (n + 1) : ℚ)

end

end A350389.P11774881852585828410

noncomputable section

/-- A350389: a(n) is the largest unitary divisor of n that is an exponentially odd number (A268335).

Offset 1, canonical program `A350389.P11774881852585828410`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350388, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A350389 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A350389.P11774881852585828410.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350388, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A350389.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351311.P6069674069945159635

`A013960(A057918(n+1)+1)`
-/

namespace A351311.P6069674069945159635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013960 (A057918 (n + 1) + 1).toNat

end

end A351311.P6069674069945159635

noncomputable section

/-- A351311: Sum of the 6th powers of the square divisors of n.

Offset 1, canonical program `A351311.P6069674069945159635`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351311 (n : ℕ) : ℤ :=
  A351311.P6069674069945159635.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351311.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351568.P13453391376652961444

`A000203(A350388(n+1))`
-/

namespace A351568.P13453391376652961444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A350388 (n + 1)).toNat

end

end A351568.P13453391376652961444

noncomputable section

/-- A351568: Sum of the divisors of the largest unitary divisor of n that is a square.

Offset 1, canonical program `A351568.P13453391376652961444`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350388, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351568 (n : ℕ) : ℤ :=
  A351568.P13453391376652961444.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350388, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351568.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A360163.P4073483441112475958

`(A069290(n+1)+A347176(n+1))/2`
-/

namespace A360163.P4073483441112475958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069290 (n + 1) + A347176 (n + 1) : ℚ) / 2

end

end A360163.P4073483441112475958

noncomputable section

/-- A360163: a(n) is the sum of the square roots of the divisors of n that are odd squares.

Offset 1, canonical program `A360163.P4073483441112475958`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069290, A347176, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A360163 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A360163.P4073483441112475958.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069290, A347176, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A360163.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A367989.P10767245961528974005

`A035316(A350388(n+1))`
-/

namespace A367989.P10767245961528974005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035316 (A350388 (n + 1)).toNat

end

end A367989.P10767245961528974005

noncomputable section

/-- A367989: The sum of square divisors of the largest unitary divisor of n that is a square.

Offset 1, canonical program `A367989.P10767245961528974005`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035316, A350388, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A367989 (n : ℕ) : ℤ :=
  A367989.P10767245961528974005.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035316, A350388, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A367989.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A368104.P6809811150617499491

`A286324(A057521(n+1))`
-/

namespace A368104.P6809811150617499491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286324 (A057521 (n + 1)).toNat

end

end A368104.P6809811150617499491

noncomputable section

/-- A368104: The number of bi-unitary divisors of the powerful part of n.

Offset 1, canonical program `A368104.P6809811150617499491`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057521, A286324, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368104 (n : ℕ) : ℤ :=
  A368104.P6809811150617499491.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057521, A286324, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368104.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A368470.P5926755419945979817

`A322483(n+1)/A367987(n+1)`
-/

namespace A368470.P5926755419945979817
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322483 (n + 1) : ℚ) / (A367987 (n + 1) : ℚ)

end

end A368470.P5926755419945979817

noncomputable section

/-- A368470: a(n) is the number of exponentially odd divisors of the largest unitary divisor of n that is an exponentially odd number (A268335).

Offset 1, canonical program `A368470.P5926755419945979817`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368470 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A368470.P5926755419945979817.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368470.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375033.P7202399145950353671

`A051903(A350388(n+1))`
-/

namespace A375033.P7202399145950353671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A350388 (n + 1)).toNat

end

end A375033.P7202399145950353671

noncomputable section

/-- A375033: The maximum even exponent in the prime factorization of n, or 0 if no such exponent exists.

Offset 1, canonical program `A375033.P7202399145950353671`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A350388, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A375033 (n : ℕ) : ℤ :=
  A375033.P7202399145950353671.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A350388, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A375033.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A380164.P6797350675087028144

`A000010(A350388(n+1))`
-/

namespace A380164.P6797350675087028144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A350388 (n + 1)).toNat

end

end A380164.P6797350675087028144

noncomputable section

/-- A380164: a(n) is the value of the Euler totient function when applied to the largest unitary divisor of n that is a square.

Offset 1, canonical program `A380164.P6797350675087028144`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A350388, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A380164 (n : ℕ) : ℤ :=
  A380164.P6797350675087028144.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A350388, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A380164.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A380325.P11001594925613090436`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069290, A268335, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A380325 (n : ℕ) : ℤ :=
  A380325.P11001594925613090436.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069290, A268335, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A380325.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A390260.P12756077447559123677

`2*A063775(16*(n+1))-3*A063775(n+1)`
-/

namespace A390260.P12756077447559123677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A063775 (16 * (n + 1)) - 3 * A063775 (n + 1)

end

end A390260.P12756077447559123677

noncomputable section

/-- A390260: Expansion of Sum_{k>=1} (-1)^(k+1)*x^(k^4)/(1-x^(k^4)).

Offset 1, canonical program `A390260.P12756077447559123677`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063775, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A390260 (n : ℕ) : ℤ :=
  A390260.P12756077447559123677.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063775, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A390260.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A327866.P12650850147369526583

`A010052(A003415(n))`
-/

namespace A327866.P12650850147369526583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A003415 n).toNat

end

end A327866.P12650850147369526583

noncomputable section

/-- A327866: a(n) = 1 if arithmetic derivative of n is square, 0 otherwise. Cf. A003415.

Offset 0, canonical program `A327866.P12650850147369526583`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A010052, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A327866 (n : ℕ) : ℤ :=
  A327866.P12650850147369526583.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A010052, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A327866.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A328310.P2472833898533372449

`A051903(A003415(n+2))-A051903(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A328310.P2472833898533372449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A003415 (n + 2)).toNat - A051903 (n + 2)

end

end A328310.P2472833898533372449

noncomputable section

/-- A328310: a(n) = A051903(A003415(n)) - A051903(n).

Offset 2, canonical program `A328310.P2472833898533372449`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A051903, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A328310 (n : ℕ) : ℤ :=
  A328310.P2472833898533372449.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A051903, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A328310.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A329039.P4210899274647080376

`A003415(n+1)-A069359(n+1)`
-/

namespace A329039.P4210899274647080376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (n + 1) - A069359 (n + 1)

end

end A329039.P4210899274647080376

noncomputable section

/-- A329039: If n = Product p_i^e_i, a(n) = n * Sum ((e_i - 1)/p_i).

Offset 1, canonical program `A329039.P4210899274647080376`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A069359, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A329039 (n : ℕ) : ℤ :=
  A329039.P4210899274647080376.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A069359, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A329039.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A337688.P213648959849896231

`lt[1, A337690(n+1)]+1`
-/

namespace A337688.P213648959849896231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337690 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A337688.P213648959849896231

noncomputable section

/-- A337688: Numbers divisible by 2 or more primitive nondeficient numbers.

Offset 1, canonical program `A337688.P213648959849896231`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3000 terms. -/
def A337688 (n : ℕ) : ℤ :=
  (A337688.P213648959849896231.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3000 terms. -/
def A337688.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340070.P6497847320767913254

`gcd(A003415(n+1), A069359(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A340070.P6497847320767913254
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003415 (n + 1)) (A069359 (n + 1))

end

end A340070.P6497847320767913254

noncomputable section

/-- A340070: a(n) = gcd(A003415(n), A069359(n)).

Offset 1, canonical program `A340070.P6497847320767913254`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A069359, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A340070 (n : ℕ) : ℤ :=
  (A340070.P6497847320767913254.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A069359, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A340070.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A341998.P3260792565066439335

`A003557(A003415(n+2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A341998.P3260792565066439335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A003415 (n + 2)).toNat

end

end A341998.P3260792565066439335

noncomputable section

/-- A341998: Arithmetic derivative of n divided by its largest squarefree divisor: a(n) = A003557(A003415(n)).

Offset 2, canonical program `A341998.P3260792565066439335`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A003557, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A341998 (n : ℕ) : ℤ :=
  A341998.P3260792565066439335.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A003557, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A341998.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A342001.P4805983025243635594

`A003415(n+1)/A003557(n+1)`
-/

namespace A342001.P4805983025243635594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003415 (n + 1) : ℚ) / (A003557 (n + 1) : ℚ)

end

end A342001.P4805983025243635594

noncomputable section

/-- A342001: Arithmetic derivative without its inherited divisor; the arithmetic derivative of n divided by A003557(n), which is a common divisor of both n and A003415(n).

Offset 1, canonical program `A342001.P4805983025243635594`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A003557, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A342001 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A342001.P4805983025243635594.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A003557, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A342001.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A342003.P12697586407558100656

`A051903(A003415(n+2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A342003.P12697586407558100656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A003415 (n + 2)).toNat

end

end A342003.P12697586407558100656

noncomputable section

/-- A342003: Maximal exponent in the prime factorization of the arithmetic derivative of n: a(n) = A051903(A003415(n)).

Offset 2, canonical program `A342003.P12697586407558100656`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A051903, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A342003 (n : ℕ) : ℤ :=
  A342003.P12697586407558100656.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A051903, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A342003.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A342014.P7987334312565012006

`A003415(n+1)%(n+1)`
-/

namespace A342014.P7987334312565012006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003415 (n + 1)) (n + 1 : ℤ)

end

end A342014.P7987334312565012006

noncomputable section

/-- A342014: Arithmetic derivative of n, taken modulo n: a(n) = A003415(n) mod n.

Offset 1, canonical program `A342014.P7987334312565012006`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342014 (n : ℕ) : ℤ :=
  A342014.P7987334312565012006.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342014.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A342458.P90921969619416405

`gcd(A001615(n+1), A003415(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A342458.P90921969619416405
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001615 (n + 1)) (A003415 (n + 1))

end

end A342458.P90921969619416405

noncomputable section

/-- A342458: a(n) = gcd(A001615(n), A003415(n)), where A001615 is Dedekind psi, and A003415 is the arithmetic derivative of n.

Offset 1, canonical program `A342458.P90921969619416405`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001615, A003415, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A342458 (n : ℕ) : ℤ :=
  (A342458.P90921969619416405.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001615, A003415, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A342458.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A343224.P18101851413978261599

`A000203(n+1)-A003415(n+1)`
-/

namespace A343224.P18101851413978261599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A003415 (n + 1)

end

end A343224.P18101851413978261599

noncomputable section

/-- A343224: a(n) = sigma(n) - A003415(n), where A003415 is the arithmetic derivative, and sigma is the sum of divisors of n.

Offset 1, canonical program `A343224.P18101851413978261599`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A343224 (n : ℕ) : ℤ :=
  A343224.P18101851413978261599.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A343224.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A344024.P3749631349074452751

`A003415(A001615(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A344024.P3749631349074452751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A001615 (n + 1)).toNat

end

end A344024.P3749631349074452751

noncomputable section

/-- A344024: a(n) = A003415(A001615(n)).

Offset 1, canonical program `A344024.P3749631349074452751`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001615, A003415, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A344024 (n : ℕ) : ℤ :=
  A344024.P3749631349074452751.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001615, A003415, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A344024.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A344178.P7382453285315687724

`A003415(n+1)-A051953(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A344178.P7382453285315687724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (n + 1) - A051953 (n + 1)

end

end A344178.P7382453285315687724

noncomputable section

/-- A344178: Difference between the arithmetic derivative of n and the cototient of n: a(n) = A003415(n) - A051953(n).

Offset 1, canonical program `A344178.P7382453285315687724`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A051953, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A344178 (n : ℕ) : ℤ :=
  A344178.P7382453285315687724.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A051953, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A344178.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348028.P15680681678257223699

`gcd(A000203(n+1), A003415(n+1))`
-/

namespace A348028.P15680681678257223699
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (n + 1)) (A003415 (n + 1))

end

end A348028.P15680681678257223699

noncomputable section

/-- A348028: Greatest common divisor of A003415 (arithmetic derivative) and sigma, the sum of divisors function.

Offset 1, canonical program `A348028.P15680681678257223699`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348028 (n : ℕ) : ℤ :=
  (A348028.P15680681678257223699.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348028.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348492.P10916055508592838470

`gcd(A003415(n+1), A018804(n+1))`
-/

namespace A348492.P10916055508592838470
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003415 (n + 1)) (A018804 (n + 1))

end

end A348492.P10916055508592838470

noncomputable section

/-- A348492: Greatest common divisor of the arithmetic derivative (A003415) and Pillai's arithmetical function (A018804).

Offset 1, canonical program `A348492.P10916055508592838470`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A018804, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348492 (n : ℕ) : ℤ :=
  (A348492.P10916055508592838470.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A018804, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348492.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351572.P4940805872886659141

`A003415(A350388(n+1))`
-/

namespace A351572.P4940805872886659141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A350388 (n + 1)).toNat

end

end A351572.P4940805872886659141

noncomputable section

/-- A351572: Arithmetic derivative of the largest unitary divisor of n that is a square.

Offset 1, canonical program `A351572.P4940805872886659141`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A350388, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351572 (n : ℕ) : ℤ :=
  A351572.P4940805872886659141.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A350388, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351572.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353493.P11274573970098312358

`A003415(n)%4`
-/

namespace A353493.P11274573970098312358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003415 n) 4

end

end A353493.P11274573970098312358

noncomputable section

/-- A353493: The arithmetic derivative of n, reduced modulo 4.

Offset 0, canonical program `A353493.P11274573970098312358`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353493 (n : ℕ) : ℤ :=
  A353493.P11274573970098312358.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353493.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353494.P3598383137759262776

`round(gcd(4, A003415(n))/8)`
-/

namespace A353494.P3598383137759262776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Int.gcd 4 (A003415 n) : ℚ) / 8)

end

end A353494.P3598383137759262776

noncomputable section

/-- A353494: a(n) = 1 if the arithmetic derivative of n is a multiple of 4, otherwise 0.

Offset 0, canonical program `A353494.P3598383137759262776`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353494 (n : ℕ) : ℤ :=
  A353494.P3598383137759262776.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353494.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353495.P17772211378509351063

`C(A003415(n)+5, 3)%2`
-/

namespace A353495.P17772211378509351063
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003415 n + 5).toNat 3 % 2

end

end A353495.P17772211378509351063

noncomputable section

/-- A353495: a(n) = 1 if the arithmetic derivative of n is of the form 4k+2, otherwise 0.

Offset 0, canonical program `A353495.P17772211378509351063`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353495 (n : ℕ) : ℤ :=
  (A353495.P17772211378509351063.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353495.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A355003.P5537165438358420567

`gcd(A003415(n+1), A277791(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A355003.P5537165438358420567
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003415 (n + 1)) (A277791 (n + 1))

end

end A355003.P5537165438358420567

noncomputable section

/-- A355003: a(n) = gcd(A003415(n), A277791(n)), where A003415 is the arithmetic derivative and A277791 is the denominator of sum of reciprocals of proper divisors of n.

Offset 1, canonical program `A355003.P5537165438358420567`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A277791, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A355003 (n : ℕ) : ℤ :=
  (A355003.P5537165438358420567.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A277791, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A355003.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A359430.P17743289433619034511

`val(gcd(3, A003415(n)), 3)`
-/

namespace A359430.P17743289433619034511
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Int.gcd 3 (A003415 n)) 3

end

end A359430.P17743289433619034511

noncomputable section

/-- A359430: a(n) = 1 if the arithmetic derivative of n is a multiple of 3, otherwise 0.

Offset 0, canonical program `A359430.P17743289433619034511`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359430 (n : ℕ) : ℤ :=
  (A359430.P17743289433619034511.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359430.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359820.P4426895942293485706

`(n+A003415(n))%2`
-/

namespace A359820.P4426895942293485706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) + A003415 n) 2

end

end A359820.P4426895942293485706

noncomputable section

/-- A359820: a(n) = 1 if n and n' are of different parity, otherwise 0. Here n' stands for the arithmetic derivative of n, A003415(n).

Offset 0, canonical program `A359820.P4426895942293485706`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359820 (n : ℕ) : ℤ :=
  A359820.P4426895942293485706.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359820.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A360758.P7102341119995455638

`eq[2, A096501(A003415(n)+1)]`
-/

namespace A360758.P7102341119995455638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096501 (A003415 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A360758.P7102341119995455638

noncomputable section

/-- A360758: Numbers k for which k' - 1 and k' + 1 are twin primes, where the prime denotes the arithmetic derivative.

Offset 1, canonical program `A360758.P7102341119995455638`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. -/
def A360758 (n : ℕ) : ℤ :=
  (A360758.P7102341119995455638.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. -/
def A360758.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369049.P9666257041072368809

`(n+2)%A003415(n+2)`
-/

namespace A369049.P9666257041072368809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 2 : ℤ) (A003415 (n + 2))

end

end A369049.P9666257041072368809

noncomputable section

/-- A369049: a(n) = n mod n', where n' is the arithmetic derivative of n, A003415.

Offset 2, canonical program `A369049.P9666257041072368809`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369049 (n : ℕ) : ℤ :=
  A369049.P9666257041072368809.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369049.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A369052.P13766350415687932564

`n-2*A003415(n)`
-/

namespace A369052.P13766350415687932564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2 * A003415 n

end

end A369052.P13766350415687932564

noncomputable section

/-- A369052: a(n) = n - n'*2, where n' is the arithmetic derivative of n, A003415.

Offset 0, canonical program `A369052.P13766350415687932564`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369052 (n : ℕ) : ℤ :=
  A369052.P13766350415687932564.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369052.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A369252.P4904178596976423146

`A003415(A046316(n+1))`
-/

namespace A369252.P4904178596976423146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A046316 (n + 1)).toNat

end

end A369252.P4904178596976423146

noncomputable section

/-- A369252: Arithmetic derivative applied to the numbers of the form p*q*r where p,q,r are (not necessarily distinct) odd primes.

Offset 1, canonical program `A369252.P4904178596976423146`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A046316, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A369252 (n : ℕ) : ℤ :=
  A369252.P4904178596976423146.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A046316, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A369252.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A369660.P11962281434868844871

`A369965(A003415(n))`
-/

namespace A369660.P11962281434868844871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369965 (A003415 n).toNat

end

end A369660.P11962281434868844871

noncomputable section

/-- A369660: a(n) = 1 if n' is of the form 4k+2, and n' has an even number of prime factors, otherwise a(n) = 0, where n' stands for the arithmetic derivative of n, A003415.

Offset 0, canonical program `A369660.P11962281434868844871`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A369965, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A369660 (n : ℕ) : ℤ :=
  A369660.P11962281434868844871.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A369965, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A369660.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A369967.P2338115965869939887

`1-A011558(A003415(n))`
-/

namespace A369967.P2338115965869939887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A011558 (A003415 n).toNat

end

end A369967.P2338115965869939887

noncomputable section

/-- A369967: a(n) = 1 if the arithmetic derivative of n is a multiple of 5, otherwise 0.

Offset 0, canonical program `A369967.P2338115965869939887`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369967 (n : ℕ) : ℤ :=
  A369967.P2338115965869939887.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369967.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370596.P16435059816555867442

`eq[(-1)^n, A003415(A327491(n))]`
-/

namespace A370596.P16435059816555867442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A327491 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A370596.P16435059816555867442

noncomputable section

/-- A370596: Numbers k such that A007814(k) is a prime number.

Offset 1, canonical program `A370596.P16435059816555867442`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2073 terms. -/
def A370596 (n : ℕ) : ℤ :=
  (A370596.P16435059816555867442.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2073 terms. -/
def A370596.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373364.P8547950682954605811

`gcd(A001414(n+1), A003415(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A373364.P8547950682954605811
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001414 (n + 1)) (A003415 (n + 1))

end

end A373364.P8547950682954605811

noncomputable section

/-- A373364: a(n) = gcd(A001414(n), A003415(n)), where A001414 is the sum of prime factors with repetition, and A003415 is the arithmetic derivative.

Offset 1, canonical program `A373364.P8547950682954605811`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, A003415, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A373364 (n : ℕ) : ℤ :=
  (A373364.P8547950682954605811.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, A003415, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A373364.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373480.P17278960438644468592

`A003415(n+2)%A001414(n+2)`
-/

namespace A373480.P17278960438644468592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003415 (n + 2)) (A001414 (n + 2))

end

end A373480.P17278960438644468592

noncomputable section

/-- A373480: a(n) = A003415(n) mod A001414(n), where A003415 is the arithmetic derivative, and A001414 is the sum of prime factors with multiplicity.

Offset 2, canonical program `A373480.P17278960438644468592`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, A003415, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A373480 (n : ℕ) : ℤ :=
  A373480.P17278960438644468592.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, A003415, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A373480.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379967.P12250939003195279045

`A003415(A003557(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A379967.P12250939003195279045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A003557 (n + 1)).toNat

end

end A379967.P12250939003195279045

noncomputable section

/-- A379967: Arithmetic derivative of {n divided by its largest squarefree divisor}: a(n) = A003415(A003557(n)).

Offset 1, canonical program `A379967.P12250939003195279045`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A003557, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A379967 (n : ℕ) : ℤ :=
  A379967.P12250939003195279045.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A003557, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A379967.provenance : SequenceMachineLib.Provenance := .conditional

