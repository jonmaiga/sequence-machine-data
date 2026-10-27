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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
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
import Seq.B001.C013
import SequenceMachineLib.Triangle

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A082100.P16114683157096946740

`A001157(A002110(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A082100.P16114683157096946740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (A002110 (n + 1)).toNat

end

end A082100.P16114683157096946740

noncomputable section

/-- A082100: a(n) = A001157(A002110(n)), sum of squares of divisors of primorial numbers.

Offset 1, canonical program `A082100.P16114683157096946740`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A001157(A002110(n+1))` (program `A082100.P16114683157096946740`, by `A082100.P16114683157096946740.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A082100 (n : ℕ) : ℤ :=
  A082100.P16114683157096946740.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A001157(A002110(n+1))` (program `A082100.P16114683157096946740`, by `A082100.P16114683157096946740.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A082100.provenance : SequenceMachineLib.Provenance := .verified

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

Offset 1, canonical program `A088860.P14705598582404096707`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*A002110(n+1)` (program `A088860.P14705598582404096707`, by `A088860.P14705598582404096707.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A088860 (n : ℕ) : ℤ :=
  A088860.P14705598582404096707.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*A002110(n+1)` (program `A088860.P14705598582404096707`, by `A088860.P14705598582404096707.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A088860.provenance : SequenceMachineLib.Provenance := .verified

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

/-! ## A076259.P17974691457858298678

`A005117(n+2)-A005117(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A076259.P17974691457858298678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 2) - A005117 (n + 1)

end

end A076259.P17974691457858298678

noncomputable section

/-- A076259: Gaps between squarefree numbers: a(n) = A005117(n+1) - A005117(n).

Offset 1, canonical program `A076259.P17974691457858298678`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A005117(n+2)-A005117(n+1)` (program `A076259.P17974691457858298678`, by `A076259.P17974691457858298678.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A076259 (n : ℕ) : ℤ :=
  A076259.P17974691457858298678.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A005117(n+2)-A005117(n+1)` (program `A076259.P17974691457858298678`, by `A076259.P17974691457858298678.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A076259.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A078650.P371792363212749957

`2-A000002(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A078650.P371792363212749957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A000002 (n + 1)

end

end A078650.P371792363212749957

noncomputable section

/-- A078650: 2-A000002(n) where A000002 is the Kolakoski sequence.

Offset 1, canonical program `A078650.P371792363212749957`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2-A000002(n+1)` (program `A078650.P371792363212749957`, by `A078650.P371792363212749957.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A078650 (n : ℕ) : ℤ :=
  A078650.P371792363212749957.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2-A000002(n+1)` (program `A078650.P371792363212749957`, by `A078650.P371792363212749957.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A078650.provenance : SequenceMachineLib.Provenance := .verified

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

Offset 1, canonical program `A105126.P17832281701404375684`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A105126.anchor (n : ℕ) (hn : 1 ≤ n) : A105126 n = (Nat.nth (fun p => p.Prime ∧ p % 16 ∈ ({9} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A105.A105126`. -/
def A105126 (n : ℕ) : ℤ :=
  (A105126.P17832281701404375684.a (n - 1) : ℤ)

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A105126.anchor (n : ℕ) (hn : 1 ≤ n) : A105126 n = (Nat.nth (fun p => p.Prime ∧ p % 16 ∈ ({9} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A105.A105126`. -/
def A105126.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A076332.P10547228136457690679

`A007947(n+1)+A003557(n+1)`
-/

namespace A076332.P10547228136457690679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) + A003557 (n + 1)

end

end A076332.P10547228136457690679

noncomputable section

/-- A076332: a(n) = rad(n) + n/rad(n), where rad(n) is the squarefree kernel of n = A007947(n).

Offset 1, canonical program `A076332.P10547228136457690679`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A076332 (n : ℕ) : ℤ :=
  A076332.P10547228136457690679.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A076332.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A076621.P15526451203050093730

`A048761(A006094(n+1))`
-/

namespace A076621.P15526451203050093730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048761 (A006094 (n + 1)).toNat

end

end A076621.P15526451203050093730

noncomputable section

/-- A076621: Least square greater than the product of two successive primes.

Offset 1, canonical program `A076621.P15526451203050093730`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A076621 (n : ℕ) : ℤ :=
  A076621.P15526451203050093730.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A076621.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A076835.P15410372118314724071

`24*A064987(n+1)`
-/

namespace A076835.P15410372118314724071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * A064987 (n + 1)

end

end A076835.P15410372118314724071

noncomputable section

/-- A076835: Coefficients in expansion of Eisenstein series -q*E'_2.

Offset 1, canonical program `A076835.P15410372118314724071`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A076835 (n : ℕ) : ℤ :=
  A076835.P15410372118314724071.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A076835.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A076926.P4980543068874911485

`A002110(n+1)*A003557(n+1)`
-/

namespace A076926.P4980543068874911485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (n + 1) * A003557 (n + 1)

end

end A076926.P4980543068874911485

noncomputable section

/-- A076926: Smallest multiple of n with n distinct prime divisors.

Offset 1, canonical program `A076926.P4980543068874911485`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A076926 (n : ℕ) : ℤ :=
  A076926.P4980543068874911485.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A076926.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A077011.P6860682218887191644

`A002110(row(n)+1)/A000040(row(n)+2-(col(n)+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A077011.P6860682218887191644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002110 (SequenceMachineLib.triRow n + 1) : ℚ) / (A000040 (SequenceMachineLib.triRow n + 2 - (SequenceMachineLib.triCol n + 1)) : ℚ)

end

end A077011.P6860682218887191644

noncomputable section

/-- A077011: Triangle read by rows: T(n,k) = A002110(n)/prime(n+1-k), k = 1..n.

Offset 1, canonical program `A077011.P6860682218887191644`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077011 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A077011.P6860682218887191644.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077011.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A077037.P12067095828410762554

`A007917((n+2)^3)`
-/

namespace A077037.P12067095828410762554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 ((n + 2) ^ 3)

end

end A077037.P12067095828410762554

noncomputable section

/-- A077037: Largest prime < n^3.

Offset 2, canonical program `A077037.P12067095828410762554`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077037 (n : ℕ) : ℤ :=
  A077037.P12067095828410762554.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077037.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A077049.P4113379091505047421

`floor(A004736(n+1)/A002260(n+1))-floor((A004736(n+1)-1)/A002260(n+1))`
-/

namespace A077049.P4113379091505047421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004736 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ)⌋ - ⌊(A004736 (n + 1) - 1 : ℚ) / (A002260 (n + 1) : ℚ)⌋

end

end A077049.P4113379091505047421

noncomputable section

/-- A077049: Left summatory matrix, T, by antidiagonals upwards.

Offset 1, canonical program `A077049.P4113379091505047421`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077049 (n : ℕ) : ℤ :=
  A077049.P4113379091505047421.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077049.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A077051.P13341639841933775986

`floor(A002260(n+1)/A004736(n+1))-floor((A002260(n+1)-1)/A004736(n+1))`
-/

namespace A077051.P13341639841933775986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002260 (n + 1) : ℚ) / (A004736 (n + 1) : ℚ)⌋ - ⌊(A002260 (n + 1) - 1 : ℚ) / (A004736 (n + 1) : ℚ)⌋

end

end A077051.P13341639841933775986

noncomputable section

/-- A077051: Right summatory matrix, T, by antidiagonals.

Offset 1, canonical program `A077051.P13341639841933775986`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077051 (n : ℕ) : ℤ :=
  A077051.P13341639841933775986.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077051.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A077063.P14507967671238301962

`A007947(A006093(n+1))`
-/

namespace A077063.P14507967671238301962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A006093 (n + 1)).toNat

end

end A077063.P14507967671238301962

noncomputable section

/-- A077063: Squarefree kernel of prime(n) - 1.

Offset 1, canonical program `A077063.P14507967671238301962`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077063 (n : ℕ) : ℤ :=
  A077063.P14507967671238301962.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077063.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A077066.P2629297782265208839

`A007947(A008864(n+1))`
-/

namespace A077066.P2629297782265208839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A008864 (n + 1)).toNat

end

end A077066.P2629297782265208839

noncomputable section

/-- A077066: Squarefree kernel of prime(n) + 1.

Offset 1, canonical program `A077066.P2629297782265208839`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077066 (n : ℕ) : ℤ :=
  A077066.P2629297782265208839.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077066.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A077116.P10717273427979693664

`n^3-A065733(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A077116.P10717273427979693664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) - A065733 n

end

end A077116.P10717273427979693664

noncomputable section

/-- A077116: n^3 - A065733(n).

Offset 0, canonical program `A077116.P10717273427979693664`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077116 (n : ℕ) : ℤ :=
  A077116.P10717273427979693664.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077116.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A078314.P2877485393770838390

`A001222(A078310(n+1))`
-/

namespace A078314.P2877485393770838390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A078310 (n + 1)).toNat

end

end A078314.P2877485393770838390

noncomputable section

/-- A078314: Total number of prime factors of n*rad(n)+1 counted with multiplicity, where rad = A007947 (squarefree kernel).

Offset 1, canonical program `A078314.P2877485393770838390`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078314 (n : ℕ) : ℤ :=
  A078314.P2877485393770838390.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078314.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A078318.P9588675743747203793

`A000203(A078310(n+1))`
-/

namespace A078318.P9588675743747203793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A078310 (n + 1)).toNat

end

end A078318.P9588675743747203793

noncomputable section

/-- A078318: Sum of divisors of n*rad(n)+1, where rad = A007947 (squarefree kernel).

Offset 1, canonical program `A078318.P9588675743747203793`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078318 (n : ℕ) : ℤ :=
  A078318.P9588675743747203793.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078318.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A078319.P14888292905057710081

`A008472(A078310(n+1))`
-/

namespace A078319.P14888292905057710081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A078310 (n + 1)).toNat

end

end A078319.P14888292905057710081

noncomputable section

/-- A078319: Sum of distinct prime factors of n*rad(n)+1, where rad = A007947 (squarefree kernel).

Offset 1, canonical program `A078319.P14888292905057710081`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078319 (n : ℕ) : ℤ :=
  A078319.P14888292905057710081.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078319.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A078320.P3684429173825938426

`A001414(A078310(n+1))`
-/

namespace A078320.P3684429173825938426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A078310 (n + 1)).toNat

end

end A078320.P3684429173825938426

noncomputable section

/-- A078320: Sum of all prime factors of n*rad(n)+1, where rad = A007947 (squarefree kernel).

Offset 1, canonical program `A078320.P3684429173825938426`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078320 (n : ℕ) : ℤ :=
  A078320.P3684429173825938426.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078320.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A078627.P3590546256859518006

`1+a(A000120(n+1)-1)` with `a(0)=1`
-/

namespace A078627.P3590546256859518006
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  1 + a (A000120 (n + 1) - 1).toNat

end

end A078627.P3590546256859518006

noncomputable section

/-- A078627: Write n in binary; repeatedly sum the "digits" until reaching 1; a(n) = 1 + number of steps required.

Offset 1, canonical program `A078627.P3590546256859518006`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078627 (n : ℕ) : ℤ :=
  (A078627.P3590546256859518006.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078627.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A078677.P617724076357059573

`n+1+a(A000120(n+1)-1)` with `a(0)=1`
-/

namespace A078677.P617724076357059573
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  n + 1 + a (A000120 (n + 1) - 1).toNat

end

end A078677.P617724076357059573

noncomputable section

/-- A078677: Write n in binary; repeatedly sum the "digits" until reaching 1; a(n) = sum of these sums (including '1' and n itself).

Offset 1, canonical program `A078677.P617724076357059573`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078677 (n : ℕ) : ℤ :=
  (A078677.P617724076357059573.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078677.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A078820.P17796184437487941697

`(2*n+1)*A078819(n)/7`
-/

namespace A078820.P17796184437487941697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1 : ℤ) * A078819 n : ℚ) / 7

end

end A078820.P17796184437487941697

noncomputable section

/-- A078820: a(n) = 20*C(2n,n)*(2n+1)/(n+4).

Offset 0, canonical program `A078820.P17796184437487941697`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078820 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A078820.P17796184437487941697.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078820.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A079081.P14946958580795685552

`A079079(n+1)/A079080(n+1)`
-/

namespace A079081.P14946958580795685552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079079 (n + 1) : ℚ) / (A079080 (n + 1) : ℚ)

end

end A079081.P14946958580795685552

noncomputable section

/-- A079081: Numerator of (prime(n)+1)*(prime(n+1)+1)/(4*(prime(n)*prime(n+1)+1)).

Offset 1, canonical program `A079081.P14946958580795685552`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A079081 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A079081.P14946958580795685552.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A079081.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A079085.P14446471783722856133

`A001221(A079079(n+1))`
-/

namespace A079085.P14446471783722856133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A079079 (n + 1)).toNat

end

end A079085.P14446471783722856133

noncomputable section

/-- A079085: Number of distinct prime factors of (prime(n)+1)*(prime(n+1)+1)/4.

Offset 1, canonical program `A079085.P14446471783722856133`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A079085 (n : ℕ) : ℤ :=
  A079085.P14446471783722856133.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A079085.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A079086.P16614913600754652005

`A001222(A079079(n+1))`
-/

namespace A079086.P16614913600754652005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A079079 (n + 1)).toNat

end

end A079086.P16614913600754652005

noncomputable section

/-- A079086: Total number of prime factors of (prime(n)+1)*(prime(n+1)+1)/4.

Offset 1, canonical program `A079086.P16614913600754652005`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A079086 (n : ℕ) : ℤ :=
  A079086.P16614913600754652005.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A079086.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A079089.P14407906461052975020

`A000203(A079079(n+1))`
-/

namespace A079089.P14407906461052975020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A079079 (n + 1)).toNat

end

end A079089.P14407906461052975020

noncomputable section

/-- A079089: Sum of divisors of (prime(n)+1)*(prime(n+1)+1)/4.

Offset 1, canonical program `A079089.P14407906461052975020`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A079089 (n : ℕ) : ℤ :=
  A079089.P14407906461052975020.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A079089.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A079090.P7688684910206676053

`A008472(A079079(n+1))`
-/

namespace A079090.P7688684910206676053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A079079 (n + 1)).toNat

end

end A079090.P7688684910206676053

noncomputable section

/-- A079090: Sum of distinct prime factors of (prime(n)+1)*(prime(n+1)+1)/4.

Offset 1, canonical program `A079090.P7688684910206676053`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A079090 (n : ℕ) : ℤ :=
  A079090.P7688684910206676053.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A079090.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A079091.P8514234596208376302

`A001414(A079079(n+1))`
-/

namespace A079091.P8514234596208376302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A079079 (n + 1)).toNat

end

end A079091.P8514234596208376302

noncomputable section

/-- A079091: Sum of all prime factors of (prime(n)+1)*(prime(n+1)+1)/4.

Offset 1, canonical program `A079091.P8514234596208376302`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A079091 (n : ℕ) : ℤ :=
  A079091.P8514234596208376302.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A079091.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A079093.P18049403196778155305

`A007947(A079079(n+1))`
-/

namespace A079093.P18049403196778155305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A079079 (n + 1)).toNat

end

end A079093.P18049403196778155305

noncomputable section

/-- A079093: Squarefree kernel of (prime(n)+1)*(prime(n+1)+1)/4.

Offset 1, canonical program `A079093.P18049403196778155305`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A079093 (n : ℕ) : ℤ :=
  A079093.P18049403196778155305.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A079093.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A079559.P6833565121082423031

`A043545(n+1)*a(n+1-A053644(n+1))` with `a(0)=1`
-/

namespace A079559.P6833565121082423031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A043545 (n + 1) * a ((n + 1 : ℤ) - A053644 (n + 1)).toNat

end

end A079559.P6833565121082423031

noncomputable section

/-- A079559: Number of partitions of n into distinct parts of the form 2^j-1, j=1,2,....

Offset 0, canonical program `A079559.P6833565121082423031`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A079559 (n : ℕ) : ℤ :=
  A079559.P6833565121082423031.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A079559.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A079705.P5346247359754052354

`3*A001248(n+1)`
-/

namespace A079705.P5346247359754052354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A001248 (n + 1)

end

end A079705.P5346247359754052354

noncomputable section

/-- A079705: 3p^2 where p runs through the primes.

Offset 1, canonical program `A079705.P5346247359754052354`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A079705 (n : ℕ) : ℤ :=
  A079705.P5346247359754052354.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A079705.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A079780.P8620431472310395336

`A000040(A057855(n+1))`
-/

namespace A079780.P8620431472310395336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A057855 (n + 1)).toNat

end

end A079780.P8620431472310395336

noncomputable section

/-- A079780: a(n) = largest prime <= n*prime(n).

Offset 1, canonical program `A079780.P8620431472310395336`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A079780 (n : ℕ) : ℤ :=
  A079780.P8620431472310395336.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A079780.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A080143.P15882219857944714637

`(3*A027941(n)+7*A001654(n))/2`
-/

namespace A080143.P15882219857944714637
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A027941 n + 7 * A001654 n : ℚ) / 2

end

end A080143.P15882219857944714637

noncomputable section

/-- A080143: a(n) = F(3)*F(n)*F(n+1) + F(4)*F(n+1)^2 - F(4) if n even, F(3)*F(n)*F(n+1) + F(4)*F(n+1)^2 if n odd, where F(n) is the n-th Fibonacci number (A000045).

Offset 0, canonical program `A080143.P15882219857944714637`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A080143 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A080143.P15882219857944714637.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A080143.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A080144.P8666941854186962833

`(5*A027941(n)+11*A001654(n))/2`
-/

namespace A080144.P8666941854186962833
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 * A027941 n + 11 * A001654 n : ℚ) / 2

end

end A080144.P8666941854186962833

noncomputable section

/-- A080144: a(n) = F(4)*F(n)*F(n+1) + F(5)*F(n+1)^2 if n odd, a(n) = F(4)*F(n)*F(n+1) + F(5)*F(n+1)^2 - F(5) if n even, where F(n) is the n-th Fibonacci number (A000045).

Offset 0, canonical program `A080144.P8666941854186962833`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A080144 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A080144.P8666941854186962833.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A080144.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A080148.P13293786807354433186

`A049084(A002145(n+1))`
-/

namespace A080148.P13293786807354433186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A002145 (n + 1)).toNat

end

end A080148.P13293786807354433186

noncomputable section

/-- A080148: Positions of primes of the form 4*k+3 (A002145) among all primes (A000040).

Offset 1, canonical program `A080148.P13293786807354433186`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A080148 (n : ℕ) : ℤ :=
  A080148.P13293786807354433186.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A080148.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A080175.P5962583558788251147

`A080109(n+1)²`
-/

namespace A080175.P5962583558788251147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080109 (n + 1) ^ 2

end

end A080175.P5962583558788251147

noncomputable section

/-- A080175: Fourth power of primes of the form 4k+1 (A002144).

Offset 1, canonical program `A080175.P5962583558788251147`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A080175 (n : ℕ) : ℤ :=
  A080175.P5962583558788251147.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A080175.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A080355.P14023989668331808730

`A076793(n)/2+1`
-/

namespace A080355.P14023989668331808730
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076793 n : ℚ) / 2 + 1

end

end A080355.P14023989668331808730

noncomputable section

/-- A080355: a(1)=1; thereafter, a(n+1) = a(n) + 2^(prime(n)-1).

Offset 1, canonical program `A080355.P14023989668331808730`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A080355 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A080355.P14023989668331808730.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A080355.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A080378.P10982395918754436157

`A001223(n+1)%4`
-/

namespace A080378.P10982395918754436157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001223 (n + 1)) 4

end

end A080378.P10982395918754436157

noncomputable section

/-- A080378: Residues mod 4 of the n-th difference between consecutive primes.

Offset 1, canonical program `A080378.P10982395918754436157`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A080378 (n : ℕ) : ℤ :=
  A080378.P10982395918754436157.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A080378.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A080692.P2810118921936423499

`2*a(n-1)+A054243(n)` with `a(0)=0`
-/

namespace A080692.P2810118921936423499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 * a (n - 1) + A054243 n

end

end A080692.P2810118921936423499

noncomputable section

/-- A080692: a(n)=(-1)^(n+1)*det(M(n)) where M(n) is the n X n matrix M(i,j)=min(abs(i-j),i).

Offset 1, canonical program `A080692.P2810118921936423499`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A080692 (n : ℕ) : ℤ :=
  A080692.P2810118921936423499.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A080692.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A081118.P6487108056144640916

`(2^A002260(n+1)-1)*2^A004736(n+1)-1`
-/

namespace A081118.P6487108056144640916
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ (A002260 (n + 1) : ℤ) - 1) * (2 : ℚ) ^ (A004736 (n + 1) : ℤ) - 1

end

end A081118.P6487108056144640916

noncomputable section

/-- A081118: Triangle of first n numbers per row having exactly n 1's in binary representation.

Offset 1, canonical program `A081118.P6487108056144640916`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A081118 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A081118.P6487108056144640916.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A081118.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A081325.P13882741182874275986

`A010873(A065764(n+1))`
-/

namespace A081325.P13882741182874275986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A065764 (n + 1)).toNat

end

end A081325.P13882741182874275986

noncomputable section

/-- A081325: a(n) = sigma(n^2) modulo 4.

Offset 1, canonical program `A081325.P13882741182874275986`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A081325 (n : ℕ) : ℤ :=
  A081325.P13882741182874275986.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A081325.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A081334.P8314980247781492951

`A010873(A065765(n+1))`
-/

namespace A081334.P8314980247781492951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A065765 (n + 1)).toNat

end

end A081334.P8314980247781492951

noncomputable section

/-- A081334: a(n) = sigma(2*n^2) modulo 4.

Offset 1, canonical program `A081334.P8314980247781492951`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A081334 (n : ℕ) : ℤ :=
  A081334.P8314980247781492951.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A081334.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A081530.P13171352182732697047

`A001705(n+1)/A025527(n+1)`
-/

namespace A081530.P13171352182732697047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001705 (n + 1) : ℚ) / (A025527 (n + 1) : ℚ)

end

end A081530.P13171352182732697047

noncomputable section

/-- A081530: a(n) = running sum of the first n harmonic numbers, multiplied by the LCM of 1..n.

Offset 1, canonical program `A081530.P13171352182732697047`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A081530 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A081530.P13171352182732697047.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A081530.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A081611.P15437231046551581943

`a(n-1)+A039966(n)` with `a(0)=1`
-/

namespace A081611.P15437231046551581943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A039966 n

end

end A081611.P15437231046551581943

noncomputable section

/-- A081611: Number of numbers <= n having no 2 in their ternary representation.

Offset 0, canonical program `A081611.P15437231046551581943`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A081611 (n : ℕ) : ℤ :=
  A081611.P15437231046551581943.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A081611.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A081743.P5518210580700423937

`A000120(n+1)+A059841(n+1)`
-/

namespace A081743.P5518210580700423937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1) + A059841 (n + 1)

end

end A081743.P5518210580700423937

noncomputable section

/-- A081743: a(1)=1 then a(n)=a(n/2^k)+1 if n is even and 2^k is the largest power of 2 dividing n, a(n)=a(n-1) otherwise.

Offset 1, canonical program `A081743.P5518210580700423937`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A081743 (n : ℕ) : ℤ :=
  A081743.P5518210580700423937.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A081743.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A081861.P1152851936983337581

`(A045823(n)-A008438(n))/24`
-/

namespace A081861.P1152851936983337581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045823 n - A008438 n : ℚ) / 24

end

end A081861.P1152851936983337581

noncomputable section

/-- A081861: a(n) = (1/24)*(sigma_3(2*n-1) - sigma_1(2*n-1)).

Offset 1, canonical program `A081861.P1152851936983337581`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A081861 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A081861.P1152851936983337581.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A081861.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A082343.P11638302062825757021`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A082343 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A082343.P11638302062825757021.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A082343.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A082344.P3644648653846769299`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A082344 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A082344.P3644648653846769299.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A082344.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A084296.P9456878335841744486`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A084296 (n : ℕ) : ℤ :=
  A084296.P9456878335841744486.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A084296.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A086568.P2444942067190828085

`A002110(A001222(n+1))`
-/

namespace A086568.P2444942067190828085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (A001222 (n + 1)).toNat

end

end A086568.P2444942067190828085

noncomputable section

/-- A086568: Smallest number having as many distinct prime factors as n has prime factors, when counted with multiplicity.

Offset 1, canonical program `A086568.P2444942067190828085`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A086568 (n : ℕ) : ℤ :=
  A086568.P2444942067190828085.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A086568.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A086692.P3138494623852388611`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A086692 (n : ℕ) : ℤ :=
  A086692.P3138494623852388611.a (n - 1)

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

/-! ## A087003.P9157037938585938204

`-A099991(n+1)`
-/

namespace A087003.P9157037938585938204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A099991 (n + 1)

end

end A087003.P9157037938585938204

noncomputable section

/-- A087003: a(2n) = 0 and a(2n+1) = mu(2n+1); also the sum of Mobius function values computed for terms of 3x+1 trajectory started at n, provided that Collatz conjecture is true.

Offset 1, canonical program `A087003.P9157037938585938204`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A087003 (n : ℕ) : ℤ :=
  A087003.P9157037938585938204.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A087003.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A087370.P13081478273326354661`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A087370 (n : ℕ) : ℤ :=
  A087370.P13081478273326354661.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A087370.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A087624.P6510087448774720234

`A001221(n+1)*A005171(n+1)`
-/

namespace A087624.P6510087448774720234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) * A005171 (n + 1)

end

end A087624.P6510087448774720234

noncomputable section

/-- A087624: a(n)=0 if n is prime, A001221(n) otherwise.

Offset 1, canonical program `A087624.P6510087448774720234`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A087624 (n : ℕ) : ℤ :=
  A087624.P6510087448774720234.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A087624.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A088879.P17861856931991418043`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A088879 (n : ℕ) : ℤ :=
  A088879.P17861856931991418043.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A088879.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A089821.P1761871828032168591

`A000720(n+1)*A089819(n+1)`
-/

namespace A089821.P1761871828032168591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) * A089819 (n + 1)

end

end A089821.P1761871828032168591

noncomputable section

/-- A089821: Number of subsets of {1,.., n} containing exactly one prime.

Offset 1, canonical program `A089821.P1761871828032168591`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A089821 (n : ℕ) : ℤ :=
  A089821.P1761871828032168591.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A089821.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A089986.P3429274986940726883`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A089986 (n : ℕ) : ℤ :=
  A089986.P3429274986940726883.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A089986.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A095233.P12555546131037091696

`a(n-1)+A013939(n+1)` with `a(0)=1`
-/

namespace A095233.P12555546131037091696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A013939 (n + 1)

end

end A095233.P12555546131037091696

noncomputable section

/-- A095233: a(n) = a(n-1) + Sum(floor(n/p): p prime), a(1) = 1.

Offset 1, canonical program `A095233.P12555546131037091696`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A095233 (n : ℕ) : ℤ :=
  A095233.P12555546131037091696.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A095233.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A098037.P1041668013125865311

`A001222(A001043(n+1))`
-/

namespace A098037.P1041668013125865311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001043 (n + 1)).toNat

end

end A098037.P1041668013125865311

noncomputable section

/-- A098037: Number of prime divisors, counted with multiplicity, of the sum of two consecutive primes.

Offset 1, canonical program `A098037.P1041668013125865311`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A098037 (n : ℕ) : ℤ :=
  A098037.P1041668013125865311.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A098037.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A099822.P4941690864949644625

`A005117(2*n+1)`
-/

namespace A099822.P4941690864949644625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (2 * n + 1)

end

end A099822.P4941690864949644625

noncomputable section

/-- A099822: Bisection of A005117.

Offset 1, canonical program `A099822.P4941690864949644625`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A099822 (n : ℕ) : ℤ :=
  A099822.P4941690864949644625.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A099822.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A099835.P17347924561769071639

`A005117(2*(n+1))`
-/

namespace A099835.P17347924561769071639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (2 * (n + 1))

end

end A099835.P17347924561769071639

noncomputable section

/-- A099835: Bisection of A005117.

Offset 1, canonical program `A099835.P17347924561769071639`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A099835 (n : ℕ) : ℤ :=
  A099835.P17347924561769071639.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A099835.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A107994.P14297671034442261939`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A107994 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A107994.P14297671034442261939.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A107994.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A110566.P14389672270171223314

`A003418(n+1)/A002805(n+1)`
-/

namespace A110566.P14389672270171223314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 (n + 1) : ℚ) / (A002805 (n + 1) : ℚ)

end

end A110566.P14389672270171223314

noncomputable section

/-- A110566: a(n) = lcm{1,2,...,n}/denominator of harmonic number H(n).

Offset 1, canonical program `A110566.P14389672270171223314`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A110566 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A110566.P14389672270171223314.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A110566.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A111060.P4105044473920745879

`A001414(A005117(n+1))`
-/

namespace A111060.P4105044473920745879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A005117 (n + 1)).toNat

end

end A111060.P4105044473920745879

noncomputable section

/-- A111060: a(n) = sum of primes dividing the n-th squarefree positive integer.

Offset 1, canonical program `A111060.P4105044473920745879`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A111060 (n : ℕ) : ℤ :=
  A111060.P4105044473920745879.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A111060.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A111199.P3819509222948216455`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A111199 (n : ℕ) : ℤ :=
  A111199.P3819509222948216455.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A111199.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A111215.P14583532471026945765`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A111215 (n : ℕ) : ℤ :=
  A111215.P14583532471026945765.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A111215.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A113849.P8712089641262290933

`A005117(n+2)^4`
-/

namespace A113849.P8712089641262290933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 2) ^ 4

end

end A113849.P8712089641262290933

noncomputable section

/-- A113849: Numbers whose prime factors are raised to the fourth power.

Offset 1, canonical program `A113849.P8712089641262290933`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A113849 (n : ℕ) : ℤ :=
  A113849.P8712089641262290933.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A113849.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A113850.P6425203316220628880

`A005117(n+2)^5`
-/

namespace A113850.P6425203316220628880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 2) ^ 5

end

end A113850.P6425203316220628880

noncomputable section

/-- A113850: Numbers whose prime factors are raised to the fifth power.

Offset 1, canonical program `A113850.P6425203316220628880`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A113850 (n : ℕ) : ℤ :=
  A113850.P6425203316220628880.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A113850.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A113851.P8385536040915747511

`A005117(n+2)^6`
-/

namespace A113851.P8385536040915747511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 2) ^ 6

end

end A113851.P8385536040915747511

noncomputable section

/-- A113851: Numbers whose prime factors are raised to the sixth power.

Offset 1, canonical program `A113851.P8385536040915747511`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A113851 (n : ℕ) : ℤ :=
  A113851.P8385536040915747511.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A113851.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A113852.P12512706821843894596

`A005117(n+2)^7`
-/

namespace A113852.P12512706821843894596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 2) ^ 7

end

end A113852.P12512706821843894596

noncomputable section

/-- A113852: Numbers whose prime factors are raised to the seventh power.

Offset 1, canonical program `A113852.P12512706821843894596`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A113852 (n : ℕ) : ℤ :=
  A113852.P12512706821843894596.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A113852.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A113902.P5440009348610242017

`A000720(n+1)*A022559(n+1)`
-/

namespace A113902.P5440009348610242017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) * A022559 (n + 1)

end

end A113902.P5440009348610242017

noncomputable section

/-- A113902: Product of omega(n!) and bigomega(n!).

Offset 1, canonical program `A113902.P5440009348610242017`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A113902 (n : ℕ) : ℤ :=
  A113902.P5440009348610242017.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A113902.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A077106.P1018111266842401741

`A100196(n)^3`
-/

namespace A077106.P1018111266842401741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 n ^ 3

end

end A077106.P1018111266842401741

noncomputable section

/-- A077106: Largest integer cube <= n^2.

Offset 0, canonical program `A077106.P1018111266842401741`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077106 (n : ℕ) : ℤ :=
  A077106.P1018111266842401741.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077106.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A077353.P7669968731459567172

`1+10^A055642(5^n)/5*a(n-1)` with `a(0)=1`
-/

namespace A077353.P7669968731459567172
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  1 + (10 : ℚ) ^ (A055642 (5 ^ n) : ℤ) / 5 * a (n - 1)

end

end A077353.P7669968731459567172

noncomputable section

/-- A077353: a(n) = (concatenation in ascending order of divisors of 5^n)/5^n.

Offset 0, canonical program `A077353.P7669968731459567172`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077353 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A077353.P7669968731459567172.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077353.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A077512.P4999606685360311724

`(ceil(sqrt((n+2)*10^(n+1-A055642(n+1))))-1)²`
-/

namespace A077512.P4999606685360311724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌈Real.sqrt ((n + 2 : ℚ) * (10 : ℚ) ^ ((n + 1 : ℤ) - A055642 (n + 1) : ℤ) : ℝ)⌉ - 1) ^ 2

end

end A077512.P4999606685360311724

noncomputable section

/-- A077512: Largest n-digit square beginning with n.

Offset 1, canonical program `A077512.P4999606685360311724`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077512 (n : ℕ) : ℤ :=
  A077512.P4999606685360311724.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077512.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A079295.P17127191197915102483

`A101264(A000040(n+1))`
-/

namespace A079295.P17127191197915102483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (A000040 (n + 1)).toNat

end

end A079295.P17127191197915102483

noncomputable section

/-- A079295: (D(p)-6)/(12p) where D(p) denotes the denominator of the 2p-th Bernoulli number and p runs through the primes.

Offset 1, canonical program `A079295.P17127191197915102483`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A079295 (n : ℕ) : ℤ :=
  A079295.P17127191197915102483.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A079295.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A079399.P11744366608838967402

`A000120(A121018(n))`
-/

namespace A079399.P11744366608838967402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A121018 n).toNat

end

end A079399.P11744366608838967402

noncomputable section

/-- A079399: Number of dots in Braille representation of n.

Offset 0, canonical program `A079399.P11744366608838967402`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A079399 (n : ℕ) : ℤ :=
  A079399.P11744366608838967402.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A079399.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A080652.P332993070091390049

`A086377(n+1)+1`
-/

namespace A080652.P332993070091390049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086377 (n + 1) + 1

end

end A080652.P332993070091390049

noncomputable section

/-- A080652: a(1)=2; for n>1, a(n)=a(n-1)+3 if n is already in the sequence, a(n)=a(n-1)+2 otherwise.

Offset 1, canonical program `A080652.P332993070091390049`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A080652 (n : ℕ) : ℤ :=
  A080652.P332993070091390049.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A080652.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A081603.P9418366050176887204

`(A053735(n)-A062756(n))/2`
-/

namespace A081603.P9418366050176887204
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053735 n - A062756 n : ℚ) / 2

end

end A081603.P9418366050176887204

noncomputable section

/-- A081603: Number of 2's in ternary representation of n.

Offset 0, canonical program `A081603.P9418366050176887204`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A081603 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A081603.P9418366050176887204.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A081603.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A085090.P1638787628522915575

`(2*(n+1)-1)*A101264(n)`
-/

namespace A085090.P1638787628522915575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1) : ℤ) - 1) * A101264 n

end

end A085090.P1638787628522915575

noncomputable section

/-- A085090: If 2n-1 is prime then a(n) = 2n-1, otherwise a(n) = 0.

Offset 1, canonical program `A085090.P1638787628522915575`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A085090 (n : ℕ) : ℤ :=
  A085090.P1638787628522915575.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A085090.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A076298.P17034386488694455198

`lt[A001222(A040976(n+1)+3*n+5), 2]+1`
-/

namespace A076298.P17034386488694455198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A040976 (n + 1) + (3 * n + 5 : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A076298.P17034386488694455198

noncomputable section

/-- A076298: Numbers k such that prime(k) + s*k is prime, s=3.

Offset 1, canonical program `A076298.P17034386488694455198`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1131 terms. -/
def A076298 (n : ℕ) : ℤ :=
  (A076298.P17034386488694455198.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1131 terms. -/
def A076298.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076367.P954353847303307258

`A000040(A060646(n+1))`
-/

namespace A076367.P954353847303307258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A060646 (n + 1)).toNat

end

end A076367.P954353847303307258

noncomputable section

/-- A076367: Primes with subscripts from the Bonse sequence.

Offset 1, canonical program `A076367.P954353847303307258`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060646, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A076367 (n : ℕ) : ℤ :=
  A076367.P954353847303307258.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060646, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A076367.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A076545.P6221361317140441619

`∑[A076544(n+1)]`
-/

namespace A076545.P6221361317140441619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076544 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076545.P6221361317140441619

noncomputable section

/-- A076545: a(n) = Sum_{k=1..n} (mu(k) + sqf(k)) where mu(k) is Moebius function, sqf(k)=1 if k is squarefree and sqf(k)=-1 otherwise.

Offset 1, canonical program `A076545.P6221361317140441619`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076545 (n : ℕ) : ℤ :=
  A076545.P6221361317140441619.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076545.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076579.P10008059916613887531

`A000217(eq[5, A069904(n+1)]+1)`
-/

namespace A076579.P10008059916613887531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069904 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A076579.P10008059916613887531

noncomputable section

/-- A076579: Triangular numbers which are 5-almost primes.

Offset 1, canonical program `A076579.P10008059916613887531`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4748 terms. -/
def A076579 (n : ℕ) : ℤ :=
  A076579.P10008059916613887531.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4748 terms. -/
def A076579.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076631.P15648461787183763039

`ceil(abs(1-2*A105225(n))/2)`
-/

namespace A076631.P15648461787183763039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(|1 - 2 * A105225 n| : ℚ) / 2⌉

end

end A076631.P15648461787183763039

noncomputable section

/-- A076631: Solve 2^n - 2 = 7(x^2 - x) + (y^2 - y) for (x,y) with x>0, y>0; a(n) = value of y.

Offset 1, canonical program `A076631.P15648461787183763039`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 662 terms. -/
def A076631 (n : ℕ) : ℤ :=
  A076631.P15648461787183763039.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 662 terms. -/
def A076631.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A077067.P10029377516240445440

`A049097(n+1)+1`
-/

namespace A077067.P10029377516240445440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049097 (n + 1) + 1

end

end A077067.P10029377516240445440

noncomputable section

/-- A077067: Squarefree numbers of the form prime + 1.

Offset 1, canonical program `A077067.P10029377516240445440`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049097, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A077067 (n : ℕ) : ℤ :=
  A077067.P10029377516240445440.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049097, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A077067.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A077126.P13407782285364760235

`∑[A031215(n+1)]`
-/

namespace A077126.P13407782285364760235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077126.P13407782285364760235

noncomputable section

/-- A077126: Sum of even-indexed primes.

Offset 1, canonical program `A077126.P13407782285364760235`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A077126 (n : ℕ) : ℤ :=
  A077126.P13407782285364760235.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A077126.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A077131.P11118684642387599196

`∑[A008347(2*n+1)+A008347(2*n)]`
-/

namespace A077131.P11118684642387599196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008347 (2 * n + 1) + A008347 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077131.P11118684642387599196

noncomputable section

/-- A077131: Sum of odd-indexed primes.

Offset 1, canonical program `A077131.P11118684642387599196`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A077131 (n : ℕ) : ℤ :=
  A077131.P11118684642387599196.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A077131.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A077138.P4015169788317951920

`A047904(n+1)-A037223(n)`
-/

namespace A077138.P4015169788317951920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047904 (n + 1) - A037223 n

end

end A077138.P4015169788317951920

noncomputable section

/-- A077138: a(0) = 0. If n is odd, a(n) = a(n-1) + n, otherwise a(n) = a(n-1) * n.

Offset 0, canonical program `A077138.P4015169788317951920`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A077138 (n : ℕ) : ℤ :=
  A077138.P4015169788317951920.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A077138.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A077218.P785408297749336745

`Δ[A022559(A000040(n+1))]-1`
-/

namespace A077218.P785408297749336745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A077218.P785408297749336745

noncomputable section

/-- A077218: Sum of numbers of prime factors (counted with multiplicities) of numbers between n-th and (n+1)-st prime.

Offset 1, canonical program `A077218.P785408297749336745`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9591 terms. -/
def A077218 (n : ℕ) : ℤ :=
  A077218.P785408297749336745.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9591 terms. -/
def A077218.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A077385.P17331936456348378182

`ceil(ceil(sqrt(n))^(A004737(n+1)-1))`
-/

namespace A077385.P17331936456348378182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(⌈Real.sqrt (n : ℝ)⌉ : ℚ) ^ (A004737 (n + 1) - 1 : ℤ)⌉

end

end A077385.P17331936456348378182

noncomputable section

/-- A077385: Triangle read by rows in which n-th row contains 2n-1 terms starting from n^0 to n^(n-1) in increasing order and then in decreasing order to n^0.

Offset 1, canonical program `A077385.P17331936456348378182`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3306 terms. -/
def A077385 (n : ℕ) : ℤ :=
  A077385.P17331936456348378182.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3306 terms. -/
def A077385.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A077463.P3404474754757640182

`A060715(n+1)-A101264(n)`
-/

namespace A077463.P3404474754757640182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060715 (n + 1) - A101264 n

end

end A077463.P3404474754757640182

noncomputable section

/-- A077463: Number of primes p such that n < p < 2n-2.

Offset 1, canonical program `A077463.P3404474754757640182`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A077463 (n : ℕ) : ℤ :=
  A077463.P3404474754757640182.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A077463.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A077480.P421012863486371594

`A001222(eq[A070012(n+2), A070014(n+2)]+2)`
-/

namespace A077480.P421012863486371594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070012 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070014 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2)

end

end A077480.P421012863486371594

noncomputable section

/-- A077480: Total number of prime factors of numbers m with bigomega(m) == 0 modulo omega(m) (counted with repetition).

Offset 1, canonical program `A077480.P421012863486371594`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6905 terms. -/
def A077480 (n : ℕ) : ℤ :=
  A077480.P421012863486371594.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6905 terms. -/
def A077480.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A077617.P9486837638642226480

`eq[A069904(n+1)+1, A001222(A028310(n))]`
-/

namespace A077617.P9486837638642226480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069904 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A077617.P9486837638642226480

noncomputable section

/-- A077617: Numbers k such that Omega(k) = Omega(k+1) + Omega(k+2).

Offset 1, canonical program `A077617.P9486837638642226480`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 708 terms. -/
def A077617 (n : ℕ) : ℤ :=
  (A077617.P9486837638642226480.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 708 terms. -/
def A077617.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A077626.P8190236521602997891

`2*A017913(n+1)-A000038(n)`
-/

namespace A077626.P8190236521602997891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A017913 (n + 1) - A000038 n

end

end A077626.P8190236521602997891

noncomputable section

/-- A077626: Largest term in periodic part of continued fraction expansion of square root of 1+3^n or 0 if 1+3^n is square.

Offset 1, canonical program `A077626.P8190236521602997891`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 417 terms. -/
def A077626 (n : ℕ) : ℤ :=
  A077626.P8190236521602997891.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 417 terms. -/
def A077626.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078182.P257615860530487597

`A046913(n+1)-A078181(n+1)`
-/

namespace A078182.P257615860530487597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046913 (n + 1) - A078181 (n + 1)

end

end A078182.P257615860530487597

noncomputable section

/-- A078182: a(n) = Sum_{d|n, d == 2 (mod 3)} d.

Offset 1, canonical program `A078182.P257615860530487597`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078182 (n : ℕ) : ℤ :=
  A078182.P257615860530487597.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078182.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078306.P7255771743428390491

`∑{d}[n+1, #*A026741(#)]`
-/

namespace A078306.P7255771743428390491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A026741 d

end

end A078306.P7255771743428390491

noncomputable section

/-- A078306: a(n) = Sum_{d divides n} (-1)^(n/d+1)*d^2.

Offset 1, canonical program `A078306.P7255771743428390491`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078306 (n : ℕ) : ℤ :=
  A078306.P7255771743428390491.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078306.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078316.P1814470591158265181

`A051903(A078310(n+1))`
-/

namespace A078316.P1814470591158265181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A078310 (n + 1)).toNat

end

end A078316.P1814470591158265181

noncomputable section

/-- A078316: Maximum exponent in the prime factorization of n*rad(n)+1, where rad = A007947 (squarefree kernel).

Offset 1, canonical program `A078316.P1814470591158265181`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A078316 (n : ℕ) : ℤ :=
  A078316.P1814470591158265181.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A078316.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A078613.P3015431349861428628

`eq[0, A005094(n+1)]+1`
-/

namespace A078613.P3015431349861428628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005094 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A078613.P3015431349861428628

noncomputable section

/-- A078613: Same numbers of distinct prime factors of forms 4*k+1 and 4*k+3.

Offset 1, canonical program `A078613.P3015431349861428628`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2623 terms. -/
def A078613 (n : ℕ) : ℤ :=
  (A078613.P3015431349861428628.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2623 terms. -/
def A078613.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078616.P11557008643438510974

`1-A007877(A235963(n))`
-/

namespace A078616.P11557008643438510974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A007877 (A235963 n).toNat

end

end A078616.P11557008643438510974

noncomputable section

/-- A078616: a(n) = Sum_{k=0..n} A010815(k).

Offset 0, canonical program `A078616.P11557008643438510974`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078616 (n : ℕ) : ℤ :=
  A078616.P11557008643438510974.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078616.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078718.P4035967656700466532

`comp[2*(n+1)]*A168491(floor(n-atan(n)))`
-/

namespace A078718.P4035967656700466532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) * A168491 ⌊(n : ℝ) - Real.arctan (n : ℝ)⌋.toNat

end

end A078718.P4035967656700466532

noncomputable section

/-- A078718: a(n) = (-1)^n*(2*n - 1)*CatalanNumber(n - 2) for n >= 2, a(n) = n for n = 0, 1.

Offset 0, canonical program `A078718.P4035967656700466532`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A078718 (n : ℕ) : ℤ :=
  A078718.P4035967656700466532.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A078718.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078779.P13855623010479763473

`lt[A078771(n+1), 1]+1`
-/

namespace A078779.P13855623010479763473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078771 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A078779.P13855623010479763473

noncomputable section

/-- A078779: Union of S, 2S and 4S, where S = odd squarefree numbers (A056911).

Offset 1, canonical program `A078779.P13855623010479763473`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078779 (n : ℕ) : ℤ :=
  (A078779.P13855623010479763473.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078779.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078838.P952050066526175109

`2*A005945(A102781(n+1))`
-/

namespace A078838.P952050066526175109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005945 (A102781 (n + 1)).toNat

end

end A078838.P952050066526175109

noncomputable section

/-- A078838: a(n) = Sum_{k=1..(p-1)*(p-2)} floor((k*p)^(1/3)) where p is the n-th prime.

Offset 1, canonical program `A078838.P952050066526175109`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2262 terms. -/
def A078838 (n : ℕ) : ℤ :=
  A078838.P952050066526175109.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2262 terms. -/
def A078838.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078880.P10962953249147653079

`A000002(2+n)`
-/

namespace A078880.P10962953249147653079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (2 + n)

end

end A078880.P10962953249147653079

noncomputable section

/-- A078880: The sequence starting with 2 that equals its own run length sequence.

Offset 1, canonical program `A078880.P10962953249147653079`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078880 (n : ℕ) : ℤ :=
  A078880.P10962953249147653079.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078880.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078917.P17733498996506050839

`p?[A078916(n+1)]`
-/

namespace A078917.P17733498996506050839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078916 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078917.P17733498996506050839

noncomputable section

/-- A078917: Primes of the form prime(k) + 2*k.

Offset 1, canonical program `A078917.P17733498996506050839`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1911 terms. -/
def A078917 (n : ℕ) : ℤ :=
  A078917.P17733498996506050839.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1911 terms. -/
def A078917.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079087.P15333323950352493770

`A051903(A079079(n+1))`
-/

namespace A079087.P15333323950352493770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A079079 (n + 1)).toNat

end

end A079087.P15333323950352493770

noncomputable section

/-- A079087: Maximum exponent in prime factorization of (prime(n)+1)*(prime(n+1)+1)/4.

Offset 1, canonical program `A079087.P15333323950352493770`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A079087 (n : ℕ) : ℤ :=
  A079087.P15333323950352493770.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A079087.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A079471.P14388610421718853340

`eq[and(n, -n), A000120(n)]`
-/

namespace A079471.P14388610421718853340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A079471.P14388610421718853340

noncomputable section

/-- A079471: Fixed points of reversed binary words in reversed lexicographic order.

Offset 0, canonical program `A079471.P14388610421718853340`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 201 terms. -/
def A079471 (n : ℕ) : ℤ :=
  (A079471.P14388610421718853340.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 201 terms. -/
def A079471.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079474.P5666201055204101890

`A002110(n-C(∑[char[∑[n]]], 2))^(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A079474.P5666201055204101890
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002110 (n - Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2) : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℤ)

end

end A079474.P5666201055204101890

noncomputable section

/-- A079474: Triangular array: for s=0 to r-1, a(r,s) = p(s)^(r-s), where p(s) is the s-th primorial number. (p(0)=1, p(1)=2, p(2)=2*3, p(3)=2*3*5,...).

Offset 1, canonical program `A079474.P5666201055204101890`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 201 terms. -/
def A079474 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A079474.P5666201055204101890.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 201 terms. -/
def A079474.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079536.P18436205178809017812

`A079535(n+1)-A001065(n+1)`
-/

namespace A079536.P18436205178809017812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079535 (n + 1) - A001065 (n + 1)

end

end A079536.P18436205178809017812

noncomputable section

/-- A079536: a(n) = phi(n)*d(n) - sigma(n).

Offset 1, canonical program `A079536.P18436205178809017812`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079536 (n : ℕ) : ℤ :=
  A079536.P18436205178809017812.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079536.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079648.P14728042321486966612

`A038098(A028310(n))-A000720(A028310(n)²)`
-/

namespace A079648.P14728042321486966612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038098 (A028310 n).toNat - A000720 (A028310 n ^ 2).toNat

end

end A079648.P14728042321486966612

noncomputable section

/-- A079648: Number of primes between n^2 and n^3.

Offset 0, canonical program `A079648.P14728042321486966612`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A079648 (n : ℕ) : ℤ :=
  A079648.P14728042321486966612.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A079648.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079652.P17596218607054029471

`p?[A072960(n+1)]`
-/

namespace A079652.P17596218607054029471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072960 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A079652.P17596218607054029471

noncomputable section

/-- A079652: Prime numbers using only the curved digits 0, 3, 6, 8 and 9.

Offset 1, canonical program `A079652.P17596218607054029471`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 721 terms. -/
def A079652 (n : ℕ) : ℤ :=
  A079652.P17596218607054029471.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 721 terms. -/
def A079652.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079719.P827166596602017947

`A005428(n+2)-2`
-/

namespace A079719.P827166596602017947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005428 (n + 2) - 2

end

end A079719.P827166596602017947

noncomputable section

/-- A079719: a(n) = n + floor(Sum_{k<n} a(k)/2) with a(0)=0.

Offset 0, canonical program `A079719.P827166596602017947`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 567 terms. -/
def A079719 (n : ℕ) : ℤ :=
  A079719.P827166596602017947.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 567 terms. -/
def A079719.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079824.P14206331420896025504

`A109900(n)+A058187(n)`
-/

namespace A079824.P14206331420896025504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109900 n + A058187 n

end

end A079824.P14206331420896025504

noncomputable section

/-- A079824: Sum of numbers in n-th upward diagonal of triangle in A079823.

Offset 1, canonical program `A079824.P14206331420896025504`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079824 (n : ℕ) : ℤ :=
  A079824.P14206331420896025504.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079824.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079981.P551135143756518723

`A079980(A057979(n+1))`
-/

namespace A079981.P551135143756518723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079980 (A057979 (n + 1)).toNat

end

end A079981.P551135143756518723

noncomputable section

/-- A079981: Number of permutations satisfying -k<=p(i)-i<=r and p(i)-i not in I, i=1..n, with k=3, r=3, I={-2,0,1,2}.

Offset 0, canonical program `A079981.P551135143756518723`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 700 terms. -/
def A079981 (n : ℕ) : ℤ :=
  A079981.P551135143756518723.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 700 terms. -/
def A079981.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080084.P6247052819730457464

`A022559(A000040(n+1))`
-/

namespace A080084.P6247052819730457464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 (A000040 (n + 1)).toNat

end

end A080084.P6247052819730457464

noncomputable section

/-- A080084: Number of prime factors in the factorial of the n-th prime, counted with multiplicity.

Offset 1, canonical program `A080084.P6247052819730457464`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9592 terms. -/
def A080084 (n : ℕ) : ℤ :=
  A080084.P6247052819730457464.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9592 terms. -/
def A080084.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080099.P15784613007183456214

`A051162(n)-A080098(n)`
-/

namespace A080099.P15784613007183456214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 n - A080098 n

end

end A080099.P15784613007183456214

noncomputable section

/-- A080099: Triangle T(n,k) = n AND k, 0<=k<=n, bitwise logical AND, read by rows.

Offset 0, canonical program `A080099.P15784613007183456214`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080099 (n : ℕ) : ℤ :=
  A080099.P15784613007183456214.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080099.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080147.P8933729688229557631

`∪[A160591(n+1), A160594(n+1)]`
-/

namespace A080147.P8933729688229557631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A080147.P8933729688229557631

noncomputable section

/-- A080147: Positions of primes of the form 4*k+1 (A002144) among all primes (A000040).

Offset 1, canonical program `A080147.P8933729688229557631`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080147 (n : ℕ) : ℤ :=
  (A080147.P8933729688229557631.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080147.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080151.P7052421058973629634

`A003132(A051885(n+1))`
-/

namespace A080151.P7052421058973629634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 (A051885 (n + 1)).toNat

end

end A080151.P7052421058973629634

noncomputable section

/-- A080151: Let m = Wonderful Demlo number A002477(n); a(n) = sum of digits of m.

Offset 1, canonical program `A080151.P7052421058973629634`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003132, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A080151 (n : ℕ) : ℤ :=
  A080151.P7052421058973629634.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003132, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A080151.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A080234.P10983705409938521708

`A051632(n-1)-a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A080234.P10983705409938521708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A051632 (n - 1) - a (n - 1)

end

end A080234.P10983705409938521708

noncomputable section

/-- A080234: Triangle whose rows are the differences of consecutive pairs of row elements of A080232.

Offset 0, canonical program `A080234.P10983705409938521708`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080234 (n : ℕ) : ℤ :=
  A080234.P10983705409938521708.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080234.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080304.P9910366703239988167

`n%(A055615(n+1)+1)+1`
-/

namespace A080304.P9910366703239988167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A055615 (n + 1) + 1) + 1

end

end A080304.P9910366703239988167

noncomputable section

/-- A080304: Numerator of n^mu(n), where mu is the Moebius function (A008683).

Offset 1, canonical program `A080304.P9910366703239988167`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080304 (n : ℕ) : ℤ :=
  A080304.P9910366703239988167.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080304.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080344.P14008918198358363005

`(A056847(n+1)-A053188(n+1))/2`
-/

namespace A080344.P14008918198358363005
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056847 (n + 1) - A053188 (n + 1) : ℚ) / 2

end

end A080344.P14008918198358363005

noncomputable section

/-- A080344: Partial sums of A023969.

Offset 0, canonical program `A080344.P14008918198358363005`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053188, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A080344 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A080344.P14008918198358363005.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053188, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A080344.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A080374.P16756862821907867169

`lcm(a(n-1), A001223(n+1))` with `a(0)=1`
-/

namespace A080374.P16756862821907867169
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (A001223 (n + 1))

end

end A080374.P16756862821907867169

noncomputable section

/-- A080374: a(n)=lcm of first n consecutive prime differences.

Offset 1, canonical program `A080374.P16756862821907867169`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080374 (n : ℕ) : ℤ :=
  (A080374.P16756862821907867169.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080374.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080401.P8518956413726012276

`lt[n², A080399(n+1)]+1`
-/

namespace A080401.P8518956413726012276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080399 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A080401.P8518956413726012276

noncomputable section

/-- A080401: Numbers k such that the sum of the squares of the divisors of k (A001157(k)) is squarefree.

Offset 1, canonical program `A080401.P8518956413726012276`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2433 terms. -/
def A080401 (n : ℕ) : ℤ :=
  (A080401.P8518956413726012276.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2433 terms. -/
def A080401.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080402.P17243358011621989898

`lt[A080399(n+1), n²]+1`
-/

namespace A080402.P17243358011621989898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080399 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A080402.P17243358011621989898

noncomputable section

/-- A080402: Numbers k such that the sum of the squares of the divisors of k (A001157(k)) is not squarefree.

Offset 1, canonical program `A080402.P17243358011621989898`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7567 terms. -/
def A080402 (n : ℕ) : ℤ :=
  (A080402.P17243358011621989898.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7567 terms. -/
def A080402.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080511.P12034931715052828904

`A002260(n+1)+(n+1)%A051340(n)`
-/

namespace A080511.P12034931715052828904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) + Int.tmod (n + 1 : ℤ) (A051340 n)

end

end A080511.P12034931715052828904

noncomputable section

/-- A080511: Triangle whose n-th row contains the least set (ordered lexicographically) of n distinct positive integers whose arithmetic mean is an integer.

Offset 1, canonical program `A080511.P12034931715052828904`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080511 (n : ℕ) : ℤ :=
  A080511.P12034931715052828904.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080511.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080759.P78527280457839002

`eq[A005171(n+2), A005171(A000720(n+1)+1)]+2`
-/

namespace A080759.P78527280457839002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A000720 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A080759.P78527280457839002

noncomputable section

/-- A080759: Inverse Aronson transform of primes.

Offset 1, canonical program `A080759.P78527280457839002`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080759 (n : ℕ) : ℤ :=
  (A080759.P78527280457839002.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080759.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080765.P11390877915773879858

`lt[0, A074591(n+1)]`
-/

namespace A080765.P11390877915773879858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074591 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A080765.P11390877915773879858

noncomputable section

/-- A080765: Integers m such that m+1 divides lcm(1 through m).

Offset 1, canonical program `A080765.P11390877915773879858`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080765 (n : ℕ) : ℤ :=
  (A080765.P11390877915773879858.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080765.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080773.P16474482558350524650

`∑{p}[n+1, val(n+1, #)*A000120(#)]`
-/

namespace A080773.P16474482558350524650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (SequenceMachineLib.valuation (n + 1) p : ℤ) * A000120 p

end

end A080773.P16474482558350524650

noncomputable section

/-- A080773: In binary representation: sum of number of 1's in prime factors of n (with repetition).

Offset 1, canonical program `A080773.P16474482558350524650`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080773 (n : ℕ) : ℤ :=
  A080773.P16474482558350524650.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080773.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080813.P10164319532213098643

`A000120(A008574(n)%(n+2))%2`
-/

namespace A080813.P10164319532213098643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000120 (Int.tmod (A008574 n) (n + 2 : ℤ)).toNat) 2

end

end A080813.P10164319532213098643

noncomputable section

/-- A080813: Lexicographically largest overlap-free binary sequence.

Offset 1, canonical program `A080813.P10164319532213098643`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080813 (n : ℕ) : ℤ :=
  A080813.P10164319532213098643.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080813.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080902.P13254032545939326057

`record[A010684(n)+comp[A026364(n+1)]]`
-/

namespace A080902.P13254032545939326057
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026364 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 n + (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080902.P13254032545939326057

noncomputable section

/-- A080902: a(1)=1, a(n)=a(n-1)+2 if (n and n+3 are in the sequence), a(n)=a(n-1)+3 otherwise.

Offset 1, canonical program `A080902.P13254032545939326057`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A080902 (n : ℕ) : ℤ :=
  A080902.P13254032545939326057.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A080902.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081113.P7576906969708490497

`A288834(n+1)-(A132894(n+1)+A132894(n))`
-/

namespace A081113.P7576906969708490497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288834 (n + 1) - (A132894 (n + 1) + A132894 n)

end

end A081113.P7576906969708490497

noncomputable section

/-- A081113: Number of paths of length n-1 a king can take from one side of an n X n chessboard to the opposite side.

Offset 1, canonical program `A081113.P7576906969708490497`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 205 terms. -/
def A081113 (n : ℕ) : ℤ :=
  A081113.P7576906969708490497.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 205 terms. -/
def A081113.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081284.P1423847120179373102

`A081283(n)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A081284.P1423847120179373102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A081283 n + a (n - 2)

end

end A081284.P1423847120179373102

noncomputable section

/-- A081284: An interleaved sequence of pyramidal and polygonal numbers.

Offset 0, canonical program `A081284.P1423847120179373102`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081284 (n : ℕ) : ℤ :=
  A081284.P1423847120179373102.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081284.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081339.P14697236628931349501

`eq[1, A065764(n+1)%4]+1`
-/

namespace A081339.P14697236628931349501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065764 (n + 1)) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A081339.P14697236628931349501

noncomputable section

/-- A081339: Numbers n such that sigma(n^2) modulo 4 = 1.

Offset 1, canonical program `A081339.P14697236628931349501`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4935 terms. -/
def A081339 (n : ℕ) : ℤ :=
  (A081339.P14697236628931349501.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4935 terms. -/
def A081339.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081354.P13958200353524548950

`lt[1, A065764(n+1)%4]+1`
-/

namespace A081354.P13958200353524548950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065764 (n + 1)) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A081354.P13958200353524548950

noncomputable section

/-- A081354: Numbers k such that sigma(k^2) modulo 4 = 3.

Offset 1, canonical program `A081354.P13958200353524548950`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5065 terms. -/
def A081354 (n : ℕ) : ℤ :=
  (A081354.P13958200353524548950.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5065 terms. -/
def A081354.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081491.P4466690981492895004

`A002024(n+1)+A006463(n+1)-A057944(n)`
-/

namespace A081491.P4466690981492895004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) + (A006463 (n + 1) - A057944 n)

end

end A081491.P4466690981492895004

noncomputable section

/-- A081491: Triangle read by rows in which the n-th row contains n terms of an arithmetic progression with a common difference of (n-1) and the first term of (n+1)-th row is 1 more than the last term of the n-th row.

Offset 1, canonical program `A081491.P4466690981492895004`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081491 (n : ℕ) : ℤ :=
  A081491.P4466690981492895004.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081491.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081495.P18059496137314334868

`A004277(n)+Δ[A045992(n)]`
-/

namespace A081495.P18059496137314334868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045992 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n + (f1 (n + 1) - f1 n)

end

end A081495.P18059496137314334868

noncomputable section

/-- A081495: Start with Pascal's triangle; form a rhombus by sliding down n steps from top on both sides then sliding down inwards to complete the rhombus and then deleting the inner numbers; a(n) = sum of entries on perimeter of rhombus.

Offset 1, canonical program `A081495.P18059496137314334868`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A081495 (n : ℕ) : ℤ :=
  A081495.P18059496137314334868.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A081495.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081610.P55257795083380857

`∑[1-A039966(n)]`
-/

namespace A081610.P55257795083380857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A039966 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081610.P55257795083380857

noncomputable section

/-- A081610: Number of numbers <= n having at least one 2 in their ternary representation.

Offset 0, canonical program `A081610.P55257795083380857`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081610 (n : ℕ) : ℤ :=
  A081610.P55257795083380857.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081610.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081614.P12122110504523754094

`A005428(eq[1, and(1, A006999(n))])`
-/

namespace A081614.P12122110504523754094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A006999 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005428 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A081614.P12122110504523754094

noncomputable section

/-- A081614: Subsequence of A005428 with state = 1.

Offset 0, canonical program `A081614.P12122110504523754094`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 292 terms. -/
def A081614 (n : ℕ) : ℤ :=
  A081614.P12122110504523754094.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 292 terms. -/
def A081614.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081615.P1987069733094205732

`record[gcd(A005428(n), A061418(n+1))]`
-/

namespace A081615.P1987069733094205732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005428 n) (A061418 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081615.P1987069733094205732

noncomputable section

/-- A081615: Subsequence of A005428 where state = 2.

Offset 0, canonical program `A081615.P1987069733094205732`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 275 terms. -/
def A081615 (n : ℕ) : ℤ :=
  (A081615.P1987069733094205732.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 275 terms. -/
def A081615.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081673.P11586713415045764858

`2*A027914(n)-1`
-/

namespace A081673.P11586713415045764858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A027914 n - 1

end

end A081673.P11586713415045764858

noncomputable section

/-- A081673: Expansion of exp(3*x) - exp(x)*(1-BesselI_0(2*x)).

Offset 0, canonical program `A081673.P11586713415045764858`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A081673 (n : ℕ) : ℤ :=
  A081673.P11586713415045764858.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A081673.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081717.P73423759083911477

`p?[(n+1)*A005171(A000720(n+1)+n+1)]`
-/

namespace A081717.P73423759083911477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A005171 (A000720 (n + 1) + (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A081717.P73423759083911477

noncomputable section

/-- A081717: Primes prime(j) such that prime(j) + j is composite.

Offset 1, canonical program `A081717.P73423759083911477`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5411 terms. -/
def A081717 (n : ℕ) : ℤ :=
  A081717.P73423759083911477.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5411 terms. -/
def A081717.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081723.P16579669309368322344

`∩[A065554(n+1), A065564(n+1)]`
-/

namespace A081723.P16579669309368322344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065554 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065564 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081723.P16579669309368322344

noncomputable section

/-- A081723: Let b(n)=floor((3/2)^n), c(n)=floor((4/3)^n); sequence gives values of k such that b(k+1) / b(k) = 3/2 and c(k+1) / c(k) = 4/3.

Offset 1, canonical program `A081723.P16579669309368322344`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1331 terms. -/
def A081723 (n : ℕ) : ℤ :=
  (A081723.P16579669309368322344.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1331 terms. -/
def A081723.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081828.P15683832804009048373

`eq[0, A081827(n+1)]+1`
-/

namespace A081828.P15683832804009048373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081827 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A081828.P15683832804009048373

noncomputable section

/-- A081828: Numbers n such that 2 successive terms of Hofstadter Q-sequence are the same.

Offset 1, canonical program `A081828.P15683832804009048373`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. -/
def A081828 (n : ℕ) : ℤ :=
  (A081828.P15683832804009048373.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. -/
def A081828.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081829.P11769067708578577182

`lt[A081827(n+1), 0]+1`
-/

namespace A081829.P11769067708578577182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081827 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A081829.P11769067708578577182

noncomputable section

/-- A081829: Numbers k such that the k-th term of Hofstadter Q-sequence is > (k+1)-th term.

Offset 1, canonical program `A081829.P11769067708578577182`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4888 terms. -/
def A081829 (n : ℕ) : ℤ :=
  (A081829.P11769067708578577182.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4888 terms. -/
def A081829.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081830.P915595536073595954

`lt[0, A081827(n+1)]+1`
-/

namespace A081830.P915595536073595954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081827 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A081830.P915595536073595954

noncomputable section

/-- A081830: Numbers k such that the k-th term of Hofstadter Q-sequence is < (k+1)-th term.

Offset 1, canonical program `A081830.P915595536073595954`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4974 terms. -/
def A081830 (n : ℕ) : ℤ :=
  (A081830.P915595536073595954.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4974 terms. -/
def A081830.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081946.P1126091367602098836

`∑[A001951(A049472(n+1))]`
-/

namespace A081946.P1126091367602098836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (A049472 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081946.P1126091367602098836

noncomputable section

/-- A081946: a(n) = Sum_{i=1..n} floor(r*floor(i/r)), where r=sqrt(2).

Offset 1, canonical program `A081946.P1126091367602098836`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081946 (n : ℕ) : ℤ :=
  A081946.P1126091367602098836.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081946.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082010.P17959695738523496705

`A047263(∑[n]%(n+1)+1)+A026741(n)`
-/

namespace A082010.P17959695738523496705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 ((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1) + 1) + A026741 n

end

end A082010.P17959695738523496705

noncomputable section

/-- A082010: a(n) = n/2 if n is even, otherwise floor(8*n/5)+1.

Offset 0, canonical program `A082010.P17959695738523496705`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082010 (n : ℕ) : ℤ :=
  A082010.P17959695738523496705.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082010.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082156.P1891690113207071663

`A004736(n+1)+A002620(A128076(n+1))`
-/

namespace A082156.P1891690113207071663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) + A002620 (A128076 (n + 1)).toNat

end

end A082156.P1891690113207071663

noncomputable section

/-- A082156: Dispersion of the complement of row 1 of A056536.

Offset 1, canonical program `A082156.P1891690113207071663`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082156 (n : ℕ) : ℤ :=
  A082156.P1891690113207071663.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082156.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082293.P11384794704887734198

`eq[2, A050377(n+1)]+1`
-/

namespace A082293.P11384794704887734198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050377 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A082293.P11384794704887734198

noncomputable section

/-- A082293: Numbers having exactly one square divisor > 1.

Offset 1, canonical program `A082293.P11384794704887734198`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082293 (n : ℕ) : ℤ :=
  (A082293.P11384794704887734198.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082293.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082298.P14318922144743099037

`(A057427(n)+1)²*A059231(n)`
-/

namespace A082298.P14318922144743099037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057427 n + 1) ^ 2 * A059231 n

end

end A082298.P14318922144743099037

noncomputable section

/-- A082298: Expansion of (1-3*x-sqrt(9*x^2-10*x+1))/(2*x).

Offset 0, canonical program `A082298.P14318922144743099037`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. -/
def A082298 (n : ℕ) : ℤ :=
  A082298.P14318922144743099037.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. -/
def A082298.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A082451.P7121663205053929701

`A035175(A000265(n+1))`
-/

namespace A082451.P7121663205053929701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035175 (A000265 (n + 1)).toNat

end

end A082451.P7121663205053929701

noncomputable section

/-- A082451: Sum over divisors d of n of Kronecker symbol (-60, d).

Offset 1, canonical program `A082451.P7121663205053929701`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082451 (n : ℕ) : ℤ :=
  A082451.P7121663205053929701.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082451.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082462.P1976247485161842933

`A071538(A000040(n+1))`
-/

namespace A082462.P1976247485161842933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 (A000040 (n + 1)).toNat

end

end A082462.P1976247485161842933

noncomputable section

/-- A082462: Let chi(k) = 1 if prime(k+1) - prime(k) = 2, = 0 otherwise; sequence gives a(n) = Sum_{k <= n} chi(k).

Offset 1, canonical program `A082462.P1976247485161842933`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071538, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A082462 (n : ℕ) : ℤ :=
  A082462.P1976247485161842933.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071538, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A082462.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A082928.P3722669598215508231

`gcd(A014683(n+1), A027480(n))`
-/

namespace A082928.P3722669598215508231
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014683 (n + 1)) (A027480 n)

end

end A082928.P3722669598215508231

noncomputable section

/-- A082928: If n is prime, a(n) = n+1; if n is even, a(n) = n/2; otherwise a(n) = n.

Offset 1, canonical program `A082928.P3722669598215508231`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082928 (n : ℕ) : ℤ :=
  (A082928.P3722669598215508231.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082928.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082967.P4328845575700119808

`∩[A063838(n+1)-4, A063838(n+1)]`
-/

namespace A082967.P4328845575700119808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063838 (n + 1) - 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063838 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082967.P4328845575700119808

noncomputable section

/-- A082967: Numbers n such that mu(n) + mu(n+1) + mu(n+2) + mu(n+3) + mu(n+4) + mu(n+5) + mu(n+6) = 6.

Offset 1, canonical program `A082967.P4328845575700119808`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 448 terms. -/
def A082967 (n : ℕ) : ℤ :=
  (A082967.P4328845575700119808.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 448 terms. -/
def A082967.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A084196.P3907743680021484046

`A072627(A008864(n+1))-1`
-/

namespace A084196.P3907743680021484046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072627 (A008864 (n + 1)).toNat - 1

end

end A084196.P3907743680021484046

noncomputable section

/-- A084196: Number of primes q<prime(n) such that q+1 divides prime(n)+1.

Offset 1, canonical program `A084196.P3907743680021484046`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A084196 (n : ℕ) : ℤ :=
  A084196.P3907743680021484046.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A084196.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084220.P3476602202439273006

`∑{d}[n+1, A013954(#)*A334659((n+1)/#)]`
-/

namespace A084220.P3476602202439273006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A013954 d * A334659 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A084220.P3476602202439273006

noncomputable section

/-- A084220: a(n) = sigma_6(n^2)/sigma_3(n^2).

Offset 1, canonical program `A084220.P3476602202439273006`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A084220 (n : ℕ) : ℤ :=
  A084220.P3476602202439273006.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A084220.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A084349.P2302578402751710961

`∩[A005117(n+1), A018825(n+1)]`
-/

namespace A084349.P2302578402751710961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018825 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084349.P2302578402751710961

noncomputable section

/-- A084349: Squarefree numbers that are not the sum of two squares.

Offset 1, canonical program `A084349.P2302578402751710961`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6241 terms. -/
def A084349 (n : ℕ) : ℤ :=
  (A084349.P2302578402751710961.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6241 terms. -/
def A084349.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084694.P9348049789336525681

`A007531(A007675(n+1)+2)`
-/

namespace A084694.P9348049789336525681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007531 (A007675 (n + 1) + 2).toNat

end

end A084694.P9348049789336525681

noncomputable section

/-- A084694: Squarefree numbers which are products of three consecutive numbers. I.e., squarefree numbers of the form k^3 - k.

Offset 1, canonical program `A084694.P9348049789336525681`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007675, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A084694 (n : ℕ) : ℤ :=
  A084694.P9348049789336525681.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007675, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A084694.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A085021.P7535736726841233516

`∑{d}[n+1, A008683(#)*A046051((n+1)/#)]`
-/

namespace A085021.P7535736726841233516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A046051 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A085021.P7535736726841233516

noncomputable section

/-- A085021: Number of prime factors of cyclotomic(n,2), which is A019320(n), the value of the n-th cyclotomic polynomial evaluated at x=2.

Offset 1, canonical program `A085021.P7535736726841233516`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1206 terms. -/
def A085021 (n : ℕ) : ℤ :=
  A085021.P7535736726841233516.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1206 terms. -/
def A085021.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A085948.P15445142068769246347

`∑[A085411(n+1)]`
-/

namespace A085948.P15445142068769246347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085411 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085948.P15445142068769246347

noncomputable section

/-- A085948: Total number of elements in all subsets of {1,2,..,n} with relatively prime elements.

Offset 1, canonical program `A085948.P15445142068769246347`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A085948 (n : ℕ) : ℤ :=
  A085948.P15445142068769246347.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A085948.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A086047.P8456514765759007664

`∑[A014614(n+1)]`
-/

namespace A086047.P8456514765759007664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086047.P8456514765759007664

noncomputable section

/-- A086047: Sum of first n 5-almost primes.

Offset 1, canonical program `A086047.P8456514765759007664`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086047 (n : ℕ) : ℤ :=
  A086047.P8456514765759007664.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086047.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A088007.P4474793135921286268

`lt[A033879(n+1)², n+2]+1`
-/

namespace A088007.P4474793135921286268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A088007.P4474793135921286268

noncomputable section

/-- A088007: Numbers n such that abs(sigma(n) - 2n) <= sqrt(n).

Offset 1, canonical program `A088007.P4474793135921286268`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 886 terms. -/
def A088007 (n : ℕ) : ℤ :=
  (A088007.P4474793135921286268.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 886 terms. -/
def A088007.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088018.P1872163237001237444

`A071538(2*A028310(n))-A071538(A028310(n))`
-/

namespace A088018.P1872163237001237444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 (2 * A028310 n).toNat - A071538 (A028310 n).toNat

end

end A088018.P1872163237001237444

noncomputable section

/-- A088018: Number of twin-prime pairs between n and 2n (inclusive).

Offset 1, canonical program `A088018.P1872163237001237444`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088018 (n : ℕ) : ℤ :=
  A088018.P1872163237001237444.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088018.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A088070.P18152770894034870490

`A063464(n+1)+1`
-/

namespace A088070.P18152770894034870490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063464 (n + 1) + 1

end

end A088070.P18152770894034870490

noncomputable section

/-- A088070: Numbers sandwiched between two numbers having the same number of prime divisors.

Offset 1, canonical program `A088070.P18152770894034870490`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063464, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A088070 (n : ℕ) : ℤ :=
  A088070.P18152770894034870490.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063464, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A088070.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A088420.P1927350733136831084

`or(A101264(n+2)+1, A101264(2*n+3))`
-/

namespace A088420.P1927350733136831084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A101264 (n + 2) + 1) (A101264 (2 * n + 3))

end

end A088420.P1927350733136831084

noncomputable section

/-- A088420: Number of primes in arithmetic progression starting with 3 and with d = 2n.

Offset 1, canonical program `A088420.P1927350733136831084`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088420 (n : ℕ) : ℤ :=
  A088420.P1927350733136831084.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088420.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A088529.P7080797578101020587

`A001222(n+2)/A066922(n+2)`
-/

namespace A088529.P7080797578101020587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (n + 2) : ℚ) / (A066922 (n + 2) : ℚ)

end

end A088529.P7080797578101020587

noncomputable section

/-- A088529: Numerator of Bigomega(n)/Omega(n).

Offset 2, canonical program `A088529.P7080797578101020587`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A088529 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A088529.P7080797578101020587.a (n - 2))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A088529.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088531.P514021030661575989

`lcm(A000720(n+2), A022559(n+2))/A000720(n+2)`
-/

namespace A088531.P514021030661575989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000720 (n + 2)) (A022559 (n + 2)) : ℚ) / (A000720 (n + 2) : ℚ)

end

end A088531.P514021030661575989

noncomputable section

/-- A088531: Numerator of bigomega(n!)/omega(n!).

Offset 2, canonical program `A088531.P514021030661575989`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A088531 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A088531.P514021030661575989.a (n - 2))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A088531.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A088863.P3148194011983936159

`A046051(p?[xor(1, n)])`
-/

namespace A088863.P3148194011983936159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046051 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A088863.P3148194011983936159

noncomputable section

/-- A088863: Number of prime factors of n-th Mersenne number M(p_n).

Offset 1, canonical program `A088863.P3148194011983936159`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 197 terms. -/
def A088863 (n : ℕ) : ℤ :=
  A088863.P3148194011983936159.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 197 terms. -/
def A088863.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A089523.P7576486393653174238

`∩[A049097(n+1), A062304(n+1)]`
-/

namespace A089523.P7576486393653174238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089523.P7576486393653174238

noncomputable section

/-- A089523: Primes p such that mu(p+1) = 1; that is, p+1 is squarefree and has an even number of distinct prime factors, where mu is the Moebius function.

Offset 1, canonical program `A089523.P7576486393653174238`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5010 terms. -/
def A089523 (n : ℕ) : ℤ :=
  (A089523.P7576486393653174238.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5010 terms. -/
def A089523.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089530.P4943488569424409347

`record[(n+1)*A101264(A000040(n+1)+1)]`
-/

namespace A089530.P4943488569424409347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A101264 (A000040 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089530.P4943488569424409347

noncomputable section

/-- A089530: A023204 indexed by A000040.

Offset 1, canonical program `A089530.P4943488569424409347`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1304 terms. -/
def A089530 (n : ℕ) : ℤ :=
  A089530.P4943488569424409347.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1304 terms. -/
def A089530.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A090350.P9527209610901398862

`floor(A062298(n+1)/(2-A010051(n+1)))`
-/

namespace A090350.P9527209610901398862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A062298 (n + 1) : ℚ) / (2 - A010051 (n + 1) : ℚ)⌋

end

end A090350.P9527209610901398862

noncomputable section

/-- A090350: a(n) = Floor[(n-PrimePi[n])/(2-PrimePi[n]+PrimePi[n-1])].

Offset 1, canonical program `A090350.P9527209610901398862`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A090350 (n : ℕ) : ℤ :=
  A090350.P9527209610901398862.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A090350.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A092494.P17574960425768699571

`A048865(n+1)+A013939(n+1)`
-/

namespace A092494.P17574960425768699571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048865 (n + 1) + A013939 (n + 1)

end

end A092494.P17574960425768699571

noncomputable section

/-- A092494: a(n) = Sum_{p prime and p<=n} ceiling(n/p).

Offset 1, canonical program `A092494.P17574960425768699571`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092494 (n : ℕ) : ℤ :=
  A092494.P17574960425768699571.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092494.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A092604.P14882743689300084007

`comp[A013939(n+1)]`
-/

namespace A092604.P14882743689300084007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013939 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A092604.P14882743689300084007

noncomputable section

/-- A092604: Complement of A013939.

Offset 1, canonical program `A092604.P14882743689300084007`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092604 (n : ℕ) : ℤ :=
  (A092604.P14882743689300084007.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092604.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A093318.P13020184346943754968

`A002265(abs(A007427(n+1))-A007427(n+1))`
-/

namespace A093318.P13020184346943754968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (|A007427 (n + 1)| - A007427 (n + 1)).toNat

end

end A093318.P13020184346943754968

noncomputable section

/-- A093318: a(n) = number of positive divisors k of n where mu(k) = 1 and mu(n/k) = -1.

Offset 1, canonical program `A093318.P13020184346943754968`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A093318 (n : ℕ) : ℤ :=
  A093318.P13020184346943754968.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A093318.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-- A094414: Triangle T read by rows: dot product <1,2,...,r> * <s+1,s+2,...,r,1,2,...,s>.

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

/-! ## A094517.P18314110436842178638

`p?[n*(1-A075743(2*n+3))]`
-/

namespace A094517.P18314110436842178638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (1 - A075743 (2 * n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094517.P18314110436842178638

noncomputable section

/-- A094517: Primes p such that 6p+11 is not a prime.

Offset 1, canonical program `A094517.P18314110436842178638`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A094517 (n : ℕ) : ℤ :=
  A094517.P18314110436842178638.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A094517.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A096169.P15892696127636071477

`eq[A141310(n), A193929(n)]`
-/

namespace A096169.P15892696127636071477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193929 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A096169.P15892696127636071477

noncomputable section

/-- A096169: Odd n such that (n^4+1)/2 is prime.

Offset 1, canonical program `A096169.P15892696127636071477`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 868 terms. -/
def A096169 (n : ℕ) : ℤ :=
  (A096169.P15892696127636071477.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 868 terms. -/
def A096169.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A096490.P8790020191321555782

`lt[A000217(n), A067558(n+1)]+1`
-/

namespace A096490.P8790020191321555782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067558 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A096490.P8790020191321555782

noncomputable section

/-- A096490: Numbers k such that sigma_2(k) >= (3/2) * k^2, where sigma_2(k) is the sum of the squares of the divisors of k.

Offset 1, canonical program `A096490.P8790020191321555782`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 259 terms. -/
def A096490 (n : ℕ) : ℤ :=
  (A096490.P8790020191321555782.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 259 terms. -/
def A096490.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A097703.P2355678231752813967

`eq[0, A156277(2*n+1)]`
-/

namespace A097703.P2355678231752813967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156277 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A097703.P2355678231752813967

noncomputable section

/-- A097703: Numbers j such that m = 216*j + 108 satisfies sigma(m) != 2*usigma(m).

Offset 1, canonical program `A097703.P2355678231752813967`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097703 (n : ℕ) : ℤ :=
  (A097703.P2355678231752813967.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097703.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A098015.P15060828265845716309

`eq[2, A001222(A001223(n+1))]+1`
-/

namespace A098015.P15060828265845716309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001223 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A098015.P15060828265845716309

noncomputable section

/-- A098015: Indices x such that (1/2)(prime(x+1) - prime(x)) is prime.

Offset 1, canonical program `A098015.P15060828265845716309`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098015 (n : ℕ) : ℤ :=
  (A098015.P15060828265845716309.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098015.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098035.P3859201930447220096

`∑{d}[n+1, A007423(#+1)-1]`
-/

namespace A098035.P3859201930447220096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A007423 (d + 1) - 1)

end

end A098035.P3859201930447220096

noncomputable section

/-- A098035: a(n) = Sum_{d|n} mu(d+1), where mu() is the Moebius function.

Offset 1, canonical program `A098035.P3859201930447220096`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A098035 (n : ℕ) : ℤ :=
  A098035.P3859201930447220096.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A098035.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A098142.P9774141478526730411

`eq[1, A099910(n+2)]+2`
-/

namespace A098142.P9774141478526730411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099910 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A098142.P9774141478526730411

noncomputable section

/-- A098142: Numbers n such that (p*(q-1)+(p-1)*q)/2 is prime, where p and q are consecutive odd primes, p<q and p_n is the n-th prime.

Offset 1, canonical program `A098142.P9774141478526730411`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 360 terms. -/
def A098142 (n : ℕ) : ℤ :=
  (A098142.P9774141478526730411.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 360 terms. -/
def A098142.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A098827.P13582355249411680889

`record[-(A055615(n+1)*A055615(n+2))]`
-/

namespace A098827.P13582355249411680889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A055615 (n + 1) * A055615 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098827.P13582355249411680889

noncomputable section

/-- A098827: Squarefree oblong (pronic) numbers having an odd number of prime factors.

Offset 1, canonical program `A098827.P13582355249411680889`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3216 terms. -/
def A098827 (n : ℕ) : ℤ :=
  A098827.P13582355249411680889.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3216 terms. -/
def A098827.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A100282.P11700922516647250805

`A100280(A100280(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A100282.P11700922516647250805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100280 (A100280 n).toNat

end

end A100282.P11700922516647250805

noncomputable section

/-- A100282: a(n) = A100280(A100280(n)).

Offset 0, canonical program `A100282.P11700922516647250805`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A100280, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A100282 (n : ℕ) : ℤ :=
  A100282.P11700922516647250805.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A100280, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A100282.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A100318.P17095725171134732642

`A071538(a(n-1))+n+3` with `a(0)=3`
-/

namespace A100318.P17095725171134732642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A071538 (a (n - 1)).toNat + (n + 3 : ℤ)

end

end A100318.P17095725171134732642

noncomputable section

/-- A100318: Numbers n such that at least one of n-1 and n+1 is composite.

Offset 1, canonical program `A100318.P17095725171134732642`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100318 (n : ℕ) : ℤ :=
  A100318.P17095725171134732642.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100318.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100448.P17514214927403473574

`(A071778(n+1)-1)/6`
-/

namespace A100448.P17514214927403473574
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071778 (n + 1) - 1 : ℚ) / 6

end

end A100448.P17514214927403473574

noncomputable section

/-- A100448: Number of triples (i,j,k) with 1 <= i <= j < k <= n and gcd{i,j,k} = 1.

Offset 1, canonical program `A100448.P17514214927403473574`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071778, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A100448 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A100448.P17514214927403473574.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071778, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A100448.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A100637.P13819822131188342482

`A075743(n)+a(n-1)` with `a(0)=2`
-/

namespace A100637.P13819822131188342482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A075743 n + a (n - 1)

end

end A100637.P13819822131188342482

noncomputable section

/-- A100637: Trisection of A000720.

Offset 0, canonical program `A100637.P13819822131188342482`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100637 (n : ℕ) : ℤ :=
  A100637.P13819822131188342482.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100637.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A100766.P15279316833382098196

`∩[A100306(n+2)-1, A100306(n+2)]`
-/

namespace A100766.P15279316833382098196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100306 (n + 2) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100306 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100766.P15279316833382098196

noncomputable section

/-- A100766: Numbers for which the values of the Moebius function (A008683) and the Mertens function (A002321) are both 0.

Offset 1, canonical program `A100766.P15279316833382098196`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3909 terms. -/
def A100766 (n : ℕ) : ℤ :=
  (A100766.P15279316833382098196.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3909 terms. -/
def A100766.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A100923.P17128876040247013713

`Δ[A071538(3*(2*n+1))]`
-/

namespace A100923.P17128876040247013713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 (3 * (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100923.P17128876040247013713

noncomputable section

/-- A100923: a(n) = 1 iff 6*n+1 and 6*n-1 are both prime numbers (0 otherwise).

Offset 1, canonical program `A100923.P17128876040247013713`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100923 (n : ℕ) : ℤ :=
  A100923.P17128876040247013713.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100923.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A101035.P3462403393033249231

`∑{d}[n+1, #*A007427(#)]`
-/

namespace A101035.P3462403393033249231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A007427 d

end

end A101035.P3462403393033249231

noncomputable section

/-- A101035: Dirichlet inverse of the gcd-sum function (A018804).

Offset 1, canonical program `A101035.P3462403393033249231`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101035 (n : ℕ) : ℤ :=
  A101035.P3462403393033249231.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101035.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-- A101037: Triangle read by rows: T(n,1) = T(n,n) = n and for 1<k<n: T(n,k) = floor((T(n-1,k-1)+T(n-1,k))/2).

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

/-! ## A104106.P18096681459971172444

`A089242(n+1)%2`
-/

namespace A104106.P18096681459971172444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089242 (n + 1)) 2

end

end A104106.P18096681459971172444

noncomputable section

/-- A104106: a(1) = 1; thereafter, if A(k) = sequence of first 2^k -1 terms, then A(k+1) = A(k),1,A(k) if a(k) = 0, and A(k+1) = A(k),0,A(k) if a(k) = 1.

Offset 1, canonical program `A104106.P18096681459971172444`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A089242, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A104106 (n : ℕ) : ℤ :=
  A104106.P18096681459971172444.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A089242, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A104106.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A104172.P15057019180774606762

`A061397(A005185(n+1))`
-/

namespace A104172.P15057019180774606762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (A005185 (n + 1)).toNat

end

end A104172.P15057019180774606762

noncomputable section

/-- A104172: Replace nonprimes in A005185 with zeros.

Offset 0, canonical program `A104172.P15057019180774606762`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104172 (n : ℕ) : ℤ :=
  A104172.P15057019180774606762.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104172.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A104723.P5041177650715917469

`floor((A027375(n)+n%2)/3)`
-/

namespace A104723.P5041177650715917469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A027375 n + ((n % 2 : ℕ) : ℤ) : ℚ) / 3⌋

end

end A104723.P5041177650715917469

noncomputable section

/-- A104723: Moebius transform of Jacobsthal numbers.

Offset 0, canonical program `A104723.P5041177650715917469`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A104723 (n : ℕ) : ℤ :=
  A104723.P5041177650715917469.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A104723.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-- A104797: Triangle T(n,k) = Fib(n-k+4)-n-k-3, n>=1, 0<=k<n, read by rows.

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

/-! ## A105135.P7438831623917599193

`eq[1, A101264(4*(4*n+2))]`
-/

namespace A105135.P7438831623917599193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (4 * (4 * n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A105135.P7438831623917599193

noncomputable section

/-- A105135: Numbers n such that 32n+17 is prime.

Offset 1, canonical program `A105135.P7438831623917599193`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 589 terms. -/
def A105135 (n : ℕ) : ℤ :=
  (A105135.P7438831623917599193.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 589 terms. -/
def A105135.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A106543.P16776134595658652118

`filter[A007916(n+1), A005171(#)]`
-/

namespace A106543.P16776134595658652118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A106543.P16776134595658652118

noncomputable section

/-- A106543: Composite numbers that are not perfect powers.

Offset 1, canonical program `A106543.P16776134595658652118`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8758 terms. -/
def A106543 (n : ℕ) : ℤ :=
  A106543.P16776134595658652118.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8758 terms. -/
def A106543.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A107279.P5813486238703992788

`(A014683(xor(1, n)+1)+1)%(n+1)`
-/

namespace A107279.P5813486238703992788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014683 (Nat.xor 1 n + 1) + 1) (n + 1 : ℤ)

end

end A107279.P5813486238703992788

noncomputable section

/-- A107279: a(n) = 1 if n is an odd prime, a(n) = 2 if n is a nonzero even number, otherwise a(n) = 0.

Offset 0, canonical program `A107279.P5813486238703992788`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A107279 (n : ℕ) : ℤ :=
  A107279.P5813486238703992788.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A107279.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A107737.P10847822241434354246

`eq[1, ∑{e}[A008474(n+1), #]]+1`
-/

namespace A107737.P10847822241434354246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008474 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A107737.P10847822241434354246

noncomputable section

/-- A107737: Numbers n such that, in prime decomposition of n, sum of all prime factors and their orders is prime.

Offset 1, canonical program `A107737.P10847822241434354246`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A107737 (n : ℕ) : ℤ :=
  (A107737.P10847822241434354246.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A107737.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107800.P13306673971916203850

`A001221(A006049(n+1))`
-/

namespace A107800.P13306673971916203850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A006049 (n + 1)).toNat

end

end A107800.P13306673971916203850

noncomputable section

/-- A107800: a(n) = number of distinct primes dividing A006049(n) (and dividing A006049(n)+1).

Offset 1, canonical program `A107800.P13306673971916203850`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006049, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A107800 (n : ℕ) : ℤ :=
  A107800.P13306673971916203850.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006049, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A107800.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A108222.P17402844413063193059

`eq[A005171(n+1)+1, A010051(A075119(n+1)+1)]+1`
-/

namespace A108222.P17402844413063193059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A075119 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A108222.P17402844413063193059

noncomputable section

/-- A108222: Primes p such that ceiling(sqrt(p)) = prime.

Offset 1, canonical program `A108222.P17402844413063193059`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 270 terms. -/
def A108222 (n : ℕ) : ℤ :=
  (A108222.P17402844413063193059.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 270 terms. -/
def A108222.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A110603.P11659871771233513267

`eq[2, A001222(A007091(n+1))]+1`
-/

namespace A110603.P11659871771233513267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007091 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A110603.P11659871771233513267

noncomputable section

/-- A110603: Numbers n whose base 5 representations, interpreted as base 10 integers, are semiprimes.

Offset 1, canonical program `A110603.P11659871771233513267`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 663 terms. -/
def A110603 (n : ℕ) : ℤ :=
  (A110603.P11659871771233513267.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 663 terms. -/
def A110603.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A110664.P4863318990323955336

`A022559(A002024(n+1))-A022559(A002262(n))`
-/

namespace A110664.P4863318990323955336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 (A002024 (n + 1)).toNat - A022559 (A002262 n).toNat

end

end A110664.P4863318990323955336

noncomputable section

/-- A110664: Triangle read by rows: T(n,k)=sum(bigomega(j),j=k..n) (1<=k<=n), where bigomega(j) is the number of prime divisors of j, counted with multiplicities.

Offset 1, canonical program `A110664.P4863318990323955336`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A110664 (n : ℕ) : ℤ :=
  A110664.P4863318990323955336.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A110664.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-- A111226: Numbers k such that 5*k + 12 is prime.

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

/-! ## A113339.P13837044038281480743

`record[(n+1)*A069158(A001223(n+1))]`
-/

namespace A113339.P13837044038281480743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A069158 (A001223 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113339.P13837044038281480743

noncomputable section

/-- A113339: Integers n such that prime(n+1)-prime(n) is nonprime, squarefree. Except for the initial term of 1, the terms are k-semiprime for some k>=2.

Offset 1, canonical program `A113339.P13837044038281480743`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A113339 (n : ℕ) : ℤ :=
  A113339.P13837044038281480743.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A113339.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A113646.P14709912826224621284

`A014683(n+1)%a(n-3)²` with `a(0)=4, a(1)=4, a(2)=4`
-/

namespace A113646.P14709912826224621284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 4, 4] fun n a =>
  Int.tmod (A014683 (n + 1)) (a (n - 3) ^ 2)

end

end A113646.P14709912826224621284

noncomputable section

/-- A113646: a(n) is the smallest composite integer which is >= n.

Offset 1, canonical program `A113646.P14709912826224621284`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113646 (n : ℕ) : ℤ :=
  A113646.P14709912826224621284.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113646.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A114405.P5429345471271901955

`A014614(n+2)-A014614(n+1)`
-/

namespace A114405.P5429345471271901955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (n + 2) - A014614 (n + 1)

end

end A114405.P5429345471271901955

noncomputable section

/-- A114405: 5-almost prime gaps. First differences of A014614.

Offset 1, canonical program `A114405.P5429345471271901955`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014614, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A114405 (n : ℕ) : ℤ :=
  A114405.P5429345471271901955.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014614, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A114405.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A114435.P3528622552500104111

`eq[4, A069904(n+1)]+1`
-/

namespace A114435.P3528622552500104111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069904 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A114435.P3528622552500104111

noncomputable section

/-- A114435: Indices of 4-almost prime triangular numbers.

Offset 1, canonical program `A114435.P3528622552500104111`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3837 terms. -/
def A114435 (n : ℕ) : ℤ :=
  (A114435.P3528622552500104111.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3837 terms. -/
def A114435.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076300.P7338240880064656560

`lt[A000005(A008706(n+1)+A000040(n+1)), 3]+1`
-/

namespace A076300.P7338240880064656560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A008706 (n + 1) + A000040 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A076300.P7338240880064656560

noncomputable section

/-- A076300: Numbers k such that prime(k) + s*k is prime, s=5.

Offset 1, canonical program `A076300.P7338240880064656560`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 798 terms. -/
def A076300 (n : ℕ) : ℤ :=
  (A076300.P7338240880064656560.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 798 terms. -/
def A076300.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076302.P14903802815767851269

`A000005(gcd(A166350(n+1)²², A002024(n+1)))`
-/

namespace A076302.P14903802815767851269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.gcd ((A166350 (n + 1) ^ 2) ^ 2) (A002024 (n + 1)))

end

end A076302.P14903802815767851269

noncomputable section

/-- A076302: Triangle T(n,k) = number of k-smooth divisors of n, read by rows.

Offset 1, canonical program `A076302.P14903802815767851269`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A076302 (n : ℕ) : ℤ :=
  A076302.P14903802815767851269.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A076302.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076355.P15231804744908893617

`(A140840(n+1)-11)/210`
-/

namespace A076355.P15231804744908893617
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140840 (n + 1) - 11 : ℚ) / 210

end

end A076355.P15231804744908893617

noncomputable section

/-- A076355: Numbers n such that 210*n + 11 is prime.

Offset 1, canonical program `A076355.P15231804744908893617`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A140840, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A076355 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A076355.P15231804744908893617.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A140840, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A076355.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A076627.P17176873405788614129

`A000005(n+1)*(n+1-A000005(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A076627.P17176873405788614129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * ((n + 1 : ℤ) - A000005 (n + 1))

end

end A076627.P17176873405788614129

noncomputable section

/-- A076627: a(n) = tau(n)*(n-tau(n)), where tau(n) = number of divisors of n (A000005).

Offset 1, canonical program `A076627.P17176873405788614129`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(n+1)*(n+1-A000005(n+1))` (program `A076627.P17176873405788614129`, by `A076627.P17176873405788614129.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A076627 (n : ℕ) : ℤ :=
  A076627.P17176873405788614129.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(n+1)*(n+1-A000005(n+1))` (program `A076627.P17176873405788614129`, by `A076627.P17176873405788614129.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A076627.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A077153.P8995860145379483821

`A018252(A171511(n+2))+1`
-/

namespace A077153.P8995860145379483821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A171511 (n + 2)).toNat + 1

end

end A077153.P8995860145379483821

noncomputable section

/-- A077153: Smallest k such that there are n composite numbers greater than n and smaller than k.

Offset 1, canonical program `A077153.P8995860145379483821`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9454 terms. -/
def A077153 (n : ℕ) : ℤ :=
  A077153.P8995860145379483821.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9454 terms. -/
def A077153.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A077418.P7081460192770050012

`A000005(A000071(n+3))`
-/

namespace A077418.P7081460192770050012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000071 (n + 3)).toNat

end

end A077418.P7081460192770050012

noncomputable section

/-- A077418: Number of divisors of Fibonacci(n+2)-1.

Offset 1, canonical program `A077418.P7081460192770050012`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077418 (n : ℕ) : ℤ :=
  A077418.P7081460192770050012.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077418.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A077478.P5509421538947395275

`A000005(gcd(col(n)+1, row(n)+2))`
-/

namespace A077478.P5509421538947395275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.gcd (SequenceMachineLib.triCol n + 1) (SequenceMachineLib.triRow n + 2))

end

end A077478.P5509421538947395275

noncomputable section

/-- A077478: Rectangular array R read by antidiagonals: R(i,j) is the number of integers k that divide both i and j (i >= 1, j >= 1).

Offset 1, canonical program `A077478.P5509421538947395275`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077478 (n : ℕ) : ℤ :=
  A077478.P5509421538947395275.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077478.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A077510.P12327398340584914313

`eq[2, A000005(A000720(n+1)+n+1)]+1`
-/

namespace A077510.P12327398340584914313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000720 (n + 1) + (n + 1 : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A077510.P12327398340584914313

noncomputable section

/-- A077510: Numbers k such that k + pi(k) is a prime.

Offset 1, canonical program `A077510.P12327398340584914313`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5079 terms. -/
def A077510 (n : ℕ) : ℤ :=
  (A077510.P12327398340584914313.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5079 terms. -/
def A077510.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A077767.P8654050385360531559

`Δ[A348195(n+1)]`
-/

namespace A077767.P8654050385360531559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348195 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077767.P8654050385360531559

noncomputable section

/-- A077767: Number of primes of form 4k+3 between n^2 and (n+1)^2.

Offset 1, canonical program `A077767.P8654050385360531559`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A077767 (n : ℕ) : ℤ :=
  A077767.P8654050385360531559.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A077767.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078152.P14082949690020267377

`A055086(n+1)-A000005(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A078152.P14082949690020267377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (n + 1) - A000005 (n + 1)

end

end A078152.P14082949690020267377

noncomputable section

/-- A078152: a(n) = A055086(n) - A000005(n).

Offset 1, canonical program `A078152.P14082949690020267377`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078152 (n : ℕ) : ℤ :=
  A078152.P14082949690020267377.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078152.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A078317.P4878042880391652802

`A000005(A078310(n+1))`
-/

namespace A078317.P4878042880391652802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A078310 (n + 1)).toNat

end

end A078317.P4878042880391652802

noncomputable section

/-- A078317: Number of divisors of n*rad(n)+1, where rad = A007947 (squarefree kernel).

Offset 1, canonical program `A078317.P4878042880391652802`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078317 (n : ℕ) : ℤ :=
  A078317.P4878042880391652802.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078317.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A078703.P9265946345612000066

`A000005(A004767(n))/2`
-/

namespace A078703.P9265946345612000066
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (A004767 n).toNat : ℚ) / 2

end

end A078703.P9265946345612000066

noncomputable section

/-- A078703: Number of ways of subtracting twice a triangular number from a perfect square to obtain the integer n.

Offset 1, canonical program `A078703.P9265946345612000066`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078703 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A078703.P9265946345612000066.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078703.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A078921.P6587148150982283279

`A077012(n+1)*A097807(n)`
-/

namespace A078921.P6587148150982283279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077012 (n + 1) * A097807 n

end

end A078921.P6587148150982283279

noncomputable section

/-- A078921: Signed variant of A077012.

Offset 1, canonical program `A078921.P6587148150982283279`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2476 terms. -/
def A078921 (n : ℕ) : ℤ :=
  A078921.P6587148150982283279.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2476 terms. -/
def A078921.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079088.P13785481457284140472

`A000005(A079079(n+1))`
-/

namespace A079088.P13785481457284140472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A079079 (n + 1)).toNat

end

end A079088.P13785481457284140472

noncomputable section

/-- A079088: Number of divisors of (prime(n)+1)*(prime(n+1)+1)/4.

Offset 1, canonical program `A079088.P13785481457284140472`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A079088 (n : ℕ) : ℤ :=
  A079088.P13785481457284140472.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A079088.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A079251.P10366369306939895838

`∑[A166517(A048298(A006068(n)))]`
-/

namespace A079251.P10366369306939895838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166517 (A048298 (A006068 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079251.P10366369306939895838

noncomputable section

/-- A079251: Complement of A079000.

Offset 1, canonical program `A079251.P10366369306939895838`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A079251 (n : ℕ) : ℤ :=
  A079251.P10366369306939895838.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A079251.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079253.P13462614389333212130

`A079000(n+1)-1`
-/

namespace A079253.P13462614389333212130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079000 (n + 1) - 1

end

end A079253.P13462614389333212130

noncomputable section

/-- A079253: a(n) is taken to be the smallest positive integer greater than a(n-1) which is consistent with the condition "n is a member of the sequence if and only if a(n) is even".

Offset 0, canonical program `A079253.P13462614389333212130`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079253 (n : ℕ) : ℤ :=
  A079253.P13462614389333212130.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079253.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079259.P11686728466096618619

`∑[(char[A283965(n+1)]+1)²]`
-/

namespace A079259.P11686728466096618619
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283965 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079259.P11686728466096618619

noncomputable section

/-- A079259: a(n) is taken to be the smallest positive integer greater than a(n-1) such that the condition "n is in the sequence if and only if a(n) and a(n+1) are both odd" can be satisfied.

Offset 1, canonical program `A079259.P11686728466096618619`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079259 (n : ℕ) : ℤ :=
  (A079259.P11686728466096618619.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079259.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079364.P9923182531136201301

`lt[3, A175851(n+1)]`
-/

namespace A079364.P9923182531136201301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A079364.P9923182531136201301

noncomputable section

/-- A079364: Composite numbers having two composite neighbors.

Offset 1, canonical program `A079364.P9923182531136201301`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079364 (n : ℕ) : ℤ :=
  (A079364.P9923182531136201301.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079364.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079551.P1605593596487844367

`∑[char[A000040(n+1)]*A274010(n)]`
-/

namespace A079551.P1605593596487844367
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A274010 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079551.P1605593596487844367

noncomputable section

/-- A079551: a(n) = Sum_{primes p <= n} d(p-1), where d() = A000005.

Offset 0, canonical program `A079551.P1605593596487844367`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079551 (n : ℕ) : ℤ :=
  A079551.P1605593596487844367.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079551.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079552.P14816231143647664336

`A000005(A006093(n))+a(n-1)` with `a(0)=0`
-/

namespace A079552.P14816231143647664336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000005 (A006093 n).toNat + a (n - 1)

end

end A079552.P14816231143647664336

noncomputable section

/-- A079552: Record values in A079551.

Offset 0, canonical program `A079552.P14816231143647664336`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A079552 (n : ℕ) : ℤ :=
  A079552.P14816231143647664336.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A079552.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A079553.P9256999682998098800

`floor(A000005((n+1)²)/A000005(n+1))`
-/

namespace A079553.P9256999682998098800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000005 ((n + 1) ^ 2) : ℚ) / (A000005 (n + 1) : ℚ)⌋

end

end A079553.P9256999682998098800

noncomputable section

/-- A079553: a(n) = floor( d(n^2) / d(n) ), where d() = A000005.

Offset 1, canonical program `A079553.P9256999682998098800`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A079553 (n : ℕ) : ℤ :=
  A079553.P9256999682998098800.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A079553.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A079662.P8062691922964598358

`A118430(n)+A005314(n+1)`
-/

namespace A079662.P8062691922964598358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118430 n + A005314 (n + 1)

end

end A079662.P8062691922964598358

noncomputable section

/-- A079662: a(n) = the number of occurrences of 1 in all compositions of n without 2's = # of occurrences of the integer k in compositions of n+k-1 without 2's (k > 2).

Offset 1, canonical program `A079662.P8062691922964598358`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 402 terms. -/
def A079662 (n : ℕ) : ℤ :=
  A079662.P8062691922964598358.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 402 terms. -/
def A079662.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079896.P18351430055476264157

`eq[(xor(2, n)-n)%8, A169695(n)]`
-/

namespace A079896.P18351430055476264157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((Nat.xor 2 n : ℤ) - (n : ℤ)) 8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169695 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A079896.P18351430055476264157

noncomputable section

/-- A079896: Discriminants of indefinite binary quadratic forms.

Offset 1, canonical program `A079896.P18351430055476264157`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079896 (n : ℕ) : ℤ :=
  (A079896.P18351430055476264157.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079896.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079898.P2013135824643755783

`A000005(n+1)-A000005(n)*a(n-1)` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A079898.P2013135824643755783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000005 (n + 1) - A000005 n * a (n - 1)

end

end A079898.P2013135824643755783

noncomputable section

/-- A079898: a(1) = 1; a(n) = tau(n) - tau(n-1)* a(n-1) if n > 1.

Offset 1, canonical program `A079898.P2013135824643755783`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(n+1)-A000005(n)*a(n-1)` (program `A079898.P2013135824643755783`, by `A079898.P2013135824643755783.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A079898 (n : ℕ) : ℤ :=
  A079898.P2013135824643755783.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(n+1)-A000005(n)*a(n-1)` (program `A079898.P2013135824643755783`, by `A079898.P2013135824643755783.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A079898.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A079952.P4380485692026145180

`A055679(p?[xor(1, n)]-1)`
-/

namespace A079952.P4380485692026145180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055679 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) - 1)

end

end A079952.P4380485692026145180

noncomputable section

/-- A079952: Number of primes less than prime(n)/2.

Offset 1, canonical program `A079952.P4380485692026145180`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 554 terms. -/
def A079952 (n : ℕ) : ℤ :=
  A079952.P4380485692026145180.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 554 terms. -/
def A079952.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080037.P7803047585790766488

`A049068(n+1)-A240025(n)`
-/

namespace A080037.P7803047585790766488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049068 (n + 1) - A240025 n

end

end A080037.P7803047585790766488

noncomputable section

/-- A080037: a(0)=2; for n > 0, a(n) = n + floor(sqrt(4n-3)) + 2.

Offset 0, canonical program `A080037.P7803047585790766488`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080037 (n : ℕ) : ℤ :=
  A080037.P7803047585790766488.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080037.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080076.P7647134114525430828

`p?[A080075(n+1)]`
-/

namespace A080076.P7647134114525430828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080075 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A080076.P7647134114525430828

noncomputable section

/-- A080076: Proth primes: primes of the form k*2^m + 1 with odd k < 2^m, m >= 1.

Offset 1, canonical program `A080076.P7647134114525430828`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 249 terms. -/
def A080076 (n : ℕ) : ℤ :=
  A080076.P7647134114525430828.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 249 terms. -/
def A080076.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080086.P10803025907538498928

`A276376(n)+a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A080086.P10803025907538498928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A276376 n + a (n - 1)

end

end A080086.P10803025907538498928

noncomputable section

/-- A080086: Number of factors of 3 in the factorial of the n-th prime, counted with multiplicity.

Offset 1, canonical program `A080086.P10803025907538498928`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080086 (n : ℕ) : ℤ :=
  A080086.P10803025907538498928.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080086.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080236.P11120207343015903809

`2*A080233(n)-A302764(n+1)`
-/

namespace A080236.P11120207343015903809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A080233 n - A302764 (n + 1)

end

end A080236.P11120207343015903809

noncomputable section

/-- A080236: Triangle of differences of consecutive pairs of row elements of triangle A080233.

Offset 0, canonical program `A080236.P11120207343015903809`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080236 (n : ℕ) : ℤ :=
  A080236.P11120207343015903809.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080236.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080426.P3949291038634264302

`or(1, A026465(n+1))`
-/

namespace A080426.P3949291038634264302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A026465 (n + 1))

end

end A080426.P3949291038634264302

noncomputable section

/-- A080426: a(1)=1, a(2)=3; all terms are either 1 or 3; each run of 3's is followed by a run of two 1's; and a(n) is the length of the n-th run of 3's.

Offset 1, canonical program `A080426.P3949291038634264302`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080426 (n : ℕ) : ℤ :=
  A080426.P3949291038634264302.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080426.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080428.P12675734554739294677

`A285430(n+1)+2`
-/

namespace A080428.P12675734554739294677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285430 (n + 1) + 2

end

end A080428.P12675734554739294677

noncomputable section

/-- A080428: First differences of A079255.

Offset 1, canonical program `A080428.P12675734554739294677`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080428 (n : ℕ) : ℤ :=
  A080428.P12675734554739294677.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080428.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080709.P8464403126802922884

`A000216(n+2)`
-/

namespace A080709.P8464403126802922884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000216 (n + 2)

end

end A080709.P8464403126802922884

noncomputable section

/-- A080709: Take sum of squares of digits of previous term, starting with 4.

Offset 1, canonical program `A080709.P8464403126802922884`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000216, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A080709 (n : ℕ) : ℤ :=
  A080709.P8464403126802922884.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000216, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A080709.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A080722.P13409397924054965325

`A006166(n-A057427(n))+n`
-/

namespace A080722.P13409397924054965325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006166 ((n : ℤ) - A057427 n).toNat + (n : ℤ)

end

end A080722.P13409397924054965325

noncomputable section

/-- A080722: a(0) = 0; for n > 0, a(n) is taken to be the smallest positive integer greater than a(n-1) which is consistent with the condition "n is a term of the sequence if and only if a(n) == 1 (mod 3)".

Offset 0, canonical program `A080722.P13409397924054965325`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080722 (n : ℕ) : ℤ :=
  A080722.P13409397924054965325.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080722.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080995.P4731425660394005863

`A089806(2*n)`
-/

namespace A080995.P4731425660394005863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089806 (2 * n)

end

end A080995.P4731425660394005863

noncomputable section

/-- A080995: Characteristic function of generalized pentagonal numbers A001318.

Offset 0, canonical program `A080995.P4731425660394005863`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A089806, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A080995 (n : ℕ) : ℤ :=
  A080995.P4731425660394005863.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A089806, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A080995.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A081134.P5939115943637325282

`n+1-A006166(n+1)`
-/

namespace A081134.P5939115943637325282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A006166 (n + 1)

end

end A081134.P5939115943637325282

noncomputable section

/-- A081134: Distance to nearest power of 3.

Offset 1, canonical program `A081134.P5939115943637325282`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006166, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A081134 (n : ℕ) : ℤ :=
  A081134.P5939115943637325282.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006166, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A081134.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A081288.P4176146987399022176

`A072643(2*A081290(n))`
-/

namespace A081288.P4176146987399022176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072643 (2 * A081290 n).toNat

end

end A081288.P4176146987399022176

noncomputable section

/-- A081288: a(n) is the minimal i such that A000108(i) > n.

Offset 0, canonical program `A081288.P4176146987399022176`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081288 (n : ℕ) : ℤ :=
  A081288.P4176146987399022176.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081288.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081307.P10355889230247830920

`(n+2)*A000005(n+1)-A000203(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A081307.P10355889230247830920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A000005 (n + 1) - A000203 (n + 1)

end

end A081307.P10355889230247830920

noncomputable section

/-- A081307: a(n) = (n+1)*tau(n) - sigma(n).

Offset 1, canonical program `A081307.P10355889230247830920`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+2)*A000005(n+1)-A000203(n+1)` (program `A081307.P10355889230247830920`, by `A081307.P10355889230247830920.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A081307 (n : ℕ) : ℤ :=
  A081307.P10355889230247830920.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+2)*A000005(n+1)-A000203(n+1)` (program `A081307.P10355889230247830920`, by `A081307.P10355889230247830920.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A081307.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A081619.P7456844298066121194

`record[(n+1)*A005369(2*A000005(n+1))]`
-/

namespace A081619.P7456844298066121194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A005369 (2 * A000005 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081619.P7456844298066121194

noncomputable section

/-- A081619: Numbers whose divisors can be arranged as equilateral triangle.

Offset 1, canonical program `A081619.P7456844298066121194`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8353 terms. -/
def A081619 (n : ℕ) : ℤ :=
  A081619.P7456844298066121194.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8353 terms. -/
def A081619.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081707.P11488317504414789232

`A000005(n+1)-A001222(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A081707.P11488317504414789232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A001222 (n + 1)

end

end A081707.P11488317504414789232

noncomputable section

/-- A081707: a(n) = tau(n) - bigomega(n) = A000005(n) - A001222(n).

Offset 1, canonical program `A081707.P11488317504414789232`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(n+1)-A001222(n+1)` (program `A081707.P11488317504414789232`, by `A081707.P11488317504414789232.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A081707 (n : ℕ) : ℤ :=
  A081707.P11488317504414789232.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(n+1)-A001222(n+1)` (program `A081707.P11488317504414789232`, by `A081707.P11488317504414789232.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A081707.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A081770.P8847963435303273364

`4*A056911(n+1)`
-/

namespace A081770.P8847963435303273364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A056911 (n + 1)

end

end A081770.P8847963435303273364

noncomputable section

/-- A081770: Numbers twice their squarefree kernel (A007947).

Offset 1, canonical program `A081770.P8847963435303273364`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056911, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A081770 (n : ℕ) : ℤ :=
  A081770.P8847963435303273364.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056911, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A081770.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A081988.P13950426844741901832

`eq[1, A001065(A007954(n)+1)]`
-/

namespace A081988.P13950426844741901832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A007954 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A081988.P13950426844741901832

noncomputable section

/-- A081988: Product of digits + 1 is a prime.

Offset 1, canonical program `A081988.P13950426844741901832`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3124 terms. -/
def A081988 (n : ℕ) : ℤ :=
  (A081988.P13950426844741901832.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3124 terms. -/
def A081988.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081989.P12347566630486416426

`eq[0, A267866(A007954(n))]`
-/

namespace A081989.P12347566630486416426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267866 (A007954 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A081989.P12347566630486416426

noncomputable section

/-- A081989: Numbers k such that 1 + product of digits of k is a square greater than 1.

Offset 1, canonical program `A081989.P12347566630486416426`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 998 terms. -/
def A081989 (n : ℕ) : ℤ :=
  (A081989.P12347566630486416426.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 998 terms. -/
def A081989.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082090.P12813124670423497259

`a(∑{d}[n+1, A297109(#)]-1)+1` with `a(0)=2`
-/

namespace A082090.P12813124670423497259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (∑ d ∈ Nat.divisors (f1 n), A297109 d - 1).toNat + 1

end

end A082090.P12813124670423497259

noncomputable section

/-- A082090: Length of iteration sequence if function A056239, a pseudo-logarithm is iterated and started at n. Fixed point equals zero for all initial values.

Offset 1, canonical program `A082090.P12813124670423497259`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082090 (n : ℕ) : ℤ :=
  (A082090.P12813124670423497259.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082090.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082097.P10250578790295888571

`A000005(a(n-1))+n+1` with `a(0)=1, a(1)=1, a(2)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A082097.P10250578790295888571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A000005 (a (n - 1)).toNat + (n + 1 : ℤ)

end

end A082097.P10250578790295888571

noncomputable section

/-- A082097: a(n) = d(a(n-1)) + n = A000005(a(n-1)) + n, with a(1)=1.

Offset 1, canonical program `A082097.P10250578790295888571`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(a(n-1))+n+1` (program `A082097.P10250578790295888571`, by `A082097.P10250578790295888571.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A082097 (n : ℕ) : ℤ :=
  A082097.P10250578790295888571.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(a(n-1))+n+1` (program `A082097.P10250578790295888571`, by `A082097.P10250578790295888571.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A082097.provenance : SequenceMachineLib.Provenance := .verified

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

/-! ## A089721.P6798565344662168487

`∩[A042992(n+1), A327752(n+1)]`
-/

namespace A089721.P6798565344662168487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089721.P6798565344662168487

noncomputable section

/-- A089721: Primes ending in 1 such that floor(p/7) ends in a digit > 3.

Offset 1, canonical program `A089721.P6798565344662168487`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2493 terms. -/
def A089721 (n : ℕ) : ℤ :=
  (A089721.P6798565344662168487.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2493 terms. -/
def A089721.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A094338.P8537157207539536951

`Δ[A051352(A179865(n+1))]`
-/

namespace A094338.P8537157207539536951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051352 (A179865 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094338.P8537157207539536951

noncomputable section

/-- A094338: (Sum of composites among next n numbers)-(sum of primes among next n numbers).

Offset 1, canonical program `A094338.P8537157207539536951`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A094338 (n : ℕ) : ℤ :=
  A094338.P8537157207539536951.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A094338.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A100765.P16629331524842649418

`∩[A100306(n+1), A171096(n+1)]`
-/

namespace A100765.P16629331524842649418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100306 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100765.P16629331524842649418

noncomputable section

/-- A100765: Numbers for which the values of the Moebius function (A008683) and the Mertens function (A002321) are both -1.

Offset 1, canonical program `A100765.P16629331524842649418`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3026 terms. -/
def A100765 (n : ℕ) : ℤ :=
  (A100765.P16629331524842649418.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3026 terms. -/
def A100765.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100767.P5794492009017109982

`∩[A100306(n+1), A118684(n+1)]`
-/

namespace A100767.P5794492009017109982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100306 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118684 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100767.P5794492009017109982

noncomputable section

/-- A100767: Numbers for which the values of the Moebius function (A008683) and the Mertens function (A002321) are both 1.

Offset 1, canonical program `A100767.P5794492009017109982`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3065 terms. -/
def A100767 (n : ℕ) : ℤ :=
  (A100767.P5794492009017109982.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3065 terms. -/
def A100767.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A102562.P6015592311241824231

`filter[A046304(n+1), A379958(#)]`
-/

namespace A102562.P6015592311241824231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046304 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379958 (f1 j).toNat = 1) n)

end

end A102562.P6015592311241824231

noncomputable section

/-- A102562: Numbers k such that the cyclic group of order k is not a Hajós group.

Offset 1, canonical program `A102562.P6015592311241824231`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8830 terms. -/
def A102562 (n : ℕ) : ℤ :=
  A102562.P6015592311241824231.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8830 terms. -/
def A102562.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-- A105284: a(n)/4^n is the measure of the subset of [0,1] remaining when all intervals of the form [b/2^m - 1/2^(2m+1), b/2^m + 1/2^(2m+1)] have been removed, with b and m positive integers, b<2^m and m<=n.

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

Offset 1, canonical program `A110088.P8337879305070338118`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A110088 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A110088.P8337879305070338118.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A110088.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A110606.P3509663332256867404

`eq[2, A001222(A007094(n+1))]+1`
-/

namespace A110606.P3509663332256867404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007094 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A110606.P3509663332256867404

noncomputable section

/-- A110606: Numbers n whose base 8 representations, interpreted as base 10 integers, are semiprimes.

Offset 1, canonical program `A110606.P3509663332256867404`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2446 terms. -/
def A110606 (n : ℕ) : ℤ :=
  (A110606.P3509663332256867404.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2446 terms. -/
def A110606.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-- A112714: Numbers of the form k*2^m-1 with k<2^m and k odd.

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

/-! ## A080646.P13693422437597070673

`A080703(2*(n+1))/2`
-/

namespace A080646.P13693422437597070673
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080703 (2 * (n + 1)) : ℚ) / 2

end

end A080646.P13693422437597070673

noncomputable section

/-- A080646: a(1) = 3; for n>1, a(n) is taken to be the smallest integer greater than a(n-1) which is consistent with the condition "if n is a member of the sequence then a(n) is divisible by 4".

Offset 1, canonical program `A080646.P13693422437597070673`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A080646 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A080646.P13693422437597070673.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A080646.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A077411.P3896618251849263146

`A106330(∑[gcd(2, n)])`
-/

namespace A077411.P3896618251849263146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106330 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A077411.P3896618251849263146

noncomputable section

/-- A077411: Combined Diophantine Chebyshev sequences A077409 and A077250.

Offset 0, canonical program `A077411.P3896618251849263146`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A077411 (n : ℕ) : ℤ :=
  A077411.P3896618251849263146.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A077411.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079418.P154276308547552137

`lt[A062357(n+1), 0]+2`
-/

namespace A079418.P154276308547552137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062357 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A079418.P154276308547552137

noncomputable section

/-- A079418: Numbers k such that prime(k)/k < prime(k-1)/(k-1).

Offset 1, canonical program `A079418.P154276308547552137`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5537 terms. -/
def A079418 (n : ℕ) : ℤ :=
  (A079418.P154276308547552137.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5537 terms. -/
def A079418.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079636.P9723229985810336634

`ceil(2/Δ[sqrt(A001749(n+1))])`
-/

namespace A079636.P9723229985810336634
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001749 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / (f1 (n + 1) - f1 n)⌉

end

end A079636.P9723229985810336634

noncomputable section

/-- A079636: Smallest number whose reciprocal fits in the square-root gap of consecutive primes.

Offset 1, canonical program `A079636.P9723229985810336634`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079636 (n : ℕ) : ℤ :=
  A079636.P9723229985810336634.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079636.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080544.P11312193905064054092

`A080542(A080542(n+1))`
-/

namespace A080544.P11312193905064054092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080542 (A080542 (n + 1)).toNat

end

end A080544.P11312193905064054092

noncomputable section

/-- A080544: In binary representation: keep the first digit and rotate right the others twice.

Offset 1, canonical program `A080544.P11312193905064054092`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A080544 (n : ℕ) : ℤ :=
  A080544.P11312193905064054092.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A080544.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081848.P16688892493849896551

`3*A005428(abs(1-n))`
-/

namespace A081848.P16688892493849896551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A005428 |1 - (n : ℤ)|.toNat

end

end A081848.P16688892493849896551

noncomputable section

/-- A081848: Number of numbers whose base-3/2 expansion (see A024629) has n digits.

Offset 1, canonical program `A081848.P16688892493849896551`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 567 terms. -/
def A081848 (n : ℕ) : ℤ :=
  A081848.P16688892493849896551.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 567 terms. -/
def A081848.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A083911.P7693470357739100101

`A001876(A000265(n+1))`
-/

namespace A083911.P7693470357739100101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001876 (A000265 (n + 1)).toNat

end

end A083911.P7693470357739100101

noncomputable section

/-- A083911: Number of divisors of n that are congruent to 1 modulo 10.

Offset 1, canonical program `A083911.P7693470357739100101`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083911 (n : ℕ) : ℤ :=
  A083911.P7693470357739100101.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083911.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A084374.P2711585573747654606

`eq[A001222(abs(1-n)+1), A054054(n)]`
-/

namespace A084374.P2711585573747654606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (|1 - (n : ℤ)| + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A084374.P2711585573747654606

noncomputable section

/-- A084374: Numbers k such that the smallest digit of k = number of prime divisors of k (counted with multiplicity).

Offset 1, canonical program `A084374.P2711585573747654606`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1423 terms. -/
def A084374 (n : ℕ) : ℤ :=
  (A084374.P2711585573747654606.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1423 terms. -/
def A084374.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A110969.P16632424768012697550

`Δ[record[A008475(n+1)-A025528(n+1)]]`
-/

namespace A110969.P16632424768012697550
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (n + 1) - A025528 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A110969.P16632424768012697550

noncomputable section

/-- A110969: Length of the runs of ones in A014963.

Offset 1, canonical program `A110969.P16632424768012697550`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9689 terms. -/
def A110969 (n : ℕ) : ℤ :=
  A110969.P16632424768012697550.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9689 terms. -/
def A110969.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A112925.P3128036367507799297

`A005117(A013928(A000040(n+1)))`
-/

namespace A112925.P3128036367507799297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (A013928 (A000040 (n + 1)).toNat).toNat

end

end A112925.P3128036367507799297

noncomputable section

/-- A112925: Largest squarefree integer < the n-th prime.

Offset 1, canonical program `A112925.P3128036367507799297`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9592 terms. -/
def A112925 (n : ℕ) : ℤ :=
  A112925.P3128036367507799297.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9592 terms. -/
def A112925.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A076775.P4195404613136305979

`gcd(n+1, A007088(n+1))`
-/

namespace A076775.P4195404613136305979
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A007088 (n + 1))

end

end A076775.P4195404613136305979

noncomputable section

/-- A076775: Greatest common divisor of n and the binary representation of n interpreted decimally.

Offset 1, canonical program `A076775.P4195404613136305979`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A076775 (n : ℕ) : ℤ :=
  (A076775.P4195404613136305979.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A076775.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A077381.P14666678183193705887

`Δ[A278100(n+1)+A000007(n)]`
-/

namespace A077381.P14666678183193705887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278100 (n + 1) + A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077381.P14666678183193705887

noncomputable section

/-- A077381: Number of squarefree numbers between successive squares (exclusive).

Offset 1, canonical program `A077381.P14666678183193705887`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A077381 (n : ℕ) : ℤ :=
  A077381.P14666678183193705887.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A077381.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A077807.P2572054208741145495

`A001221(A007088(n+1))`
-/

namespace A077807.P2572054208741145495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A007088 (n + 1)).toNat

end

end A077807.P2572054208741145495

noncomputable section

/-- A077807: Number of distinct prime factors of numbers containing in their decimal representation only the digits 0 and 1.

Offset 1, canonical program `A077807.P2572054208741145495`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A077807 (n : ℕ) : ℤ :=
  A077807.P2572054208741145495.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A077807.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A077808.P6672535155909729965

`A001222(A007088(n+1))`
-/

namespace A077808.P6672535155909729965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007088 (n + 1)).toNat

end

end A077808.P6672535155909729965

noncomputable section

/-- A077808: Number of prime factors of numbers containing in their decimal representation only the digits 0 and 1 (counted with multiplicity).

Offset 1, canonical program `A077808.P6672535155909729965`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A077808 (n : ℕ) : ℤ :=
  A077808.P6672535155909729965.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A077808.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A077809.P14212101923891153479

`A000005(A007088(n+1))`
-/

namespace A077809.P14212101923891153479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A007088 (n + 1)).toNat

end

end A077809.P14212101923891153479

noncomputable section

/-- A077809: Number of divisors of numbers containing in their decimal representation only the digits 0 and 1.

Offset 1, canonical program `A077809.P14212101923891153479`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A077809 (n : ℕ) : ℤ :=
  A077809.P14212101923891153479.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A077809.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A077810.P10946061899893420603

`A000203(A007088(n+1))`
-/

namespace A077810.P10946061899893420603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A007088 (n + 1)).toNat

end

end A077810.P10946061899893420603

noncomputable section

/-- A077810: Sum of divisors of numbers containing in their decimal representation only the digits 0 and 1.

Offset 1, canonical program `A077810.P10946061899893420603`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A077810 (n : ℕ) : ℤ :=
  A077810.P10946061899893420603.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A077810.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A077812.P18266462485263755102

`A007947(A007088(n+1))`
-/

namespace A077812.P18266462485263755102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A007088 (n + 1)).toNat

end

end A077812.P18266462485263755102

noncomputable section

/-- A077812: Squarefree kernel of numbers containing in their decimal representation only the digits 0 and 1.

Offset 1, canonical program `A077812.P18266462485263755102`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A077812 (n : ℕ) : ℤ :=
  A077812.P18266462485263755102.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A077812.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A079112.P9511024722204369267

`A007088(eq[1, 1-a(floor(n/2))])` with `a(0)=1, a(1)=1`
-/

namespace A079112.P9511024722204369267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  1 - f2 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A079112.P9511024722204369267

noncomputable section

/-- A079112: Numbers in binary representation with odd length.

Offset 0, canonical program `A079112.P9511024722204369267`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079112 (n : ℕ) : ℤ :=
  A079112.P9511024722204369267.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079112.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079260.P17131602053945993916

`C(A005078(n+1), n+1)`
-/

namespace A079260.P17131602053945993916
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A005078 (n + 1)).toNat (n + 1)

end

end A079260.P17131602053945993916

noncomputable section

/-- A079260: Characteristic function of primes of form 4n+1 (1 if n is prime of form 4n+1, 0 otherwise).

Offset 1, canonical program `A079260.P17131602053945993916`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079260 (n : ℕ) : ℤ :=
  (A079260.P17131602053945993916.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079260.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080224.P15248761020012364030

`∑{d}[n+1, A294937(#)]`
-/

namespace A080224.P15248761020012364030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A294937 d

end

end A080224.P15248761020012364030

noncomputable section

/-- A080224: Number of abundant divisors of n.

Offset 1, canonical program `A080224.P15248761020012364030`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080224 (n : ℕ) : ℤ :=
  A080224.P15248761020012364030.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080224.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089227.P4238158558686104572

`eq[1, A010051(n*A007953(n)+1)]`
-/

namespace A089227.P4238158558686104572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 ((n : ℤ) * A007953 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A089227.P4238158558686104572

noncomputable section

/-- A089227: Numbers k such that 1 + k*ds(k) is prime, where ds(k) is the sum of digits of k.

Offset 1, canonical program `A089227.P4238158558686104572`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 960 terms. -/
def A089227 (n : ℕ) : ℤ :=
  (A089227.P4238158558686104572.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 960 terms. -/
def A089227.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A093993.P17290700091184008815

`∑{d}[n+1, A010051(A007953(#))]`
-/

namespace A093993.P17290700091184008815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010051 (A007953 d).toNat

end

end A093993.P17290700091184008815

noncomputable section

/-- A093993: Number of divisors of n with a prime digital sum.

Offset 1, canonical program `A093993.P17290700091184008815`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A093993 (n : ℕ) : ℤ :=
  A093993.P17290700091184008815.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A093993.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A106743.P3768313889033117879

`A057427(A317946(n+1))-A010051(n+1)`
-/

namespace A106743.P3768313889033117879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A317946 (n + 1)).toNat - A010051 (n + 1)

end

end A106743.P3768313889033117879

noncomputable section

/-- A106743: a(n) = -1 iff n is prime, a(n) = 1 iff n is not squarefree, otherwise (n is nonprime and squarefree) a(n) = 0.

Offset 1, canonical program `A106743.P3768313889033117879`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106743 (n : ℕ) : ℤ :=
  A106743.P3768313889033117879.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106743.provenance : SequenceMachineLib.Provenance := .conjectured

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

